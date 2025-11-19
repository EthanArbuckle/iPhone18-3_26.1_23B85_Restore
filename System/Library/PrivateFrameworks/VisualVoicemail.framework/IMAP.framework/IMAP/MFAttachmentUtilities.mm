@interface MFAttachmentUtilities
+ (id)_temporaryDirectoryUniqueURL;
+ (id)temporaryDirectory;
+ (id)temporaryFileURLWithExtension:(id)a3;
+ (id)temporaryFileURLWithFileName:(id)a3;
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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 globallyUniqueString];

  v6 = [a1 temporaryDirectory];
  v7 = [v6 stringByAppendingPathComponent:v5];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:1];
    v9 = [v8 scheme];
    v10 = [v9 hasPrefix:@"file"];

    if (v10)
    {
      v15 = 0;
      [v3 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v15];
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

+ (id)temporaryFileURLWithExtension:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [a1 _temporaryDirectoryUniqueURL];
  v7 = [v6 path];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"XXXXX.%@", v4];
  v9 = [v7 stringByAppendingPathComponent:v8];

  if (v6)
  {
    v10 = strdup([v9 fileSystemRepresentation]);
    if (mkstemps(v10, [v4 length] + 1) == -1)
    {
      v11 = [v6 path];
      [v5 removeItemAtPath:v11 error:0];
      v12 = 0;
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
      [v5 createFileAtPath:v11 contents:0 attributes:0];
      v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v11 isDirectory:0];
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

+ (id)temporaryFileURLWithFileName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [a1 _temporaryDirectoryUniqueURL];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 path];
    v9 = [v8 stringByAppendingPathComponent:v4];

    if ([v5 createFileAtPath:v9 contents:0 attributes:0])
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v9 isDirectory:0];
    }

    else
    {
      v11 = [v7 path];
      [v5 removeItemAtPath:v11 error:0];

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