@interface MFAttachmentUtilities
+ (id)_temporaryDirectoryUniqueURL;
+ (id)temporaryDirectory;
+ (id)temporaryFileURLWithExtension:(id)extension;
+ (id)temporaryFileURLWithFileName:(id)name;
@end

@implementation MFAttachmentUtilities

+ (id)temporaryDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/attachments"];

  return v3;
}

+ (id)_temporaryDirectoryUniqueURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  globallyUniqueString = [processInfo globallyUniqueString];

  temporaryDirectory = [self temporaryDirectory];
  v7 = [temporaryDirectory stringByAppendingPathComponent:globallyUniqueString];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:1];
    scheme = [v8 scheme];
    v10 = [scheme hasPrefix:@"file"];

    if (v10)
    {
      v15 = 0;
      [defaultManager createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v15];
      v11 = v15;
      v12 = v8;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

+ (id)temporaryFileURLWithExtension:(id)extension
{
  extensionCopy = extension;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _temporaryDirectoryUniqueURL = [self _temporaryDirectoryUniqueURL];
  path = [_temporaryDirectoryUniqueURL path];
  extensionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"XXXXX.%@", extensionCopy];
  v9 = [path stringByAppendingPathComponent:extensionCopy];

  if (_temporaryDirectoryUniqueURL)
  {
    v10 = strdup([v9 fileSystemRepresentation]);
    if (mkstemps(v10, [extensionCopy length] + 1) == -1)
    {
      path2 = [_temporaryDirectoryUniqueURL path];
      [defaultManager removeItemAtPath:path2 error:0];
      v12 = 0;
    }

    else
    {
      path2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
      [defaultManager createFileAtPath:path2 contents:0 attributes:0];
      v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:path2 isDirectory:0];
    }

    if (v10)
    {
      free(v10);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)temporaryFileURLWithFileName:(id)name
{
  nameCopy = name;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _temporaryDirectoryUniqueURL = [self _temporaryDirectoryUniqueURL];
  v7 = _temporaryDirectoryUniqueURL;
  if (_temporaryDirectoryUniqueURL)
  {
    path = [_temporaryDirectoryUniqueURL path];
    v9 = [path stringByAppendingPathComponent:nameCopy];

    if ([defaultManager createFileAtPath:v9 contents:0 attributes:0])
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v9 isDirectory:0];
    }

    else
    {
      path2 = [v7 path];
      [defaultManager removeItemAtPath:path2 error:0];

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end