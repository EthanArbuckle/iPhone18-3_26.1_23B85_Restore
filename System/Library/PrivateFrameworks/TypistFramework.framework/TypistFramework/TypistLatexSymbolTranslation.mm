@interface TypistLatexSymbolTranslation
+ (id)charactersRequiringExtentionCharacterSet;
+ (id)latexSymbolMap;
@end

@implementation TypistLatexSymbolTranslation

+ (id)charactersRequiringExtentionCharacterSet
{
  if (charactersRequiringExtentionCharacterSet_onceToken_0 != -1)
  {
    +[TypistLatexSymbolTranslation charactersRequiringExtentionCharacterSet];
  }

  v3 = charactersRequiringExtentionCharacterSet_charSet_0;

  return v3;
}

uint64_t __72__TypistLatexSymbolTranslation_charactersRequiringExtentionCharacterSet__block_invoke()
{
  charactersRequiringExtentionCharacterSet_charSet_0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-√"];

  return MEMORY[0x2821F96F8]();
}

+ (id)latexSymbolMap
{
  if (latexSymbolMap_onceToken != -1)
  {
    +[TypistLatexSymbolTranslation latexSymbolMap];
  }

  v3 = latexSymbolMap_latexSymbolMap;

  return v3;
}

void __46__TypistLatexSymbolTranslation_latexSymbolMap__block_invoke()
{
  v0 = latexSymbolMap_latexSymbolMap;
  latexSymbolMap_latexSymbolMap = &unk_28802A870;
}

@end