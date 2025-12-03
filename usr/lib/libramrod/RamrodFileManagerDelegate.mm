@interface RamrodFileManagerDelegate
- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error copyingItemAtPath:(id)path toPath:(id)toPath;
@end

@implementation RamrodFileManagerDelegate

- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error copyingItemAtPath:(id)path toPath:(id)toPath
{
  code = [error code];
  if (code == &stru_1F8.sectname[12])
  {
    sub_2A03C(@"Overwritting %@\n", v7, v8, v9, v10, v11, v12, v13, toPath);
  }

  return code == &stru_1F8.sectname[12];
}

@end