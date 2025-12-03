@interface NSMutableCharacterSet(SFWPAdditions)
- (void)initWithCharacters:()SFWPAdditions length:;
@end

@implementation NSMutableCharacterSet(SFWPAdditions)

- (void)initWithCharacters:()SFWPAdditions length:
{
  v6 = [self init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:a3 length:a4];
    [v6 addCharactersInString:v7];
  }

  return v6;
}

@end