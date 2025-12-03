@interface SCRO2DBrailleString
+ (id)brailleStringsFromBrailleData:(id)data;
- (SCRO2DBrailleString)initWithText:(id)text;
- (_NSRange)_wordRangeAtIndex:(unint64_t)index inBraille:(id)braille;
- (id)brailleLinesForWidth:(unint64_t)width indent:(unint64_t)indent focused:(BOOL)focused wordWrap:(BOOL)wrap;
@end

@implementation SCRO2DBrailleString

- (SCRO2DBrailleString)initWithText:(id)text
{
  v24 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v22.receiver = self;
  v22.super_class = SCRO2DBrailleString;
  v5 = [(SCRO2DBrailleString *)&v22 init];
  if (v5)
  {
    v6 = +[SCROBrailleTranslationManager sharedManager];
    v7 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [textCopy componentsSeparatedByString:@"\n"];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v6 printBrailleForText:*(*(&v18 + 1) + 8 * v12) language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];
          [(NSArray *)v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    brailleParagraphs = v5->_brailleParagraphs;
    v5->_brailleParagraphs = v7;

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)brailleStringsFromBrailleData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  strings = [dataCopy strings];
  v6 = [strings count];

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      strings2 = [dataCopy strings];
      v9 = [strings2 objectAtIndex:i];

      v10 = [[SCRO2DBrailleString alloc] initWithText:v9];
      [v4 addObject:v10];
    }
  }

  return v4;
}

- (id)brailleLinesForWidth:(unint64_t)width indent:(unint64_t)indent focused:(BOOL)focused wordWrap:(BOOL)wrap
{
  v39 = *MEMORY[0x277D85DE8];
  if (width)
  {
    focusedCopy = focused;
    v9 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = self->_brailleParagraphs;
    v32 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v32)
    {
      v30 = *v35;
      if (indent)
      {
        v10 = focusedCopy;
      }

      else
      {
        v10 = 0;
      }

      v29 = v10;
      v11 = @"⣿";
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          if (v29)
          {
            v14 = v11;
          }

          else
          {
            v14 = &stru_28763D5C8;
          }

          v33 = [(__CFString *)v14 stringByPaddingToLength:indent withString:@"⠀" startingAtIndex:0];
          v15 = [v33 stringByAppendingString:v13];
          v16 = v15;
          if ([v15 length])
          {
            v17 = v15;
            do
            {
              if ([v17 length] < width)
              {
                v18 = [v17 stringByPaddingToLength:width withString:@"⠀" startingAtIndex:0];

                v17 = v18;
              }

              v19 = [(SCRO2DBrailleString *)self _wordRangeAtIndex:width inBraille:v17];
              if (v19 < width && (v21 = v19) != 0 && v19 + v20 > width)
              {
                v22 = [v17 substringToIndex:v19];
                v23 = [v22 stringByPaddingToLength:width withString:@"⠀" startingAtIndex:0];

                [v9 addObject:v23];
                v16 = [v17 substringFromIndex:v21];

                v17 = v23;
              }

              else
              {
                v24 = [v17 substringToIndex:width];
                [v9 addObject:v24];

                v16 = [v17 substringFromIndex:width];
              }

              v17 = v16;
            }

            while ([v16 length]);
          }

          v11 = &stru_28763D5C8;
        }

        v11 = &stru_28763D5C8;
        v32 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v32);
    }

    v25 = [v9 copy];
  }

  else
  {
    v25 = objc_opt_new();
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (_NSRange)_wordRangeAtIndex:(unint64_t)index inBraille:(id)braille
{
  brailleCopy = braille;
  if ([brailleCopy length] >= index)
  {
    indexCopy = index;
    do
    {
      v7 = indexCopy;
      if (!indexCopy)
      {
        break;
      }

      --indexCopy;
    }

    while ([brailleCopy characterAtIndex:v7 - 1] != 10240);
    for (; index < [brailleCopy length]; ++index)
    {
      if ([brailleCopy characterAtIndex:index] == 10240)
      {
        break;
      }
    }

    v6 = index - v7;
  }

  else
  {
    v6 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v7;
  v10 = v6;
  result.length = v10;
  result.location = v9;
  return result;
}

@end