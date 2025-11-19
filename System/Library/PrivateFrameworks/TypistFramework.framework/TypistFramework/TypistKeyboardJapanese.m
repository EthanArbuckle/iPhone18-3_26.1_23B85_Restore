@interface TypistKeyboardJapanese
- (BOOL)_canMultiTap;
- (BOOL)isHandwriting;
- (BOOL)isKanaKeyboard;
- (BOOL)isTenKey;
- (CGRect)_determineHandwritingBound;
- (TypistKeyboardJapanese)initWithCoder:(id)a3;
- (id)_convertKanaStringstoMultiTapNecessary:(id)a3;
- (id)_convertKanaStringstoRomajiIfNecessary:(id)a3;
- (id)_flickGestureDirection;
- (id)addAccentKeyAction:(id)a3;
- (id)addKeyboardPopupKeys:(id)a3 inPlane:(id)a4 addTo:(id)a5 keyplaneKeycaps:(id)a6;
- (id)changeKeyNameToGenericCharacter:(id)a3;
- (id)generateKeyplaneSwitchTable:(id)a3;
- (id)generateKeystrokeStream:(id)a3;
- (id)getExpectedPlaneNameForKey:(id)a3 currentPlane:(id)a4;
- (id)getPostfixKey:(id)a3;
- (id)init:(id)a3 options:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
- (id)whiteSpaceCharSet;
- (int64_t)commitCandidate:(id)a3;
- (int64_t)commitCandidateAtIndex:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setup50OnFlick:(id)a3 forKey:(id)a4 keyName:(id)a5 planeName:(id)a6;
- (void)setupExtraKeyplaneDataIfNeeded:(id)a3;
- (void)setupTenKey:(id)a3 forKey:(id)a4 keyName:(id)a5 planeName:(id)a6;
@end

@implementation TypistKeyboardJapanese

- (id)init:(id)a3 options:(id)a4
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardJapanese;
  v4 = [(TypistKeyboard *)&v7 init:a3 options:a4 locale:@"ja_JP"];
  v5 = v4;
  if (v4)
  {
    [v4 setHasCandidatesToCommit:0];
  }

  return v5;
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [(TypistKeyboardJapanese *)self setMultiTapOrbit:v8];

  v9 = [v6 lowercaseString];
  v10 = [v9 containsString:@"kana"];

  if (v10)
  {
    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = @"iPhone";
    if ([v11 userInterfaceIdiom] == 1 && !-[TypistKeyboard isFloating](self, "isFloating"))
    {
      v12 = @"iPad";
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Keyboard-ja_JP-Kana-%@.plist", v12];
    v14 = [(TypistKeyboard *)self keysDataForInputMode:@"ja" andFileName:v13];
    [(TypistKeyboardJapanese *)self setFlickTable:v14];
  }

  v36.receiver = self;
  v36.super_class = TypistKeyboardJapanese;
  v15 = [(TypistKeyboard *)&v36 setupKeyboardInfo:v6 options:v7];
  if (!v15)
  {
    [(TypistKeyboard *)self setUsePopupKeys:1];
    v16 = [(TypistKeyboard *)self keyboardID];
    v17 = [v16 containsString:@"-Flick"];

    if (v17)
    {
      [(TypistKeyboard *)self setFlickTyping:1];
    }

    v18 = [TypistCandidateBar initWithTypistKeyboard:self];
    [(TypistKeyboard *)self setCandidatebar:v18];

    if ([(TypistKeyboardJapanese *)self isKanaKeyboard])
    {
      [(TypistKeyboardJapanese *)self setBaseCharacters:&unk_28802A780];
      v19 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ゔづぱぴぷぺぽ"];
      [(TypistKeyboardJapanese *)self setDoubleAccentCharacterSet:v19];

      if ([(TypistKeyboardJapanese *)self isTenKey])
      {
        v20 = [(TypistKeyboard *)self keyPlanes];
        v21 = [v20 objectForKeyedSubscript:@"alphabet-plane"];
        v22 = [v21 objectForKeyedSubscript:@"↨"];
        [(TypistKeyboardJapanese *)self setUpdownKey:v22];

        v23 = [(TypistKeyboard *)self keyPlanes];
        v24 = [(TypistKeyboard *)self defaultPlaneName];
        v25 = [v23 objectForKeyedSubscript:v24];
        v26 = [v25 objectForKeyedSubscript:@"☻"];
        [(TypistKeyboardJapanese *)self setAccentKey:v26];

        v27 = [(TypistKeyboard *)self keyPlanes];
        v28 = [(TypistKeyboard *)self defaultPlaneName];
        v29 = [v27 objectForKeyedSubscript:v28];
        v30 = [v29 objectForKeyedSubscript:@""];
        [(TypistKeyboardJapanese *)self setMultiTapCompleteKey:v30];
      }

      else
      {
        [(TypistKeyboardJapanese *)self setUpdownKey:0];
        v31 = [(TypistKeyboard *)self keyPlanes];
        v32 = [(TypistKeyboard *)self defaultPlaneName];
        v33 = [v31 objectForKeyedSubscript:v32];
        v34 = [v33 objectForKeyedSubscript:@"゛"];
        [(TypistKeyboardJapanese *)self setAccentKey:v34];

        [(TypistKeyboardJapanese *)self setMultiTapCompleteKey:0];
      }
    }
  }

  return v15;
}

- (void)setupExtraKeyplaneDataIfNeeded:(id)a3
{
  v5 = a3;
  if ([(TypistKeyboardJapanese *)self isTenKey])
  {
    v4 = [v5 objectForKeyedSubscript:@"multiTapOrbit"];
    [(TypistKeyboardJapanese *)self setMultiTapOrbit:v4];
  }
}

- (BOOL)isHandwriting
{
  v2 = [(TypistKeyboard *)self keyboardID];
  v3 = [v2 hasPrefix:@"ja_JP-HWR@"];

  return v3;
}

- (BOOL)isTenKey
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = ([v3 userInterfaceIdiom] != 1 || -[TypistKeyboard isFloating](self, "isFloating")) && -[TypistKeyboardJapanese isKanaKeyboard](self, "isKanaKeyboard");

  return v4;
}

- (BOOL)isKanaKeyboard
{
  v2 = [(TypistKeyboard *)self keyboardID];
  v3 = [v2 lowercaseString];
  v4 = [v3 containsString:@"kana"];

  return v4;
}

- (BOOL)_canMultiTap
{
  if ([(TypistKeyboardJapanese *)self isTenKey])
  {
    v3 = [(TypistKeyboard *)self keyboardID];
    v4 = [v3 lowercaseString];
    v5 = [v4 containsString:@"flick"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)addKeyboardPopupKeys:(id)a3 inPlane:(id)a4 addTo:(id)a5 keyplaneKeycaps:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(TypistKeyboardJapanese *)self isKanaKeyboard])
  {
    v14 = v12;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = TypistKeyboardJapanese;
    v14 = [(TypistKeyboard *)&v17 addKeyboardPopupKeys:v10 inPlane:v11 addTo:v12 keyplaneKeycaps:v13];
  }

  v15 = v14;

  return v15;
}

- (id)changeKeyNameToGenericCharacter:(id)a3
{
  v4 = a3;
  if ([v4 containsString:@"TenKey-Alphabet-Keyplane-Switch"])
  {
    v5 = @"alphabet-plane";
  }

  else if ([v4 containsString:@"FiftyOn-Alphabet-Keyplane-Switch"])
  {
    v5 = @"alphabet-small-letter-plane";
  }

  else if ([v4 containsString:@"FiftyOn-SymbolNumber-Keyplane-Switch"])
  {
    v5 = @"symbolnumber-plane";
  }

  else if ([v4 containsString:@"FiftyOn-Kana-Keyplane-Switch"])
  {
    v5 = @"kana-plane";
  }

  else if (-[TypistKeyboardJapanese isKanaKeyboard](self, "isKanaKeyboard") && !-[TypistKeyboardJapanese isTenKey](self, "isTenKey") && ([v4 containsString:@"Fullwidth-Key-To-"] & 1) != 0)
  {
    v5 = @"全";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TypistKeyboardJapanese;
    v5 = [(TypistKeyboard *)&v7 changeKeyNameToGenericCharacter:v4];
  }

  return v5;
}

- (id)generateKeyplaneSwitchTable:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TypistKeyboardJapanese *)self isKanaKeyboard])
  {
    v42.receiver = self;
    v42.super_class = TypistKeyboardJapanese;
    v24 = v4;
    [(TypistKeyboard *)&v42 generateKeyplaneSwitchTableFor10Key:v4];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v27 = v41 = 0u;
    obj = [v27 allKeys];
    v28 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (!v28)
    {
      goto LABEL_20;
    }

    v26 = *v39;
    v5 = @"-plane";
    v6 = @"-fullwidth";
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v7;
        v8 = *(*(&v38 + 1) + 8 * v7);
        v9 = [v8 substringToIndex:{objc_msgSend(v8, "length") - -[__CFString length](v5, "length")}];
        v10 = [v27 objectForKeyedSubscript:v8];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v31 = v10;
        v30 = [v10 allKeys];
        v11 = [v30 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v35;
          v32 = v9;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(v30);
              }

              v15 = *(*(&v34 + 1) + 8 * i);
              v16 = [v15 substringToIndex:{objc_msgSend(v15, "length") - -[__CFString length](v5, "length")}];
              v17 = [v9 stringByAppendingString:v6];
              if ([v17 isEqualToString:v16])
              {
              }

              else
              {
                [v16 stringByAppendingString:v6];
                v18 = v6;
                v20 = v19 = v5;
                v21 = [v20 isEqualToString:v9];

                v5 = v19;
                v6 = v18;

                if (!v21)
                {
                  goto LABEL_16;
                }
              }

              [v31 setObject:@"全" forKeyedSubscript:v15];
LABEL_16:

              v9 = v32;
            }

            v12 = [v30 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v12);
        }

        v7 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (!v28)
      {
LABEL_20:

        v4 = v24;
        goto LABEL_22;
      }
    }
  }

  v33.receiver = self;
  v33.super_class = TypistKeyboardJapanese;
  v27 = [(TypistKeyboard *)&v33 generateKeyplaneSwitchTable:v4];
LABEL_22:

  v22 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)getPostfixKey:(id)a3
{
  v4 = a3;
  if (![(TypistKeyboardJapanese *)self isKanaKeyboard])
  {
    goto LABEL_7;
  }

  v5 = [(TypistKeyboardJapanese *)self baseCharacters];
  v6 = [v5 objectForKeyedSubscript:v4];
  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = v6;
  if (![(TypistKeyboardJapanese *)self isTenKey])
  {
    v8 = [(TypistKeyboard *)self flickTyping];

    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_7:
    v9 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v10 = [v9 characterIsMember:{objc_msgSend(v4, "characterAtIndex:", 0)}];

    if (v10)
    {
      v11 = [v4 lowercaseString];
    }

    else
    {
      v11 = v4;
    }

    v12 = v11;
    goto LABEL_12;
  }

LABEL_11:
  v13 = [(TypistKeyboardJapanese *)self baseCharacters];
  v12 = [v13 objectForKeyedSubscript:v4];

LABEL_12:

  return v12;
}

- (id)addAccentKeyAction:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TypistKeyboardJapanese *)self isKanaKeyboard])
  {
    v5 = [(TypistKeyboardJapanese *)self baseCharacters];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      if (![(TypistKeyboard *)self flickTyping]|| [(TypistKeyboardJapanese *)self isTenKey])
      {
        v7 = [(TypistKeyboardJapanese *)self doubleAccentCharacterSet];
        v8 = [v7 characterIsMember:{objc_msgSend(v4, "characterAtIndex:", 0)}];

        v9 = [(TypistKeyboardJapanese *)self accentKey];
        v10 = v9;
        if (v8)
        {
          v27[0] = v9;
          v11 = [(TypistKeyboardJapanese *)self accentKey];
          v27[1] = v11;
          v12 = MEMORY[0x277CBEA60];
          v13 = v27;
          v14 = 2;
LABEL_7:
          v15 = [v12 arrayWithObjects:v13 count:{v14, v24}];

LABEL_13:
          goto LABEL_22;
        }

        v26 = v9;
        v18 = MEMORY[0x277CBEA60];
        v19 = &v26;
LABEL_12:
        v15 = [v18 arrayWithObjects:v19 count:1];
        goto LABEL_13;
      }
    }

    else
    {
      v16 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
      if ([v16 characterIsMember:{objc_msgSend(v4, "characterAtIndex:", 0)}])
      {
        v17 = [(TypistKeyboardJapanese *)self isTenKey];

        if (v17)
        {
          v10 = [(TypistKeyboardJapanese *)self updownKey];
          v25 = v10;
          v18 = MEMORY[0x277CBEA60];
          v19 = &v25;
          goto LABEL_12;
        }
      }

      else
      {
      }

      if ([(TypistKeyboardJapanese *)self _canMultiTap]&& [(TypistKeyboard *)self flickTyping]&& [(TypistKeyboardJapanese *)self isTenKey])
      {
        v10 = [(TypistKeyboard *)self findKeyOnAnyPlane:v4];
        if (!_shouldNotTapArrowKey(v4))
        {
          v20 = [v10 objectForKeyedSubscript:@"type"];
          v21 = [v20 isEqualToString:@"gesture"];

          if (!v21)
          {
            v11 = [(TypistKeyboardJapanese *)self multiTapCompleteKey];
            v24 = v11;
            v12 = MEMORY[0x277CBEA60];
            v13 = &v24;
            v14 = 1;
            goto LABEL_7;
          }
        }
      }
    }
  }

  v15 = 0;
LABEL_22:

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)generateKeystrokeStream:(id)a3
{
  v4 = a3;
  if ([(TypistKeyboardJapanese *)self isKanaKeyboard])
  {
    v5 = [(TypistKeyboardJapanese *)self _convertKanaStringstoMultiTapNecessary:v4];
    TYLog(@"Japanese keys to be typed (in Kana): %@", v6, v7, v8, v9, v10, v11, v12, v5);
    v48.receiver = self;
    v48.super_class = TypistKeyboardJapanese;
    [(TypistKeyboard *)&v48 generateKeystrokeStream:v5];
    v22 = LABEL_5:;

    goto LABEL_6;
  }

  v13 = [(TypistKeyboard *)self keyboardID];
  v14 = [v13 containsString:@"sw=QWERTY"];

  if (v14)
  {
    v5 = [(TypistKeyboardJapanese *)self _convertKanaStringstoRomajiIfNecessary:v4];
    TYLog(@"Japanese keys to be typed (in Romaji): %@", v15, v16, v17, v18, v19, v20, v21, v5);
    v47.receiver = self;
    v47.super_class = TypistKeyboardJapanese;
    [(TypistKeyboard *)&v47 generateKeystrokeStream:v5];
    goto LABEL_5;
  }

  if ([(TypistKeyboardJapanese *)self isHandwriting])
  {
    [(TypistKeyboardJapanese *)self _determineHandwritingBound];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    TYLog(@"Text to be handwritten: %@", v39, v40, v41, v42, v43, v44, v45, v4);
    v22 = [(TypistKeyboard *)self generateHandwritingStream:v4 inFrame:0 isPencil:v32, v34, v36, v38];
  }

  else
  {
    TYLog(@"The current input mode is unknown or unsupported at this time. Please file a radar.", v24, v25, v26, v27, v28, v29, v30, v46);
    v22 = 0;
  }

LABEL_6:

  return v22;
}

- (CGRect)_determineHandwritingBound
{
  [TypistKeyboardUtilities findKeyBoundsInKeyboard:@"Handwriting-Input"];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)_flickGestureDirection
{
  if (_flickGestureDirection_onceToken_0 != -1)
  {
    [TypistKeyboardJapanese _flickGestureDirection];
  }

  v3 = _flickGestureDirection_flickGestureDirection_0;

  return v3;
}

void __48__TypistKeyboardJapanese__flickGestureDirection__block_invoke()
{
  v0 = _flickGestureDirection_flickGestureDirection_0;
  _flickGestureDirection_flickGestureDirection_0 = &unk_28802A300;
}

- (void)setupTenKey:(id)a3 forKey:(id)a4 keyName:(id)a5 planeName:(id)a6
{
  v80[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v73 = a6;
  if (-[TypistKeyboardJapanese isTenKey](self, "isTenKey") && ([v11 modifiesKeyplane] & 1) == 0)
  {
    v13 = [v11 fullRepresentedString];
    v71 = self;
    v75 = v13;
    if ([v13 length] >= 2)
    {
      v14 = 1;
      do
      {
        v15 = [v13 substringWithRange:{v14, 1}];
        v16 = [(TypistKeyboardJapanese *)self multiTapOrbit];
        v17 = [v16 objectForKeyedSubscript:v15];

        if (v17)
        {
          ++v14;
        }

        else
        {
          v18 = [(TypistKeyboardJapanese *)self multiTapOrbit];
          v79[1] = @"taps";
          v80[0] = v12;
          v79[0] = @"basekey";
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:++v14];
          v80[1] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
          [v18 setObject:v20 forKey:v15];

          self = v71;
        }

        v13 = v75;
      }

      while (v14 < [v75 length]);
    }

    v69 = v12;
    v21 = [(TypistKeyboardJapanese *)self flickTable];
    v22 = MEMORY[0x277CCACA8];
    v23 = [v11 displayString];
    v24 = [v22 stringWithFormat:@"Roman-Accent-%@", v23];
    v25 = [v21 objectForKey:v24];

    v67 = v25;
    v26 = [v25 objectForKey:@"Strings"];
    v27 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v28 = [v26 stringByTrimmingCharactersInSet:v27];

    v29 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v68 = v28;
    v30 = [v28 componentsSeparatedByCharactersInSet:v29];

    v70 = v11;
    [v11 frame];
    UIRectGetCenter();
    v31 = *MEMORY[0x277CBF348];
    v32 = *(MEMORY[0x277CBF348] + 8);
    [TypistKeyboard centerOfKey:"centerOfKey:withOffset:" withOffset:?];
    v34 = v33;
    v36 = v35;
    v74 = v30;
    if ([v30 count] >= 2)
    {
      v37 = 1;
      v38 = 4;
      while (v38)
      {
        v72 = [v74 objectAtIndexedSubscript:v37];
        v39 = [(TypistKeyboardJapanese *)v71 _flickGestureDirection];
        v40 = [v39 objectAtIndexedSubscript:v37 - 1];
        v76.receiver = v71;
        v76.super_class = TypistKeyboardJapanese;
        LODWORD(v41) = 1118175232;
        [(TypistKeyboard *)&v76 calculateCoordinatesForFlickGesture:v40 direction:v34 offset:v36, v41];
        v43 = v42;
        v45 = v44;

        v77[0] = @"key";
        v77[1] = @"basekey";
        v78[0] = v72;
        v78[1] = v69;
        v78[2] = @"flick";
        v77[2] = @"action";
        v77[3] = @"x";
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v43];
        v78[3] = v46;
        v77[4] = @"y";
        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v45];
        v78[4] = v47;
        v78[5] = v73;
        v77[5] = @"plane";
        v77[6] = @"type";
        v78[6] = @"gesture";
        v77[7] = @"more-after";
        v48 = [v70 cache];
        v49 = [v48 objectForKey:@"more-after"];
        v50 = v49;
        v51 = &unk_28802A0D8;
        if (v49)
        {
          v51 = v49;
        }

        v78[7] = v51;
        v77[8] = @"direction";
        [(TypistKeyboardJapanese *)v71 _flickGestureDirection];
        v53 = v52 = v10;
        v54 = [v53 objectAtIndexedSubscript:v37 - 1];
        v78[8] = v54;
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:9];

        v10 = v52;
        [v52 setObject:v55 forKey:v72];

        ++v37;
        --v38;
        if (v37 >= [v74 count])
        {
          goto LABEL_17;
        }
      }

      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      v66 = [v70 representedString];
      TYLog(@"%@ - setupTenKey: WARNING! More than 4 flicks found for %@ - %@", v58, v59, v60, v61, v62, v63, v64, v57);
    }

LABEL_17:

    v12 = v69;
    v11 = v70;
  }

  v65 = *MEMORY[0x277D85DE8];
}

- (void)setup50OnFlick:(id)a3 forKey:(id)a4 keyName:(id)a5 planeName:(id)a6
{
  v55[9] = *MEMORY[0x277D85DE8];
  v51 = a3;
  v10 = a4;
  v50 = a5;
  v49 = a6;
  v11 = [(TypistKeyboardJapanese *)self flickTable];
  v12 = MEMORY[0x277CCACA8];
  v52 = v10;
  v13 = [v10 displayString];
  v14 = [v12 stringWithFormat:@"Roman-Accent-%@", v13];
  v15 = [v11 objectForKey:v14];

  if (v15)
  {
    v47 = v15;
    v16 = [v15 objectForKey:@"Strings"];
    v17 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v18 = [v16 stringByTrimmingCharactersInSet:v17];

    v19 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v46 = v18;
    v20 = [v18 componentsSeparatedByCharactersInSet:v19];

    [v52 frame];
    UIRectGetCenter();
    v21 = *MEMORY[0x277CBF348];
    v22 = *(MEMORY[0x277CBF348] + 8);
    [TypistKeyboard centerOfKey:"centerOfKey:withOffset:" withOffset:?];
    v24 = v23;
    v26 = v25;
    if ([v20 count] >= 2)
    {
      v27 = 1;
      v48 = v20;
      do
      {
        v28 = [v20 objectAtIndexedSubscript:v27];
        v29 = v28;
        if (v28 && [v28 length])
        {
          v30 = [(TypistKeyboardJapanese *)self _flickGestureDirection];
          v31 = [v30 objectAtIndexedSubscript:v27 - 1];

          v53.receiver = self;
          v53.super_class = TypistKeyboardJapanese;
          LODWORD(v32) = 1118175232;
          [(TypistKeyboard *)&v53 calculateCoordinatesForFlickGesture:v31 direction:v24 offset:v26, v32];
          v34 = v33;
          v54[0] = @"key";
          v54[1] = @"basekey";
          v55[0] = v29;
          v55[1] = v50;
          v55[2] = @"flick";
          v54[2] = @"action";
          v54[3] = @"x";
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v35];
          v55[3] = v36;
          v54[4] = @"y";
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v34];
          v55[4] = v37;
          v55[5] = v49;
          v54[5] = @"plane";
          v54[6] = @"type";
          v55[6] = @"gesture";
          v54[7] = @"more-after";
          v38 = [v52 cache];
          v39 = [v38 objectForKey:@"more-after"];
          v40 = v39;
          v41 = &unk_28802A0D8;
          if (v39)
          {
            v41 = v39;
          }

          v54[8] = @"direction";
          v55[7] = v41;
          v55[8] = v31;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:9];
          v43 = v42 = self;
          v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v29];
          [v51 setObject:v43 forKey:v44];

          self = v42;
          v20 = v48;
        }

        ++v27;
      }

      while (v27 < [v20 count]);
    }

    v15 = v47;
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)_convertKanaStringstoMultiTapNecessary:(id)a3
{
  v4 = a3;
  if (![(TypistKeyboardJapanese *)self _canMultiTap]|| [(TypistKeyboard *)self flickTyping])
  {
    v5 = v4;
    goto LABEL_4;
  }

  v5 = objc_opt_new();
  if ([v4 length])
  {
    v7 = 0;
    v23 = self;
    v24 = v4;
    while (1)
    {
      v8 = [v4 substringWithRange:{v7, 1, v23}];
      v9 = [(TypistKeyboardJapanese *)self addAccentKeyAction:v8];
      if (v9)
      {
        v10 = [(TypistKeyboardJapanese *)self getPostfixKey:v8];

        v8 = v10;
      }

      v11 = [(TypistKeyboardJapanese *)self multiTapOrbit];
      v12 = [v11 objectForKey:v8];

      if (!v12)
      {
        break;
      }

      v13 = [v12 objectForKeyedSubscript:@"taps"];
      v14 = [v13 unsignedIntegerValue];

      v15 = [v12 objectForKeyedSubscript:@"basekey"];
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_16:
      if ([v9 count])
      {
        v16 = 0;
        do
        {
          v17 = [v9 objectAtIndexedSubscript:v16];
          v18 = [v17 objectForKeyedSubscript:@"key"];
          [v5 appendString:v18];

          ++v16;
        }

        while (v16 < [v9 count]);
      }

      self = v23;
      if (!_shouldNotTapArrowKey(v15))
      {
        v19 = [v12 objectForKeyedSubscript:@"plane"];
        v20 = [v19 isEqualToString:@"symbolnumber-plane"];

        if ((v20 & 1) == 0)
        {
          v21 = [(TypistKeyboardJapanese *)v23 multiTapCompleteKey];
          v22 = [v21 objectForKeyedSubscript:@"key"];
          [v5 appendString:v22];
        }
      }

      ++v7;
      v4 = v24;
      if (v7 >= [v24 length])
      {
        goto LABEL_4;
      }
    }

    v15 = v8;
    v14 = 1;
    do
    {
LABEL_15:
      [v5 appendString:v15];
      --v14;
    }

    while (v14);
    goto LABEL_16;
  }

LABEL_4:

  return v5;
}

- (id)_convertKanaStringstoRomajiIfNecessary:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[a-z]" options:0 error:0];
  if ([v3 length] < 2 || objc_msgSend(v4, "numberOfMatchesInString:options:range:", v3, 0, 0, objc_msgSend(v3, "length")))
  {
    v5 = v3;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v3];
    CFStringTransform(v7, 0, *MEMORY[0x277CBF0E0], 1u);
    v8 = [MEMORY[0x277CCACA8] stringWithString:v7];

    v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"n'" options:0 error:0];

    v5 = [v9 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{objc_msgSend(v8, "length"), @"nn"}];

    v4 = v9;
  }

  return v5;
}

- (id)getExpectedPlaneNameForKey:(id)a3 currentPlane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TypistKeyboardJapanese *)self whiteSpaceCharSet];
  v9 = [v8 characterIsMember:{objc_msgSend(v6, "characterAtIndex:", 0)}];

  if (v9)
  {
    v10 = [(TypistKeyboard *)self hasCandidatesToCommit];
  }

  else
  {
    v10 = 1;
  }

  [(TypistKeyboard *)self setHasCandidatesToCommit:v10];
  if (-[TypistKeyboard hasCandidatesToCommit](self, "hasCandidatesToCommit") && [v6 isEqualToString:@"⏎"])
  {
    [(TypistKeyboard *)self setHasCandidatesToCommit:0];
  }

  else
  {
    v11 = [(TypistKeyboard *)self getShiftPlaneForDefaultPlane];
    v12 = [v11 isEqualToString:v7];

    if (v12)
    {
      v13 = [(TypistKeyboard *)self defaultPlaneName];
      goto LABEL_10;
    }
  }

  v13 = v7;
LABEL_10:
  v14 = v13;

  return v14;
}

- (id)whiteSpaceCharSet
{
  if (whiteSpaceCharSet___onceToken != -1)
  {
    [TypistKeyboardJapanese whiteSpaceCharSet];
  }

  v3 = whiteSpaceCharSet___whiteSpaceCharSet;

  return v3;
}

uint64_t __43__TypistKeyboardJapanese_whiteSpaceCharSet__block_invoke()
{
  whiteSpaceCharSet___whiteSpaceCharSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" 　⇥⏎"];

  return MEMORY[0x2821F96F8]();
}

- (int64_t)commitCandidate:(id)a3
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardJapanese;
  v4 = [(TypistKeyboard *)&v7 commitCandidate:a3];
  v5 = v4 < 0 && [(TypistKeyboard *)self hasCandidatesToCommit];
  [(TypistKeyboard *)self setHasCandidatesToCommit:v5];
  return v4;
}

- (int64_t)commitCandidateAtIndex:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardJapanese;
  v4 = [(TypistKeyboard *)&v7 commitCandidateAtIndex:a3];
  v5 = v4 < 0 && [(TypistKeyboard *)self hasCandidatesToCommit];
  [(TypistKeyboard *)self setHasCandidatesToCommit:v5];
  return v4;
}

- (TypistKeyboardJapanese)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TypistKeyboardJapanese;
  v5 = [(TypistKeyboard *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseCharacters"];
    baseCharacters = v5->_baseCharacters;
    v5->_baseCharacters = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accentKey"];
    accentKey = v5->_accentKey;
    v5->_accentKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updownKey"];
    updownKey = v5->_updownKey;
    v5->_updownKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multiTapCompleteKey"];
    multiTapCompleteKey = v5->_multiTapCompleteKey;
    v5->_multiTapCompleteKey = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doubleAccentCharacterSet"];
    doubleAccentCharacterSet = v5->_doubleAccentCharacterSet;
    v5->_doubleAccentCharacterSet = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flickTable"];
    flickTable = v5->_flickTable;
    v5->_flickTable = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multiTapOrbit"];
    multiTapOrbit = v5->_multiTapOrbit;
    v5->_multiTapOrbit = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TypistKeyboardJapanese;
  [(TypistKeyboard *)&v12 encodeWithCoder:v4];
  baseCharacters = self->_baseCharacters;
  if (baseCharacters)
  {
    [v4 encodeObject:baseCharacters forKey:@"baseCharacters"];
  }

  accentKey = self->_accentKey;
  if (accentKey)
  {
    [v4 encodeObject:accentKey forKey:@"accentKey"];
  }

  updownKey = self->_updownKey;
  if (updownKey)
  {
    [v4 encodeObject:updownKey forKey:@"updownKey"];
  }

  multiTapCompleteKey = self->_multiTapCompleteKey;
  if (multiTapCompleteKey)
  {
    [v4 encodeObject:multiTapCompleteKey forKey:@"multiTapCompleteKey"];
  }

  doubleAccentCharacterSet = self->_doubleAccentCharacterSet;
  if (doubleAccentCharacterSet)
  {
    [v4 encodeObject:doubleAccentCharacterSet forKey:@"doubleAccentCharacterSet"];
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
}

@end