@interface NSCharacterSet
@end

@implementation NSCharacterSet

uint64_t __61__NSCharacterSet_ZhuyinAddition__zhuyinConsonantCharacterSet__block_invoke()
{
  zhuyinConsonantCharacterSet___zhuyinConsonantCharacterSet = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"ㄅㄆㄇㄈㄉㄊㄋㄌㄍㄎㄏㄐㄑㄒㄓㄔㄕㄖㄗㄘㄙ"];

  return MEMORY[0x2A1C71028]();
}

uint64_t __58__NSCharacterSet_ZhuyinAddition__zhuyinMedialCharacterSet__block_invoke()
{
  zhuyinMedialCharacterSet___zhuyinMedialCharacterSet = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"ㄧㄨㄩ"];

  return MEMORY[0x2A1C71028]();
}

uint64_t __57__NSCharacterSet_ZhuyinAddition__zhuyinVowelCharacterSet__block_invoke()
{
  zhuyinVowelCharacterSet___zhuyinVowelCharacterSet = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"ㄚㄛㄜㄝㄞㄟㄠㄡㄢㄣㄤㄥㄦ"];

  return MEMORY[0x2A1C71028]();
}

uint64_t __59__NSCharacterSet_ZhuyinAddition__zhuyinPhonemeCharacterSet__block_invoke()
{
  zhuyinPhonemeCharacterSet___zhuyinPhonemeCharacterSet = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"ㄅㄆㄇㄈㄉㄊㄋㄌㄍㄎㄏㄐㄑㄒㄓㄔㄕㄖㄗㄘㄙㄧㄨㄩㄚㄛㄜㄝㄞㄟㄠㄡㄢㄣㄤㄥㄦ"];

  return MEMORY[0x2A1C71028]();
}

uint64_t __56__NSCharacterSet_ZhuyinAddition__zhuyinToneCharacterSet__block_invoke()
{
  zhuyinToneCharacterSet___zhuyinToneCharacterSet = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"ˉˊˇˋ˙"];

  return MEMORY[0x2A1C71028]();
}

uint64_t __52__NSCharacterSet_ZhuyinAddition__zhuyinCharacterSet__block_invoke()
{
  zhuyinCharacterSet___zhuyinCharacterSet = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"ㄅㄆㄇㄈㄉㄊㄋㄌㄍㄎㄏㄐㄑㄒㄓㄔㄕㄖㄗㄘㄙㄧㄨㄩㄚㄛㄜㄝㄞㄟㄠㄡㄢㄣㄤㄥㄦˉˊˇˋ˙"];

  return MEMORY[0x2A1C71028]();
}

void __66__NSCharacterSet_ZhuyinAddition__punctuationAndSymbolCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x29EDB9F50] punctuationCharacterSet];
  v1 = [v0 mutableCopy];

  v2 = [MEMORY[0x29EDB9F50] symbolCharacterSet];
  [v1 formUnionWithCharacterSet:v2];

  v3 = punctuationAndSymbolCharacterSet___punctuationAndSymbolCharacterSet;
  punctuationAndSymbolCharacterSet___punctuationAndSymbolCharacterSet = v1;
}

@end