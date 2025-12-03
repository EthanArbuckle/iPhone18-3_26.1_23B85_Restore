@interface NSError(FileExistsCheck)
- (BOOL)isFileExistsError;
@end

@implementation NSError(FileExistsCheck)

- (BOOL)isFileExistsError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x29EDB9EF8]])
  {
    v3 = [self code] == 17;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end