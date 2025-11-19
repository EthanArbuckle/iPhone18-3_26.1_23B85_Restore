@interface NSString
+ (id)customNumberFormatDecimalFormatStringWithDigits:(unsigned int)a3 digitString:(id)a4 includeDecimalSeparator:(BOOL)a5;
+ (id)customNumberFormatDecimalTokenDisplayStringWithDigits:(unsigned int)a3 digitString:(id)a4;
+ (id)customNumberFormatDecimalTokenRepresentedStringWithDigits:(unsigned int)a3 digitString:(id)a4;
+ (id)customNumberFormatIntegerFormatStringWithDigits:(unsigned int)a3 digitString:(id)a4;
+ (id)customNumberFormatIntegerTokenDisplayStringWithDigits:(unsigned int)a3 separator:(BOOL)a4 digitString:(id)a5;
+ (id)customNumberFormatIntegerTokenRepresentedStringWithDigits:(unsigned int)a3 separator:(BOOL)a4 digitString:(id)a5;
+ (id)customNumberFormatTokenStringOfType:(int)a3 content:(id)a4;
+ (id)sfu_numberSymbols;
- (BOOL)isSpecialCustomNumberFormatToken;
- (BOOL)isSpecialCustomNumberFormatTokenOfType:(int)a3;
- (id)currencyCodeFromCustomNumberFormatCurrencyToken;
- (id)digitPlaceholderStringInDigitToken;
- (id)sfu_createRangesOfEscapedCharactersInNumberFormatPattern;
- (id)sfu_createStringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand;
- (id)sfu_negativeSubpatternOfNumberFormatPattern;
- (id)sfu_numberPortionOfNumberFormatSubpattern;
- (id)sfu_positiveSubpatternOfNumberFormatPattern;
- (id)sfu_prefixOfNumberFormatSubpattern;
- (id)sfu_stringByRemovingEscapedCharactersFromNumberFormatPattern;
- (id)sfu_suffixOfNumberFormatSubpattern;
- (id)stringByInsertingGroupingSeparators;
- (int)fractionAccuracyFromCustomNumberFormatFractionToken;
- (int)sfu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern;
- (int)sfu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern;
- (int)sfu_indexOfNumberFormatSubpatternSeparator;
- (unsigned)numberOfDigitsInCustomNumberFormatIntegerToken;
@end

@implementation NSString

+ (id)customNumberFormatTokenStringOfType:(int)a3 content:(id)a4
{
  v5 = sub_18A10(a3);
  if (a4)
  {
    return [NSMutableString stringWithFormat:@"%C%C%@", word_9CC1A, v5, a4];
  }

  else
  {
    return [NSMutableString stringWithFormat:@"%C%C", word_9CC1A, v5, v7];
  }
}

- (BOOL)isSpecialCustomNumberFormatToken
{
  if ([(NSString *)self length]< 2)
  {
    return 0;
  }

  v4 = [(NSString *)self characterAtIndex:0];
  return word_9CC1A == v4;
}

- (BOOL)isSpecialCustomNumberFormatTokenOfType:(int)a3
{
  if ([(NSString *)self length]< 2)
  {
    return 0;
  }

  v5 = [(NSString *)self characterAtIndex:0];
  if (word_9CC1A != v5)
  {
    return 0;
  }

  v6 = [(NSString *)self characterAtIndex:1];
  return sub_18A10(a3) == v6;
}

- (unsigned)numberOfDigitsInCustomNumberFormatIntegerToken
{
  if ([(NSString *)self length]< 3)
  {
    return 0;
  }

  v3 = 0;
  v4 = 3;
  v5 = 2;
  do
  {
    if ([(NSString *)self characterAtIndex:v5]!= 44)
    {
      ++v3;
    }

    v5 = v4;
  }

  while ([(NSString *)self length]> v4++);
  return v3;
}

- (id)stringByInsertingGroupingSeparators
{
  v3 = +[NSMutableString string];
  v4 = sub_5220C(0);
  v5 = [(NSString *)self length];
  v6 = v5 - 1;
  if ((v5 - 1) >= 0)
  {
    v7 = 1;
    do
    {
      [v3 insertString:+[NSString stringWithFormat:](NSString atIndex:{"stringWithFormat:", @"%C", -[NSString characterAtIndex:](self, "characterAtIndex:", v6)), 0}];
      if (v6 && !(v7 % v4))
      {
        [v3 insertString:-[NSLocale objectForKey:](+[NSLocale currentLocale](NSLocale atIndex:{"currentLocale"), "objectForKey:", NSLocaleGroupingSeparator), 0}];
      }

      --v6;
      ++v7;
      --v5;
    }

    while (v5);
  }

  return v3;
}

+ (id)customNumberFormatIntegerTokenDisplayStringWithDigits:(unsigned int)a3 separator:(BOOL)a4 digitString:(id)a5
{
  v6 = a4;
  v8 = +[NSMutableString string];
  v9 = sub_5220C(0);
  if (a3 >= 1)
  {
    v10 = v9;
    v11 = 0;
    do
    {
      if (v11)
      {
        if (a3 % v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = !v6;
        }

        if (!v12)
        {
          [v8 appendString:{-[NSLocale objectForKey:](+[NSLocale currentLocale](NSLocale, "currentLocale"), "objectForKey:", NSLocaleGroupingSeparator)}];
        }
      }

      [v8 appendString:a5];
      ++v11;
      v13 = __OFSUB__(a3--, 1);
    }

    while (!(((a3 & 0x80000000) != 0) ^ v13 | (a3 == 0)));
  }

  return v8;
}

+ (id)customNumberFormatIntegerTokenRepresentedStringWithDigits:(unsigned int)a3 separator:(BOOL)a4 digitString:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [NSMutableString stringWithCapacity:a3];
  if (v7 >= 1)
  {
    do
    {
      [(NSMutableString *)v8 appendString:a5];
      --v7;
    }

    while (v7);
  }

  if (v6)
  {
    [(NSMutableString *)v8 appendString:@", "];
  }

  return [NSMutableString customNumberFormatTokenStringOfType:1 content:v8];
}

+ (id)customNumberFormatIntegerFormatStringWithDigits:(unsigned int)a3 digitString:(id)a4
{
  v6 = +[NSMutableString string];
  if (a3 >= 1)
  {
    v7 = a3 + 1;
    do
    {
      [v6 appendString:a4];
      --v7;
    }

    while (v7 > 1);
  }

  return v6;
}

+ (id)customNumberFormatDecimalTokenDisplayStringWithDigits:(unsigned int)a3 digitString:(id)a4
{
  v6 = +[NSMutableString string];
  [v6 appendString:{-[NSLocale objectForKey:](+[NSLocale currentLocale](NSLocale, "currentLocale"), "objectForKey:", NSLocaleDecimalSeparator)}];
  if (a3 >= 1)
  {
    v7 = a3 + 1;
    do
    {
      [v6 appendString:a4];
      --v7;
    }

    while (v7 > 1);
  }

  return v6;
}

+ (id)customNumberFormatDecimalTokenRepresentedStringWithDigits:(unsigned int)a3 digitString:(id)a4
{
  v6 = [NSMutableString stringWithCapacity:a3];
  if ((a3 & 0x80000000) == 0)
  {
    v7 = a3 + 1;
    do
    {
      [(NSMutableString *)v6 appendString:a4];
      --v7;
    }

    while (v7);
  }

  return [NSMutableString customNumberFormatTokenStringOfType:2 content:v6];
}

+ (id)customNumberFormatDecimalFormatStringWithDigits:(unsigned int)a3 digitString:(id)a4 includeDecimalSeparator:(BOOL)a5
{
  v5 = a5;
  v8 = +[NSMutableString string];
  v9 = v8;
  if (v5)
  {
    [v8 appendString:@"."];
  }

  if (a3 >= 1)
  {
    v10 = a3 + 1;
    do
    {
      [v9 appendString:a4];
      --v10;
    }

    while (v10 > 1);
  }

  return v9;
}

- (id)digitPlaceholderStringInDigitToken
{
  v3 = @"0";
  if ([(NSString *)self rangeOfString:@"0"]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = @"#";
    if ([(NSString *)self rangeOfString:@"#"]== 0x7FFFFFFFFFFFFFFFLL)
    {
      return @"?";
    }
  }

  return v3;
}

- (id)currencyCodeFromCustomNumberFormatCurrencyToken
{
  if ([(NSString *)self length]< 3)
  {

    return +[GQNumberFormatter currentLocaleCurrencyCode];
  }

  else
  {

    return [(NSString *)self substringFromIndex:2];
  }
}

- (int)fractionAccuracyFromCustomNumberFormatFractionToken
{
  v2 = [(NSString *)self substringFromIndex:2];

  return [(NSString *)v2 intValue];
}

+ (id)sfu_numberSymbols
{
  result = qword_A4540;
  if (!qword_A4540)
  {
    result = [NSCharacterSet characterSetWithCharactersInString:@"0123456789#@"];
    qword_A4540 = result;
  }

  return result;
}

- (id)sfu_createStringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand
{
  v10 = self;
  if (!qword_A4580)
  {
    qword_A4548 = [[NSString alloc] initWithFormat:@"%C", 45];
    qword_A4550 = [[NSString alloc] initWithFormat:@"%C", 8722];
    qword_A4558 = [[NSString alloc] initWithFormat:@"%C", 65123];
    qword_A4560 = [[NSString alloc] initWithFormat:@"%C", 65293];
    qword_A4568 = [[NSString alloc] initWithFormat:@"%C", 43];
    qword_A4570 = [[NSString alloc] initWithFormat:@"%C", 65122];
    qword_A4578 = [[NSString alloc] initWithFormat:@"%C", 65291];
    v2 = objc_alloc_init(NSMutableString);
    [v2 appendString:qword_A4550];
    [v2 appendString:qword_A4558];
    [v2 appendString:qword_A4560];
    [v2 appendString:qword_A4570];
    [v2 appendString:qword_A4578];
    qword_A4580 = [NSCharacterSet characterSetWithCharactersInString:v2];

    self = v10;
  }

  v3 = [(NSString *)self rangeOfCharacterFromSet:?];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {

    return v10;
  }

  else
  {
    v5 = v3;
    v6 = [(NSString *)v10 mutableCopy];
    v7 = [v6 length];
    v8 = (v7 - v5);
    [v6 replaceOccurrencesOfString:qword_A4550 withString:qword_A4548 options:0 range:{v5, v7 - v5}];
    [v6 replaceOccurrencesOfString:qword_A4558 withString:qword_A4548 options:0 range:{v5, v8}];
    [v6 replaceOccurrencesOfString:qword_A4560 withString:qword_A4548 options:0 range:{v5, v8}];
    [v6 replaceOccurrencesOfString:qword_A4570 withString:qword_A4568 options:0 range:{v5, v8}];
    [v6 replaceOccurrencesOfString:qword_A4578 withString:qword_A4568 options:0 range:{v5, v8}];
    v9 = [[NSString alloc] initWithString:v6];

    return v9;
  }
}

- (id)sfu_createRangesOfEscapedCharactersInNumberFormatPattern
{
  v3 = [(NSString *)self length];
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [(NSString *)self rangeOfString:@"'" options:0 range:v4, v3 - v4];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v7 = v6;
    if (v6 == (v3 - 1))
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = [(NSString *)self rangeOfString:@"'" options:0 range:v6 + 1, v3 - (v6 + 1)];
    }

    v9 = v8 - v7 + 1;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v3 - v7;
    }

    v10 = [NSValue valueWithRange:v7, v9];
    if (v5)
    {
      [v5 addObject:v10];
    }

    else
    {
      v5 = [[NSMutableArray alloc] initWithObjects:{v10, 0}];
    }

    v4 = v8 + 1;
  }

  while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  return v5;
}

- (id)sfu_stringByRemovingEscapedCharactersFromNumberFormatPattern
{
  v3 = [(NSString *)self sfu_createRangesOfEscapedCharactersInNumberFormatPattern];
  if (!v3)
  {
    return self;
  }

  v4 = v3;
  v5 = [NSMutableString stringWithString:self];
  v6 = [(NSString *)self length];
  if ([v4 count])
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [objc_msgSend(v4 objectAtIndex:{v7), "rangeValue"}];
      [(NSMutableString *)v5 replaceCharactersInRange:[(NSMutableString *)v5 length]+ v9 - v6 withString:v10, &stru_85620];
      v7 = v8;
    }

    while ([v4 count] > v8++);
  }

  return v5;
}

- (int)sfu_indexOfNumberFormatSubpatternSeparator
{
  v3 = [(NSString *)self sfu_createRangesOfEscapedCharactersInNumberFormatPattern];
  v4 = [(NSString *)self rangeOfString:@";" options:0 range:0, [(NSString *)self length]];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    LODWORD(v5) = -1;
  }

  else
  {
    v5 = v4;
    while (sub_51D04(v5, v3))
    {
      v5 = [(NSString *)self rangeOfString:@";" options:0 range:v5 + 1, [(NSString *)self length]- (v5 + 1)];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (id)sfu_positiveSubpatternOfNumberFormatPattern
{
  v3 = [(NSString *)self sfu_indexOfNumberFormatSubpatternSeparator];
  if (v3 == -1)
  {
    return self;
  }

  return [(NSString *)self substringToIndex:v3];
}

- (id)sfu_negativeSubpatternOfNumberFormatPattern
{
  v3 = [(NSString *)self sfu_indexOfNumberFormatSubpatternSeparator];
  if (v3 == -1)
  {
    return &stru_85620;
  }

  return [(NSString *)self substringFromIndex:(v3 + 1)];
}

- (id)sfu_numberPortionOfNumberFormatSubpattern
{
  v3 = [(NSString *)self sfu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
  v4 = [(NSString *)self sfu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern]- v3 + 1;

  return [(NSString *)self substringWithRange:v3, v4];
}

- (int)sfu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern
{
  v3 = [(NSString *)self sfu_createRangesOfEscapedCharactersInNumberFormatPattern];
  v4 = [objc_opt_class() sfu_numberSymbols];
  v5 = [(NSString *)self length];
  while (1)
  {
    v6 = [(NSString *)self rangeOfCharacterFromSet:v4 options:4 range:0, v5];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v5 = v6;
    if (!sub_51D04(v6, v3))
    {
      goto LABEL_6;
    }
  }

  LODWORD(v5) = -1;
LABEL_6:

  return v5;
}

- (id)sfu_suffixOfNumberFormatSubpattern
{
  v3 = [(NSString *)self sfu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern]+ 1;

  return [(NSString *)self substringFromIndex:v3];
}

- (int)sfu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern
{
  v3 = [(NSString *)self sfu_createRangesOfEscapedCharactersInNumberFormatPattern];
  v4 = [objc_opt_class() sfu_numberSymbols];
  v5 = [(NSString *)self rangeOfCharacterFromSet:v4 options:0 range:0, [(NSString *)self length]];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    LODWORD(v6) = -1;
  }

  else
  {
    v6 = v5;
    while (sub_51D04(v6, v3))
    {
      v6 = [(NSString *)self rangeOfCharacterFromSet:v4 options:0 range:v6 + 1, [(NSString *)self length]- (v6 + 1)];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_5;
      }
    }
  }

  return v6;
}

- (id)sfu_prefixOfNumberFormatSubpattern
{
  v3 = [(NSString *)self sfu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];

  return [(NSString *)self substringToIndex:v3];
}

@end