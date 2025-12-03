@interface ABTTranslator
- (ABTTranslator)init;
- (id)_applyNumeralReadings:(id)readings locations:(id *)locations;
- (id)_brailleForProcessedText:(id)text locations:(id *)locations;
- (id)_compositionOf:(id)of then:(id)then;
- (id)_identityMapOfSize:(int64_t)size;
- (id)_ja_printBrailleForText:(id)text locations:(id *)locations;
- (id)_ja_textForPrintBraille:(id)braille;
- (id)_ko_printBrailleForText:(id)text locations:(id *)locations;
- (id)_ko_textForPrintBraille:(id)braille locations:(id *)locations;
- (id)_locationsDataForLocationsArray:(id)array;
- (id)_longVowelExpressedFor:(id)for partOfSpeech:(int64_t)speech;
- (id)_normalize:(id)_normalize;
- (id)_printBrailleForText:(id)text locations:(id *)locations;
- (id)_processKanjiNumbers:(id)numbers locations:(id *)locations;
- (id)_replaceWords:(id)words locations:(id *)locations;
- (id)_yomiWithSpacingOf:(id)of locations:(id *)locations;
- (id)_zeroMapOfSize:(int64_t)size;
- (id)activeTable;
- (id)applyNumeralReadings:(id)readings locations:(id *)locations;
- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges;
- (id)processKanjiNumbers:(id)numbers locations:(id *)locations;
- (id)replaceWords:(id)words locations:(id *)locations;
- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations;
@end

@implementation ABTTranslator

- (ABTTranslator)init
{
  v55.receiver = self;
  v55.super_class = ABTTranslator;
  v2 = [(ABTTranslator *)&v55 init];
  v3 = v2;
  if (v2)
  {
    v2->_activeTable = 0;
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"JapaneseNormalization" ofType:@"plist"];

    v54 = v5;
    v6 = [NSDictionary dictionaryWithContentsOfFile:v5];
    normalizer = v3->_normalizer;
    v3->_normalizer = v6;

    if (!v3->_normalizer)
    {
      v8 = sub_5CC0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_21634();
      }
    }

    rules = v3->_rules;
    v3->_rules = &off_34CF8;

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 pathForResource:@"JapaneseNumeralReadings" ofType:@"plist"];

    v53 = v11;
    v12 = [NSDictionary dictionaryWithContentsOfFile:v11];
    numeralInfo = v3->_numeralInfo;
    v3->_numeralInfo = v12;

    if (!v3->_numeralInfo)
    {
      v14 = sub_5CC0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_21668();
      }
    }

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 pathForResource:@"kataToHira" ofType:@"plist"];

    v52 = v16;
    v17 = [NSDictionary dictionaryWithContentsOfFile:v16];
    kataToHira = v3->_kataToHira;
    v3->_kataToHira = v17;

    if (!v3->_kataToHira)
    {
      v19 = sub_5CC0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_2169C();
      }
    }

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 pathForResource:@"kanaToBraille" ofType:@"plist"];

    v22 = [NSDictionary dictionaryWithContentsOfFile:v21];
    kanaToBraille = v3->_kanaToBraille;
    v3->_kanaToBraille = v22;

    if (!v3->_kanaToBraille)
    {
      v24 = sub_5CC0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_216D0();
      }
    }

    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 pathForResource:@"numberToBraille" ofType:@"plist"];

    v27 = [NSDictionary dictionaryWithContentsOfFile:v26];
    numberToBraille = v3->_numberToBraille;
    v3->_numberToBraille = v27;

    if (!v3->_numberToBraille)
    {
      v29 = sub_5CC0();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_21704();
      }
    }

    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 pathForResource:@"romajiToBraille" ofType:@"plist"];

    v32 = [NSDictionary dictionaryWithContentsOfFile:v31];
    romajiToBraille = v3->_romajiToBraille;
    v3->_romajiToBraille = v32;

    if (!v3->_romajiToBraille)
    {
      v34 = sub_5CC0();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_21738();
      }
    }

    unknownPlaceholder = v3->_unknownPlaceholder;
    v3->_unknownPlaceholder = @"⠢";

    v36 = [NSBundle bundleForClass:objc_opt_class()];
    v37 = [v36 pathForResource:@"BrailleToKana" ofType:@"plist"];

    v38 = [NSDictionary dictionaryWithContentsOfFile:v37];
    brailleToKana = v3->_brailleToKana;
    v3->_brailleToKana = v38;

    if (!v3->_brailleToKana)
    {
      v40 = sub_5CC0();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_2176C();
      }
    }

    v41 = [NSBundle bundleForClass:objc_opt_class()];
    v42 = [v41 pathForResource:@"BrailleToNumber" ofType:@"plist"];

    v43 = [NSDictionary dictionaryWithContentsOfFile:v42];
    brailleToNumber = v3->_brailleToNumber;
    v3->_brailleToNumber = v43;

    if (!v3->_brailleToNumber)
    {
      v45 = sub_5CC0();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_217A0();
      }
    }

    v46 = [NSBundle bundleForClass:objc_opt_class()];
    v47 = [v46 pathForResource:@"BrailleToRomaji" ofType:@"plist"];

    v48 = [NSDictionary dictionaryWithContentsOfFile:v47];
    brailleToRomaji = v3->_brailleToRomaji;
    v3->_brailleToRomaji = v48;

    if (!v3->_brailleToRomaji)
    {
      v50 = sub_5CC0();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_217D4();
      }
    }
  }

  return v3;
}

- (id)activeTable
{
  if (self->_activeTable == 1)
  {
    return @"ko";
  }

  else
  {
    return @"ja";
  }
}

- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges
{
  textCopy = text;
  v9 = [[NSMutableData alloc] initWithCapacity:{8 * objc_msgSend(textCopy, "length")}];
  if ([textCopy length])
  {
    v10 = 0;
    do
    {
      v40 = v10;
      [v9 appendBytes:&v40 length:8];
      ++v10;
    }

    while (v10 < [textCopy length]);
  }

  selfCopy = self;
  if (self->_activeTable == 1)
  {
    v11 = @"ko-KR";
  }

  else
  {
    v11 = @"ja-JP";
  }

  v12 = [[BRLTEmojiPrintPreprocessor alloc] initWithPrimaryLanguageCode:v11];
  v29 = objc_opt_new();
  v13 = [[NSArray alloc] initWithObjects:{v12, v29, 0}];
  v14 = v9;
  v15 = textCopy;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
  v32 = v15;
  v33 = v14;
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      v20 = 0;
      v21 = v15;
      v22 = v14;
      do
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v36 + 1) + 8 * v20);
        v35 = 0;
        v15 = [v23 preprocessPrintString:v21 withLocationMap:&v35 isEightDot:1 textFormattingRanges:0];
        v24 = v35;

        v14 = [BRLTPreprocessorHelper mergeLocationMap:v22 withLocationMap:v24];

        v20 = v20 + 1;
        v21 = v15;
        v22 = v14;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v18);
  }

  v34 = 0;
  v25 = [(ABTTranslator *)selfCopy _printBrailleForText:v15 locations:&v34];
  v26 = v34;
  if (locations)
  {
    v27 = [(ABTTranslator *)selfCopy _locationsDataForLocationsArray:v26];
    *locations = [BRLTPreprocessorHelper mergeLocationMap:v14 withLocationMap:v27];
  }

  return v25;
}

- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations
{
  if (self->_activeTable == 1)
  {
    [(ABTTranslator *)self _ko_textForPrintBraille:braille locations:locations];
  }

  else
  {
    [(ABTTranslator *)self _ja_textForPrintBraille:braille, mode, locations];
  }
  v5 = ;

  return v5;
}

- (id)_printBrailleForText:(id)text locations:(id *)locations
{
  if (self->_activeTable == 1)
  {
    [(ABTTranslator *)self _ko_printBrailleForText:text locations:locations];
  }

  else
  {
    [(ABTTranslator *)self _ja_printBrailleForText:text locations:locations];
  }
  v4 = ;

  return v4;
}

- (id)_ko_printBrailleForText:(id)text locations:(id *)locations
{
  v5 = [_TtC22AppleBrailleTranslator19ABTKoreanTranslator translate:text];
  v6 = v5;
  if (locations)
  {
    *locations = [v5 locations];
  }

  string = [v6 string];

  return string;
}

- (id)_ja_printBrailleForText:(id)text locations:(id *)locations
{
  v6 = [(ABTTranslator *)self _normalize:text];
  v7 = -[ABTTranslator _identityMapOfSize:](self, "_identityMapOfSize:", [v6 length]);
  if ([v6 length])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = 1;
      v11 = [v6 substringWithRange:{v9, 1}];
      if (([v11 isEqual:@" "] & 1) == 0)
      {
        v12 = [(NSDictionary *)self->_kanaToBraille objectForKey:v11];

        v10 = v8;
        if (!v12)
        {

          goto LABEL_9;
        }
      }

      ++v9;
      v8 = v10;
    }

    while (v9 < [v6 length]);
    v13 = v6;
    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }

    v14 = v13;
    v15 = 0;
  }

  else
  {
LABEL_9:
    v16 = v6;
LABEL_10:
    v35 = 0;
    v17 = [(ABTTranslator *)self _replaceWords:v6 locations:&v35];
    v18 = v35;
    v19 = [(ABTTranslator *)self _compositionOf:v18 then:v7];

    v34 = v18;
    v20 = [(ABTTranslator *)self _processKanjiNumbers:v17 locations:&v34];
    v21 = v34;

    v22 = [(ABTTranslator *)self _compositionOf:v21 then:v19];

    v33 = v21;
    v23 = [(ABTTranslator *)self _applyNumeralReadings:v20 locations:&v33];
    v24 = v33;

    v25 = [(ABTTranslator *)self _compositionOf:v24 then:v22];

    v32 = v24;
    v14 = [(ABTTranslator *)self _yomiWithSpacingOf:v23 locations:&v32];
    v15 = v32;

    v7 = [(ABTTranslator *)self _compositionOf:v15 then:v25];
  }

  v31 = v15;
  v26 = [(ABTTranslator *)self _brailleForProcessedText:v14 locations:&v31];
  v27 = v31;

  v28 = [(ABTTranslator *)self _compositionOf:v27 then:v7];

  if (locations)
  {
    v29 = v28;
    *locations = v28;
  }

  return v26;
}

- (id)_identityMapOfSize:(int64_t)size
{
  v4 = [[NSMutableArray alloc] initWithCapacity:size];
  if (size >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [NSNumber numberWithInteger:v5];
      [v4 addObject:v6];

      ++v5;
    }

    while (size != v5);
  }

  return v4;
}

- (id)_zeroMapOfSize:(int64_t)size
{
  sizeCopy = size;
  v4 = [[NSMutableArray alloc] initWithCapacity:size];
  if (sizeCopy >= 1)
  {
    do
    {
      [v4 addObject:&off_332A0];
      --sizeCopy;
    }

    while (sizeCopy);
  }

  return v4;
}

- (id)_compositionOf:(id)of then:(id)then
{
  ofCopy = of;
  thenCopy = then;
  if ([ofCopy count] && !objc_msgSend(thenCopy, "count"))
  {
    v7 = 0;
  }

  else
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(ofCopy, "count")}];
    if ([ofCopy count])
    {
      v8 = 0;
      do
      {
        v9 = [ofCopy objectAtIndex:v8];
        integerValue = [v9 integerValue];

        if ((integerValue & 0x8000000000000000) != 0)
        {
          integerValue = 0;
        }

        else if (integerValue >= [thenCopy count])
        {
          integerValue = [thenCopy count] - 1;
        }

        v11 = [thenCopy objectAtIndex:integerValue];
        [v7 addObject:v11];

        ++v8;
      }

      while (v8 < [ofCopy count]);
    }
  }

  return v7;
}

- (id)_normalize:(id)_normalize
{
  _normalizeCopy = _normalize;
  v5 = [[NSMutableString alloc] initWithCapacity:{objc_msgSend(_normalizeCopy, "length")}];
  if ([_normalizeCopy length])
  {
    v6 = 0;
    do
    {
      v7 = [_normalizeCopy substringWithRange:{v6, 1}];
      v8 = [(NSDictionary *)self->_normalizer objectForKey:v7];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      [v5 appendString:v9];

      ++v6;
    }

    while (v6 < [_normalizeCopy length]);
  }

  return v5;
}

- (id)_replaceWords:(id)words locations:(id *)locations
{
  wordsCopy = words;
  v6 = [[NSAttributedString alloc] initWithString:wordsCopy];
  v33 = wordsCopy;
  v7 = -[ABTTranslator _identityMapOfSize:](self, "_identityMapOfSize:", [wordsCopy length]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [(NSDictionary *)self->_rules allKeys];
  v38 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v38)
  {
    v8 = 1;
    v36 = *v46;
    selfCopy = self;
    do
    {
      v9 = 0;
      v10 = v7;
      v11 = v6;
      do
      {
        v40 = v10;
        if (*v46 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v9;
        v12 = *(*(&v45 + 1) + 8 * v9);
        v13 = [(NSDictionary *)self->_rules objectForKey:v12];
        v14 = [v13 objectAtIndex:0];
        v15 = [v13 objectAtIndex:1];
        v39 = v13;
        v43 = [v13 objectAtIndex:2];
        v6 = objc_opt_new();
        v16 = objc_opt_new();
        if ([v11 length])
        {
          v17 = 0;
          v44 = v12;
          v42 = v6;
          do
          {
            v18 = [v12 length] + v17;
            if (v18 <= [v11 length] && (objc_msgSend(v11, "string"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "substringWithRange:", v17, objc_msgSend(v12, "length")), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v12, "isEqual:", v20), v20, v19, v21))
            {
              if ([v14 length])
              {
                v22 = 0;
                do
                {
                  v23 = [v15 objectAtIndex:v22];
                  v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v23 integerValue] + v17);
                  [v16 addObject:v24];

                  ++v22;
                }

                while (v22 < [v14 length]);
              }

              v25 = [NSAttributedString alloc];
              v49[0] = @"token";
              v26 = [NSNumber numberWithInteger:v8];
              v49[1] = @"partOfSpeech";
              v50[0] = v26;
              v50[1] = v43;
              v27 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
              v28 = [v25 initWithString:v14 attributes:v27];

              ++v8;
              v6 = v42;
              [v42 appendAttributedString:v28];
              v12 = v44;
              v29 = [v44 length];
            }

            else
            {
              v30 = [NSNumber numberWithInteger:v17];
              [v16 addObject:v30];

              v28 = [v11 attributedSubstringFromRange:{v17, 1}];
              [v6 appendAttributedString:v28];
              v29 = 1;
              v12 = v44;
            }

            v17 += v29;
          }

          while (v17 < [v11 length]);
        }

        self = selfCopy;
        v7 = [(ABTTranslator *)selfCopy _compositionOf:v16 then:v40];

        v9 = v41 + 1;
        v10 = v7;
        v11 = v6;
      }

      while ((v41 + 1) != v38);
      v38 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v38);
  }

  if (locations)
  {
    v31 = v7;
    *locations = v7;
  }

  return v6;
}

- (id)_processKanjiNumbers:(id)numbers locations:(id *)locations
{
  numbersCopy = numbers;
  v61 = +[NSCharacterSet decimalDigitCharacterSet];
  v63 = objc_opt_new();
  v6 = objc_opt_new();
  if (![numbersCopy length])
  {
    goto LABEL_58;
  }

  locationsCopy = locations;
  v7 = 0;
  v8 = 0;
  v64 = 0;
  integerValue = 0;
  v9 = 0;
  v10 = 4;
  v69 = numbersCopy;
  do
  {
    v65 = v8;
    v11 = 1;
    v12 = [numbersCopy attributedSubstringFromRange:{v9, 1}];
    v13 = v12;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    if ([v12 isEqual:@"千"])
    {
LABEL_5:
      v11 = 0;
      goto LABEL_8;
    }

    if (v10 == 3)
    {
      goto LABEL_7;
    }

    if ([v13 isEqual:@"百"])
    {
      goto LABEL_5;
    }

    if (v10 > 1)
    {
LABEL_7:
      v11 = 1;
    }

    else
    {
      v11 = [v13 isEqual:@"十"] ^ 1;
    }

LABEL_8:
    string = [v13 string];
    v15 = [&off_34D20 objectForKey:string];

    v70 = v15;
    if (v15)
    {
      LOBYTE(v16) = 1;
    }

    else
    {
      string2 = [v13 string];
      v16 = [&off_34C50 containsObject:string2];
    }

    v68 = [v69 attributesAtIndex:v9 effectiveRange:0];
    v67 = [v68 objectForKey:@"token"];
    v18 = (v67 == 0) & v16;
    if ((v7 & 1) == 0)
    {
      v7 = 0;
      if (((v67 == 0) & v16) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_27;
    }

    if ((v18 & v11) == 1 && (v70 == 0) | (v64 ^ 1) & 1)
    {
      v7 = 1;
      if (((v67 == 0) & v16) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_27;
    }

    if (v64)
    {
      v60 = v13;
      v19 = v6;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v20 = v10 - 1;
        do
        {
          v21 = [[NSAttributedString alloc] initWithString:@"0"];
          [v63 appendAttributedString:v21];

          v22 = [NSNumber numberWithInteger:v9 - 2];
          [v6 addObject:v22];

          --v20;
        }

        while (v20);
      }

      v23 = [NSAttributedString alloc];
      v24 = [NSNumber numberWithInteger:integerValue];
      v25 = [NSString stringWithFormat:@"%@", v24];
      v26 = [v23 initWithString:v25];

      [v63 appendAttributedString:v26];
      v27 = [NSNumber numberWithInteger:v9 - 1];
      [v6 addObject:v27];

LABEL_26:
      v64 = 0;
      v7 = 0;
      v10 = 4;
      v6 = v19;
      v13 = v60;
      if ((v18 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_27;
    }

    if ((v10 - 1) <= 2)
    {
      v60 = v13;
      v19 = v6;
      do
      {
        v28 = [[NSAttributedString alloc] initWithString:@"0"];
        [v63 appendAttributedString:v28];

        v29 = [NSNumber numberWithInteger:v9 - 1];
        [v6 addObject:v29];

        --v10;
      }

      while (v10);
      goto LABEL_26;
    }

    v64 = 0;
    v7 = 0;
    v10 = 4;
    if (((v67 == 0) & v16) == 0)
    {
LABEL_47:
      [v63 appendAttributedString:v13];
      v46 = [NSNumber numberWithInteger:v9];
      [v6 addObject:v46];

      v8 = 0;
      goto LABEL_48;
    }

LABEL_27:
    if (v9)
    {
      string3 = [v69 string];
      v31 = [v61 characterIsMember:{objc_msgSend(string3, "characterAtIndex:", v9 - 1)}];
    }

    else
    {
      v31 = 0;
    }

    if ((v65 | v31))
    {
      [v63 appendAttributedString:v13];
      v32 = [NSNumber numberWithInteger:v9];
      [v6 addObject:v32];

      v8 = 1;
    }

    else
    {
      v33 = v70;
      if (v70)
      {
        integerValue = [v70 integerValue];
        v8 = 0;
        v64 = 1;
        v7 = 1;
        goto LABEL_49;
      }

      v34 = integerValue;
      if ((v64 & 1) == 0)
      {
        v34 = 1;
      }

      integerValue = v34;
      string4 = [v13 string];
      v36 = [&off_34D48 objectForKey:string4];
      integerValue2 = [v36 integerValue];

      if (v10 <= 3)
      {
        v37 = v10 + ~integerValue2;
        if (v37 >= 1)
        {
          if (v64)
          {
            v38 = -2;
          }

          else
          {
            v38 = -1;
          }

          do
          {
            v39 = [[NSAttributedString alloc] initWithString:@"0"];
            [v63 appendAttributedString:v39];

            v40 = [NSNumber numberWithInteger:v38 + v9];
            [v6 addObject:v40];

            --v37;
          }

          while (v37);
        }
      }

      v41 = [NSAttributedString alloc];
      v42 = [NSNumber numberWithInteger:integerValue];
      v43 = [NSString stringWithFormat:@"%@", v42];
      v44 = [v41 initWithString:v43];

      [v63 appendAttributedString:v44];
      v45 = [NSNumber numberWithInteger:v9 - (v64 & 1)];
      [v6 addObject:v45];

      v64 = 0;
      v8 = 0;
      v7 = 1;
      v10 = integerValue2;
    }

LABEL_48:
    v33 = v70;
LABEL_49:

    ++v9;
    numbersCopy = v69;
  }

  while (v9 < [v69 length]);
  locations = locationsCopy;
  if (v7)
  {
    if (v64)
    {
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v47 = v10 - 1;
        do
        {
          v48 = [[NSAttributedString alloc] initWithString:@"0"];
          [v63 appendAttributedString:v48];

          v49 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v69 length] - 2);
          [v6 addObject:v49];

          --v47;
        }

        while (v47);
      }

      v50 = [NSAttributedString alloc];
      v51 = [NSNumber numberWithInteger:integerValue];
      v52 = [NSString stringWithFormat:@"%@", v51];
      v53 = [v50 initWithString:v52];

      [v63 appendAttributedString:v53];
      v54 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v69 length] - 1);
      [v6 addObject:v54];
    }

    else if ((v10 - 1) <= 2)
    {
      do
      {
        v55 = [[NSAttributedString alloc] initWithString:@"0"];
        [v63 appendAttributedString:v55];

        v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v69 length] - 1);
        [v6 addObject:v56];

        --v10;
      }

      while (v10);
    }
  }

LABEL_58:
  if (locations)
  {
    v57 = v6;
    *locations = v6;
  }

  return v63;
}

- (id)_applyNumeralReadings:(id)readings locations:(id *)locations
{
  readingsCopy = readings;
  v5 = [[NSSet alloc] initWithObjects:{@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"〇", @"一", @"二", @"三", @"四", @"五", @"六", @"七", @"八", @"九", @"十", @"百", @"千", @"万", @"億", @"兆", 0}];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  if ([readingsCopy length])
  {
    v8 = 0;
    v55 = -1;
    v56 = v5;
    v9 = &_s10Foundation6LocaleVMa_ptr;
    v58 = v6;
    while (1)
    {
      if (v8 >= [readingsCopy length])
      {
        goto LABEL_8;
      }

      v10 = [readingsCopy attributesAtIndex:v8 effectiveRange:0];
      v11 = [v10 objectForKey:@"token"];

      string = [readingsCopy string];
      v13 = [string substringWithRange:{v8, 1}];

      if (!v11 && [v5 containsObject:v13])
      {

LABEL_8:
        if (v8 == [readingsCopy length])
        {
          break;
        }

        v16 = (v8 + 1);
        v17 = v8;
        if (v8 + 1 < [readingsCopy length])
        {
          v17 = v8;
          while (1)
          {
            v16 = (v17 + 1);
            v18 = [readingsCopy attributesAtIndex:v8 effectiveRange:0];
            v19 = [v18 objectForKey:@"token"];

            string2 = [readingsCopy string];
            v21 = [string2 substringWithRange:{v17 + 1, 1}];

            if (v19 || ([v5 containsObject:v21] & 1) == 0)
            {
              break;
            }

            v22 = [readingsCopy length];
            v23 = v17 + 1;
            v24 = (v17 + 2);
            ++v17;
            if (v24 >= v22)
            {
              v16 = (v23 + 1);
              v17 = v23;
              goto LABEL_16;
            }
          }
        }

LABEL_16:
        if (v16 >= [readingsCopy length])
        {
          v26 = v16 - v8;
LABEL_30:
          v27 = [readingsCopy attributedSubstringFromRange:{v8, v26}];
          v9 = &_s10Foundation6LocaleVMa_ptr;
          if ([v27 length])
          {
            v49 = 0;
            do
            {
              v50 = [NSNumber numberWithInteger:&v8[v49]];
              [v7 addObject:v50];

              ++v49;
            }

            while (v49 < [v27 length]);
            v8 += v49;
          }

          [v6 appendAttributedString:v27];
          goto LABEL_35;
        }

        string3 = [readingsCopy string];
        v26 = v16 - v8;
        v27 = [string3 substringWithRange:{v8, v16 - v8 + 1}];

        numeralInfo = self->_numeralInfo;
        if (numeralInfo && ([(NSDictionary *)numeralInfo objectForKey:v27], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v30 = v29;
          v31 = [v29 objectForKey:@"reading"];
          v54 = v30;
          v59 = [v30 objectForKey:@"locations"];
          if ([v31 length])
          {
            v32 = 0;
            do
            {
              v33 = [v59 objectAtIndex:v32];
              v34 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", &v8[[v33 integerValue]]);
              [v7 addObject:v34];

              ++v32;
            }

            while (v32 < [v31 length]);
          }

          v35 = [NSAttributedString alloc];
          v60[0] = @"token";
          v36 = [NSNumber numberWithInteger:v55];
          v60[1] = @"partOfSpeech";
          v61[0] = v36;
          v61[1] = &off_332A0;
          v37 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
          v38 = [v35 initWithString:v31 attributes:v37];
          [v58 appendAttributedString:v38];

          --v55;
          v39 = v54;
        }

        else
        {
          string4 = [readingsCopy string];
          v41 = [string4 characterAtIndex:v16];

          if (v41 != 26085)
          {

            v5 = v56;
            goto LABEL_30;
          }

          v42 = [readingsCopy attributedSubstringFromRange:{v8, v16 - v8}];
          [v6 appendAttributedString:v42];

          if (v8 <= v17)
          {
            do
            {
              v43 = [NSNumber numberWithInteger:v8];
              [v7 addObject:v43];

              ++v8;
            }

            while (v17 + 1 != v8);
          }

          v44 = [NSAttributedString alloc];
          v45 = +[NSBundle mainBundle];
          v46 = [v45 localizedStringForKey:@"にち" value:&stru_32758 table:0];
          v47 = [v44 initWithString:v46];
          [v58 appendAttributedString:v47];

          v48 = [NSNumber numberWithInteger:v16];
          [v7 addObject:v48];

          v39 = [NSNumber numberWithInteger:v16];
          [v7 addObject:v39];
        }

        v8 = v17 + 2;
        v6 = v58;
        v5 = v56;
        v9 = &_s10Foundation6LocaleVMa_ptr;
LABEL_35:

        if (v8 >= [readingsCopy length])
        {
          break;
        }
      }

      else
      {
        v14 = [readingsCopy attributedSubstringFromRange:{v8, 1}];
        [v6 appendAttributedString:v14];

        v15 = [v9[133] numberWithInteger:v8];
        [v7 addObject:v15];

        ++v8;
      }
    }
  }

  if (locations)
  {
    v51 = v7;
    *locations = v7;
  }

  return v6;
}

- (id)_yomiWithSpacingOf:(id)of locations:(id *)locations
{
  ofCopy = of;
  v6 = +[NSCharacterSet decimalDigitCharacterSet];
  string = [ofCopy string];
  v8 = CFLocaleCreate(kCFAllocatorDefault, @"ja");
  v100.location = 0;
  v100.length = 0;
  v9 = CFStringTokenizerCreate(kCFAllocatorDefault, 0, v100, 0, v8);
  CFRelease(v8);
  v101.length = CFStringGetLength(string);
  v10 = string;
  v11 = v9;
  v101.location = 0;
  CFStringTokenizerSetString(v9, v10, v101);
  v95 = objc_opt_new();
  v12 = objc_opt_new();
  tokenizer = v9;
  locationsCopy = locations;
  if (CFStringTokenizerAdvanceToNextToken(v9))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v91 = 0;
    v16 = 0;
    v17 = &_s10Foundation6LocaleVMa_ptr;
    v97 = ofCopy;
    v83 = v6;
    v85 = v12;
    while (1)
    {
      v88 = v16;
      v86 = v14;
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v11);
      string2 = [ofCopy string];
      v20 = [string2 substringWithRange:{v13, CurrentTokenRange.location - v13}];
      [v95 appendString:v20];

      v21 = v13;
      v93 = v13;
      if (CurrentTokenRange.location > v13)
      {
        do
        {
          v22 = [v17[133] numberWithInteger:v21];
          [v12 addObject:v22];

          ++v21;
        }

        while (CurrentTokenRange.location != v21);
      }

      v23 = CFStringTokenizerCopyCurrentTokenAttribute(v11, 0x400000uLL);
      LODWORD(integerValue) = _CFStringTokenizerGetCurrentTokenPartOfSpeech();
      if (CurrentTokenRange.length < 1)
      {
        v25 = 1;
        v27 = v91;
LABEL_14:
        if (!CurrentTokenRange.length)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = v91;
        do
        {
          string3 = [ofCopy string];
          v29 = [string3 characterAtIndex:CurrentTokenRange.location + v26];

          if (v29 > 0x7F)
          {
            if (!__maskrune(v29, 0x100uLL))
            {
              goto LABEL_14;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v29] & 0x100) == 0)
          {
            goto LABEL_14;
          }

          v25 = ++v26 >= CurrentTokenRange.length;
        }

        while (CurrentTokenRange.length != v26);
      }

      string4 = [ofCopy string];
      v31 = [v6 characterIsMember:{objc_msgSend(string4, "characterAtIndex:", CurrentTokenRange.location)}];

      if (v31)
      {
        location = CurrentTokenRange.location;
        length = CurrentTokenRange.length;
        if (CurrentTokenRange.length >= 1)
        {
          while (1)
          {
            string5 = [ofCopy string];
            v35 = [string5 characterAtIndex:location];

            if (([v6 characterIsMember:v35] & 1) == 0 && (v35 & 0xFFFD) != 0x2C)
            {
              break;
            }

            ++location;
            if (!--length)
            {
              goto LABEL_25;
            }
          }

          v27 = 0;
        }

LABEL_25:
        v36 = 1;
        goto LABEL_26;
      }

LABEL_21:
      v36 = 0;
      if (!v25)
      {
        integerValue = integerValue;
        v90 = 0;
        v92 = v27;
        v37 = 0;
        goto LABEL_27;
      }

      v25 = 1;
LABEL_26:
      string6 = [ofCopy string];
      v39 = [string6 substringWithRange:{CurrentTokenRange.location, CurrentTokenRange.length}];

      integerValue = 0;
      v90 = v25;
      v92 = v27;
      v37 = v36;
      v23 = v39;
LABEL_27:
      v40 = [ofCopy attributesAtIndex:CurrentTokenRange.location effectiveRange:0];
      if (CurrentTokenRange.location < 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = [ofCopy attributesAtIndex:CurrentTokenRange.location - 1 effectiveRange:0];
      }

      if (CurrentTokenRange.length < 1)
      {
        v87 = 0;
      }

      else
      {
        v87 = [ofCopy attributesAtIndex:CurrentTokenRange.location + CurrentTokenRange.length - 1 effectiveRange:0];
      }

      v94 = v40;
      v89 = v41;
      if (v41 && v40)
      {
        v42 = [v41 objectForKey:@"token"];
        v43 = v40;
        v44 = v42;
        v45 = [v43 objectForKey:@"token"];
        v46 = v45;
        v47 = 0;
        if (v44 && v45)
        {
          v47 = [v44 isEqual:v45];
        }

        v40 = v94;
      }

      else
      {
        v47 = 0;
        if (!v40)
        {
          goto LABEL_42;
        }
      }

      v48 = [v40 objectForKey:@"partOfSpeech"];

      if (v48)
      {
        v49 = [v40 objectForKey:@"partOfSpeech"];
        integerValue = [v49 integerValue];
      }

LABEL_42:
      if (integerValue == &dword_C + 2)
      {
        v50 = 1;
      }

      else
      {
        v50 = [&off_34C68 containsObject:v23];
      }

      integerValue2 = integerValue;
      if ([v95 length])
      {
        v51 = CurrentTokenRange.location == v93;
      }

      else
      {
        v51 = 0;
      }

      if (v51)
      {
        v52 = v47;
      }

      else
      {
        v52 = 1;
      }

      if (((integerValue == &dword_4) & ~v88) == 0 && ((v86 | v15 | v52) & 1) == 0)
      {
        v53 = (integerValue == &dword_8 + 2) & ~v88;
        if (integerValue == &dword_C)
        {
          v53 = 1;
        }

        if ((v88 & v37 & 1) == 0 && ((v92 | v50 | v53) & 1) == 0)
        {
          [v95 appendString:@" "];
          if ([v85 count])
          {
            [v85 objectAtIndex:{objc_msgSend(v85, "count") - 1}];
          }

          else
          {
            [NSNumber numberWithInteger:v93 - 1];
          }
          v54 = ;
          [v85 addObject:v54];
        }
      }

      v91 = v37;
      v55 = 0;
      v56 = -1;
      v17 = &_s10Foundation6LocaleVMa_ptr;
      while ((CurrentTokenRange.length & ~(CurrentTokenRange.length >> 63)) != v55)
      {
        v57 = v55;
        if (v55 < [v23 length])
        {
          string7 = [v97 string];
          v59 = [string7 substringWithRange:{CurrentTokenRange.location + CurrentTokenRange.length + v56, 1}];

          v60 = [v23 substringWithRange:{objc_msgSend(v23, "length") + v56, 1}];
          v61 = [(NSDictionary *)self->_kataToHira objectForKey:v59];
          v62 = v61;
          if (v61)
          {
            v63 = v61;

            v59 = v63;
          }

          v64 = [v59 isEqual:v60];
          ++v55;

          --v56;
          v17 = &_s10Foundation6LocaleVMa_ptr;
          if (v64)
          {
            continue;
          }
        }

        goto LABEL_69;
      }

      v57 = (CurrentTokenRange.length & ~(CurrentTokenRange.length >> 63));
LABEL_69:
      v12 = v85;
      if ([v23 length] != v57)
      {
        v65 = 0;
        do
        {
          v66 = [v17[133] numberWithLong:CurrentTokenRange.location];
          [v85 addObject:v66];

          ++v65;
        }

        while (v65 < [v23 length] - v57);
      }

      if (v57)
      {
        v67 = (v57 + 1);
        v68 = CurrentTokenRange.location + CurrentTokenRange.length - v57;
        do
        {
          v69 = [v17[133] numberWithInteger:v68];
          [v85 addObject:v69];

          --v67;
          ++v68;
        }

        while (v67 > 1);
      }

      v70 = [(ABTTranslator *)self _longVowelExpressedFor:v23 partOfSpeech:integerValue2];

      if (integerValue2 == &dword_4)
      {
        v73 = @"わ";
        ofCopy = v97;
        v6 = v83;
        v71 = CurrentTokenRange.location + CurrentTokenRange.length;
        v72 = v87;
        if (([v70 isEqual:@"は"] & 1) != 0 || (v73 = @"え", objc_msgSend(v70, "isEqual:", @"へ")))
        {

          v70 = v73;
        }
      }

      else
      {
        ofCopy = v97;
        v6 = v83;
        v71 = CurrentTokenRange.location + CurrentTokenRange.length;
        v72 = v87;
      }

      [v95 appendString:v70];
      if (v72)
      {
        v74 = [v72 objectForKey:@"partOfSpeech"];

        if (v74)
        {
          v75 = [v72 objectForKey:@"partOfSpeech"];
          integerValue2 = [v75 integerValue];
        }
      }

      v14 = integerValue2 == (&dword_8 + 3);
      if (integerValue2 == (&dword_C + 2))
      {
        v15 = 1;
      }

      else
      {
        v15 = [&off_34C80 containsObject:v70];
      }

      v16 = v90;

      v11 = tokenizer;
      v13 = v71;
      if (!CFStringTokenizerAdvanceToNextToken(tokenizer))
      {
        goto LABEL_89;
      }
    }
  }

  v71 = 0;
LABEL_89:
  v76 = [ofCopy length] - v71;
  string8 = [ofCopy string];
  v78 = [string8 substringWithRange:{v71, v76}];
  [v95 appendString:v78];

  for (; v71 < [ofCopy length]; ++v71)
  {
    v79 = [NSNumber numberWithInteger:v71];
    [v12 addObject:v79];
  }

  if (locationsCopy)
  {
    v80 = v12;
    *locationsCopy = v12;
  }

  CFRelease(tokenizer);

  return v95;
}

- (id)_longVowelExpressedFor:(id)for partOfSpeech:(int64_t)speech
{
  forCopy = for;
  if (([forCopy isEqual:@"うろうろ"] & 1) != 0 || objc_msgSend(forCopy, "isEqual:", @"こうり"))
  {
    v6 = forCopy;
  }

  else
  {
    v6 = objc_opt_new();
    if ([forCopy length])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = 1;
        v11 = [forCopy substringWithRange:{v9, 1}];
        v12 = v11;
        if (v8)
        {
          v10 = [(__CFString *)v11 isEqual:@"う"]^ 1;
        }

        v13 = speech == 1 && v9 == [forCopy length] - 1;
        if ((v10 | v13))
        {
          v14 = v12;
        }

        else
        {
          v14 = @"ー";
        }

        [v6 appendString:v14];
        if ([&off_34C98 containsObject:v12])
        {
          v8 = 1;
        }

        else
        {
          v8 = [&off_34CB0 containsObject:v12];
        }

        ++v9;
      }

      while (v9 < [forCopy length]);
    }
  }

  return v6;
}

- (id)_brailleForProcessedText:(id)text locations:(id *)locations
{
  textCopy = text;
  v7 = +[NSCharacterSet newlineCharacterSet];
  v8 = [textCopy stringByTrimmingCharactersInSet:v7];

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  if (![v8 length])
  {
    goto LABEL_248;
  }

  locationsCopy = locations;
  v78 = 0;
  v73 = 0;
  v77 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v11 = 0;
  v71 = 0;
  v72 = -1;
  selfCopy = self;
  do
  {
    v12 = [v8 characterAtIndex:v11];
    v79 = [v8 substringWithRange:{v11, 1}];
    if ([v9 length])
    {
      v13 = [v9 characterAtIndex:{objc_msgSend(v9, "length") - 1}] == 10240;
    }

    else
    {
      v13 = 0;
    }

    v14 = v78;
    if (v12 == 32)
    {
      if (v78 == 2 && v77)
      {
        v15 = v11 + 1;
        do
        {
          v16 = v15;
          if (v15 >= [v8 length])
          {
            break;
          }

          v17 = [v8 characterAtIndex:v16];
          v15 = v16 + 1;
        }

        while (v17 == 32);
        if (v16 >= [v8 length])
        {
          v78 = 2;
          v77 = 1;
        }

        else
        {
          v18 = [v8 substringWithRange:{v16, 1}];
          v19 = [(NSDictionary *)self->_romajiToBraille objectForKey:v18];
          v77 = v19 != 0;

          if (v19)
          {
            v78 = 2;
          }

          else
          {
            [v9 appendString:@"⠴"];
            v30 = [v10 objectAtIndex:{objc_msgSend(v10, "count") - 1}];
            [v10 addObject:v30];

            v78 = 0;
          }
        }
      }

      [v9 appendString:@"⠀"];
      v31 = [NSNumber numberWithInteger:v11];
      [v10 addObject:v31];
      goto LABEL_149;
    }

    if (!v78)
    {
      if (v12 > 0x7F)
      {
        if (__maskrune(v12, 0x100uLL))
        {
          goto LABEL_91;
        }

        v21 = __maskrune(v12, 0x400uLL);
        v14 = v78;
      }

      else
      {
        if ((_DefaultRuneLocale.__runetype[v12] & 0x100) != 0)
        {
LABEL_40:
          v24 = 2;
          goto LABEL_93;
        }

        v21 = _DefaultRuneLocale.__runetype[v12] & 0x400;
      }

      v24 = v21 != 0;
      goto LABEL_93;
    }

    if (v78 == 1)
    {
      if (v12 > 0x7F)
      {
        if (__maskrune(v12, 0x100uLL))
        {
          goto LABEL_91;
        }

        v20 = __maskrune(v12, 0x400uLL);
      }

      else
      {
        if ((_DefaultRuneLocale.__runetype[v12] & 0x100) != 0)
        {
          goto LABEL_40;
        }

        v20 = _DefaultRuneLocale.__runetype[v12] & 0x400;
      }

      if (v20)
      {
        v23 = 1;
      }

      else
      {
        v23 = (v12 & 0xFFFD) == 44;
      }

      v24 = v23;
      if (((v24 | v13) & 1) == 0)
      {
        v24 = 0;
        if ([&off_34CC8 containsObject:v79])
        {
          if (v11 >= 1)
          {
            [v9 appendString:@"⠤"];
            v25 = [v10 objectAtIndex:{objc_msgSend(v10, "count") - 1}];
            [v10 addObject:v25];

            v24 = 0;
          }
        }
      }

      goto LABEL_92;
    }

    if (!v77 && v12 == 45)
    {
      if (v11 >= [v8 length])
      {
        v28 = 45;
        v26 = v11;
      }

      else
      {
        v26 = v11;
        do
        {
          v27 = [v8 characterAtIndex:v26];
          v28 = v27;
          if (v27 > 0x7F)
          {
            v29 = __maskrune(v27, 0x100uLL);
          }

          else
          {
            v29 = _DefaultRuneLocale.__runetype[v27] & 0x100;
          }

          if (v28 - 48 <= 0xFFFFFFFC && !v29)
          {
            break;
          }

          ++v26;
        }

        while (v26 < [v8 length]);
      }

      if (v26 >= [v8 length])
      {
LABEL_88:
        [v9 appendString:@"⠤"];
        v31 = [NSNumber numberWithInteger:v11];
        [v10 addObject:v31];
        v77 = 0;
        v78 = 0;
        goto LABEL_149;
      }

      if (v28 > 0x3B)
      {
        goto LABEL_87;
      }

      if (((1 << v28) & 0xC00F00000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v28 == 32)
      {
        if (v26 + 1 >= [v8 length])
        {
          goto LABEL_88;
        }

        v37 = [v8 characterAtIndex:v26 + 1];
        if (!(v37 > 0x7F ? __maskrune(v37, 0x100uLL) : _DefaultRuneLocale.__runetype[v37] & 0x100))
        {
          goto LABEL_88;
        }
      }

      else
      {
LABEL_87:
        if (v28 != 8212 && v28 != 8230)
        {
          goto LABEL_88;
        }
      }

LABEL_60:
      if (v72 == -1)
      {
        goto LABEL_88;
      }

      [v9 replaceCharactersInRange:v72 withString:{1, @"⠦"}];
LABEL_62:
      v32 = [(NSDictionary *)self->_romajiToBraille objectForKey:v79];

      if (v32)
      {
        v77 = 1;
        v24 = 2;
      }

      else
      {
        [v9 appendString:@"⠴"];
        v33 = [v10 objectAtIndex:{objc_msgSend(v10, "count") - 1}];
        [v10 addObject:v33];
        if (v12 > 0x7F)
        {
          v34 = __maskrune(v12, 0x400uLL);
        }

        else
        {
          v34 = _DefaultRuneLocale.__runetype[v12] & 0x400;
        }

        v24 = v34 != 0;

        v77 = 0;
      }

      goto LABEL_92;
    }

    if (v77)
    {
      goto LABEL_62;
    }

    if (v13)
    {
      if (v12 > 0x7F)
      {
        v22 = __maskrune(v12, 0x100uLL);
      }

      else
      {
        v22 = _DefaultRuneLocale.__runetype[v12] & 0x100;
      }

      v35 = v22 != 0;
    }

    else
    {
      v35 = 0;
    }

    if (v12 <= 0x3B && ((1 << v12) & 0xC00F00000000000) != 0 || v12 == 8212 || v12 == 8230 || v35)
    {
      if (v72 == -1)
      {
LABEL_90:
        v77 = 0;
      }

      else
      {
        v77 = 1;
        [v9 replaceCharactersInRange:v72 withString:{1, @"⠦"}];
      }

LABEL_91:
      v24 = 2;
LABEL_92:
      v14 = v78;
      goto LABEL_93;
    }

    if (v12 > 0x7F)
    {
      if (__maskrune(v12, 0x100uLL))
      {
        goto LABEL_90;
      }

      v36 = __maskrune(v12, 0x400uLL);
      v14 = v78;
    }

    else
    {
      v77 = 0;
      v24 = 2;
      if ((_DefaultRuneLocale.__runetype[v12] & 0x100) != 0)
      {
        goto LABEL_92;
      }

      v14 = v78;
      if ((v12 - 48) >= 0xFFFFFFFE)
      {
        goto LABEL_93;
      }

      v36 = _DefaultRuneLocale.__runetype[v12] & 0x400;
    }

    v24 = v36 != 0;
    if (v24 | v13)
    {
      goto LABEL_198;
    }

    v24 = 0;
    if (v12 <= 12288)
    {
      if (v12 == 38)
      {
        goto LABEL_212;
      }

      v77 = 0;
      if (v12 != 64)
      {
LABEL_211:
        [v9 appendString:@"⠤"];
        v60 = [v10 objectAtIndex:{objc_msgSend(v10, "count") - 1}];
        [v10 addObject:v60];

        v14 = v78;
        v24 = 0;
LABEL_198:
        v77 = 0;
      }
    }

    else
    {
      if ((v12 - 12289) < 2 || v12 == 65281)
      {
LABEL_212:
        v77 = 0;
        goto LABEL_93;
      }

      v77 = 0;
      if (v12 != 65311)
      {
        goto LABEL_211;
      }
    }

LABEL_93:
    if (v24 != v14)
    {
      if (v24 == 1)
      {
        [v9 appendString:@"⠼"];
        v45 = [NSNumber numberWithInteger:v11];
        [v10 addObject:v45];

LABEL_119:
        v46 = [(NSDictionary *)self->_numberToBraille objectForKey:v79];
        if (!v46)
        {
          v46 = self->_unknownPlaceholder;
        }

        v31 = v46;
        v41 = 0;
        v74 = 0;
        v76 = 0;
        v47 = 1;
LABEL_135:
        v78 = v47;
        goto LABEL_136;
      }

      if (v24 != 2)
      {
        goto LABEL_100;
      }

      v72 = [v9 length];
      [v9 appendString:@"⠰"];
      v39 = [NSNumber numberWithInteger:v11];
      [v10 addObject:v39];

      goto LABEL_114;
    }

    if (v14 == 2)
    {
      if (v73)
      {
        if ((v12 - 97) > 0x19)
        {
          v73 = 1;
          goto LABEL_132;
        }

        v42 = v9;
        v43 = @"⠰";
        goto LABEL_130;
      }

LABEL_114:
      if ((v12 - 65) > 0x19)
      {
        v73 = 0;
LABEL_132:
        v49 = [(NSDictionary *)self->_romajiToBraille objectForKey:v79];
        if (!v49)
        {
          v49 = self->_unknownPlaceholder;
        }

        v31 = v49;
        v41 = 0;
        v74 = 0;
        v76 = 0;
        v47 = 2;
        goto LABEL_135;
      }

      if (v11 + 1 < [v8 length] && objc_msgSend(v8, "characterAtIndex:", v11 + 1) - 65 <= 0x19)
      {
        [v9 appendString:@"⠠⠠"];
        v44 = [NSNumber numberWithInteger:v11];
        [v10 addObject:v44];

        v73 = 1;
LABEL_131:
        v48 = [NSNumber numberWithInteger:v11];
        [v10 addObject:v48];

        goto LABEL_132;
      }

      v42 = v9;
      v43 = @"⠠";
LABEL_130:
      [v42 appendString:v43];
      v73 = 0;
      goto LABEL_131;
    }

    if (v14 == 1)
    {
      goto LABEL_119;
    }

LABEL_100:
    if (v11 + 1 < [v8 length])
    {
      v40 = [v8 substringWithRange:{v11, 2}];
      v31 = [(NSDictionary *)self->_kanaToBraille objectForKey:v40];

      if (v31)
      {
        v41 = 0;
        v74 = 0;
        v78 = 0;
        v76 = 1;
        goto LABEL_136;
      }
    }

    if (v12 <= 8220)
    {
      if (v12 == 40)
      {
        v41 = 0;
        v74 = 0;
        v76 = 0;
        v78 = 0;
        if (v69 <= 0)
        {
          v31 = @"⠶";
        }

        else
        {
          v31 = @"⠰⠶";
        }

        ++v69;
        goto LABEL_136;
      }

      if (v12 == 41)
      {
        v41 = 0;
        v74 = 0;
        v76 = 0;
        v78 = 0;
        if (v69 <= 1)
        {
          v31 = @"⠶";
        }

        else
        {
          v31 = @"⠶⠆";
        }

        v69 -= v69 > 0;
        goto LABEL_136;
      }
    }

    else
    {
      switch(v12)
      {
        case 8221:
          goto LABEL_162;
        case 12301:
          v41 = 0;
          v74 = 0;
          v76 = 0;
          v78 = 0;
          if (v70 <= 1)
          {
            v31 = @"⠤";
          }

          else
          {
            v31 = @"⠤⠆";
          }

          v70 -= v70 > 0;
          goto LABEL_136;
        case 12300:
          v41 = 0;
          v74 = 0;
          v76 = 0;
          v78 = 0;
          if (v70 <= 0)
          {
            v31 = @"⠤";
          }

          else
          {
            v31 = @"⠰⠤";
          }

          ++v70;
          goto LABEL_136;
      }
    }

    if (v12 == 34 && v71 >= 1)
    {
LABEL_162:
      v41 = 0;
      v74 = 0;
      v76 = 0;
      v78 = 0;
      --v71;
LABEL_163:
      v31 = @"⠠⠆";
      goto LABEL_136;
    }

    v57 = v12 == 34 && v71 == 0;
    if (v12 == 8220 || v57)
    {
      v41 = 0;
      v74 = 0;
      v76 = 0;
      v78 = 0;
      ++v71;
LABEL_177:
      v31 = @"⠰⠄";
      goto LABEL_136;
    }

    if (v12 == 8217 || v12 == 39 && v67 >= 1)
    {
      v41 = 0;
      v74 = 0;
      v76 = 0;
      v78 = 0;
      --v67;
      goto LABEL_163;
    }

    v59 = v12 == 39 && v67 == 0;
    if (v12 == 8216 || v59)
    {
      v41 = 0;
      v74 = 0;
      v76 = 0;
      v78 = 0;
      ++v67;
      goto LABEL_177;
    }

    if (v12 > 125)
    {
      if (v12 <= 12289)
      {
        if (v12 <= 8450)
        {
          if (v12 == 126)
          {
            v41 = 0;
            v74 = 0;
            v76 = 0;
            v78 = 0;
            v31 = @"⠤⠤";
          }

          else
          {
            if (v12 != 176)
            {
              goto LABEL_243;
            }

            v41 = 0;
            v76 = 0;
            v78 = 0;
            v74 = 1;
            v31 = @"⠰⠙";
          }

          goto LABEL_136;
        }

        if (v12 == 8451)
        {
          v41 = 0;
          v76 = 0;
          v78 = 0;
          v74 = 1;
          v31 = @"⠰⠙⠠⠉";
          goto LABEL_136;
        }

        if (v12 != 12289)
        {
          goto LABEL_243;
        }

LABEL_226:
        v76 = 0;
        v78 = 0;
        v41 = 1;
        v74 = 1;
        v31 = @"⠰";
        goto LABEL_136;
      }

      if (v12 > 65280)
      {
        if (v12 == 65281)
        {
          v76 = 0;
          v78 = 0;
          v41 = 2;
          v74 = 2;
          v31 = @"⠖";
        }

        else
        {
          if (v12 != 65311)
          {
            goto LABEL_243;
          }

          v76 = 0;
          v78 = 0;
          v41 = 2;
          v74 = 2;
          v31 = @"⠢";
        }

        goto LABEL_136;
      }

      if (v12 != 12290)
      {
        if (v12 != 12539)
        {
          goto LABEL_243;
        }

        v76 = 0;
        v78 = 0;
        v41 = 1;
        v74 = 1;
        v31 = @"⠐";
        goto LABEL_136;
      }

      v76 = 0;
      v78 = 0;
      v41 = 2;
      v61 = 2;
LABEL_239:
      v74 = v61;
      v31 = @"⠲";
      goto LABEL_136;
    }

    if (v12 > 43)
    {
      if (v12 <= 46)
      {
        if (v12 == 44)
        {
          goto LABEL_226;
        }

        if (v12 != 46)
        {
          goto LABEL_243;
        }

        v76 = 0;
        v78 = 0;
        v41 = 1;
        v61 = 1;
        goto LABEL_239;
      }

      if (v12 != 47)
      {
        if (v12 == 64)
        {
          v31 = @"⠰⠪";
LABEL_230:
          if (v11 >= 1 && !v13)
          {
            [v9 appendString:@"⠀"];
            v62 = [v10 objectAtIndex:{objc_msgSend(v10, "count") - 1}];
            [v10 addObject:v62];
          }

          v76 = 0;
          v78 = 0;
          v41 = 1;
          v74 = 1;
          goto LABEL_136;
        }

LABEL_243:
        v63 = [(NSDictionary *)selfCopy->_kanaToBraille objectForKey:v79];
        if (!v63)
        {
          v63 = selfCopy->_unknownPlaceholder;
        }

        v31 = v63;
        v41 = 0;
        v74 = 0;
        v76 = 0;
        v78 = 0;
        goto LABEL_136;
      }

      v41 = 0;
      v74 = 0;
      v76 = 0;
      v78 = 0;
      v31 = @"⠌";
    }

    else if (v12 > 37)
    {
      v31 = @"⠰⠯";
      if (v12 == 38)
      {
        goto LABEL_230;
      }

      if (v12 != 42)
      {
        goto LABEL_243;
      }

      v41 = 0;
      v76 = 0;
      v78 = 0;
      v74 = 1;
      v31 = @"⠰⠡";
    }

    else if (v12 == 35)
    {
      v41 = 0;
      v76 = 0;
      v78 = 0;
      v74 = 1;
      v31 = @"⠰⠩";
    }

    else
    {
      if (v12 != 37)
      {
        goto LABEL_243;
      }

      v41 = 0;
      v76 = 0;
      v78 = 0;
      v74 = 1;
      v31 = @"⠰⠏";
    }

LABEL_136:
    [v9 appendString:v31];
    if ([(__CFString *)v31 length])
    {
      v50 = 0;
      do
      {
        v51 = [NSNumber numberWithInteger:v11];
        [v10 addObject:v51];

        ++v50;
      }

      while (v50 < [(__CFString *)v31 length]);
    }

    if (v11 + 1 < [v8 length])
    {
      v52 = [v8 substringWithRange:{v11 + 1, 1}];
      v53 = [(NSDictionary *)selfCopy->_kanaToBraille objectForKey:v52];

      if (v53)
      {
        v41 = v74;
      }
    }

    if (v11 + 1 < [v8 length])
    {
      v54 = [v8 substringWithRange:{v11 + 1, 1}];
      if (([&off_34CE0 containsObject:v54] & 1) == 0 && v41 >= 1)
      {
        do
        {
          [v9 appendString:@"⠀"];
          v55 = [NSNumber numberWithInteger:v11];
          [v10 addObject:v55];

          --v41;
        }

        while (v41);
      }
    }

    self = selfCopy;
    v11 += v76;
LABEL_149:

    ++v11;
  }

  while (v11 < [v8 length]);
  locations = locationsCopy;
  if (v77)
  {
    [v9 appendString:@"⠴"];
    v64 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 length] - 1);
    [v10 addObject:v64];
  }

LABEL_248:
  if (locations)
  {
    v65 = v10;
    *locations = v10;
  }

  return v9;
}

- (id)_locationsDataForLocationsArray:(id)array
{
  arrayCopy = array;
  v4 = 8 * [arrayCopy count];
  v5 = malloc_type_malloc(v4, 0x5255B94AuLL);
  if ([arrayCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [arrayCopy objectAtIndex:v6];
      v5[v6] = [v7 integerValue];

      ++v6;
    }

    while (v6 < [arrayCopy count]);
  }

  v8 = [NSData dataWithBytes:v5 length:v4];
  if (v5)
  {
    free(v5);
  }

  return v8;
}

- (id)_ko_textForPrintBraille:(id)braille locations:(id *)locations
{
  v6 = [_TtC22AppleBrailleTranslator23ABTKoreanBackTranslator backTranslate:braille];
  v7 = v6;
  if (locations)
  {
    locations = [v6 locations];
    *locations = [(ABTTranslator *)self _locationsDataForLocationsArray:locations];
  }

  string = [v7 string];

  return string;
}

- (id)_ja_textForPrintBraille:(id)braille
{
  brailleCopy = braille;
  v40 = objc_opt_new();
  if ([brailleCopy length])
  {
    v4 = 0;
    v5 = 0;
    v39 = 0;
    v36 = 0;
    v38 = 0;
    for (i = 0; i < [brailleCopy length]; ++i)
    {
      v7 = [brailleCopy substringWithRange:{i, 1}];
      v8 = &stru_32758;
      if (i + 1 < [brailleCopy length])
      {
        v8 = [brailleCopy substringWithRange:{i, 2}];
      }

      v9 = &stru_32758;
      if (i + 2 < [brailleCopy length])
      {
        v9 = [brailleCopy substringWithRange:{i, 3}];
      }

      if ([v7 isEqual:@"⠀"])
      {
        if (v4)
        {
          if (v4 != 2)
          {
            goto LABEL_22;
          }

          if ((v5 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        [v40 appendString:@" "];
      }

      else if (i + 1 < [brailleCopy length] && objc_msgSend(v7, "isEqual:", @"⠰") && (v4 || (-[NSDictionary objectForKey:](self->_brailleToKana, "objectForKey:", v8), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10)))
      {
        v39 = 0;
        v4 = 2;
      }

      else if ([v7 isEqual:@"⠦"])
      {
        v38 = 0;
        v39 = 0;
        v4 = 2;
        v5 = 1;
      }

      else
      {
        if (v5 & 1) != 0 && ([v7 isEqual:@"⠴"])
        {
          goto LABEL_21;
        }

        if ([v7 isEqual:@"⠼"])
        {
          v4 = 1;
          goto LABEL_23;
        }

        if ([v7 isEqual:@"⠤"] && (-[__CFString isEqual:](v8, "isEqual:", @"⠤⠤") & 1) == 0)
        {
          if (v4 == 1)
          {
            goto LABEL_22;
          }

          if (v4 != 2)
          {
            [(__CFString *)v8 isEqual:@"⠠⠠"];
            [v7 isEqual:@"⠠"];
            v11 = 0;
            goto LABEL_42;
          }

          if ((v5 & 1) == 0)
          {
LABEL_21:
            v5 = 0;
LABEL_22:
            v4 = 0;
            goto LABEL_23;
          }
        }

        v11 = v4 == 2;
        if ([(__CFString *)v8 isEqual:@"⠠⠠"]&& v4 == 2)
        {
          v4 = 2;
          HIDWORD(v39) = 1;
          ++i;
        }

        else
        {
          if (![v7 isEqual:@"⠠"] || v4 != 2)
          {
            if (v4 == 1)
            {
              v12 = [(NSDictionary *)self->_brailleToNumber objectForKey:v7];
              v13 = v12 != 0;

              v14 = 1;
              v4 = v13;
              goto LABEL_43;
            }

LABEL_42:
            v14 = !v11;
LABEL_43:
            if ((v14 | v5))
            {
              if (v14)
              {
                v15 = v4;
              }

              else
              {
                v15 = 2;
              }

              if (v15 != 2)
              {
                if (v15 == 1)
                {
                  v16 = [(NSDictionary *)self->_brailleToNumber objectForKey:v7];
                  v17 = v16;
                  if (v16)
                  {
                    v18 = v16;
                  }

                  else
                  {
                    v18 = &stru_32758;
                  }

                  v24 = 0;
                  v4 = 1;
                  goto LABEL_84;
                }

LABEL_56:
                v22 = [(NSDictionary *)self->_brailleToKana objectForKey:v8];
                if (v22)
                {
                }

                else if ([v7 isEqual:@"⠤"])
                {
                  v26 = @"「";
                  if (v36)
                  {
                    v26 = @"」";
                  }

                  v18 = v26;
                  v4 = 0;
                  v24 = 0;
                  LOBYTE(v36) = v36 ^ 1;
                  goto LABEL_84;
                }

                if ([v7 isEqual:@"⠶"])
                {
                  v27 = @"（";
                  if ((v36 & 0x100000000) != 0)
                  {
                    v27 = @"）";
                  }

                  v18 = v27;
                  v4 = 0;
                  BYTE4(v36) ^= 1u;
                  v24 = 0;
                  goto LABEL_84;
                }

                v28 = [(NSDictionary *)self->_brailleToKana objectForKey:v8];
                if (v28)
                {
                  v18 = v28;
                  v4 = 0;
                  goto LABEL_78;
                }

                v30 = [(NSDictionary *)self->_brailleToKana objectForKey:v7];
                v4 = 0;
                v24 = 0;
                if (v30)
                {
                  v18 = v30;
                }

                else
                {
                  v18 = &stru_32758;
                }

LABEL_84:
                [v40 appendString:v18];
                i += v24;

                goto LABEL_23;
              }
            }

            else
            {
              v34 = [v7 isEqual:@"⠠"];
              v33 = [v7 isEqual:@"⠶"];
              v19 = [(NSDictionary *)self->_brailleToRomaji objectForKey:v7];

              v20 = [(NSDictionary *)self->_brailleToRomaji objectForKey:v8];

              v21 = [(NSDictionary *)self->_brailleToRomaji objectForKey:v9];

              if ((v34 & 1) == 0 && (v33 & 1) == 0 && !v19 && !v20 && !v21)
              {
                goto LABEL_56;
              }
            }

            if ((v5 & 1) != 0 && [v7 isEqual:@"⠶"])
            {
              v23 = CFSTR("(");
              if (v38)
              {
                v23 = @"");
              }

              v18 = v23;
              v38 ^= 1u;
            }

            else
            {
              v25 = [(NSDictionary *)self->_brailleToRomaji objectForKey:v9];
              if (v25)
              {
                v18 = v25;
                v4 = 2;
                v24 = 2;
                goto LABEL_84;
              }

              v29 = [(NSDictionary *)self->_brailleToRomaji objectForKey:v8];
              if (v29)
              {
                v18 = v29;
                v4 = 2;
LABEL_78:
                v24 = 1;
                goto LABEL_84;
              }

              v31 = [(NSDictionary *)self->_brailleToRomaji objectForKey:v7];
              if (!v31)
              {
                v24 = 0;
                v4 = 2;
                v18 = &stru_32758;
                goto LABEL_84;
              }

              v18 = v31;
              if ((v39 | HIDWORD(v39)))
              {
                uppercaseString = [(__CFString *)v31 uppercaseString];

                LODWORD(v39) = 0;
                v24 = 0;
                v4 = 2;
                v18 = uppercaseString;
                goto LABEL_84;
              }

              LODWORD(v39) = 0;
            }

            v24 = 0;
            v4 = 2;
            goto LABEL_84;
          }

          v4 = 2;
          LODWORD(v39) = 1;
        }
      }

LABEL_23:
    }
  }

  return v40;
}

- (id)processKanjiNumbers:(id)numbers locations:(id *)locations
{
  numbersCopy = numbers;
  v7 = [[NSAttributedString alloc] initWithString:numbersCopy];

  v8 = [(ABTTranslator *)self _processKanjiNumbers:v7 locations:locations];
  string = [v8 string];

  return string;
}

- (id)replaceWords:(id)words locations:(id *)locations
{
  v4 = [(ABTTranslator *)self _replaceWords:words locations:locations];
  string = [v4 string];

  return string;
}

- (id)applyNumeralReadings:(id)readings locations:(id *)locations
{
  readingsCopy = readings;
  v7 = [[NSAttributedString alloc] initWithString:readingsCopy];

  v8 = [(ABTTranslator *)self _applyNumeralReadings:v7 locations:locations];
  string = [v8 string];

  return string;
}

@end