@interface TypistKeyboardKorean
- (BOOL)isTenKey;
- (TypistKeyboardKorean)initWithCoder:(id)coder;
- (id)_convertRadicalIfNeeded:(id)needed;
- (id)_convertToMultiTapIfNecessary:(id)necessary;
- (id)_flickGestureDirection:(unint64_t)direction;
- (id)addKeyboardPopupKeys:(id)keys inPlane:(id)plane addTo:(id)to keyplaneKeycaps:(id)keycaps;
- (id)changeKeyNameToGenericCharacter:(id)character;
- (id)decomposeKoreanStrings:(id)strings;
- (id)generateKeyplaneSwitchTable:(id)table;
- (id)generateKeystrokeStream:(id)stream;
- (id)generateSwipeStream:(id)stream;
- (id)getExpectedPlaneNameForKey:(id)key currentPlane:(id)plane;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)setupExtraKeyplaneDataIfNeeded:(id)needed;
- (void)setupTenKey:(id)key forKey:(id)forKey keyName:(id)name planeName:(id)planeName;
@end

@implementation TypistKeyboardKorean

- (id)init:(id)init options:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = TypistKeyboardKorean;
  v7 = [(TypistKeyboard *)&v11 init:init options:optionsCopy locale:@"ko_KR"];
  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"automaticallyTapsArrowKey"];
    if (v8)
    {
      v9 = [optionsCopy objectForKeyedSubscript:@"automaticallyTapsArrowKey"];
      [v7 setAutomaticallyInsertsArrowKey:{objc_msgSend(v9, "BOOLValue")}];
    }

    else
    {
      [v7 setAutomaticallyInsertsArrowKey:1];
    }
  }

  return v7;
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  optionsCopy = options;
  infoCopy = info;
  v8 = objc_opt_new();
  [(TypistKeyboardKorean *)self setMultiTapOrbit:v8];

  v9 = [(TypistKeyboard *)self keysDataForInputMode:@"ko" andFileName:@"Keyboard-ko.plist"];
  [(TypistKeyboardKorean *)self setFlickTable:v9];

  v12.receiver = self;
  v12.super_class = TypistKeyboardKorean;
  v10 = [(TypistKeyboard *)&v12 setupKeyboardInfo:infoCopy options:optionsCopy];

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

- (void)setupExtraKeyplaneDataIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(TypistKeyboardKorean *)self isTenKey])
  {
    v4 = [neededCopy objectForKeyedSubscript:@"multiTapOrbit"];
    [(TypistKeyboardKorean *)self setMultiTapOrbit:v4];
  }
}

- (id)generateKeyplaneSwitchTable:(id)table
{
  tableCopy = table;
  if ([(TypistKeyboardKorean *)self isTenKey])
  {
    selfCopy = self;
    v5 = &selRef_generateKeyplaneSwitchTableFor10Key_;
    v6 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v5 = &selRef_generateKeyplaneSwitchTable_;
    v6 = &selfCopy2;
  }

  v6[1] = TypistKeyboardKorean;
  v7 = objc_msgSendSuper2(v6, *v5, tableCopy, selfCopy2);

  return v7;
}

- (BOOL)isTenKey
{
  keyboardID = [(TypistKeyboard *)self keyboardID];
  v3 = [keyboardID containsString:@"10Key"];

  return v3;
}

- (id)changeKeyNameToGenericCharacter:(id)character
{
  characterCopy = character;
  if ([characterCopy containsString:@"Korean10Key-SymbolNumber-Keyplane-Switch"])
  {
    v5 = @"symbolnumber-plane";
  }

  else if ([characterCopy containsString:@"TenKey-Alphabet-Keyplane-Switch"])
  {
    v5 = @"alphabet-plane";
  }

  else if ([characterCopy containsString:@"Korean10Key-Keyplane-Switch"])
  {
    v5 = @"korean10key-plane";
  }

  else if ([characterCopy containsString:@"Korean10Key-HangulAlphabet-Keyplane-Switch-Key"])
  {
    v5 = @"alphabet-korean10key-plane";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TypistKeyboardKorean;
    v5 = [(TypistKeyboard *)&v7 changeKeyNameToGenericCharacter:characterCopy];
  }

  return v5;
}

- (id)addKeyboardPopupKeys:(id)keys inPlane:(id)plane addTo:(id)to keyplaneKeycaps:(id)keycaps
{
  keysCopy = keys;
  planeCopy = plane;
  toCopy = to;
  keycapsCopy = keycaps;
  if ([planeCopy containsString:@"small-letters"])
  {
    v14 = toCopy;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = TypistKeyboardKorean;
    v14 = [(TypistKeyboard *)&v17 addKeyboardPopupKeys:keysCopy inPlane:planeCopy addTo:toCopy keyplaneKeycaps:keycapsCopy];
  }

  v15 = v14;

  return v15;
}

- (id)generateKeystrokeStream:(id)stream
{
  v4 = [(TypistKeyboardKorean *)self decomposeKoreanStrings:stream];
  v5 = [(TypistKeyboardKorean *)self _convertToMultiTapIfNecessary:v4];

  TYLog(@"Korean keys to be typed: %@", v6, v7, v8, v9, v10, v11, v12, v5);
  v15.receiver = self;
  v15.super_class = TypistKeyboardKorean;
  v13 = [(TypistKeyboard *)&v15 generateKeystrokeStream:v5];

  return v13;
}

- (id)generateSwipeStream:(id)stream
{
  v4 = [(TypistKeyboardKorean *)self decomposeKoreanStrings:stream];
  TYLog(@"Korean keys to be swiped: %@", v5, v6, v7, v8, v9, v10, v11, v4);
  v14.receiver = self;
  v14.super_class = TypistKeyboardKorean;
  v12 = [(TypistKeyboard *)&v14 generateSwipeStream:v4];

  return v12;
}

- (id)_convertToMultiTapIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([(TypistKeyboardKorean *)self isTenKey]&& ![(TypistKeyboard *)self flickTyping])
  {
    v5 = objc_opt_new();
    if ([necessaryCopy length])
    {
      v7 = 0;
      do
      {
        v8 = [necessaryCopy substringWithRange:{v7, 1}];
        multiTapOrbit = [(TypistKeyboardKorean *)self multiTapOrbit];
        v10 = [multiTapOrbit objectForKey:v8];

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

      while (v7 < [necessaryCopy length]);
    }
  }

  else
  {
    v5 = necessaryCopy;
  }

  return v5;
}

- (id)_convertRadicalIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(TypistKeyboardKorean *)self isTenKey])
  {
    v5 = objc_opt_new();
    if ([neededCopy length])
    {
      v6 = 0;
      do
      {
        v7 = [neededCopy substringWithRange:{v6, 1}];
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

      while (v6 < [neededCopy length]);
    }
  }

  else
  {
    v5 = neededCopy;
  }

  return v5;
}

- (id)decomposeKoreanStrings:(id)strings
{
  stringsCopy = strings;
  v5 = objc_opt_new();
  if ([stringsCopy length])
  {
    v6 = 0;
    v34 = stringsCopy;
    v35 = v5;
    do
    {
      v7 = [stringsCopy characterAtIndex:v6];
      if (((v7 + 21504) >> 2) > 0xAE8u)
      {
        [v5 appendFormat:@"%C", objc_msgSend(stringsCopy, "characterAtIndex:", v6)];
      }

      else
      {
        v8 = (v7 + 21504) / 0x24Cu;
        v9 = (v7 + 21504) % 0x24Cu / 0x1C;
        v10 = (v7 + 21504) % 0x1Cu;
        hangul = [(TypistKeyboardKorean *)self hangul];
        v12 = [hangul objectAtIndexedSubscript:1];
        v13 = [v12 objectAtIndexedSubscript:v9];

        doubleVowel = [(TypistKeyboardKorean *)self doubleVowel];
        v15 = [doubleVowel indexOfObject:v13];

        hangul2 = [(TypistKeyboardKorean *)self hangul];
        v17 = [hangul2 objectAtIndexedSubscript:2];
        v18 = [v17 objectAtIndexedSubscript:v10];

        doubleConsonantJong = [(TypistKeyboardKorean *)self doubleConsonantJong];
        v20 = [doubleConsonantJong indexOfObject:v18];

        hangul3 = [(TypistKeyboardKorean *)self hangul];
        v22 = [hangul3 objectAtIndexedSubscript:0];
        v23 = [v22 objectAtIndexedSubscript:v8];
        v24 = [(TypistKeyboardKorean *)self _convertRadicalIfNeeded:v23];

        doubleVowel2 = [(TypistKeyboardKorean *)self doubleVowel];
        if (v15 >= [doubleVowel2 count])
        {
          v28 = [(TypistKeyboardKorean *)self _convertRadicalIfNeeded:v13];
        }

        else
        {
          doubleVowelSplit = [(TypistKeyboardKorean *)self doubleVowelSplit];
          v27 = [doubleVowelSplit objectAtIndexedSubscript:v15];
          v28 = [(TypistKeyboardKorean *)self _convertRadicalIfNeeded:v27];
        }

        doubleConsonantJong2 = [(TypistKeyboardKorean *)self doubleConsonantJong];
        if (v20 >= [doubleConsonantJong2 count])
        {
          v32 = [(TypistKeyboardKorean *)self _convertRadicalIfNeeded:v18];
        }

        else
        {
          doubleConsonantSplitJong = [(TypistKeyboardKorean *)self doubleConsonantSplitJong];
          v31 = [doubleConsonantSplitJong objectAtIndexedSubscript:v20];
          v32 = [(TypistKeyboardKorean *)self _convertRadicalIfNeeded:v31];
        }

        v5 = v35;

        [v35 appendString:v24];
        [v35 appendString:v28];
        [v35 appendString:v32];

        stringsCopy = v34;
      }

      if ([(TypistKeyboardKorean *)self isTenKey]&& [(TypistKeyboardKorean *)self automaticallyInsertsArrowKey])
      {
        [v5 appendString:@""];
      }

      ++v6;
    }

    while (v6 < [stringsCopy length]);
  }

  return v5;
}

- (id)_flickGestureDirection:(unint64_t)direction
{
  if (direction - 3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_279DF4D40[direction - 3];
  }
}

- (void)setupTenKey:(id)key forKey:(id)forKey keyName:(id)name planeName:(id)planeName
{
  v91[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  forKeyCopy = forKey;
  nameCopy = name;
  planeNameCopy = planeName;
  if (-[TypistKeyboardKorean isTenKey](self, "isTenKey") && ([forKeyCopy modifiesKeyplane] & 1) == 0)
  {
    v82 = planeNameCopy;
    v83 = keyCopy;
    v84 = forKeyCopy;
    fullRepresentedString = [forKeyCopy fullRepresentedString];
    v85 = nameCopy;
    selfCopy = self;
    if ([fullRepresentedString length] >= 2)
    {
      v15 = 1;
      do
      {
        multiTapOrbit = [(TypistKeyboardKorean *)self multiTapOrbit];
        v90[1] = @"taps";
        v91[0] = nameCopy;
        v90[0] = @"basekey";
        v17 = v15 + 1;
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15 + 1];
        v91[1] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
        v20 = [fullRepresentedString substringWithRange:{v15, 1}];
        [multiTapOrbit setObject:v19 forKey:v20];

        self = selfCopy;
        v15 = v17;
        v21 = v17 >= [fullRepresentedString length];
        nameCopy = v85;
      }

      while (!v21);
    }

    if ([(TypistKeyboard *)self flickTyping])
    {
      flickTable = [(TypistKeyboardKorean *)self flickTable];
      v23 = MEMORY[0x277CCACA8];
      displayString = [forKeyCopy displayString];
      v25 = [v23 stringWithFormat:@"Roman-Accent-%@", displayString];
      [flickTable objectForKey:v25];
      v27 = v26 = self;
      v28 = [v27 objectForKeyedSubscript:@"Strings"];
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v30 = [v28 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if (!v30)
      {
        flickTable2 = [(TypistKeyboardKorean *)v26 flickTable];
        v32 = MEMORY[0x277CCACA8];
        displayString2 = [v84 displayString];
        v34 = [v32 stringWithFormat:@"Roman-Accent-%@-Korean10Key-Plane", displayString2];
        v35 = [flickTable2 objectForKey:v34];
        v36 = [v35 objectForKeyedSubscript:@"Strings"];
        whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v38 = [v36 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

        v30 = v38;
      }

      whitespaceCharacterSet3 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v80 = v30;
      v40 = [v30 componentsSeparatedByCharactersInSet:whitespaceCharacterSet3];
      v41 = [v40 mutableCopy];

      lastObject = [v41 lastObject];
      [v41 removeLastObject];
      v79 = lastObject;
      [v41 insertObject:lastObject atIndex:1];
      [v84 frame];
      UIRectGetCenter();
      v43 = *MEMORY[0x277CBF348];
      v44 = *(MEMORY[0x277CBF348] + 8);
      [TypistKeyboard centerOfKey:v26 withOffset:"centerOfKey:withOffset:"];
      v46 = v45;
      v48 = v47;
      nameCopy = v85;
      if ([v41 count] >= 2)
      {
        v49 = v26;
        v50 = 1;
        while (v50 != 6)
        {
          v51 = [v41 objectAtIndexedSubscript:v50];
          if (([v51 isEqualToString:nameCopy] & 1) == 0)
          {
            v52 = -[TypistKeyboardKorean _flickGestureDirection:](v49, "_flickGestureDirection:", [v41 count]);
            v53 = [v52 objectAtIndexedSubscript:v50 - 1];
            v87.receiver = selfCopy;
            v87.super_class = TypistKeyboardKorean;
            LODWORD(v54) = 1118175232;
            [(TypistKeyboard *)&v87 calculateCoordinatesForFlickGesture:v53 direction:v46 offset:v48, v54];
            v56 = v55;
            v58 = v57;

            v88[0] = @"key";
            v88[1] = @"basekey";
            v89[0] = v51;
            v89[1] = nameCopy;
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
            cache = [v84 cache];
            v61 = [cache objectForKey:@"more-after"];
            v62 = v61;
            v63 = &unk_28802A0F0;
            if (v61)
            {
              v63 = v61;
            }

            v89[7] = v63;
            v88[8] = @"direction";
            -[TypistKeyboardKorean _flickGestureDirection:](selfCopy, "_flickGestureDirection:", [v41 count]);
            v65 = v64 = v41;
            v66 = [v65 objectAtIndexedSubscript:v50 - 1];
            v89[8] = v66;
            v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:9];
            [v83 setObject:v67 forKey:v51];

            v49 = selfCopy;
            v41 = v64;

            nameCopy = v85;
          }

          if (++v50 >= [v41 count])
          {
            goto LABEL_20;
          }
        }

        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        representedString = [v84 representedString];
        TYLog(@"%@ - setupTenKey: WARNING! More than 5 flicks found for %@ - %@", v70, v71, v72, v73, v74, v75, v76, v69);
      }

LABEL_20:

      keyCopy = v83;
    }

    forKeyCopy = v84;
    planeNameCopy = v82;
  }

  v77 = *MEMORY[0x277D85DE8];
}

- (id)getExpectedPlaneNameForKey:(id)key currentPlane:(id)plane
{
  keyCopy = key;
  planeCopy = plane;
  if (![(TypistKeyboardKorean *)self isTenKey])
  {
    v22.receiver = self;
    v22.super_class = TypistKeyboardKorean;
    defaultPlaneName = [(TypistKeyboard *)&v22 getExpectedPlaneNameForKey:keyCopy currentPlane:planeCopy];
LABEL_10:
    v14 = defaultPlaneName;
    goto LABEL_11;
  }

  if (![(__CFString *)planeCopy isEqualToString:@"alphabet-capital-letter-plane"])
  {
    keyPlanes = [(TypistKeyboard *)self keyPlanes];
    v18 = [keyPlanes objectForKeyedSubscript:planeCopy];
    v19 = [v18 objectForKeyedSubscript:keyCopy];
    v20 = [v19 objectForKeyedSubscript:@"more-after"];
    bOOLValue = [v20 BOOLValue];

    if (bOOLValue)
    {
      defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
    }

    else
    {
      defaultPlaneName = planeCopy;
    }

    goto LABEL_10;
  }

  planeSwitchTable = [(TypistKeyboard *)self planeSwitchTable];
  allKeys = [planeSwitchTable allKeys];
  v10 = [allKeys containsObject:@"alphabet-korean10key-plane"];
  v11 = @"alphabet-plane";
  if (v10)
  {
    v11 = @"alphabet-korean10key-plane";
  }

  v12 = v11;

  if ([keyCopy isEqualToString:@""])
  {
    v13 = v12;
  }

  else
  {
    v13 = planeCopy;
  }

  v14 = v13;

LABEL_11:

  return v14;
}

- (TypistKeyboardKorean)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = TypistKeyboardKorean;
  v5 = [(TypistKeyboard *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hangul"];
    hangul = v5->_hangul;
    v5->_hangul = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doubleConsonantJong"];
    doubleConsonantJong = v5->_doubleConsonantJong;
    v5->_doubleConsonantJong = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doubleConsonantSplitJong"];
    doubleConsonantSplitJong = v5->_doubleConsonantSplitJong;
    v5->_doubleConsonantSplitJong = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doubleVowel"];
    doubleVowel = v5->_doubleVowel;
    v5->_doubleVowel = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doubleVowelSplit"];
    doubleVowelSplit = v5->_doubleVowelSplit;
    v5->_doubleVowelSplit = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"radicalBreakdownMultiTap"];
    radicalBreakdownMultiTap = v5->_radicalBreakdownMultiTap;
    v5->_radicalBreakdownMultiTap = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"radicalBreakdownFlick"];
    radicalBreakdownFlick = v5->_radicalBreakdownFlick;
    v5->_radicalBreakdownFlick = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flickTable"];
    flickTable = v5->_flickTable;
    v5->_flickTable = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multiTapOrbit"];
    multiTapOrbit = v5->_multiTapOrbit;
    v5->_multiTapOrbit = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multiTapCompleteKey"];
    multiTapCompleteKey = v5->_multiTapCompleteKey;
    v5->_multiTapCompleteKey = v24;

    v5->_automaticallyInsertsArrowKey = [coderCopy decodeBoolForKey:@"automaticallyInsertsArrowKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TypistKeyboardKorean;
  [(TypistKeyboard *)&v15 encodeWithCoder:coderCopy];
  hangul = self->_hangul;
  if (hangul)
  {
    [coderCopy encodeObject:hangul forKey:@"hangul"];
  }

  doubleConsonantJong = self->_doubleConsonantJong;
  if (doubleConsonantJong)
  {
    [coderCopy encodeObject:doubleConsonantJong forKey:@"doubleConsonantJong"];
  }

  doubleConsonantSplitJong = self->_doubleConsonantSplitJong;
  if (doubleConsonantSplitJong)
  {
    [coderCopy encodeObject:doubleConsonantSplitJong forKey:@"doubleConsonantSplitJong"];
  }

  doubleVowel = self->_doubleVowel;
  if (doubleVowel)
  {
    [coderCopy encodeObject:doubleVowel forKey:@"doubleVowel"];
  }

  doubleVowelSplit = self->_doubleVowelSplit;
  if (doubleVowelSplit)
  {
    [coderCopy encodeObject:doubleVowelSplit forKey:@"doubleVowelSplit"];
  }

  radicalBreakdownMultiTap = self->_radicalBreakdownMultiTap;
  if (radicalBreakdownMultiTap)
  {
    [coderCopy encodeObject:radicalBreakdownMultiTap forKey:@"radicalBreakdownMultiTap"];
  }

  radicalBreakdownFlick = self->_radicalBreakdownFlick;
  if (radicalBreakdownFlick)
  {
    [coderCopy encodeObject:radicalBreakdownFlick forKey:@"radicalBreakdownFlick"];
  }

  flickTable = self->_flickTable;
  if (flickTable)
  {
    [coderCopy encodeObject:flickTable forKey:@"flickTable"];
  }

  multiTapOrbit = self->_multiTapOrbit;
  if (multiTapOrbit)
  {
    [coderCopy encodeObject:multiTapOrbit forKey:@"multiTapOrbit"];
  }

  multiTapCompleteKey = self->_multiTapCompleteKey;
  if (multiTapCompleteKey)
  {
    [coderCopy encodeObject:multiTapCompleteKey forKey:@"multiTapCompleteKey"];
  }

  [coderCopy encodeBool:self->_automaticallyInsertsArrowKey forKey:@"automaticallyInsertsArrowKey"];
}

@end