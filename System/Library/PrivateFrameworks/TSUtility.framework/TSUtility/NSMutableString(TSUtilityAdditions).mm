@interface NSMutableString(TSUtilityAdditions)
- (uint64_t)tsu_appendSeparator:()TSUtilityAdditions format:;
- (void)tsu_insertCharacter:()TSUtilityAdditions atIndex:;
@end

@implementation NSMutableString(TSUtilityAdditions)

- (void)tsu_insertCharacter:()TSUtilityAdditions atIndex:
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", a3];
  [self insertString:v6 atIndex:a4];
}

- (uint64_t)tsu_appendSeparator:()TSUtilityAdditions format:
{
  if ([self length])
  {
    [self appendString:a3];
  }

  return [self appendString:{objc_msgSend(MEMORY[0x277CCACA8], "tsu_stringWithFormat:arguments:", a4, &a9)}];
}

@end