@interface TypistKoreanHangulJamo
+ (id)leadingConsonants;
+ (id)trailingConsonants;
+ (id)vowels;
@end

@implementation TypistKoreanHangulJamo

+ (id)leadingConsonants
{
  if (leadingConsonants_leadingConsonantsToken != -1)
  {
    +[TypistKoreanHangulJamo leadingConsonants];
  }

  v3 = leadingConsonants_leadingConsonants;

  return v3;
}

void __43__TypistKoreanHangulJamo_leadingConsonants__block_invoke()
{
  v0 = leadingConsonants_leadingConsonants;
  leadingConsonants_leadingConsonants = &unk_28802A468;
}

+ (id)vowels
{
  if (vowels_vowelToken != -1)
  {
    +[TypistKoreanHangulJamo vowels];
  }

  v3 = vowels_hangulVowels;

  return v3;
}

void __32__TypistKoreanHangulJamo_vowels__block_invoke()
{
  v0 = vowels_hangulVowels;
  vowels_hangulVowels = &unk_28802A480;
}

+ (id)trailingConsonants
{
  if (trailingConsonants_trailingConsonantsToken != -1)
  {
    +[TypistKoreanHangulJamo trailingConsonants];
  }

  v3 = trailingConsonants_trailingConsonants;

  return v3;
}

void __44__TypistKoreanHangulJamo_trailingConsonants__block_invoke()
{
  v0 = trailingConsonants_trailingConsonants;
  trailingConsonants_trailingConsonants = &unk_28802A498;
}

@end