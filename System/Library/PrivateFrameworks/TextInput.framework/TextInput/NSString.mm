@interface NSString
@end

@implementation NSString

uint64_t __54__NSString_TIExtras___indexByTrimmingWordsAfterIndex___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((a3 + a4) <= *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = a3 + a4;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

uint64_t __55__NSString_TIExtras___indexByTrimmingWordsBeforeIndex___block_invoke(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (a3 >= *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

uint64_t __58__NSString_TIExtras__normalizeSmartQuotedStringForLocale___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(*(*(a1 + 32) + 8) + 40) stringByReplacingOccurrencesOfString:a2 withString:a3];

  return MEMORY[0x1EEE66BB8]();
}

void *__91__NSString_TIExtras___indexFromStartingIndex_byIncrementingComposedCharacterSequenceCount___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(result[4] + 8) + 24) >= result[6])
  {
    *a7 = 1;
    *(*(result[5] + 8) + 24) = a3 + a4;
  }

  return result;
}

void __81__NSString_TIExtras___stringByComposingDiacriticsLogicalOrder_allowedCharacters___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 56) == 1)
  {
    v5 = *(*(*(a1 + 48) + 8) + 24);
    v4 = a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = combine_with_accent(v5, v4);
  if (v6 && ((v7 = *(a1 + 40)) == 0 || (*(v7 + 16))(v7, v6)))
  {
    v8 = [*(a1 + 32) _rangeOfLongCharacterAtIndex:{objc_msgSend(*(a1 + 32), "length") - 1}];
    [*(a1 + 32) deleteCharactersInRange:{v8, v9}];
  }

  else
  {
    v6 = a2;
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696AEC0] _stringWithUnichar:v6];
  [v10 appendString:v11];

  *(*(*(a1 + 48) + 8) + 24) = v6;
}

uint64_t __56__NSString_TIExtras___containsSymbolsAndPunctuationOnly__block_invoke()
{
  result = [objc_opt_class() _characterSetWithPattern:@"[:Punctuation:]"];
  _containsSymbolsAndPunctuationOnly___SymbolsSet = result;
  return result;
}

uint64_t __55__NSString_TIExtras___containsCJKSymbolsAndPunctuation__block_invoke()
{
  result = [objc_opt_class() _characterSetWithPattern:@"[^[ [ [:East_Asian_Width=Wide:][:East_Asian_Width=Fullwidth:] ] & [:Punctuation:] ]]"];
  _containsCJKSymbolsAndPunctuation___nonCJKSymbolsSet = result;
  return result;
}

uint64_t __45__NSString_TIExtras___containsCJKScriptsOnly__block_invoke()
{
  result = [objc_opt_class() _characterSetWithPattern:@"[[:Hani:][:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][:Hangul:][ˉˊˇˋ˙]]"];
  _containsCJKScriptsOnly___CJKSet = result;
  return result;
}

uint64_t __44__NSString_TIExtras___containsCJScriptsOnly__block_invoke()
{
  result = [objc_opt_class() _characterSetWithPattern:@"[[:Hani:][:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][ˉˊˇˋ˙]]"];
  _containsCJScriptsOnly___CJSet = result;
  return result;
}

uint64_t __55__NSString_TIExtras___containsIdeographsOrBopomofoOnly__block_invoke()
{
  result = [objc_opt_class() _characterSetWithPattern:@"[[:Hani:][:Bopomofo:][ˉˊˇˋ˙]]"];
  _containsIdeographsOrBopomofoOnly___KanijChineseBopomofoSet = result;
  return result;
}

uint64_t __40__NSString_TIExtras___containsEmojiOnly__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = *(*(result + 32) + 8);
  if (a3 == *(v5 + 24))
  {
    *(v5 + 24) = a3 + a4;
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

void __39__NSString_TIExtras___graphemeAtIndex___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 24);
  if (v8 == a1[6])
  {
    v11 = [a2 copy];
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a7 = 1;
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 24);
  }

  *(v7 + 24) = v8 + 1;
}

void __36__NSString_TIExtras___firstGrapheme__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = [a2 copy];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a7 = 1;
}

void __43__NSString_TIExtras___looksLikeNumberInput__block_invoke()
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v0 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  [v3 formUnionWithCharacterSet:v0];

  [v3 addCharactersInString:@"$%#"];
  [v3 addCharactersInString:{@"-, +=*./<>:"}]);
  [v3 invert];
  v1 = [v3 copy];
  v2 = _looksLikeNumberInput___nonNumberInputSet;
  _looksLikeNumberInput___nonNumberInputSet = v1;
}

uint64_t __51__NSString_TIExtras___contentsExclusivelyInScript___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = uscript_getScript();
  if (result >= 2 && result != *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

BOOL __56__NSString_TIExtras___ti_supplementalPrefixOfLastToken___block_invoke(UTF32Char a1)
{
  result = 0;
  if (a1 != 39 && a1 != 45 && a1 != 8217)
  {
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
    return CFCharacterSetIsLongCharacterMember(Predefined, a1) != 0;
  }

  return result;
}

uint64_t __52__NSString_TIExtras___fullwidthLettersAndSymbolsSet__block_invoke()
{
  result = [objc_opt_class() _characterSetWithPattern:@"[ [[:East_Asian_Width=Wide:][:East_Asian_Width=Fullwidth:]] - [:Hani:] - [:Kana:] - [:Hiragana:] ]"];
  _fullwidthLettersAndSymbolsSet___fullwidthLettersAndSymbolsSet = result;
  return result;
}

void __55__NSString_TIExtras___nonFullwidthLettersAndNumbersSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[^%@]", @"[ [ [[:East_Asian_Width=Wide:][:East_Asian_Width=Fullwidth:]] & [[:Letter:][:Number:]] ] - [:Hani:] ]"];
  _nonFullwidthLettersAndNumbersSet___nonFullwidthLettersAndNumbersSet = [objc_opt_class() _characterSetWithPattern:v0];
}

uint64_t __52__NSString_TIExtras___fullwidthLettersAndNumbersSet__block_invoke()
{
  result = [objc_opt_class() _characterSetWithPattern:@"[ [ [[:East_Asian_Width=Wide:][:East_Asian_Width=Fullwidth:]] & [[:Letter:][:Number:]] ] - [:Hani:] ]"];
  _fullwidthLettersAndNumbersSet___fullwidthLettersAndNumbersSet = result;
  return result;
}

uint64_t __45__NSString_TIExtras___bopomofoWithoutToneSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[:Bopomofo:]"];
  _bopomofoWithoutToneSet___bopomofoWithoutToneSet = result;
  return result;
}

uint64_t __38__NSString_TIExtras___bopomofoToneSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[ˉˊˇˋ˙]"];
  _bopomofoToneSet___bopomofoToneSet = result;
  return result;
}

uint64_t __34__NSString_TIExtras___bopomofoSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[[:Bopomofo:][ˉˊˇˋ˙]]"];
  _bopomofoSet___bopomofoSet = result;
  return result;
}

uint64_t __35__NSString_TIExtras___ideographSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[:Hani:]"];
  _ideographSet___ideographSet = result;
  return result;
}

uint64_t __43__NSString_TIExtras___nonJapaneseLetterSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[^[[:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Hani:][ー]]]"];
  _nonJapaneseLetterSet___set = result;
  return result;
}

uint64_t __40__NSString_TIExtras___japaneseLetterSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[[:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Hani:][ー]]"];
  _japaneseLetterSet___japaneseLetterSet = result;
  return result;
}

uint64_t __34__NSString_TIExtras___hiraganaSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[[:Hiragana:][ー]]"];
  _hiraganaSet___hiraganaSet = result;
  return result;
}

uint64_t __55__NSString_TIExtras___nonHiraganaKatakanaOrBopomofoSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[^[:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][ー]]"];
  _nonHiraganaKatakanaOrBopomofoSet___nonHiraganaKatakanaOrBopomofoSet = result;
  return result;
}

uint64_t __44__NSString_TIExtras___nonKatakanaOrKanjiSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[^[:Katakana:][:Katakana_Or_Hiragana:][:Hani:][ー]]"];
  _nonKatakanaOrKanjiSet___nonKatakanaSet = result;
  return result;
}

uint64_t __47__NSString_TIExtras___nonHiraganaOrKatakanaSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[^[:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][ー]]"];
  _nonHiraganaOrKatakanaSet___nonHiraganaOrKatakanaSet = result;
  return result;
}

uint64_t __44__NSString_TIExtras___nonKoreanCharacterSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[:^Hangul:]"];
  _nonKoreanCharacterSet___nonKoreanCharacterSet = result;
  return result;
}

uint64_t __49__NSString_TIExtras___nonIdeographicCharacterSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[:^Ideographic:]"];
  _nonIdeographicCharacterSet___nonIdeographicCharacterSet = result;
  return result;
}

@end