@interface TICharacterSetDescription(ZhuyinAdditions)
+ (id)zhuyinWordCharacters;
@end

@implementation TICharacterSetDescription(ZhuyinAdditions)

+ (id)zhuyinWordCharacters
{
  v0 = zhuyinWordCharacters__wordCharacterSet;
  if (!zhuyinWordCharacters__wordCharacterSet)
  {
    v1 = [objc_alloc(MEMORY[0x29EDC70E0]) initWithBaseCharacterSet:3];
    [v1 removeCharactersInString:@" "];
    invertedSetDescription = [v1 invertedSetDescription];
    v3 = zhuyinWordCharacters__wordCharacterSet;
    zhuyinWordCharacters__wordCharacterSet = invertedSetDescription;

    v0 = zhuyinWordCharacters__wordCharacterSet;
  }

  return v0;
}

@end