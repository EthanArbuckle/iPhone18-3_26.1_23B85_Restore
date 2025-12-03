@interface WFNumberFieldUtilities
+ (BOOL)shouldChangeText:(id)text allowMinus:(BOOL)minus;
+ (id)decimalSymbol;
+ (id)negateText:(id)text;
+ (id)stringBySanitizingNumberString:(id)string allowDecimalNumbers:(BOOL)numbers;
+ (unint64_t)numberOfOccurrencesOfString:(id)string inString:(id)inString;
+ (void)negateTextInput:(id)input;
@end

@implementation WFNumberFieldUtilities

+ (unint64_t)numberOfOccurrencesOfString:(id)string inString:(id)inString
{
  stringCopy = string;
  inStringCopy = inString;
  v7 = 0;
  if ([inStringCopy length])
  {
    v8 = 0;
    do
    {
      v9 = [inStringCopy rangeOfString:stringCopy options:0 range:{v8, objc_msgSend(inStringCopy, "length") - v8}];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v7;
      v8 = v9 + v10;
    }

    while (v9 + v10 < [inStringCopy length]);
  }

  return v7;
}

+ (id)stringBySanitizingNumberString:(id)string allowDecimalNumbers:(BOOL)numbers
{
  numbersCopy = numbers;
  v6 = MEMORY[0x277CCAB50];
  stringCopy = string;
  decimalDigitCharacterSet = [v6 decimalDigitCharacterSet];
  [decimalDigitCharacterSet addCharactersInString:@"-"];
  if (numbersCopy)
  {
    decimalSymbol = [self decimalSymbol];
    [decimalDigitCharacterSet addCharactersInString:decimalSymbol];
  }

  invertedSet = [decimalDigitCharacterSet invertedSet];
  v11 = [stringCopy componentsSeparatedByCharactersInSet:invertedSet];

  v12 = [v11 componentsJoinedByString:&stru_288374A58];

  if ([v12 length] >= 2 && objc_msgSend(v12, "hasPrefix:", @"0"))
  {
    v13 = [v12 substringFromIndex:1];

    v12 = v13;
  }

  decimalSymbol2 = [self decimalSymbol];
  v15 = [v12 hasPrefix:decimalSymbol2];

  if (v15)
  {
    v16 = [@"0" stringByAppendingString:v12];

    v12 = v16;
  }

  return v12;
}

+ (BOOL)shouldChangeText:(id)text allowMinus:(BOOL)minus
{
  minusCopy = minus;
  textCopy = text;
  minimumDecimalNumber = [MEMORY[0x277CCA980] minimumDecimalNumber];
  stringValue = [minimumDecimalNumber stringValue];
  v9 = [stringValue length] + 1;
  v12 = [textCopy length] <= v9 && (objc_msgSend(self, "decimalSymbol"), v10 = ;
  return v12;
}

+ (void)negateTextInput:(id)input
{
  inputCopy = input;
  selectedTextRange = [inputCopy selectedTextRange];
  beginningOfDocument = [inputCopy beginningOfDocument];
  v5 = [inputCopy positionFromPosition:beginningOfDocument offset:1];
  v6 = [inputCopy textRangeFromPosition:beginningOfDocument toPosition:v5];
  v7 = [inputCopy textInRange:v6];
  if ([v7 isEqualToString:@"-"])
  {
    [inputCopy replaceRange:v6 withText:&stru_288374A58];
    v8 = -1;
  }

  else
  {
    v9 = [@"-" stringByAppendingString:v7];
    [inputCopy replaceRange:v6 withText:v9];

    v8 = 1;
  }

  start = [selectedTextRange start];
  v11 = [inputCopy positionFromPosition:start offset:v8];

  v12 = [selectedTextRange end];
  v13 = [inputCopy positionFromPosition:v12 offset:v8];

  v14 = [inputCopy textRangeFromPosition:v11 toPosition:v13];
  [inputCopy setSelectedTextRange:v14];
}

+ (id)negateText:(id)text
{
  textCopy = text;
  if (-[__CFString length](textCopy, "length") && (-[__CFString substringToIndex:](textCopy, "substringToIndex:", 1), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToString:@"-"], v4, v5))
  {
    v6 = [(__CFString *)textCopy substringFromIndex:1];
  }

  else
  {
    v7 = &stru_288374A58;
    if (textCopy)
    {
      v7 = textCopy;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"-", v7];
  }

  v8 = v6;

  return v8;
}

+ (id)decimalSymbol
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  decimalSeparator = [currentLocale decimalSeparator];

  return decimalSeparator;
}

@end