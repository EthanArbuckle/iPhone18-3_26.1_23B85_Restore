@interface NSFileManager(WebNSFileManagerExtras)
- (void)_webkit_pathWithUniqueFilenameForPath:()WebNSFileManagerExtras;
@end

@implementation NSFileManager(WebNSFileManagerExtras)

- (void)_webkit_pathWithUniqueFilenameForPath:()WebNSFileManagerExtras
{
  v3 = [objc_msgSend(a3 "stringByDeletingLastPathComponent")];
  if (lstat([v3 fileSystemRepresentation], &v11))
  {
    return v3;
  }

  lastPathComponent = [v3 lastPathComponent];
  v7 = [lastPathComponent rangeOfString:@"."];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v8 = [lastPathComponent substringFromIndex:v7 + 1];
    v3 = [objc_msgSend(v3 "stringByDeletingLastPathComponent")];
  }

  v10 = 1;
  do
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%d", v3, v10];
    if ([v8 length])
    {
      v4 = [v4 stringByAppendingPathExtension:v8];
    }

    v10 = (v10 + 1);
  }

  while (!lstat([v4 fileSystemRepresentation], &v11));
  return v4;
}

@end