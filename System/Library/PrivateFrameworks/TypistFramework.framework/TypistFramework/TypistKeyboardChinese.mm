@interface TypistKeyboardChinese
- (BOOL)_isPinyin;
- (BOOL)_isWubihua;
- (BOOL)isHandwriting;
- (BOOL)isSwitchedToDefaultPlane:(id)a3;
- (BOOL)isTenKey;
- (BOOL)keyWillCommitCandidate:(id)a3;
- (CGRect)_determineHandwritingBound;
- (TypistKeyboardChinese)initWithCoder:(id)a3;
- (id)_flickGestureDirection;
- (id)changeKeyNameToGenericCharacter:(id)a3;
- (id)generateKeyplaneSwitchTable:(id)a3;
- (id)generateKeystrokeStream:(id)a3;
- (id)getExpectedPlaneNameForKey:(id)a3 currentPlane:(id)a4;
- (id)getPostfixKey:(id)a3;
- (id)init:(id)a3 options:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
- (id)willDirectlyCommitNumbersAndPunctuationSet;
- (id)willSwitchToDefaultPlaneCharacterSet;
- (void)encodeWithCoder:(id)a3;
- (void)setupSentenceBoundryStrings;
- (void)setupTenKey:(id)a3 forKey:(id)a4 keyName:(id)a5 planeName:(id)a6;
@end

@implementation TypistKeyboardChinese

- (id)init:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardChinese;
  return [(TypistKeyboard *)&v5 init:a3 options:a4 locale:@"zh_Han"];
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TypistKeyboard *)self keysDataForInputMode:@"zh" andFileName:@"Keyboard-zh.plist"];
  [(TypistKeyboardChinese *)self setFlickTable:v8];

  v26 = 0;
  v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\s+" options:1 error:&v26];
  v10 = v26;
  [(TypistKeyboardChinese *)self setWhiteSpaceRegex:v9];

  [(TypistKeyboardChinese *)self setPinyinMap:&unk_28802A578];
  v25.receiver = self;
  v25.super_class = TypistKeyboardChinese;
  v11 = [(TypistKeyboard *)&v25 setupKeyboardInfo:v7 options:v6];

  if (!v11)
  {
    [(TypistKeyboard *)self setUsePopupKeys:1];
    v12 = [TypistCandidateBar initWithTypistKeyboard:self];
    [(TypistKeyboard *)self setCandidatebar:v12];

    v13 = [(TypistKeyboard *)self keyboardID];
    v14 = [v13 lowercaseString];
    v15 = [v14 hasPrefix:@"zh_hant-zhuyin"];

    if (v15)
    {
      v16 = [(TypistKeyboard *)self keyPlanes];
      v17 = [(TypistKeyboard *)self defaultPlaneName];
      v18 = [v16 objectForKeyedSubscript:v17];
      v19 = [v18 objectForKeyedSubscript:@" "];
      v20 = [v19 mutableCopy];
      v21 = [(TypistKeyboard *)self keyPlanes];
      v22 = [(TypistKeyboard *)self defaultPlaneName];
      v23 = [v21 objectForKeyedSubscript:v22];
      [v23 setObject:v20 forKeyedSubscript:@"ˉ"];
    }
  }

  return v11;
}

- (BOOL)_isPinyin
{
  v2 = [(TypistKeyboard *)self keyboardID];
  v3 = [v2 lowercaseString];
  v4 = [v3 containsString:@"pinyin"];

  return v4;
}

- (BOOL)_isWubihua
{
  v2 = [(TypistKeyboard *)self keyboardID];
  v3 = [v2 lowercaseString];
  v4 = [v3 containsString:@"wubihua"];

  return v4;
}

- (id)changeKeyNameToGenericCharacter:(id)a3
{
  v4 = a3;
  if ([v4 containsString:@"TenKey-Chinese-Wubihua-Alphabet-Keyplane-Switch-Key"])
  {
    v5 = @"alphabet-plane";
  }

  else if ([v4 containsString:@"TenKey-Number-To-Number-Alternative-Keyplane-Switch-Key"])
  {
    v5 = @"number-alternative-plane";
  }

  else if ([v4 containsString:@"TenKey-Pinyin-Keyplane-Switch-Key"])
  {
    v5 = @"pinyin-plane";
  }

  else if ([v4 containsString:@"TenKey-Chinese-Number-Keyplane-Switch-Key"])
  {
    v5 = @"number-plane";
  }

  else if ([v4 containsString:@"TenKey-Wubihua-Keyplane-Switch-Key"])
  {
    v5 = @"wubihua-plane";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TypistKeyboardChinese;
    v5 = [(TypistKeyboard *)&v7 changeKeyNameToGenericCharacter:v4];
  }

  return v5;
}

- (id)_flickGestureDirection
{
  if (_flickGestureDirection_onceToken != -1)
  {
    [TypistKeyboardChinese _flickGestureDirection];
  }

  v3 = _flickGestureDirection_flickGestureDirection;

  return v3;
}

void __47__TypistKeyboardChinese__flickGestureDirection__block_invoke()
{
  v0 = _flickGestureDirection_flickGestureDirection;
  _flickGestureDirection_flickGestureDirection = &unk_28802A2B8;
}

- (id)getPostfixKey:(id)a3
{
  v4 = a3;
  if (![(TypistKeyboardChinese *)self isTenKey]|| ![(TypistKeyboardChinese *)self _isPinyin])
  {
    goto LABEL_7;
  }

  v5 = [(TypistKeyboardChinese *)self pinyinMap];
  v6 = [v4 lowercaseString];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(TypistKeyboard *)self flickTyping];

  if (v9)
  {
LABEL_7:
    if (-[TypistKeyboardChinese isTenKey](self, "isTenKey") && -[TypistKeyboardChinese _isWubihua](self, "_isWubihua") && ([v4 isEqualToString:@"*"] & 1) != 0)
    {
      v12 = @"問";
    }

    else
    {
      v12 = v4;
    }

    goto LABEL_12;
  }

  v10 = [(TypistKeyboardChinese *)self pinyinMap];
  v11 = [v4 lowercaseString];
  v12 = [v10 objectForKeyedSubscript:v11];

LABEL_12:

  return v12;
}

- (void)setupTenKey:(id)a3 forKey:(id)a4 keyName:(id)a5 planeName:(id)a6
{
  v84[9] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (!-[TypistKeyboardChinese isTenKey](self, "isTenKey") || ([v10 modifiesKeyplane] & 1) != 0)
  {
    goto LABEL_22;
  }

  v79 = v11;
  v78 = self;
  if ([v11 containsString:@"pinyin"])
  {
    v12 = [(TypistKeyboardChinese *)self flickTable];
    v13 = MEMORY[0x277CCACA8];
    v14 = [v10 displayString];
    v15 = [v13 stringWithFormat:@"Roman-Accent-%@-Pinyin-Plane", v14];
    v16 = [v12 objectForKey:v15];
    v17 = [v16 objectForKeyedSubscript:@"Strings"];
    v18 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v19 = [v17 stringByTrimmingCharactersInSet:v18];

    self = v78;
    if (v19)
    {
      v76 = v9;
      v11 = v79;
LABEL_9:
      v28 = [(TypistKeyboardChinese *)self whiteSpaceRegex];
      v29 = [v28 stringByReplacingMatchesInString:v19 options:0 range:0 withTemplate:{objc_msgSend(v19, "length"), @" "}];

      v30 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v75 = v29;
      v31 = [v29 componentsSeparatedByCharactersInSet:v30];
      v32 = [v31 mutableCopy];

      v33 = [v32 lastObject];
      [v32 removeLastObject];
      v74 = v33;
      [v32 insertObject:v33 atIndex:1];
      v34 = [v32 objectAtIndexedSubscript:0];
      v35 = [v32 objectAtIndexedSubscript:1];
      v36 = [v34 isEqualToString:v35];

      v77 = v10;
      [v10 frame];
      UIRectGetCenter();
      v37 = *MEMORY[0x277CBF348];
      v38 = *(MEMORY[0x277CBF348] + 8);
      [TypistKeyboard centerOfKey:"centerOfKey:withOffset:" withOffset:?];
      v40 = v39;
      v42 = v41;
      if (v36)
      {
        v43 = 2;
      }

      else
      {
        v43 = 1;
      }

      v81 = v32;
      if (v43 < [v32 count])
      {
        v44 = v43 - 6;
        while (v44)
        {
          v45 = [v81 objectAtIndexedSubscript:v43];
          v46 = [(TypistKeyboardChinese *)v78 _flickGestureDirection];
          v47 = [v46 objectAtIndexedSubscript:v43 - 1];
          v82.receiver = v78;
          v82.super_class = TypistKeyboardChinese;
          LODWORD(v48) = 1118175232;
          [(TypistKeyboard *)&v82 calculateCoordinatesForFlickGesture:v47 direction:v40 offset:v42, v48];
          v50 = v49;
          v52 = v51;

          v84[0] = v45;
          v53 = v45;
          v83[0] = @"key";
          v83[1] = @"basekey";
          v80 = [v81 objectAtIndexedSubscript:0];
          v84[1] = v80;
          v84[2] = @"flick";
          v83[2] = @"action";
          v83[3] = @"x";
          v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v50];
          v84[3] = v54;
          v83[4] = @"y";
          v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v52];
          v84[4] = v55;
          v84[5] = v11;
          v83[5] = @"plane";
          v83[6] = @"type";
          v84[6] = @"gesture";
          v83[7] = @"more-after";
          v56 = [v77 cache];
          v57 = [v56 objectForKey:@"more-after"];
          v58 = v57;
          v59 = &unk_2880299B8;
          if (v57)
          {
            v59 = v57;
          }

          v84[7] = v59;
          v83[8] = @"direction";
          v60 = [(TypistKeyboardChinese *)v78 _flickGestureDirection];
          v61 = [v60 objectAtIndexedSubscript:v43 - 1];
          v84[8] = v61;
          v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:9];
          [v76 setObject:v62 forKey:v53];

          v11 = v79;
          ++v43;
          ++v44;
          if (v43 >= [v81 count])
          {
            goto LABEL_21;
          }
        }

        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        v73 = [v77 representedString];
        TYLog(@"%@ - setupTenKey: WARNING! More than 4 flicks found for %@ - %@", v65, v66, v67, v68, v69, v70, v71, v64);
      }

LABEL_21:

      v9 = v76;
      v10 = v77;
      goto LABEL_22;
    }
  }

  v20 = [(TypistKeyboardChinese *)self flickTable];
  v21 = MEMORY[0x277CCACA8];
  v22 = [v10 displayString];
  v23 = [v21 stringWithFormat:@"Roman-Accent-%@", v22];
  v24 = [v20 objectForKey:v23];

  v25 = [v24 objectForKey:@"Direction"];
  LOBYTE(v23) = [v25 isEqualToString:@"flick"];

  if ((v23 & 1) == 0)
  {

    v11 = v79;
    goto LABEL_22;
  }

  v26 = [v24 objectForKeyedSubscript:@"Strings"];
  v27 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v19 = [v26 stringByTrimmingCharactersInSet:v27];

  v11 = v79;
  if (v19)
  {
    v76 = v9;
    goto LABEL_9;
  }

LABEL_22:

  v72 = *MEMORY[0x277D85DE8];
}

- (void)setupSentenceBoundryStrings
{
  v3.receiver = self;
  v3.super_class = TypistKeyboardChinese;
  [(TypistKeyboard *)&v3 setupSentenceBoundryStrings];
  [(TypistKeyboard *)self setSentenceDelimitingCharacters:@".?!。？！"];
}

- (BOOL)isTenKey
{
  v4 = [(TypistKeyboard *)self keyboardID];
  if (([v4 containsString:@"sw=Pinyin10"] & 1) == 0)
  {
    v6 = [(TypistKeyboard *)self keyboardID];
    v7 = [v6 containsString:@"sw=Wubihua"];
    if (v7 && ([MEMORY[0x277D75418] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "userInterfaceIdiom") != 1))
    {
      v5 = 1;
    }

    else
    {
      v8 = [(TypistKeyboard *)self keyboardID];
      if ([v8 containsString:@"sw=Wubihua"])
      {
        v9 = [MEMORY[0x277D75418] currentDevice];
        if ([v9 userInterfaceIdiom] == 1)
        {
          v5 = [(TypistKeyboard *)self isFloating];

          if ((v7 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {

          v5 = 0;
          if ((v7 & 1) == 0)
          {
LABEL_14:

            goto LABEL_15;
          }
        }
      }

      else
      {

        v5 = 0;
        if (!v7)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_14;
  }

  v5 = 1;
LABEL_15:

  return v5;
}

- (BOOL)isHandwriting
{
  v3 = [(TypistKeyboard *)self keyboardID];
  if ([v3 hasPrefix:@"zh_Hans-HWR@"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TypistKeyboard *)self keyboardID];
    if ([v5 hasPrefix:@"zh_Hant-HWR@"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(TypistKeyboard *)self keyboardID];
      v4 = [v6 hasPrefix:@"yue_Hant-HWR@"];
    }
  }

  return v4;
}

- (id)generateKeyplaneSwitchTable:(id)a3
{
  v4 = a3;
  if ([(TypistKeyboardChinese *)self isTenKey])
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

  v6[1] = TypistKeyboardChinese;
  v7 = objc_msgSendSuper2(v6, *v5, v4, v9);

  return v7;
}

- (id)willDirectlyCommitNumbersAndPunctuationSet
{
  if (willDirectlyCommitNumbersAndPunctuationSet_commitSet != -1)
  {
    [TypistKeyboardChinese willDirectlyCommitNumbersAndPunctuationSet];
  }

  v3 = willDirectlyCommitNumbersAndPunctuationSet_directlyCommitNumbersAndPunctuationSet;

  return v3;
}

uint64_t __67__TypistKeyboardChinese_willDirectlyCommitNumbersAndPunctuationSet__block_invoke()
  willDirectlyCommitNumbersAndPunctuationSet_directlyCommitNumbersAndPunctuationSet = {;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)keyWillCommitCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TypistKeyboardChinese *)self willDirectlyCommitNumbersAndPunctuationSet];
  v6 = [v4 characterAtIndex:0];

  LOBYTE(v4) = [v5 characterIsMember:v6];
  return v4;
}

- (BOOL)isSwitchedToDefaultPlane:(id)a3
{
  v4 = a3;
  v5 = [(TypistKeyboardChinese *)self willSwitchToDefaultPlaneCharacterSet];
  v6 = [v4 characterAtIndex:0];

  LOBYTE(v4) = [v5 characterIsMember:v6];
  return v4;
}

- (id)willSwitchToDefaultPlaneCharacterSet
{
  if (willSwitchToDefaultPlaneCharacterSet_defaultPlaneCharacterSetToken != -1)
  {
    [TypistKeyboardChinese willSwitchToDefaultPlaneCharacterSet];
  }

  v3 = willSwitchToDefaultPlaneCharacterSet_willSwitchToDefaultPlaneCharacterSet;

  return v3;
}

uint64_t __61__TypistKeyboardChinese_willSwitchToDefaultPlaneCharacterSet__block_invoke()
  willSwitchToDefaultPlaneCharacterSet_willSwitchToDefaultPlaneCharacterSet = {;

  return MEMORY[0x2821F96F8]();
}

- (id)getExpectedPlaneNameForKey:(id)a3 currentPlane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TypistKeyboard *)self keyPlanes];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 objectForKeyedSubscript:v6];
  v11 = [v10 objectForKeyedSubscript:@"more-after"];
  if ([v11 BOOLValue])
  {
    goto LABEL_2;
  }

  if ([(TypistKeyboardChinese *)self isTenKey])
  {
  }

  else
  {
    v15 = [(TypistKeyboard *)self getAlternatePlanesForDefaultPlane];
    if (![v15 containsObject:v7])
    {

LABEL_2:
LABEL_3:
      v12 = [(TypistKeyboard *)self defaultPlaneName];
      goto LABEL_7;
    }

    v16 = [(TypistKeyboardChinese *)self isSwitchedToDefaultPlane:v6];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v12 = v7;
LABEL_7:
  v13 = v12;

  return v13;
}

- (id)generateKeystrokeStream:(id)a3
{
  v4 = a3;
  if ([(TypistKeyboardChinese *)self isHandwriting])
  {
    [(TypistKeyboardChinese *)self _determineHandwritingBound];
    v5 = [(TypistKeyboard *)self generateHandwritingStream:v4 inFrame:0 isPencil:?];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TypistKeyboardChinese;
    v5 = [(TypistKeyboard *)&v8 generateKeystrokeStream:v4];
  }

  v6 = v5;

  return v6;
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

- (TypistKeyboardChinese)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TypistKeyboardChinese;
  v5 = [(TypistKeyboard *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flickTable"];
    flickTable = v5->_flickTable;
    v5->_flickTable = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pinyinMap"];
    pinyinMap = v5->_pinyinMap;
    v5->_pinyinMap = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"whiteSpaceRegex"];
    whiteSpaceRegex = v5->_whiteSpaceRegex;
    v5->_whiteSpaceRegex = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TypistKeyboardChinese;
  [(TypistKeyboard *)&v8 encodeWithCoder:v4];
  flickTable = self->_flickTable;
  if (flickTable)
  {
    [v4 encodeObject:flickTable forKey:@"flickTable"];
  }

  pinyinMap = self->_pinyinMap;
  if (pinyinMap)
  {
    [v4 encodeObject:pinyinMap forKey:@"pinyinMap"];
  }

  whiteSpaceRegex = self->_whiteSpaceRegex;
  if (whiteSpaceRegex)
  {
    [v4 encodeObject:whiteSpaceRegex forKey:@"whiteSpaceRegex"];
  }
}

@end