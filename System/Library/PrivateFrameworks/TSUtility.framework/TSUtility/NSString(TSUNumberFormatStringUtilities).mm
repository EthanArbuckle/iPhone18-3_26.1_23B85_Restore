@interface NSString(TSUNumberFormatStringUtilities)
+ (uint64_t)numberSymbols;
- (__CFString)negativeSubpatternOfNumberFormatPattern;
- (id)newStringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand;
- (uint64_t)indexOfLastNonSuffixCharacterInNumberFormatSubpattern;
- (uint64_t)numberPortionOfNumberFormatSubpattern;
- (uint64_t)positiveSubpatternOfNumberFormatPattern;
- (uint64_t)prefixOfNumberFormatSubpattern;
- (uint64_t)suffixOfNumberFormatSubpattern;
- (unint64_t)indexOfFirstNonPrefixCharacterInNumberFormatSubpattern;
- (unint64_t)indexOfNumberFormatSubpatternSeparator;
- (void)newRangesOfEscapedCharactersInNumberFormatPattern;
- (void)stringByRemovingEscapedCharactersFromNumberFormatPattern;
@end

@implementation NSString(TSUNumberFormatStringUtilities)

+ (uint64_t)numberSymbols
{
  result = numberSymbols_symbols;
  if (!numberSymbols_symbols)
  {
    v1 = objc_opt_class();
    objc_sync_enter(v1);
    if (!numberSymbols_symbols)
    {
      v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789#@"];
      __dmb(0xBu);
      numberSymbols_symbols = v2;
    }

    objc_sync_exit(v1);
    return numberSymbols_symbols;
  }

  return result;
}

- (id)newStringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand
{
  selfCopy = self;
  if (newStringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand_once != -1)
  {
    [NSString(TSUNumberFormatStringUtilities) newStringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand];
    self = selfCopy;
  }

  v1 = [self rangeOfCharacterFromSet:{newStringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand_replacedCharacterSet, selfCopy}];
  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {

    return v9;
  }

  else
  {
    v3 = v1;
    v4 = [v9 mutableCopy];
    v5 = [v4 length];
    v6 = v5 - v3;
    [v4 replaceOccurrencesOfString:@"−" withString:@"-" options:0 range:{v3, v5 - v3}];
    [v4 replaceOccurrencesOfString:@"﹣" withString:@"-" options:0 range:{v3, v6}];
    [v4 replaceOccurrencesOfString:@"－" withString:@"-" options:0 range:{v3, v6}];
    [v4 replaceOccurrencesOfString:@"﹢" withString:@"+" options:0 range:{v3, v6}];
    [v4 replaceOccurrencesOfString:@"＋" withString:@"+" options:0 range:{v3, v6}];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v4];

    return v7;
  }
}

- (void)newRangesOfEscapedCharactersInNumberFormatPattern
{
  v2 = [self length];
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [self rangeOfString:@"'" options:0 range:{v3, v2 - v3}];
    v6 = v5;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL || v5 == v2 - 1)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return v4;
      }
    }

    else
    {
      v8 = [self rangeOfString:@"'" options:0 range:{v5 + 1, v2 - (v5 + 1)}];
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v2 - v6;
    }

    else
    {
      v9 = v8 - v6 + 1;
    }

    v10 = [MEMORY[0x277CCAE60] valueWithRange:{v6, v9}];
    if (v4)
    {
      [v4 addObject:v10];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
    }

    v3 = v8 + 1;
  }

  while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  return v4;
}

- (void)stringByRemovingEscapedCharactersFromNumberFormatPattern
{
  newRangesOfEscapedCharactersInNumberFormatPattern = [self newRangesOfEscapedCharactersInNumberFormatPattern];
  if (!newRangesOfEscapedCharactersInNumberFormatPattern)
  {
    return self;
  }

  v3 = newRangesOfEscapedCharactersInNumberFormatPattern;
  v4 = [MEMORY[0x277CCAB68] stringWithString:self];
  v5 = [self length];
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      v7 = [objc_msgSend(v3 objectAtIndex:{v6), "rangeValue"}];
      [v4 replaceCharactersInRange:objc_msgSend(v4 withString:{"length") - v5 + v7, v8, &stru_287DDF830}];
      ++v6;
    }

    while (v6 < [v3 count]);
  }

  return v4;
}

- (unint64_t)indexOfNumberFormatSubpatternSeparator
{
  newRangesOfEscapedCharactersInNumberFormatPattern = [self newRangesOfEscapedCharactersInNumberFormatPattern];
  v3 = [self rangeOfString:@";" options:0 range:{0, objc_msgSend(self, "length")}];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    while (TSULocationInRanges(v4, newRangesOfEscapedCharactersInNumberFormatPattern))
    {
      v4 = [self rangeOfString:@";" options:0 range:{v4 + 1, objc_msgSend(self, "length") - (v4 + 1)}];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
        break;
      }
    }
  }

  return v4;
}

- (uint64_t)positiveSubpatternOfNumberFormatPattern
{
  indexOfNumberFormatSubpatternSeparator = [self indexOfNumberFormatSubpatternSeparator];
  if (indexOfNumberFormatSubpatternSeparator == 0x7FFFFFFFFFFFFFFFLL)
  {
    return self;
  }

  return [self substringToIndex:indexOfNumberFormatSubpatternSeparator];
}

- (__CFString)negativeSubpatternOfNumberFormatPattern
{
  indexOfNumberFormatSubpatternSeparator = [self indexOfNumberFormatSubpatternSeparator];
  if (indexOfNumberFormatSubpatternSeparator == 0x7FFFFFFFFFFFFFFFLL)
  {
    return &stru_287DDF830;
  }

  return [self substringFromIndex:indexOfNumberFormatSubpatternSeparator + 1];
}

- (uint64_t)numberPortionOfNumberFormatSubpattern
{
  indexOfFirstNonPrefixCharacterInNumberFormatSubpattern = [self indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
  v3 = [self indexOfLastNonSuffixCharacterInNumberFormatSubpattern] - indexOfFirstNonPrefixCharacterInNumberFormatSubpattern + 1;

  return [self substringWithRange:{indexOfFirstNonPrefixCharacterInNumberFormatSubpattern, v3}];
}

- (uint64_t)indexOfLastNonSuffixCharacterInNumberFormatSubpattern
{
  newRangesOfEscapedCharactersInNumberFormatPattern = [self newRangesOfEscapedCharactersInNumberFormatPattern];
  numberSymbols = [objc_opt_class() numberSymbols];
  v4 = [self length];
  while (1)
  {
    v5 = [self rangeOfCharacterFromSet:numberSymbols options:4 range:{0, v4}];
    v4 = v5;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    if ((TSULocationInRanges(v5, newRangesOfEscapedCharactersInNumberFormatPattern) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v6 = +[TSUAssertionHandler currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUNumberFormatStringUtilities) indexOfLastNonSuffixCharacterInNumberFormatSubpattern]"];
  [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormatter.m"), 254, @"invalid number format subpattern"}];
LABEL_6:

  return v4;
}

- (uint64_t)suffixOfNumberFormatSubpattern
{
  v2 = [self indexOfLastNonSuffixCharacterInNumberFormatSubpattern] + 1;

  return [self substringFromIndex:v2];
}

- (unint64_t)indexOfFirstNonPrefixCharacterInNumberFormatSubpattern
{
  newRangesOfEscapedCharactersInNumberFormatPattern = [self newRangesOfEscapedCharactersInNumberFormatPattern];
  numberSymbols = [objc_opt_class() numberSymbols];
  v4 = [self rangeOfCharacterFromSet:numberSymbols options:0 range:{0, objc_msgSend(self, "length")}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUNumberFormatStringUtilities) indexOfFirstNonPrefixCharacterInNumberFormatSubpattern]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormatter.m"), 286, @"invalid number format subpattern"}];
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
    while ((TSULocationInRanges(v5, newRangesOfEscapedCharactersInNumberFormatPattern) & 1) != 0)
    {
      v5 = [self rangeOfCharacterFromSet:numberSymbols options:0 range:{v5 + 1, objc_msgSend(self, "length") - (v5 + 1)}];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (uint64_t)prefixOfNumberFormatSubpattern
{
  indexOfFirstNonPrefixCharacterInNumberFormatSubpattern = [self indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];

  return [self substringToIndex:indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
}

@end