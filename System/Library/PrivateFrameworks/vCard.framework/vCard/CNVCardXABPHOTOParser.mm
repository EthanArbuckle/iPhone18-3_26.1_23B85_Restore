@interface CNVCardXABPHOTOParser
+ (id)valueWithName:(id)a3;
@end

@implementation CNVCardXABPHOTOParser

+ (id)valueWithName:(id)a3
{
  v4 = a3;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
    v7 = [v6 URLForResource:v4 withExtension:@"png"];
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
  }

  return v5;
}

@end