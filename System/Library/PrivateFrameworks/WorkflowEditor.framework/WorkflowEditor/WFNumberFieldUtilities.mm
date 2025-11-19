@interface WFNumberFieldUtilities
+ (BOOL)shouldChangeText:(id)a3 allowMinus:(BOOL)a4;
+ (id)decimalSymbol;
+ (id)negateText:(id)a3;
+ (id)stringBySanitizingNumberString:(id)a3 allowDecimalNumbers:(BOOL)a4;
+ (unint64_t)numberOfOccurrencesOfString:(id)a3 inString:(id)a4;
+ (void)negateTextInput:(id)a3;
@end

@implementation WFNumberFieldUtilities

+ (unint64_t)numberOfOccurrencesOfString:(id)a3 inString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0;
  if ([v6 length])
  {
    v8 = 0;
    do
    {
      v9 = [v6 rangeOfString:v5 options:0 range:{v8, objc_msgSend(v6, "length") - v8}];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v7;
      v8 = v9 + v10;
    }

    while (v9 + v10 < [v6 length]);
  }

  return v7;
}

+ (id)stringBySanitizingNumberString:(id)a3 allowDecimalNumbers:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277CCAB50];
  v7 = a3;
  v8 = [v6 decimalDigitCharacterSet];
  [v8 addCharactersInString:@"-"];
  if (v4)
  {
    v9 = [a1 decimalSymbol];
    [v8 addCharactersInString:v9];
  }

  v10 = [v8 invertedSet];
  v11 = [v7 componentsSeparatedByCharactersInSet:v10];

  v12 = [v11 componentsJoinedByString:&stru_288374A58];

  if ([v12 length] >= 2 && objc_msgSend(v12, "hasPrefix:", @"0"))
  {
    v13 = [v12 substringFromIndex:1];

    v12 = v13;
  }

  v14 = [a1 decimalSymbol];
  v15 = [v12 hasPrefix:v14];

  if (v15)
  {
    v16 = [@"0" stringByAppendingString:v12];

    v12 = v16;
  }

  return v12;
}

+ (BOOL)shouldChangeText:(id)a3 allowMinus:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x277CCA980] minimumDecimalNumber];
  v8 = [v7 stringValue];
  v9 = [v8 length] + 1;
  v12 = [v6 length] <= v9 && (objc_msgSend(a1, "decimalSymbol"), v10 = ;
  return v12;
}

+ (void)negateTextInput:(id)a3
{
  v15 = a3;
  v3 = [v15 selectedTextRange];
  v4 = [v15 beginningOfDocument];
  v5 = [v15 positionFromPosition:v4 offset:1];
  v6 = [v15 textRangeFromPosition:v4 toPosition:v5];
  v7 = [v15 textInRange:v6];
  if ([v7 isEqualToString:@"-"])
  {
    [v15 replaceRange:v6 withText:&stru_288374A58];
    v8 = -1;
  }

  else
  {
    v9 = [@"-" stringByAppendingString:v7];
    [v15 replaceRange:v6 withText:v9];

    v8 = 1;
  }

  v10 = [v3 start];
  v11 = [v15 positionFromPosition:v10 offset:v8];

  v12 = [v3 end];
  v13 = [v15 positionFromPosition:v12 offset:v8];

  v14 = [v15 textRangeFromPosition:v11 toPosition:v13];
  [v15 setSelectedTextRange:v14];
}

+ (id)negateText:(id)a3
{
  v3 = a3;
  if (-[__CFString length](v3, "length") && (-[__CFString substringToIndex:](v3, "substringToIndex:", 1), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToString:@"-"], v4, v5))
  {
    v6 = [(__CFString *)v3 substringFromIndex:1];
  }

  else
  {
    v7 = &stru_288374A58;
    if (v3)
    {
      v7 = v3;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"-", v7];
  }

  v8 = v6;

  return v8;
}

+ (id)decimalSymbol
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 decimalSeparator];

  return v3;
}

@end