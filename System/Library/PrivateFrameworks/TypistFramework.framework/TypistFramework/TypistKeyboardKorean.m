@interface TypistKeyboardKorean
- (BOOL)isTenKey;
- (TypistKeyboardKorean)initWithCoder:(id)a3;
- (id)_convertRadicalIfNeeded:(id)a3;
- (id)_convertToMultiTapIfNecessary:(id)a3;
- (id)_flickGestureDirection:(unint64_t)a3;
- (id)addKeyboardPopupKeys:(id)a3 inPlane:(id)a4 addTo:(id)a5 keyplaneKeycaps:(id)a6;
- (id)changeKeyNameToGenericCharacter:(id)a3;
- (id)decomposeKoreanStrings:(id)a3;
- (id)generateKeyplaneSwitchTable:(id)a3;
- (id)generateKeystrokeStream:(id)a3;
- (id)generateSwipeStream:(id)a3;
- (id)getExpectedPlaneNameForKey:(id)a3 currentPlane:(id)a4;
- (id)init:(id)a3 options:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setupExtraKeyplaneDataIfNeeded:(id)a3;
- (void)setupTenKey:(id)a3 forKey:(id)a4 keyName:(id)a5 planeName:(id)a6;
@end

@implementation TypistKeyboardKorean

- (id)init:(id)a3 options:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = TypistKeyboardKorean;
  v7 = [(TypistKeyboard *)&v11 init:a3 options:v6 locale:@"ko_KR"];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"automaticallyTapsArrowKey"];
    if (v8)
    {
      v9 = [v6 objectForKeyedSubscript:@"automaticallyTapsArrowKey"];
      [v7 setAutomaticallyInsertsArrowKey:{objc_msgSend(v9, "BOOLValue")}];
    }

    else
    {
      [v7 setAutomaticallyInsertsArrowKey:1];
    }
  }

  return v7;
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [(TypistKeyboardKorean *)self setMultiTapOrbit:v8];

  v9 = [(TypistKeyboard *)self keysDataForInputMode:@"ko" andFileName:@"Keyboard-ko.plist"];
  [(TypistKeyboardKorean *)self setFlickTable:v9];

  v12.receiver = self;
  v12.super_class = TypistKeyboardKorean;
  v10 = [(TypistKeyboard *)&v12 setupKeyboardInfo:v7 options:v6];

  if (!v10)
  {
    [(TypistKeyboard *)self setUsePopupKeys:1];
    [(TypistKeyboardKorean *)self setHangul:&unk_28802A360];
    [(TypistKeyboardKorean *)self setDoubleConsonantJong:&unk_28802A378];
    [(TypistKeyboardKorean *)self setDoubleConsonantSplitJong:&unk_28802A390];
    [(TypistKeyboardKorean *)self setDoubleVowel:&unk_28802A3A8];
    [(TypistKeyboardKorean *)self setDoubleVowelSplit:&unk_28802A3C0];
    [(TypistKeyboardKorean *)self setRadicalBreakdownMultiTap:&unk_28802A7A8];
    [(TypistKeyboardKorean *)self setRadicalBreakdownFlick:&unk_28802A7D0];
  }

  return v10;
}

- (void)setupExtraKeyplaneDataIfNeeded:(id)a3
{
  v5 = a3;
  if ([(TypistKeyboardKorean *)self isTenKey])
  {
    v4 = [v5 objectForKeyedSubscript:@"multiTapOrbit"];
    [(TypistKeyboardKorean *)self setMultiTapOrbit:v4];
  }
}

- (id)generateKeyplaneSwitchTable:(id)a3
{
  v4 = a3;
  if ([(TypistKeyboardKorean *)self isTenKey])
  {
    v10 = self;
    v5 = &selRef_generateKeyplaneSwitchTableFor10Key_;
    v6 = &v10;
  }

  else
  {
    v9 = self;
    v5 = &selRef_generateKeyplaneSwitchTable_;
    v6 = &v9;
  }

  v6[1] = TypistKeyboardKorean;
  v7 = objc_msgSendSuper2(v6, *v5, v4, v9);

  return v7;
}

- (BOOL)isTenKey
{
  v2 = [(TypistKeyboard *)self keyboardID];
  v3 = [v2 containsString:@"10Key"];

  return v3;
}

- (id)changeKeyNameToGenericCharacter:(id)a3
{
  v4 = a3;
  if ([v4 containsString:@"Korean10Key-SymbolNumber-Keyplane-Switch"])
  {
    v5 = @"symbolnumber-plane";
  }

  else if ([v4 containsString:@"TenKey-Alphabet-Keyplane-Switch"])
  {
    v5 = @"alphabet-plane";
  }

  else if ([v4 containsString:@"Korean10Key-Keyplane-Switch"])
  {
    v5 = @"korean10key-plane";
  }

  else if ([v4 containsString:@"Korean10Key-HangulAlphabet-Keyplane-Switch-Key"])
  {
    v5 = @"alphabet-korean10key-plane";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TypistKeyboardKorean;
    v5 = [(TypistKeyboard *)&v7 changeKeyNameToGenericCharacter:v4];
  }

  return v5;
}

- (id)addKeyboardPopupKeys:(id)a3 inPlane:(id)a4 addTo:(id)a5 keyplaneKeycaps:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 containsString:@"small-letters"])
  {
    v14 = v12;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = TypistKeyboardKorean;
    v14 = [(TypistKeyboard *)&v17 addKeyboardPopupKeys:v10 inPlane:v11 addTo:v12 keyplaneKeycaps:v13];
  }

  v15 = v14;

  return v15;
}

- (id)generateKeystrokeStream:(id)a3
{
  v4 = [(TypistKeyboardKorean *)self decomposeKoreanStrings:a3];
  v5 = [(TypistKeyboardKorean *)self _convertToMultiTapIfNecessary:v4];

  TYLog(@"Korean keys to be typed: %@", v6, v7, v8, v9, v10, v11, v12, v5);
  v15.receiver = self;
  v15.super_class = TypistKeyboardKorean;
  v13 = [(TypistKeyboard *)&v15 generateKeystrokeStream:v5];

  return v13;
}

- (id)generateSwipeStream:(id)a3
{
  v4 = [(TypistKeyboardKorean *)self decomposeKoreanStrings:a3];
  TYLog(@"Korean keys to be swiped: %@", v5, v6, v7, v8, v9, v10, v11, v4);
  v14.receiver = self;
  v14.super_class = TypistKeyboardKorean;
  v12 = [(TypistKeyboard *)&v14 generateSwipeStream:v4];

  return v12;
}

- (id)_convertToMultiTapIfNecessary:(id)a3
{
  v4 = a3;
  if ([(TypistKeyboardKorean *)self isTenKey]&& ![(TypistKeyboard *)self flickTyping])
  {
    v5 = objc_opt_new();
    if ([v4 length])
    {
      v7 = 0;
      do
      {
        v8 = [v4 substringWithRange:{v7, 1}];
        v9 = [(TypistKeyboardKorean *)self multiTapOrbit];
        v10 = [v9 objectForKey:v8];

        v11 = 1;
        if (!v10 || ([v10 objectForKeyedSubscript:@"taps"], v12 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v12, "unsignedIntegerValue"), v12, v11))
        {
          do
          {
            if (v10)
            {
              v13 = [v10 objectForKeyedSubscript:@"basekey"];
              [v5 appendString:v13];
            }

            else
            {
              [v5 appendString:v8];
            }

            --v11;
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 < [v4 length]);
    }
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (id)_convertRadicalIfNeeded:(id)a3
{
  v4 = a3;
  if ([(TypistKeyboardKorean *)self isTenKey])
  {
    v5 = objc_opt_new();
    if ([v4 length])
    {
      v6 = 0;
      do
      {
        v7 = [v4 substringWithRange:{v6, 1}];
        if ([(TypistKeyboard *)self flickTyping])
        {
          [(TypistKeyboardKorean *)self radicalBreakdownFlick];
        }

        else
        {
          [(TypistKeyboardKorean *)self radicalBreakdownMultiTap];
        }
        v8 = ;
        v9 = [v8 objectForKeyedSubscript:v7];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        [v5 appendString:v11];

        ++v6;
      }

      while (v6 < [v4 length]);
    }
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (id)decomposeKoreanStrings:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 length])
  {
    v6 = 0;
    v34 = v4;
    v35 = v5;
    do
    {
      v7 = [v4 characterAtIndex:v6];
      if (((v7 + 21504) >> 2) > 0xAE8u)
      {
        [v5 appendFormat:@"%C", objc_msgSend(v4, "characterAtIndex:", v6)];
      }

      else
      {
        v8 = (v7 + 21504) / 0x24Cu;
        v9 = (v7 + 21504) % 0x24Cu / 0x1C;
        v10 = (v7 + 21504) % 0x1Cu;
        v11 = [(TypistKeyboardKorean *)self hangul];
        v12 = [v11 objectAtIndexedSubscript:1];
        v13 = [v12 objectAtIndexedSubscript:v9];

        v14 = [(TypistKeyboardKorean *)self doubleVowel];
        v15 = [v14 indexOfObject:v13];

        v16 = [(TypistKeyboardKorean *)self hangul];
        v17 = [v16 objectAtIndexedSubscript:2];
        v18 = [v17 objectAtIndexedSubscript:v10];

        v19 = [(TypistKeyboardKorean *)self doubleConsonantJong];
        v20 = [v19 indexOfObject:v18];

        v21 = [(TypistKeyboardKorean *)self hangul];
        v22 = [v21 objectAtIndexedSubscript:0];
        v23 = [v22 objectAtIndexedSubscript:v8];
        v24 = [(TypistKeyboardKorean *)self _convertRadicalIfNeeded:v23];

        v25 = [(TypistKeyboardKorean *)self doubleVowel];
        if (v15 >= [v25 count])
        {
          v28 = [(TypistKeyboardKorean *)self _convertRadicalIfNeeded:v13];
        }

        else
        {
          v26 = [(TypistKeyboardKorean *)self doubleVowelSplit];
          v27 = [v26 objectAtIndexedSubscript:v15];
          v28 = [(TypistKeyboardKorean *)self _convertRadicalIfNeeded:v27];
        }

        v29 = [(TypistKeyboardKorean *)self doubleConsonantJong];
        if (v20 >= [v29 count])
        {
          v32 = [(TypistKeyboardKorean *)self _convertRadicalIfNeeded:v18];
        }

        else
        {
          v30 = [(TypistKeyboardKorean *)self doubleConsonantSplitJong];
          v31 = [v30 objectAtIndexedSubscript:v20];
          v32 = [(TypistKeyboardKorean *)self _convertRadicalIfNeeded:v31];
        }

        v5 = v35;

        [v35 appendString:v24];
        [v35 appendString:v28];
        [v35 appendString:v32];

        v4 = v34;
      }

      if ([(TypistKeyboardKorean *)self isTenKey]&& [(TypistKeyboardKorean *)self automaticallyInsertsArrowKey])
      {
        [v5 appendString:@""];
      }

      ++v6;
    }

    while (v6 < [v4 length]);
  }

  return v5;
}

- (id)_flickGestureDirection:(unint64_t)a3
{
  if (a3 - 3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_279DF4D40[a3 - 3];
  }
}

- (void)setupTenKey:(id)a3 forKey:(id)a4 keyName:(id)a5 planeName:(id)a6
{
  v91[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (-[TypistKeyboardKorean isTenKey](self, "isTenKey") && ([v11 modifiesKeyplane] & 1) == 0)
  {
    v82 = v13;
    v83 = v10;
    v84 = v11;
    v14 = [v11 fullRepresentedString];
    v85 = v12;
    v86 = self;
    if ([v14 length] >= 2)
    {
      v15 = 1;
      do
      {
        v16 = [(TypistKeyboardKorean *)self multiTapOrbit];
        v90[1] = @"taps";
        v91[0] = v12;
        v90[0] = @"basekey";
        v17 = v15 + 1;
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15 + 1];
        v91[1] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
        v20 = [v14 substringWithRange:{v15, 1}];
        [v16 setObject:v19 forKey:v20];

        self = v86;
        v15 = v17;
        v21 = v17 >= [v14 length];
        v12 = v85;
      }

      while (!v21);
    }

    if ([(TypistKeyboard *)self flickTyping])
    {
      v22 = [(TypistKeyboardKorean *)self flickTable];
      v23 = MEMORY[0x277CCACA8];
      v24 = [v11 displayString];
      v25 = [v23 stringWithFormat:@"Roman-Accent-%@", v24];
      [v22 objectForKey:v25];
      v27 = v26 = self;
      v28 = [v27 objectForKeyedSubscript:@"Strings"];
      v29 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v30 = [v28 stringByTrimmingCharactersInSet:v29];

      if (!v30)
      {
        v31 = [(TypistKeyboardKorean *)v26 flickTable];
        v32 = MEMORY[0x277CCACA8];
        v33 = [v84 displayString];
        v34 = [v32 stringWithFormat:@"Roman-Accent-%@-Korean10Key-Plane", v33];
        v35 = [v31 objectForKey:v34];
        v36 = [v35 objectForKeyedSubscript:@"Strings"];
        v37 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v38 = [v36 stringByTrimmingCharactersInSet:v37];

        v30 = v38;
      }

      v39 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v80 = v30;
      v40 = [v30 componentsSeparatedByCharactersInSet:v39];
      v41 = [v40 mutableCopy];

      v42 = [v41 lastObject];
      [v41 removeLastObject];
      v79 = v42;
      [v41 insertObject:v42 atIndex:1];
      [v84 frame];
      UIRectGetCenter();
      v43 = *MEMORY[0x277CBF348];
      v44 = *(MEMORY[0x277CBF348] + 8);
      [TypistKeyboard centerOfKey:v26 withOffset:"centerOfKey:withOffset:"];
      v46 = v45;
      v48 = v47;
      v12 = v85;
      if ([v41 count] >= 2)
      {
        v49 = v26;
        v50 = 1;
        while (v50 != 6)
        {
          v51 = [v41 objectAtIndexedSubscript:v50];
          if (([v51 isEqualToString:v12] & 1) == 0)
          {
            v52 = -[TypistKeyboardKorean _flickGestureDirection:](v49, "_flickGestureDirection:", [v41 count]);
            v53 = [v52 objectAtIndexedSubscript:v50 - 1];
            v87.receiver = v86;
            v87.super_class = TypistKeyboardKorean;
            LODWORD(v54) = 1118175232;
            [(TypistKeyboard *)&v87 calculateCoordinatesForFlickGesture:v53 direction:v46 offset:v48, v54];
            v56 = v55;
            v58 = v57;

            v88[0] = @"key";
            v88[1] = @"basekey";
            v89[0] = v51;
            v89[1] = v12;
            v89[2] = @"flick";
            v88[2] = @"action";
            v88[3] = @"x";
            v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v56];
            v89[3] = v81;
            v88[4] = @"y";
            v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v58];
            v89[4] = v59;
            v89[5] = v82;
            v88[5] = @"plane";
            v88[6] = @"type";
            v89[6] = @"gesture";
            v88[7] = @"more-after";
            v60 = [v84 cache];
            v61 = [v60 objectForKey:@"more-after"];
            v62 = v61;
            v63 = &unk_28802A0F0;
            if (v61)
            {
              v63 = v61;
            }

            v89[7] = v63;
            v88[8] = @"direction";
            -[TypistKeyboardKorean _flickGestureDirection:](v86, "_flickGestureDirection:", [v41 count]);
            v65 = v64 = v41;
            v66 = [v65 objectAtIndexedSubscript:v50 - 1];
            v89[8] = v66;
            v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:9];
            [v83 setObject:v67 forKey:v51];

            v49 = v86;
            v41 = v64;

            v12 = v85;
          }

          if (++v50 >= [v41 count])
          {
            goto LABEL_20;
          }
        }

        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        v78 = [v84 representedString];
        TYLog(@"%@ - setupTenKey: WARNING! More than 5 flicks found for %@ - %@", v70, v71, v72, v73, v74, v75, v76, v69);
      }

LABEL_20:

      v10 = v83;
    }

    v11 = v84;
    v13 = v82;
  }

  v77 = *MEMORY[0x277D85DE8];
}

- (id)getExpectedPlaneNameForKey:(id)a3 currentPlane:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(TypistKeyboardKorean *)self isTenKey])
  {
    v22.receiver = self;
    v22.super_class = TypistKeyboardKorean;
    v15 = [(TypistKeyboard *)&v22 getExpectedPlaneNameForKey:v6 currentPlane:v7];
LABEL_10:
    v14 = v15;
    goto LABEL_11;
  }

  if (![(__CFString *)v7 isEqualToString:@"alphabet-capital-letter-plane"])
  {
    v17 = [(TypistKeyboard *)self keyPlanes];
    v18 = [v17 objectForKeyedSubscript:v7];
    v19 = [v18 objectForKeyedSubscript:v6];
    v20 = [v19 objectForKeyedSubscript:@"more-after"];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      v15 = [(TypistKeyboard *)self defaultPlaneName];
    }

    else
    {
      v15 = v7;
    }

    goto LABEL_10;
  }

  v8 = [(TypistKeyboard *)self planeSwitchTable];
  v9 = [v8 allKeys];
  v10 = [v9 containsObject:@"alphabet-korean10key-plane"];
  v11 = @"alphabet-plane";
  if (v10)
  {
    v11 = @"alphabet-korean10key-plane";
  }

  v12 = v11;

  if ([v6 isEqualToString:@""])
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13;

LABEL_11:

  return v14;
}

- (TypistKeyboardKorean)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = TypistKeyboardKorean;
  v5 = [(TypistKeyboard *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hangul"];
    hangul = v5->_hangul;
    v5->_hangul = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doubleConsonantJong"];
    doubleConsonantJong = v5->_doubleConsonantJong;
    v5->_doubleConsonantJong = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doubleConsonantSplitJong"];
    doubleConsonantSplitJong = v5->_doubleConsonantSplitJong;
    v5->_doubleConsonantSplitJong = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doubleVowel"];
    doubleVowel = v5->_doubleVowel;
    v5->_doubleVowel = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doubleVowelSplit"];
    doubleVowelSplit = v5->_doubleVowelSplit;
    v5->_doubleVowelSplit = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"radicalBreakdownMultiTap"];
    radicalBreakdownMultiTap = v5->_radicalBreakdownMultiTap;
    v5->_radicalBreakdownMultiTap = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"radicalBreakdownFlick"];
    radicalBreakdownFlick = v5->_radicalBreakdownFlick;
    v5->_radicalBreakdownFlick = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flickTable"];
    flickTable = v5->_flickTable;
    v5->_flickTable = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multiTapOrbit"];
    multiTapOrbit = v5->_multiTapOrbit;
    v5->_multiTapOrbit = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multiTapCompleteKey"];
    multiTapCompleteKey = v5->_multiTapCompleteKey;
    v5->_multiTapCompleteKey = v24;

    v5->_automaticallyInsertsArrowKey = [v4 decodeBoolForKey:@"automaticallyInsertsArrowKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TypistKeyboardKorean;
  [(TypistKeyboard *)&v15 encodeWithCoder:v4];
  hangul = self->_hangul;
  if (hangul)
  {
    [v4 encodeObject:hangul forKey:@"hangul"];
  }

  doubleConsonantJong = self->_doubleConsonantJong;
  if (doubleConsonantJong)
  {
    [v4 encodeObject:doubleConsonantJong forKey:@"doubleConsonantJong"];
  }

  doubleConsonantSplitJong = self->_doubleConsonantSplitJong;
  if (doubleConsonantSplitJong)
  {
    [v4 encodeObject:doubleConsonantSplitJong forKey:@"doubleConsonantSplitJong"];
  }

  doubleVowel = self->_doubleVowel;
  if (doubleVowel)
  {
    [v4 encodeObject:doubleVowel forKey:@"doubleVowel"];
  }

  doubleVowelSplit = self->_doubleVowelSplit;
  if (doubleVowelSplit)
  {
    [v4 encodeObject:doubleVowelSplit forKey:@"doubleVowelSplit"];
  }

  radicalBreakdownMultiTap = self->_radicalBreakdownMultiTap;
  if (radicalBreakdownMultiTap)
  {
    [v4 encodeObject:radicalBreakdownMultiTap forKey:@"radicalBreakdownMultiTap"];
  }

  radicalBreakdownFlick = self->_radicalBreakdownFlick;
  if (radicalBreakdownFlick)
  {
    [v4 encodeObject:radicalBreakdownFlick forKey:@"radicalBreakdownFlick"];
  }

  flickTable = self->_flickTable;
  if (flickTable)
  {
    [v4 encodeObject:flickTable forKey:@"flickTable"];
  }

  multiTapOrbit = self->_multiTapOrbit;
  if (multiTapOrbit)
  {
    [v4 encodeObject:multiTapOrbit forKey:@"multiTapOrbit"];
  }

  multiTapCompleteKey = self->_multiTapCompleteKey;
  if (multiTapCompleteKey)
  {
    [v4 encodeObject:multiTapCompleteKey forKey:@"multiTapCompleteKey"];
  }

  [v4 encodeBool:self->_automaticallyInsertsArrowKey forKey:@"automaticallyInsertsArrowKey"];
}

@end