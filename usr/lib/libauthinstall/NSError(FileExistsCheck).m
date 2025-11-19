@interface NSError(FileExistsCheck)
- (BOOL)isFileExistsError;
@end

@implementation NSError(FileExistsCheck)

- (BOOL)isFileExistsError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x29EDB9EF8]])
  {
    v3 = [a1 code] == 17;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end