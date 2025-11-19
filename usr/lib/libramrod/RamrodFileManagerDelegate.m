@interface RamrodFileManagerDelegate
- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 copyingItemAtPath:(id)a5 toPath:(id)a6;
@end

@implementation RamrodFileManagerDelegate

- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 copyingItemAtPath:(id)a5 toPath:(id)a6
{
  v14 = [a4 code];
  if (v14 == &stru_1F8.sectname[12])
  {
    sub_2A03C(@"Overwritting %@\n", v7, v8, v9, v10, v11, v12, v13, a6);
  }

  return v14 == &stru_1F8.sectname[12];
}

@end