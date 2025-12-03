@interface CNVCardXABPHOTOParser
+ (id)valueWithName:(id)name;
@end

@implementation CNVCardXABPHOTOParser

+ (id)valueWithName:(id)name
{
  nameCopy = name;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:self];
    v7 = [v6 URLForResource:nameCopy withExtension:@"png"];
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
  }

  return v5;
}

@end