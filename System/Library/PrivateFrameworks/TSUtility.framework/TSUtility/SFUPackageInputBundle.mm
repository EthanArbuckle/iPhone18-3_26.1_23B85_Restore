@interface SFUPackageInputBundle
- (SFUPackageInputBundle)initWithPath:(id)path;
- (id)_existingPathForEntryName:(id)name isGz:(BOOL *)gz;
- (id)bufferedInputStreamForEntry:(id)entry;
- (id)inputStreamForEntry:(id)entry;
- (int64_t)lengthOfEntry:(id)entry;
- (unsigned)crc32ForEntry:(id)entry;
- (void)copyEntry:(id)entry toFile:(id)file;
- (void)dealloc;
@end

@implementation SFUPackageInputBundle

- (SFUPackageInputBundle)initWithPath:(id)path
{
  v6.receiver = self;
  v6.super_class = SFUPackageInputBundle;
  v4 = [(SFUPackageInputBundle *)&v6 init];
  if (v4)
  {
    v4->_rootPath = [path copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUPackageInputBundle;
  [(SFUPackageInputBundle *)&v3 dealloc];
}

- (id)_existingPathForEntryName:(id)name isGz:(BOOL *)gz
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [(NSString *)self->_rootPath stringByAppendingPathComponent:name];
  if ([defaultManager fileExistsAtPath:v8])
  {
    LOBYTE(v9) = 0;
    if (!gz)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v8 = [(NSString *)v8 stringByAppendingPathExtension:@"gz"];
  v9 = [defaultManager fileExistsAtPath:v8];
  if (!v9)
  {
    v8 = 0;
  }

  if (gz)
  {
LABEL_7:
    *gz = v9;
  }

  return v8;
}

- (id)inputStreamForEntry:(id)entry
{
  v5 = 0;
  v3 = [(SFUPackageInputBundle *)self _existingPathForEntryName:entry isGz:&v5];
  if (v3)
  {
    if (v5 == 1)
    {
      v3 = [[SFUGZipFileInputStream alloc] initWithPath:v3];
    }

    else
    {
      v3 = [[SFUFileInputStream alloc] initWithPath:v3 offset:0];
    }
  }

  return v3;
}

- (id)bufferedInputStreamForEntry:(id)entry
{
  v3 = [(SFUPackageInputBundle *)self inputStreamForEntry:entry];
  if (v3)
  {
    v3 = [[SFUBufferedInputStream alloc] initWithStream:v3];
  }

  return v3;
}

- (int64_t)lengthOfEntry:(id)entry
{
  v13 = 0;
  v5 = [(SFUPackageInputBundle *)self _existingPathForEntryName:entry isGz:&v13];
  if (!v5)
  {
    return 0;
  }

  if ((v13 & 1) == 0)
  {
    return [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }

  v6 = +[TSUAssertionHandler currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUPackageInputBundle lengthOfEntry:]"];
  [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUInputBundle.m"), 180, @"Asked for the length of gzipped entry %@. This is slow.", entry}];
  v8 = [(SFUPackageInputBundle *)self bufferedInputStreamForEntry:entry];
  if (v8)
  {
    v9 = 0;
    do
    {
      v12 = 0;
      v10 = [v8 readToOwnBuffer:&v12 size:-1];
      v9 += v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  [v8 close];
  return v9;
}

- (unsigned)crc32ForEntry:(id)entry
{
  v4 = [(SFUPackageInputBundle *)self bufferedInputStreamForEntry:entry];
  if (v4)
  {
    for (i = 0; ; LODWORD(i) = crc32(i, buf, v3))
    {
      buf = 0;
      v3 = [v4 readToOwnBuffer:&buf size:-1];
      if (!v3)
      {
        break;
      }
    }
  }

  else
  {
    LODWORD(i) = 0;
  }

  [v4 close];
  return i;
}

- (void)copyEntry:(id)entry toFile:(id)file
{
  v15 = 0;
  v7 = [(SFUPackageInputBundle *)self _existingPathForEntryName:entry isGz:&v15];
  if (v7)
  {
    v8 = v7;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (v15)
    {
      v10 = [(SFUPackageInputBundle *)self bufferedInputStreamForEntry:entry];
      if (v10)
      {
        v11 = [[SFUFileOutputStream alloc] initWithPath:file];
        if (v11)
        {
          while (1)
          {
            v14 = 0;
            v12 = [v10 readToOwnBuffer:&v14 size:-1];
            if (!v12)
            {
              break;
            }

            [(SFUFileOutputStream *)v11 writeBuffer:v14 size:v12];
          }
        }
      }

      else
      {
        v11 = 0;
      }

      [v10 close];
      [(SFUFileOutputStream *)v11 close];
    }

    else
    {
      v13 = defaultManager;
      v14 = 0;
      if (([defaultManager linkItemAtPath:v8 toPath:file error:&v14] & 1) == 0 && (objc_msgSend(v13, "copyItemAtPath:toPath:error:", v8, file, &v14) & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] tsu_raiseWithError:v14];
      }
    }
  }
}

@end