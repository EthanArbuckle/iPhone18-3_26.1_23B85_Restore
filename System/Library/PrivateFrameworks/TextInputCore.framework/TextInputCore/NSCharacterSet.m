@interface NSCharacterSet
@end

@implementation NSCharacterSet

void __66__NSCharacterSet_ZhuyinAddition__punctuationAndSymbolCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v1 = [v0 mutableCopy];

  v2 = [MEMORY[0x277CCA900] symbolCharacterSet];
  [v1 formUnionWithCharacterSet:v2];

  v3 = punctuationAndSymbolCharacterSet___punctuationAndSymbolCharacterSet;
  punctuationAndSymbolCharacterSet___punctuationAndSymbolCharacterSet = v1;
}

uint64_t __52__NSCharacterSet_ZhuyinAddition__zhuyinCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ㄅㄆㄇㄈㄉㄊㄋㄌㄍㄎㄏㄐㄑㄒㄓㄔㄕㄖㄗㄘㄙㄧㄨㄩㄚㄛㄜㄝㄞㄟㄠㄡㄢㄣㄤㄥㄦˉˊˇˋ˙"];
  v1 = zhuyinCharacterSet___zhuyinCharacterSet;
  zhuyinCharacterSet___zhuyinCharacterSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __56__NSCharacterSet_ZhuyinAddition__zhuyinToneCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ˉˊˇˋ˙"];
  v1 = zhuyinToneCharacterSet___zhuyinToneCharacterSet;
  zhuyinToneCharacterSet___zhuyinToneCharacterSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __59__NSCharacterSet_ZhuyinAddition__zhuyinPhonemeCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ㄅㄆㄇㄈㄉㄊㄋㄌㄍㄎㄏㄐㄑㄒㄓㄔㄕㄖㄗㄘㄙㄧㄨㄩㄚㄛㄜㄝㄞㄟㄠㄡㄢㄣㄤㄥㄦ"];
  v1 = zhuyinPhonemeCharacterSet___zhuyinPhonemeCharacterSet;
  zhuyinPhonemeCharacterSet___zhuyinPhonemeCharacterSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __57__NSCharacterSet_ZhuyinAddition__zhuyinVowelCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ㄚㄛㄜㄝㄞㄟㄠㄡㄢㄣㄤㄥㄦ"];
  v1 = zhuyinVowelCharacterSet___zhuyinVowelCharacterSet;
  zhuyinVowelCharacterSet___zhuyinVowelCharacterSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __58__NSCharacterSet_ZhuyinAddition__zhuyinMedialCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ㄧㄨㄩ"];
  v1 = zhuyinMedialCharacterSet___zhuyinMedialCharacterSet;
  zhuyinMedialCharacterSet___zhuyinMedialCharacterSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __61__NSCharacterSet_ZhuyinAddition__zhuyinConsonantCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ㄅㄆㄇㄈㄉㄊㄋㄌㄍㄎㄏㄐㄑㄒㄓㄔㄕㄖㄗㄘㄙ"];
  v1 = zhuyinConsonantCharacterSet___zhuyinConsonantCharacterSet;
  zhuyinConsonantCharacterSet___zhuyinConsonantCharacterSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __61__NSCharacterSet_TextInputAdditions__pinyinInputCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz'"];
  v1 = pinyinInputCharacterSet___pinyinCharset;
  pinyinInputCharacterSet___pinyinCharset = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __74__NSCharacterSet_TextInputAdditions__punctuationAndWhitespaceCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v1 = [v0 mutableCopy];

  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v1 formUnionWithCharacterSet:v2];

  v3 = punctuationAndWhitespaceCharacterSet___punctuationAndWhitespaceCharacterSet;
  punctuationAndWhitespaceCharacterSet___punctuationAndWhitespaceCharacterSet = v1;
}

@end