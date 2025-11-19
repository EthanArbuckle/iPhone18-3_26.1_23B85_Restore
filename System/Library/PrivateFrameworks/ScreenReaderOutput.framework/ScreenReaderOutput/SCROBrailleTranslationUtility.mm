@interface SCROBrailleTranslationUtility
+ (id)_dotDescriptionForBrailleString:(id)a3;
+ (id)_spokenStringForBrailleString:(id)a3 isDelete:(BOOL)a4 speakLiterally:(BOOL *)a5 modifiers:(id)a6;
+ (id)_translatedTextForPrefixBraille:(id)a3 printBraille:(id)a4 translationMode:(unint64_t)a5;
+ (id)_trimCommonPrefixWithString:(id)a3 fromString:(id)a4;
+ (id)brailleForText:(id)a3;
+ (id)translatedTextInIsolationForBraille:(id)a3 translationMode:(unint64_t)a4;
@end

@implementation SCROBrailleTranslationUtility

+ (id)translatedTextInIsolationForBraille:(id)a3 translationMode:(unint64_t)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = +[SCROBrailleTranslationManager inputManager];
    v7 = [v6 textForPrintBraille:v5 language:0 mode:a4 locations:0];
  }

  else
  {
    v7 = &stru_28763D5C8;
  }

  return v7;
}

+ (id)_translatedTextForPrefixBraille:(id)a3 printBraille:(id)a4 translationMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 translatedTextInIsolationForBraille:@"⠿" translationMode:a5];
  v50 = v10;
  if (SCROJapaneseInputBrailleSelected())
  {
    goto LABEL_7;
  }

  if (![v10 length])
  {
    goto LABEL_7;
  }

  v11 = [a1 translatedTextInIsolationForBraille:@"⠿⠿⠿" translationMode:1];
  [v11 stringByReplacingOccurrencesOfString:@" " withString:&stru_28763D5C8];
  v13 = v12 = v8;

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v10, v10, v10, v10];
  v15 = [v13 isEqualToString:v14];

  v8 = v12;
  if (!v15)
  {
LABEL_7:
    v21 = 1;
    v22 = [a1 translatedTextInIsolationForBraille:v9 translationMode:1];
    goto LABEL_8;
  }

  if ([v12 length])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v12, v9, @"⠿"];
    v17 = [a1 translatedTextInIsolationForBraille:v16 translationMode:3];

    v18 = [v17 rangeOfString:v10 options:0];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = &stru_28763D5C8;
    }

    else
    {
      v20 = [v17 substringFromIndex:v18 + v19];
    }

    v42 = [(__CFString *)v20 rangeOfString:v10 options:4];
    if (v42 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = &stru_28763D5C8;
    }

    else
    {
      v37 = [(__CFString *)v20 substringToIndex:v42];
    }

    v43 = [@"⠿" stringByAppendingString:v9];
    v44 = [a1 translatedTextInIsolationForBraille:v43 translationMode:3];

    v45 = [v44 rangeOfString:v10];
    if (v45 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = &stru_28763D5C8;
    }

    else
    {
      v41 = [v44 substringFromIndex:v45 + v46];
    }

    if (!v37 || (v47 = [(__CFString *)v37 length], v48 = v37, !v47))
    {
      v48 = v41;
    }

    goto LABEL_32;
  }

  v37 = [a1 translatedTextInIsolationForBraille:v9 translationMode:3];
  v38 = [v9 stringByAppendingString:@"⠿"];
  v39 = [a1 translatedTextInIsolationForBraille:v38 translationMode:3];

  v40 = [v39 rangeOfString:v10 options:4];
  if (v40 == 0x7FFFFFFFFFFFFFFFLL)
  {

    v41 = &stru_28763D5C8;
  }

  else
  {
    v41 = [v39 substringToIndex:v40];

    if (!v41)
    {
LABEL_31:
      v48 = v37;
      goto LABEL_32;
    }
  }

  v49 = [(__CFString *)v41 length];
  v48 = v41;
  if (!v49)
  {
    goto LABEL_31;
  }

LABEL_32:
  v22 = v48;

  v21 = 3;
  v8 = v12;
LABEL_8:
  v23 = v9;
  v24 = [v8 stringByAppendingString:v9];
  v25 = v8;
  v26 = [a1 translatedTextInIsolationForBraille:v8 translationMode:v21];
  v27 = [a1 translatedTextInIsolationForBraille:v24 translationMode:v21];
  v28 = [a1 _trimCommonPrefixWithString:v26 fromString:v27];
  v29 = [(__CFString *)v22 uppercaseString];
  v30 = [v28 length];
  if (v30 == [(__CFString *)v22 length])
  {
    if ([v28 isEqualToString:v29])
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v33 = v22;
    v22 = v31;
  }

  else
  {
    v32 = [a1 translatedTextInIsolationForBraille:v24 translationMode:1];
    v33 = v32;
    if (v29 && [(__CFString *)v32 hasSuffix:v29])
    {
      v34 = v29;

      v22 = v34;
    }
  }

  v35 = v22;
  return v22;
}

+ (id)_trimCommonPrefixWithString:(id)a3 fromString:(id)a4
{
  v5 = a4;
  v6 = [v5 commonPrefixWithString:a3 options:0];
  v7 = [v5 substringFromIndex:{objc_msgSend(v6, "length")}];

  return v7;
}

+ (id)_spokenStringForBrailleString:(id)a3 isDelete:(BOOL)a4 speakLiterally:(BOOL *)a5 modifiers:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if ([v10 length])
  {
    if (a5)
    {
      *a5 = 0;
    }

    v12 = [&stru_28763D5C8 mutableCopy];
    v13 = [MEMORY[0x277CF3318] sharedModel];
    v14 = [v13 bufferBrailleString];

    if (v14)
    {
      if (v8)
      {
        v15 = v14;
        if ([v15 length] >= 0xB)
        {
          v16 = [v15 substringFromIndex:{objc_msgSend(v15, "length") - 10}];

          v15 = v16;
        }

        v17 = v10;
      }

      else
      {
        v19 = [MEMORY[0x277CF3318] sharedModel];
        v20 = [v19 bufferBrailleString];

        if ([v20 length])
        {
          v15 = [v20 substringToIndex:{objc_msgSend(v20, "length") - 1}];
        }

        else
        {
          v15 = 0;
        }

        v21 = v10;
      }

      v30 = a1;
      v22 = [a1 _translatedTextForPrefixBraille:v15 printBraille:v10 translationMode:1];
      v23 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v24 = [v22 stringByTrimmingCharactersInSet:v23];

      if ([v24 length])
      {
        v25 = v24;

        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF33A8]];
        v27 = [v11 containsObject:v26];

        if (v27)
        {
          v22 = [v25 uppercaseString];
        }

        else
        {
          v22 = v25;
        }
      }

      if ([v22 length] == 1 && objc_msgSend(v22, "characterAtIndex:", 0) >> 11 >= 5 && objc_msgSend(v22, "characterAtIndex:", 0) >> 8 <= 0x28 || !objc_msgSend(v22, "length"))
      {
        v28 = [v30 _dotDescriptionForBrailleString:v10];
        if (v28)
        {
          [v12 appendString:v28];
        }
      }

      else
      {
        [v12 appendString:v22];
        if (a5)
        {
          *a5 = 1;
        }
      }

      v18 = v12;
    }

    else
    {
      v15 = 0;
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_dotDescriptionForBrailleString:(id)a3
{
  v3 = a3;
  if (_dotDescriptionForBrailleString___AXNumberFormatterWithOptionsOnceToken != -1)
  {
    +[SCROBrailleTranslationUtility _dotDescriptionForBrailleString:];
  }

  v4 = [v3 characterAtIndex:0];
  LODWORD(v5) = 0;
  v6 = 0;
  v7 = &stru_28763D5C8;
  do
  {
    if ((v4 >> v5))
    {
      if (v6)
      {
        v8 = [(__CFString *)v7 stringByAppendingString:@" "];

        v7 = v8;
      }

      v9 = _dotDescriptionForBrailleString___brailleDotNumberFormatter;
      v5 = (v5 + 1);
      v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
      v11 = [v9 stringFromNumber:v10];
      v12 = [(__CFString *)v7 stringByAppendingString:v11];

      ++v6;
      v7 = v12;
    }

    else
    {
      LODWORD(v5) = v5 + 1;
    }
  }

  while (v5 != 8);
  if (v6)
  {
    if (v6 == 1)
    {
      v13 = @"braille.unknown.key.format";
    }

    else
    {
      v13 = @"braille.unknown.key.format.multiple";
    }

    v14 = [_dotDescriptionForBrailleString___bundle localizedStringForKey:v13 value:&stru_28763D5C8 table:@"Server"];
    v15 = SCRCFormattedString();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __65__SCROBrailleTranslationUtility__dotDescriptionForBrailleString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _dotDescriptionForBrailleString___brailleDotNumberFormatter;
  _dotDescriptionForBrailleString___brailleDotNumberFormatter = v0;

  v2 = _dotDescriptionForBrailleString___brailleDotNumberFormatter;
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  [v2 setLocale:v3];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  _dotDescriptionForBrailleString___bundle = v4;

  return MEMORY[0x2821F96F8](v4);
}

+ (id)brailleForText:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[SCROBrailleTranslationManager sharedManager];
    v5 = [v4 printBrailleForText:v3 language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];
  }

  else
  {
    v5 = &stru_28763D5C8;
  }

  return v5;
}

@end