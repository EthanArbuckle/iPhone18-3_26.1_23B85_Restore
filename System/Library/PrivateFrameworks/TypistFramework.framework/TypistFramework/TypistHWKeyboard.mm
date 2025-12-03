@interface TypistHWKeyboard
+ (id)_convertKeyboardLanguageToHIDCountryCode:(int64_t)code;
+ (id)convertHIDCountryCodeToLanguage:(int64_t)language;
+ (id)keyboardLanguageValueMap;
+ (id)keyboardLayoutValueMap;
+ (unsigned)_convertHIDKeyboardTypeToGSKeyboardType:(unsigned int)type;
+ (unsigned)_convertKeyboardLanguageToHIDKeyboardType:(id)type;
- (TypistHWKeyboard)initWithLanguage:(id)language;
- (id)_generateKeystrokeStream:(id)stream appendTypeInterval:(BOOL)interval;
- (id)_getModifierMaskMap;
- (id)_subsequentKeyPressPairForCharacter:(id)character;
- (id)generateKeystrokeStream:(id)stream;
- (id)getPropertyDictionaryString;
- (id)pressKeycodes:(id)keycodes;
- (id)usagePairsForText:(id)text;
- (unsigned)getHIDKeyboardType;
- (void)_insertStaticKeys;
- (void)_setupCharacterToKeycodeMap;
- (void)dealloc;
- (void)detach;
- (void)pressAndHoldKeys:(id)keys forDuration:(double)duration withValidation:(id)validation after:(double)after;
- (void)setHidKeyboardType:(unsigned int)type;
- (void)setKeyboardLanguage:(id)language;
- (void)setModifierCharMap;
- (void)typeString:(id)string;
@end

@implementation TypistHWKeyboard

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(TypistHWKeyboard *)self detach];
  v4.receiver = self;
  v4.super_class = TypistHWKeyboard;
  [(TypistHWKeyboard *)&v4 dealloc];
}

- (void)setKeyboardLanguage:(id)language
{
  objc_storeStrong(&self->_keyboardLanguage, language);
  languageCopy = language;
  v6 = +[TypistHWKeyboard keyboardLayoutValueMap];

  keyboardLanguage = [(TypistHWKeyboard *)self keyboardLanguage];
  v8 = [v6 objectForKeyedSubscript:keyboardLanguage];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"ABC";
  }

  [(TypistHWKeyboard *)self setKeyboardLanguageString:v10];

  keyboardLanguage2 = [(TypistHWKeyboard *)self keyboardLanguage];
  keyboardLanguageString = [(TypistHWKeyboard *)self keyboardLanguageString];
  TYLog(@"Keyboard language set to [%@ - %@]", v11, v12, v13, v14, v15, v16, v17, keyboardLanguage2);
}

- (void)setHidKeyboardType:(unsigned int)type
{
  self->_hidKeyboardType = type;
  if (type <= 2)
  {
    v3 = *(&off_279DF46D0 + type);
  }

  hidKeyboardType = [(TypistHWKeyboard *)self hidKeyboardType];
  TYLog(@"Setting hidKeyboardType: [%u - %@]", v5, v6, v7, v8, v9, v10, v11, hidKeyboardType);
}

- (TypistHWKeyboard)initWithLanguage:(id)language
{
  v45[5] = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v43.receiver = self;
  v43.super_class = TypistHWKeyboard;
  v5 = [(TypistHWKeyboard *)&v43 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  GSInitialize();
  if (!languageCopy)
  {
    v38 = @"[TypistHWKeyboard]: No keyboard language has been provided.";
LABEL_9:
    TYLogl(OS_LOG_TYPE_ERROR, v38, v6, v7, v8, v9, v10, v11, v41);
LABEL_10:
    v37 = 0;
    goto LABEL_11;
  }

  v12 = +[TypistHWKeyboard keyboardLayoutValueMap];
  v13 = [v12 objectForKey:languageCopy];

  if (!v13)
  {
    v41 = languageCopy;
    v38 = @"[TypistHWKeyboard]: Unrecognized Keyboard Language Identifier (%@)";
    goto LABEL_9;
  }

  [(TypistHWKeyboard *)v5 setKeyboardLanguage:languageCopy];
  [(TypistHWKeyboard *)v5 setUsagePage:7];
  [(TypistHWKeyboard *)v5 setHidKeyboardType:[(TypistHWKeyboard *)v5 getHIDKeyboardType]];
  keyboardLanguage = [(TypistHWKeyboard *)v5 keyboardLanguage];
  v15 = +[TypistHWKeyboard _convertKeyboardLanguageToHIDCountryCode:](TypistHWKeyboard, "_convertKeyboardLanguageToHIDCountryCode:", [keyboardLanguage integerValue]);
  [(TypistHWKeyboard *)v5 setKeyboardCountryCode:v15];

  v44[0] = @"PrimaryUsagePage";
  v44[1] = @"PrimaryUsage";
  v45[0] = &unk_288029550;
  v45[1] = &unk_288029568;
  v44[2] = @"KeyboardLanguage";
  keyboardLanguageString = [(TypistHWKeyboard *)v5 keyboardLanguageString];
  v45[2] = keyboardLanguageString;
  v44[3] = @"StandardType";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[TypistHWKeyboard hidKeyboardType](v5, "hidKeyboardType")}];
  v45[3] = v17;
  v44[4] = @"CountryCode";
  keyboardCountryCode = [(TypistHWKeyboard *)v5 keyboardCountryCode];
  v45[4] = keyboardCountryCode;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:5];
  [(TypistHWKeyboard *)v5 setPropertyDictionary:v19];

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = MEMORY[0x277CCAAA0];
  propertyDictionary = [(TypistHWKeyboard *)v5 propertyDictionary];
  v42 = 0;
  v23 = [v21 dataWithJSONObject:propertyDictionary options:0 error:&v42];
  v24 = v42;
  v25 = [v20 initWithData:v23 encoding:4];
  [(TypistHWKeyboard *)v5 setPropertyDictionaryString:v25];

  [TypistHWKeyboard _convertHIDKeyboardTypeToGSKeyboardType:[(TypistHWKeyboard *)v5 hidKeyboardType]];
  keyboardCountryCode2 = [(TypistHWKeyboard *)v5 keyboardCountryCode];
  [keyboardCountryCode2 unsignedIntValue];
  [(TypistHWKeyboard *)v5 hidKeyboardType];
  GSEventSetHardwareKeyboardAttachedWithCountryCodeAndType();

  v27 = +[TypistHWKeyboard keyboardLayoutValueMap];
  v28 = [v27 objectForKey:languageCopy];

  [(TypistHWKeyboard *)v5 setHardwareKeyboard:GSKeyboardCreate()];
  if (![(TypistHWKeyboard *)v5 hardwareKeyboard])
  {
    TYLogl(OS_LOG_TYPE_FAULT, @"GSKeyboardCreate failed to allocate memory to layout [%@] for language [%@].", v29, v30, v31, v32, v33, v34, v28);

    goto LABEL_10;
  }

  [(TypistHWKeyboard *)v5 setModifierCharMap];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _setModifierCharMap, *MEMORY[0x277D81CC8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(TypistHWKeyboard *)v5 setCharacterToKeycodeMap:v36];

  [(TypistHWKeyboard *)v5 _setupCharacterToKeycodeMap];
LABEL_6:
  v37 = v5;
LABEL_11:

  v39 = *MEMORY[0x277D85DE8];
  return v37;
}

- (unsigned)getHIDKeyboardType
{
  keyboardLanguage = [(TypistHWKeyboard *)self keyboardLanguage];
  v3 = [TypistHWKeyboard _convertKeyboardLanguageToHIDKeyboardType:keyboardLanguage];

  return v3;
}

- (void)setModifierCharMap
{
  v27[10] = *MEMORY[0x277D85DE8];
  v10 = _AXSFullKeyboardAccessEnabled();
  v11 = @"YES - Tab key is treated as modifier";
  if (!v10)
  {
    v11 = @"NO";
  }

  TYLog(@"TypistHWKeyboard: _AXSFullKeyboardAccessEnabled: %@", v3, v4, v5, v6, v7, v8, v9, v11);
  if (v10)
  {
    v26[0] = @"⌥";
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 226];
    v27[0] = v23;
    v26[1] = @"⇧";
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 225];
    v27[1] = v22;
    v26[2] = @"⌘";
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 227];
    v27[2] = v12;
    v26[3] = @"⌃";
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 224];
    v27[3] = v13;
    v26[4] = @"⌨";
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 255, 3];
    v27[4] = v14;
    v26[5] = @"⇥";
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 43];
    v27[5] = v15;
    v26[6] = @"⇩";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 229];
    v27[6] = v16;
    v26[7] = @"⎇";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 230];
    v27[7] = v17;
    v26[8] = @"⊞";
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 231];
    v27[8] = v18;
    v26[9] = @"⌄";
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 228];
    v27[9] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:10];
    [(TypistHWKeyboard *)self setModifierCharMap:v20];
  }

  else
  {
    v24[0] = @"⌥";
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 226];
    v25[0] = v23;
    v24[1] = @"⇧";
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 225];
    v25[1] = v22;
    v24[2] = @"⌘";
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 227];
    v25[2] = v12;
    v24[3] = @"⌃";
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 224];
    v25[3] = v13;
    v24[4] = @"⌨";
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 255, 3];
    v25[4] = v14;
    v24[5] = @"⇩";
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 229];
    v25[5] = v15;
    v24[6] = @"⎇";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 230];
    v25[6] = v16;
    v24[7] = @"⊞";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 231];
    v25[7] = v17;
    v24[8] = @"⌄";
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 228];
    v25[8] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:9];
    [(TypistHWKeyboard *)self setModifierCharMap:v19];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_insertStaticKeys
{
  characterToKeycodeMap = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 76];
  [characterToKeycodeMap setObject:v4 forKey:@"⌦"];

  characterToKeycodeMap2 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 75];
  [characterToKeycodeMap2 setObject:v6 forKey:@"⇞"];

  characterToKeycodeMap3 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 78];
  [characterToKeycodeMap3 setObject:v8 forKey:@"⇟"];

  characterToKeycodeMap4 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 74];
  [characterToKeycodeMap4 setObject:v10 forKey:@"⇱"];

  characterToKeycodeMap5 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 77];
  [characterToKeycodeMap5 setObject:v12 forKey:@"⇲"];

  characterToKeycodeMap6 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 79];
  [characterToKeycodeMap6 setObject:v14 forKey:@"→"];

  characterToKeycodeMap7 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 80];
  [characterToKeycodeMap7 setObject:v16 forKey:@"←"];

  characterToKeycodeMap8 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 81];
  [characterToKeycodeMap8 setObject:v18 forKey:@"↓"];

  characterToKeycodeMap9 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", -[TypistHWKeyboard usagePage](self, "usagePage"), 82];
  [characterToKeycodeMap9 setObject:v20 forKey:@"↑"];

  characterToKeycodeMap10 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 255, 3];
  [characterToKeycodeMap10 setObject:v22 forKey:@"⌨"];

  characterToKeycodeMap11 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 65281, 16];
  [characterToKeycodeMap11 setObject:v24 forKey:@"𓃑"];

  characterToKeycodeMap12 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 1, 155];
  [characterToKeycodeMap12 setObject:v26 forKey:@"☾"];

  characterToKeycodeMap13 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 111];
  [characterToKeycodeMap13 setObject:v28 forKey:@"🔆"];

  characterToKeycodeMap14 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 112];
  [characterToKeycodeMap14 setObject:v30 forKey:@"🔅"];

  characterToKeycodeMap15 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 121];
  [characterToKeycodeMap15 setObject:v32 forKey:@"明"];

  characterToKeycodeMap16 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 122];
  [characterToKeycodeMap16 setObject:v34 forKey:@"暗"];

  characterToKeycodeMap17 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 233];
  [characterToKeycodeMap17 setObject:v36 forKey:@"🔊"];

  characterToKeycodeMap18 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 234];
  [characterToKeycodeMap18 setObject:v38 forKey:@"🔉"];

  characterToKeycodeMap19 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 226];
  [characterToKeycodeMap19 setObject:v40 forKey:@"🔇"];

  characterToKeycodeMap20 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 207];
  [characterToKeycodeMap20 setObject:v42 forKey:@"🎙"];

  characterToKeycodeMap21 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 181];
  [characterToKeycodeMap21 setObject:v44 forKey:@"⏭️"];

  characterToKeycodeMap22 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 182];
  [characterToKeycodeMap22 setObject:v46 forKey:@"⏮️"];

  characterToKeycodeMap23 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 205];
  [characterToKeycodeMap23 setObject:v48 forKey:@"⏯"];

  characterToKeycodeMap24 = [(TypistHWKeyboard *)self characterToKeycodeMap];
  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", 12, 545];
  [characterToKeycodeMap24 setObject:v49 forKey:@"🔎"];
}

- (void)_setupCharacterToKeycodeMap
{
  v3 = 4;
  v15 = objc_opt_new();
  do
  {
    v4 = v3;
    [(TypistHWKeyboard *)self _insertCharacterForKeyCode:v3++ logOutput:v15];
  }

  while (v4 < 0x45);
  v5 = 104;
  do
  {
    v6 = v5;
    [(TypistHWKeyboard *)self _insertCharacterForKeyCode:v5++ logOutput:v15];
  }

  while (v6 < 0x6F);
  [(TypistHWKeyboard *)self _insertStaticKeys];
  if ([(TypistHWKeyboard *)self hidKeyboardType]== 2)
  {
    [(TypistHWKeyboard *)self _insertKey:135 logOutput:v15];
    v7 = v15;
    v8 = 137;
  }

  else
  {
    if ([(TypistHWKeyboard *)self hidKeyboardType]!= 1)
    {
      goto LABEL_10;
    }

    v8 = 100;
    v7 = v15;
  }

  [(TypistHWKeyboard *)self _insertKey:v8 logOutput:v7];
LABEL_10:
  TYLogl(OS_LOG_TYPE_DEBUG, @"### Translated Keys ###\n%@", v9, v10, v11, v12, v13, v14, v15);
}

- (void)detach
{
  keyboardCountryCode = [(TypistHWKeyboard *)self keyboardCountryCode];
  [keyboardCountryCode unsignedIntValue];
  GSEventSetHardwareKeyboardAttached();

  if ([(TypistHWKeyboard *)self hardwareKeyboard])
  {
    [(TypistHWKeyboard *)self hardwareKeyboard];
    GSKeyboardRelease();
    [(TypistHWKeyboard *)self setHardwareKeyboard:0];
  }

  TYLog(@"Detaching hardware keyboard. Tearing down recapInlineplayer.", v4, v5, v6, v7, v8, v9, v10, v11);

  +[TypistKeyboardUtilities tearDownRecapInlinePlayer];
}

- (id)generateKeystrokeStream:(id)stream
{
  streamCopy = stream;
  [(TypistHWKeyboard *)self pressDuration];
  v6 = v5;
  [(TypistHWKeyboard *)self typeInterval];
  TYLog(@"TypistHWKeyboard: Generated usage pairs with %fs pressDuration, %fs typeInterval", v7, v8, v9, v10, v11, v12, v13, v6);
  v14 = MEMORY[0x277D44358];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__TypistHWKeyboard_generateKeystrokeStream___block_invoke;
  v18[3] = &unk_279DF4628;
  v18[4] = self;
  v19 = streamCopy;
  v15 = streamCopy;
  v16 = [v14 eventStreamWithEventActions:v18];

  return v16;
}

void __44__TypistHWKeyboard_generateKeystrokeStream___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = MEMORY[0x277D44340];
  v4 = [*(a1 + 32) propertyDictionary];
  v5 = [v3 senderWithProperties:v4];
  [v26 setSenderProperties:v5];

  v6 = [*(a1 + 32) usagePairsForText:*(a1 + 40)];
  v7 = [v6 usages];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [v6 usages];
      v11 = [v10 objectAtIndexedSubscript:v9];

      v12 = [v6 usagePages];
      v13 = [v12 objectAtIndexedSubscript:v9];

      if ([v11 count])
      {
        v14 = 0;
        do
        {
          v15 = [v13 objectAtIndexedSubscript:v14];
          v16 = [v15 unsignedIntegerValue];

          v17 = [v11 objectAtIndexedSubscript:v14];
          v18 = [v17 unsignedIntegerValue];

          [v26 beginButtonPressWithPage:v16 usage:v18];
          [*(a1 + 32) pressDuration];
          [v26 advanceTime:?];
          ++v14;
        }

        while (v14 < [v11 count]);
      }

      v19 = [v11 count] - 1;
      if (v19 >= 0)
      {
        do
        {
          v20 = [v13 objectAtIndexedSubscript:v19];
          v21 = [v20 unsignedIntegerValue];

          v22 = [v11 objectAtIndexedSubscript:v19];
          v23 = [v22 unsignedIntegerValue];

          [v26 endButtonPressWithPage:v21 usage:v23];
          [v26 advanceTime:0.01];
          --v19;
        }

        while (v19 != -1);
      }

      [*(a1 + 32) typeInterval];
      [v26 advanceTime:?];

      ++v9;
      v24 = [v6 usages];
      v25 = [v24 count];
    }

    while (v9 < v25);
  }
}

- (id)_generateKeystrokeStream:(id)stream appendTypeInterval:(BOOL)interval
{
  intervalCopy = interval;
  streamCopy = stream;
  if (![(TypistHWKeyboard *)self hardwareKeyboard])
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"No hardware keyboard reference is attached. It may have been detached.", v7, v8, v9, v10, v11, v12, v55);
    v21 = 0;
    goto LABEL_35;
  }

  v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v13 setDecimalSeparator:@"."];
  [v13 setNumberStyle:1];
  [v13 setMaximumFractionDigits:5];
  v14 = MEMORY[0x277CCABB0];
  [(TypistHWKeyboard *)self pressDuration];
  v15 = [v14 numberWithDouble:?];
  v63 = [v13 stringFromNumber:v15];

  v16 = MEMORY[0x277CCABB0];
  [(TypistHWKeyboard *)self typeInterval];
  v17 = [v16 numberWithDouble:?];
  v62 = [v13 stringFromNumber:v17];

  v18 = [streamCopy stringByReplacingOccurrencesOfString:@"\t" withString:@"⇥"];
  v19 = [v18 stringByReplacingOccurrencesOfString:@"\n" withString:@"⏎"];

  modifierCharMap = [(TypistHWKeyboard *)self modifierCharMap];
  v21 = objc_alloc_init(MEMORY[0x277CCAB68]);
  TYLogl(OS_LOG_TYPE_DEBUG, @"Generating hardware keystroke stream for input: [%@]", v22, v23, v24, v25, v26, v27, streamCopy);
  if (![v19 graphemeCount])
  {
    v36 = 0;
    goto LABEL_34;
  }

  v57 = v13;
  v58 = streamCopy;
  v35 = 0;
  v36 = 0;
  v60 = intervalCopy;
  selfCopy = self;
  v61 = v21;
  v64 = modifierCharMap;
  do
  {
    v37 = [v19 graphemeAtIndex:v35];
    v38 = [modifierCharMap objectForKey:v37];
    v39 = v38;
    if (!v38)
    {
      characterToKeycodeMap = [(TypistHWKeyboard *)self characterToKeycodeMap];
      v41 = [characterToKeycodeMap objectForKey:v37];

      if (v41)
      {
        if (v36)
        {
          [v36 appendFormat:@"/%@", v41];
        }

        else
        {
          v36 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"bx %@", v41];
        }

        goto LABEL_24;
      }

      [(TypistHWKeyboard *)self hardwareKeyboard];
      GSKeyboardHWKeyboardNormalizeInput();
      characterToKeycodeMap2 = [(TypistHWKeyboard *)self characterToKeycodeMap];
      v43 = [characterToKeycodeMap2 objectForKey:v37];

      if (!v43)
      {
        TYLogl(OS_LOG_TYPE_ERROR, @"The character %@ is not in the character map and cannot be normalized to a known character.", v44, v45, v46, v47, v48, v49, v37);
        v21 = v61;
        modifierCharMap = v64;
LABEL_27:

        goto LABEL_28;
      }

      _getModifierMaskMap = [(TypistHWKeyboard *)self _getModifierMaskMap];
      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
      v52 = [_getModifierMaskMap objectForKey:v51];

      if ([v52 length])
      {
        intervalCopy = v60;
        if (v36)
        {
          [v36 appendFormat:@"/%@/%@", v52, v43];
LABEL_23:
          self = selfCopy;

          v21 = v61;
LABEL_24:
          modifierCharMap = v64;
          if (intervalCopy)
          {
            v56 = v62;
            [v36 appendFormat:@" %@ wait %@ ", v63];
          }

          [v21 appendString:v36];

          v36 = 0;
          goto LABEL_27;
        }

        v56 = v43;
        v53 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"bx %@/%@", v52];
      }

      else
      {
        intervalCopy = v60;
        if (v36)
        {
          [v36 appendFormat:@"/%@", v43, v56];
          goto LABEL_23;
        }

        v53 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"bx %@", v43];
      }

      v36 = v53;
      goto LABEL_23;
    }

    if (v36)
    {
      [v36 appendFormat:@"/%@", v38];
    }

    else
    {
      v36 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"bx %@", v38];
    }

LABEL_28:

    ++v35;
  }

  while ([v19 graphemeCount] > v35);
  if (v36)
  {
    [v36 appendString:@" "];
    [v21 appendString:v36];
  }

  v13 = v57;
  streamCopy = v58;
LABEL_34:
  TYLog(@"Hardware keystroke stream: %@", v28, v29, v30, v31, v32, v33, v34, v21);

LABEL_35:

  return v21;
}

- (id)pressKeycodes:(id)keycodes
{
  v53 = *MEMORY[0x277D85DE8];
  keycodesCopy = keycodes;
  v5 = objc_opt_new();
  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v6 setDecimalSeparator:@"."];
  [v6 setNumberStyle:1];
  [v6 setMaximumFractionDigits:5];
  v7 = MEMORY[0x277CCABB0];
  [(TypistHWKeyboard *)self pressDuration];
  v8 = [v7 numberWithDouble:?];
  v45 = [v6 stringFromNumber:v8];

  v9 = MEMORY[0x277CCABB0];
  [(TypistHWKeyboard *)self typeInterval];
  v10 = [v9 numberWithDouble:?];
  v44 = [v6 stringFromNumber:v10];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = keycodesCopy;
  v46 = [v11 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v46)
  {
    v42 = *v48;
    v43 = v5;
    obj = v11;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        v14 = objc_opt_new();
        if ([v13 count] != 1)
        {
          v15 = 0;
          do
          {
            v16 = [v13 objectAtIndexedSubscript:v15];
            unsignedShortValue = [v16 unsignedShortValue];

            v18 = [v13 objectAtIndexedSubscript:v15 + 1];
            unsignedShortValue2 = [v18 unsignedShortValue];

            if ([v14 length])
            {
              v20 = @"/";
            }

            else
            {
              v20 = &stru_288014100;
            }

            [v14 appendFormat:@"%@%02x, %02x", v20, unsignedShortValue, unsignedShortValue2];
            v15 += 2;
          }

          while (v15 < [v13 count] - 1);
        }

        v5 = v43;
        [v43 appendFormat:@"bx %@ %@ wait %@ ", v14, v45, v44];
      }

      v11 = obj;
      v46 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v46);
  }

  if ([v5 length])
  {
    v27 = MEMORY[0x277CCACA8];
    propertyDictionaryString = [(TypistHWKeyboard *)self propertyDictionaryString];
    v29 = [v27 stringWithFormat:@"sender %@ %@", propertyDictionaryString, v5];

    TYLog(@"TypistHWKeyboard - pressKeycodes: keystroke stream generated for input: [%@]\n%@", v30, v31, v32, v33, v34, v35, v36, v11);
    v37 = [[TYRecapCommand alloc] initWithCommandType:1 commandString:v29 commandDescription:0];
    v51 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    [TypistKeyboardUtilities launchRecap:v38];
  }

  else
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"TypistHWKeyboard - pressKeycodes: No stream was generated for input: [%@]", v21, v22, v23, v24, v25, v26, v11);
    v29 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)typeString:(id)string
{
  v3 = [(TypistHWKeyboard *)self generateKeystrokeStream:string];
  [TypistKeyboardUtilities launchRecapWithSyntheticEventStream:v3];
}

- (id)_subsequentKeyPressPairForCharacter:(id)character
{
  v3 = [(TypistHWKeyboard *)self _generateKeystrokeStream:character appendTypeInterval:0];
  if ([v3 hasPrefix:@"bx"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"bx", "length")}];

    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v3 = [v4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  }

  return v3;
}

- (void)pressAndHoldKeys:(id)keys forDuration:(double)duration withValidation:(id)validation after:(double)after
{
  keysCopy = keys;
  validationCopy = validation;
  v11 = objc_alloc(MEMORY[0x277CCAB68]);
  propertyDictionaryString = [(TypistHWKeyboard *)self propertyDictionaryString];
  v13 = [v11 initWithFormat:@"sender %@ ", propertyDictionaryString];

  if ([keysCopy count])
  {
    v14 = 0;
    do
    {
      if (v14)
      {
        v15 = [keysCopy objectAtIndexedSubscript:v14];
        v16 = [(TypistHWKeyboard *)self _subsequentKeyPressPairForCharacter:v15];

        [v13 appendFormat:@"/%@", v16];
      }

      else
      {
        v16 = [keysCopy objectAtIndexedSubscript:0];
        v17 = [(TypistHWKeyboard *)self _generateKeystrokeStream:v16 appendTypeInterval:0];
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v19 = [v17 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
        [v13 appendString:v19];
      }

      ++v14;
    }

    while ([keysCopy count] > v14);
  }

  [v13 appendFormat:@" %f", *&duration];
  v20 = [[TYRecapCommand alloc] initWithCommandType:1 commandString:v13 commandDescription:0];
  TYLog(@"TypistHWKeyboard - pressAndHoldKeys: keystroke stream generated for input: [%@]\n%@", v21, v22, v23, v24, v25, v26, v27, keysCopy);
  v28 = dispatch_queue_create("launchRecapQueue", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__TypistHWKeyboard_pressAndHoldKeys_forDuration_withValidation_after___block_invoke;
  block[3] = &unk_279DF4650;
  v29 = v20;
  v32 = v29;
  dispatch_async(v28, block);
  [TypistKeyboardUtilities waitFor:after];
  if (validationCopy)
  {
    validationCopy[2](validationCopy);
  }
}

void __70__TypistHWKeyboard_pressAndHoldKeys_forDuration_withValidation_after___block_invoke(uint64_t a1)
{
  v2 = +[TypistKeyboardUtilities sharedRecapInlinePlayer];
  v3 = [*(a1 + 32) eventStream];
  [v2 prewarmForEventStream:v3 completion:0];

  v6 = +[TypistKeyboardUtilities sharedRecapInlinePlayer];
  v4 = [*(a1 + 32) eventStream];
  v5 = objc_opt_new();
  [v6 playEventStream:v4 options:v5 completion:0];
}

- (id)_getModifierMaskMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__TypistHWKeyboard__getModifierMaskMap__block_invoke;
  block[3] = &unk_279DF4650;
  block[4] = self;
  if (_getModifierMaskMap_modifierMaskMapToken != -1)
  {
    dispatch_once(&_getModifierMaskMap_modifierMaskMapToken, block);
  }

  return _getModifierMaskMap_modifierMaskMapDictionary;
}

void __39__TypistHWKeyboard__getModifierMaskMap__block_invoke(uint64_t a1)
{
  v37[16] = *MEMORY[0x277D85DE8];
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v36[0] = v35;
  v37[0] = &stru_288014100;
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x20000];
  v36[1] = v34;
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 225];
  v37[1] = v33;
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x80000];
  v36[2] = v32;
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 226];
  v37[2] = v31;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x100000];
  v36[3] = v30;
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 224];
  v37[3] = v29;
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x10000];
  v36[4] = v28;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 227];
  v37[4] = v27;
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:655360];
  v36[5] = v26;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 225, objc_msgSend(*(a1 + 32), "usagePage"), 226];
  v37[5] = v25;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1179648];
  v36[6] = v24;
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 225, objc_msgSend(*(a1 + 32), "usagePage"), 224];
  v37[6] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:196608];
  v36[7] = v22;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 225, objc_msgSend(*(a1 + 32), "usagePage"), 227];
  v37[7] = v21;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1572864];
  v36[8] = v20;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 226, objc_msgSend(*(a1 + 32), "usagePage"), 224];
  v37[8] = v19;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:589824];
  v36[9] = v18;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 226, objc_msgSend(*(a1 + 32), "usagePage"), 227];
  v37[9] = v17;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1114112];
  v36[10] = v16;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 224, objc_msgSend(*(a1 + 32), "usagePage"), 227];
  v37[10] = v15;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1703936];
  v36[11] = v14;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 225, objc_msgSend(*(a1 + 32), "usagePage"), 226, objc_msgSend(*(a1 + 32), "usagePage"), 224];
  v37[11] = v13;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:720896];
  v36[12] = v12;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 225, objc_msgSend(*(a1 + 32), "usagePage"), 226, objc_msgSend(*(a1 + 32), "usagePage"), 227];
  v37[12] = v11;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1245184];
  v36[13] = v10;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 225, objc_msgSend(*(a1 + 32), "usagePage"), 224, objc_msgSend(*(a1 + 32), "usagePage"), 227];
  v37[13] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1638400];
  v36[14] = v3;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 226, objc_msgSend(*(a1 + 32), "usagePage"), 224, objc_msgSend(*(a1 + 32), "usagePage"), 227];
  v37[14] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1769472];
  v36[15] = v5;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x, %x/%x, %x/%x, %x/%x, %x", objc_msgSend(*(a1 + 32), "usagePage"), 225, objc_msgSend(*(a1 + 32), "usagePage"), 226, objc_msgSend(*(a1 + 32), "usagePage"), 224, objc_msgSend(*(a1 + 32), "usagePage"), 227];
  v37[15] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:16];
  v8 = _getModifierMaskMap_modifierMaskMapDictionary;
  _getModifierMaskMap_modifierMaskMapDictionary = v7;

  v9 = *MEMORY[0x277D85DE8];
}

+ (unsigned)_convertHIDKeyboardTypeToGSKeyboardType:(unsigned int)type
{
  v3 = 0xCFCBCAu >> (8 * type);
  if (type >= 3)
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (unsigned)_convertKeyboardLanguageToHIDKeyboardType:(id)type
{
  integerValue = [type integerValue];
  if (integerValue > 0x21)
  {
    return 1;
  }

  if (((1 << integerValue) & 0x200048820) == 0)
  {
    if (integerValue == 3)
    {
      return 2;
    }

    return 1;
  }

  return 0;
}

+ (id)keyboardLanguageValueMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TypistHWKeyboard_keyboardLanguageValueMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (keyboardLanguageValueMap_onceToken != -1)
  {
    dispatch_once(&keyboardLanguageValueMap_onceToken, block);
  }

  v2 = keyboardLanguageValueMap_layoutMap;

  return v2;
}

void __44__TypistHWKeyboard_keyboardLanguageValueMap__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = keyboardLanguageValueMap_layoutMap;
  keyboardLanguageValueMap_layoutMap = v2;

  v4 = [*(a1 + 32) keyboardLayoutValueMap];
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global];
}

+ (id)keyboardLayoutValueMap
{
  if (keyboardLayoutValueMap_onceToken != -1)
  {
    +[TypistHWKeyboard keyboardLayoutValueMap];
  }

  v3 = keyboardLayoutValueMap_countryCodeMap;

  return v3;
}

void __42__TypistHWKeyboard_keyboardLayoutValueMap__block_invoke()
{
  v4[40] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_288029580;
  v3[1] = &unk_288029550;
  v4[0] = @"ABC";
  v4[1] = @"German";
  v3[2] = &unk_288029598;
  v3[3] = &unk_2880295B0;
  v4[2] = @"French";
  v4[3] = @"ABC";
  v3[4] = &unk_2880295C8;
  v3[5] = &unk_2880295E0;
  v4[4] = @"ABC";
  v4[5] = @"US";
  v3[6] = &unk_288029568;
  v3[7] = &unk_2880295F8;
  v4[6] = @"British";
  v4[7] = @"Spanish";
  v3[8] = &unk_288029610;
  v3[9] = &unk_288029628;
  v4[8] = @"Swedish";
  v4[9] = @"Italian";
  v3[10] = &unk_288029640;
  v3[11] = &unk_288029658;
  v4[10] = @"Canadian";
  v4[11] = @"ABC";
  v3[12] = &unk_288029670;
  v3[13] = &unk_288029688;
  v4[12] = @"Danish";
  v4[13] = @"Belgian";
  v3[14] = &unk_2880296A0;
  v3[15] = &unk_2880296B8;
  v4[14] = @"Norwegian";
  v4[15] = @"ABC";
  v3[16] = &unk_2880296D0;
  v3[17] = &unk_2880296E8;
  v4[16] = @"Dutch";
  v4[17] = @"Swiss German";
  v3[18] = &unk_288029700;
  v3[19] = &unk_288029718;
  v4[18] = @"ABC";
  v4[19] = @"ABC";
  v3[20] = &unk_288029730;
  v3[21] = &unk_288029748;
  v4[20] = @"Bulgarian";
  v4[21] = @"Croatian";
  v3[22] = &unk_288029760;
  v3[23] = &unk_288029778;
  v4[22] = @"Croatian-Standard";
  v4[23] = @"Czech";
  v3[24] = &unk_288029790;
  v3[25] = &unk_2880297A8;
  v4[24] = @"ABC";
  v4[25] = @"ABC";
  v3[26] = &unk_2880297C0;
  v3[27] = &unk_2880297D8;
  v4[26] = @"Icelandic";
  v4[27] = @"Hungarian";
  v3[28] = &unk_2880297F0;
  v3[29] = &unk_288029808;
  v4[28] = @"Polish";
  v4[29] = @"Portuguese";
  v3[30] = &unk_288029820;
  v3[31] = &unk_288029838;
  v4[30] = @"ABC";
  v4[31] = @"Romanian";
  v3[32] = &unk_288029850;
  v3[33] = &unk_288029868;
  v4[32] = @"Russian";
  v4[33] = @"Slovak";
  v3[34] = &unk_288029880;
  v3[35] = &unk_288029898;
  v4[34] = @"ABC";
  v4[35] = @"Turkish-QWERTY-PC";
  v3[36] = &unk_2880298B0;
  v3[37] = &unk_2880298C8;
  v4[36] = @"Turkish-QWERTY";
  v4[37] = @"Ukrainian";
  v3[38] = &unk_2880298E0;
  v3[39] = &unk_2880298F8;
  v4[38] = @"Turkish-Standard";
  v4[39] = @"ABC";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:40];
  v1 = keyboardLayoutValueMap_countryCodeMap;
  keyboardLayoutValueMap_countryCodeMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)_convertKeyboardLanguageToHIDCountryCode:(int64_t)code
{
  if (_convertKeyboardLanguageToHIDCountryCode__onceToken != -1)
  {
    +[TypistHWKeyboard _convertKeyboardLanguageToHIDCountryCode:];
  }

  v4 = _convertKeyboardLanguageToHIDCountryCode__countryCodeMap;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __61__TypistHWKeyboard__convertKeyboardLanguageToHIDCountryCode___block_invoke()
{
  v4[40] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_288029580;
  v3[1] = &unk_288029550;
  v4[0] = &unk_288029580;
  v4[1] = &unk_288029628;
  v3[2] = &unk_288029598;
  v3[3] = &unk_2880295B0;
  v4[2] = &unk_288029610;
  v4[3] = &unk_2880296B8;
  v3[4] = &unk_2880295C8;
  v3[5] = &unk_2880295E0;
  v4[4] = &unk_288029688;
  v4[5] = &unk_288029880;
  v3[6] = &unk_288029568;
  v3[7] = &unk_2880295F8;
  v4[6] = &unk_288029868;
  v4[7] = &unk_2880297C0;
  v3[8] = &unk_288029610;
  v3[9] = &unk_288029628;
  v4[8] = &unk_2880297D8;
  v4[9] = &unk_2880296A0;
  v3[10] = &unk_288029640;
  v3[11] = &unk_288029658;
  v4[10] = &unk_2880295C8;
  v4[11] = &unk_288029910;
  v3[12] = &unk_288029670;
  v3[13] = &unk_288029688;
  v4[12] = &unk_288029568;
  v4[13] = &unk_288029598;
  v3[14] = &unk_2880296A0;
  v3[15] = &unk_2880296B8;
  v4[14] = &unk_288029718;
  v4[15] = &unk_2880296D0;
  v3[16] = &unk_2880296D0;
  v3[17] = &unk_2880296E8;
  v4[16] = &unk_288029700;
  v4[17] = &unk_288029808;
  v3[18] = &unk_288029700;
  v3[19] = &unk_288029718;
  v4[18] = &unk_288029838;
  v4[19] = &unk_288029550;
  v3[20] = &unk_288029730;
  v3[21] = &unk_288029748;
  v4[20] = &unk_288029928;
  v4[21] = &unk_288029898;
  v3[22] = &unk_288029778;
  v3[23] = &unk_288029790;
  v4[22] = &unk_2880295E0;
  v4[23] = &unk_288029640;
  v3[24] = &unk_2880297A8;
  v3[25] = &unk_2880297C0;
  v4[24] = &unk_288029658;
  v4[25] = &unk_288029940;
  v3[26] = &unk_2880297D8;
  v3[27] = &unk_2880297F0;
  v4[26] = &unk_288029670;
  v4[27] = &unk_288029748;
  v3[28] = &unk_288029808;
  v3[29] = &unk_288029820;
  v4[28] = &unk_288029778;
  v4[29] = &unk_288029730;
  v3[30] = &unk_288029838;
  v3[31] = &unk_288029850;
  v4[30] = &unk_288029958;
  v4[31] = &unk_288029790;
  v3[32] = &unk_288029868;
  v3[33] = &unk_288029880;
  v4[32] = &unk_2880297A8;
  v4[33] = &unk_288029970;
  v3[34] = &unk_288029898;
  v3[35] = &unk_2880298B0;
  v4[34] = &unk_288029850;
  v4[35] = &unk_2880298B0;
  v3[36] = &unk_2880298C8;
  v3[37] = &unk_2880298E0;
  v4[36] = &unk_288029988;
  v4[37] = &unk_2880298B0;
  v3[38] = &unk_2880298F8;
  v3[39] = &unk_288029760;
  v4[38] = &unk_2880296E8;
  v4[39] = &unk_288029898;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:40];
  v1 = _convertKeyboardLanguageToHIDCountryCode__countryCodeMap;
  _convertKeyboardLanguageToHIDCountryCode__countryCodeMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)convertHIDCountryCodeToLanguage:(int64_t)language
{
  if (convertHIDCountryCodeToLanguage__onceToken != -1)
  {
    +[TypistHWKeyboard convertHIDCountryCodeToLanguage:];
  }

  v4 = convertHIDCountryCodeToLanguage__countryCodeMap;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:language];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __52__TypistHWKeyboard_convertHIDCountryCodeToLanguage___block_invoke()
{
  v4[36] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_288029580;
  v3[1] = &unk_288029628;
  v4[0] = &unk_288029580;
  v4[1] = &unk_288029550;
  v3[2] = &unk_288029610;
  v3[3] = &unk_2880296B8;
  v4[2] = &unk_288029598;
  v4[3] = &unk_2880295B0;
  v3[4] = &unk_288029688;
  v3[5] = &unk_288029880;
  v4[4] = &unk_2880295C8;
  v4[5] = &unk_2880295E0;
  v3[6] = &unk_288029868;
  v3[7] = &unk_2880297C0;
  v4[6] = &unk_288029568;
  v4[7] = &unk_2880295F8;
  v3[8] = &unk_2880297D8;
  v3[9] = &unk_2880296A0;
  v4[8] = &unk_288029610;
  v4[9] = &unk_288029628;
  v3[10] = &unk_2880295C8;
  v3[11] = &unk_288029568;
  v4[10] = &unk_288029640;
  v4[11] = &unk_288029670;
  v3[12] = &unk_288029598;
  v3[13] = &unk_288029718;
  v4[12] = &unk_288029688;
  v4[13] = &unk_2880296A0;
  v3[14] = &unk_2880296D0;
  v3[15] = &unk_288029700;
  v4[14] = &unk_2880296B8;
  v4[15] = &unk_2880296D0;
  v3[16] = &unk_288029808;
  v3[17] = &unk_288029838;
  v4[16] = &unk_2880296E8;
  v4[17] = &unk_288029700;
  v3[18] = &unk_288029550;
  v3[19] = &unk_288029898;
  v4[18] = &unk_288029718;
  v4[19] = &unk_288029760;
  v3[20] = &unk_2880295E0;
  v3[21] = &unk_288029640;
  v4[20] = &unk_288029778;
  v4[21] = &unk_288029790;
  v3[22] = &unk_288029658;
  v3[23] = &unk_288029670;
  v4[22] = &unk_2880297A8;
  v4[23] = &unk_2880297D8;
  v3[24] = &unk_288029748;
  v3[25] = &unk_288029778;
  v4[24] = &unk_2880297F0;
  v4[25] = &unk_288029808;
  v3[26] = &unk_288029730;
  v3[27] = &unk_288029790;
  v4[26] = &unk_288029820;
  v4[27] = &unk_288029850;
  v3[28] = &unk_2880297A8;
  v3[29] = &unk_288029850;
  v4[28] = &unk_288029868;
  v4[29] = &unk_288029898;
  v3[30] = &unk_2880298B0;
  v3[31] = &unk_288029988;
  v4[30] = &unk_2880298E0;
  v4[31] = &unk_2880298C8;
  v3[32] = &unk_288029970;
  v3[33] = &unk_288029958;
  v4[32] = &unk_288029880;
  v4[33] = &unk_288029838;
  v3[34] = &unk_288029928;
  v3[35] = &unk_288029910;
  v4[34] = &unk_288029730;
  v4[35] = &unk_288029658;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:36];
  v1 = convertHIDCountryCodeToLanguage__countryCodeMap;
  convertHIDCountryCodeToLanguage__countryCodeMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)getPropertyDictionaryString
{
  propertyDictionaryString = [(TypistHWKeyboard *)self propertyDictionaryString];
  v3 = [propertyDictionaryString copy];

  return v3;
}

- (id)usagePairsForText:(id)text
{
  v3 = [(TypistHWKeyboard *)self _generateKeystrokeStream:text appendTypeInterval:0];
  v4 = [v3 componentsSeparatedByString:@"bx "];
  v5 = [v4 arrayByExcludingObjectsInArray:&unk_28802A2D0];

  v6 = objc_alloc_init(TYUsagePairs);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TypistHWKeyboard_RecapSPIs__usagePairsForText___block_invoke;
  v9[3] = &unk_279DF48D8;
  v7 = v6;
  v10 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __49__TypistHWKeyboard_RecapSPIs__usagePairsForText___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 componentsSeparatedByString:@"/"];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = objc_opt_new();
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__TypistHWKeyboard_RecapSPIs__usagePairsForText___block_invoke_91;
  v7[3] = &unk_279DF48B0;
  v7[4] = &v14;
  v7[5] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = [*(a1 + 32) _usagePages];
  [v5 addObject:v15[5]];

  v6 = [*(a1 + 32) _usages];
  [v6 addObject:v9[5]];

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);
}

void __49__TypistHWKeyboard_RecapSPIs__usagePairsForText___block_invoke_91(uint64_t a1, void *a2)
{
  v3 = [a2 componentsSeparatedByString:{@", "}];
  v4 = MEMORY[0x277CCAC80];
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v4 scannerWithString:v5];

  v14 = 0;
  [v6 scanHexInt:&v14 + 4];
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v14)];
  [v7 addObject:v8];

  v9 = MEMORY[0x277CCAC80];
  v10 = [v3 objectAtIndexedSubscript:1];
  v11 = [v9 scannerWithString:v10];

  [v11 scanHexInt:&v14];
  v12 = *(*(*(a1 + 40) + 8) + 40);
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
  [v12 addObject:v13];
}

void __79__TypistHWKeyboard_Deprecated_initWithCountryCode_andPropertyDictionaryAtPath___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277D75688] sharedInputModeController];
  v2 = [v4 hardwareInputMode];
  v3 = [v2 automaticHardwareLayout];
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __38__TypistHWKeyboard_Deprecated_detach___block_invoke(uint64_t a1)
{
  [*(a1 + 32) emulatedKeyboard];
  CFRunLoopGetMain();
  v2 = *MEMORY[0x277CBF058];
  IOHIDUserDeviceUnscheduleFromRunLoop();
  v3 = [*(a1 + 32) keyboardCountryCode];
  [v3 unsignedIntValue];
  GSEventSetHardwareKeyboardAttached();

  CFRelease([*(a1 + 32) emulatedKeyboard]);
  [*(a1 + 32) hardwareKeyboard];
  GSKeyboardRelease();
  [*(a1 + 32) setKeyboardCountryCode:0];
  [*(a1 + 32) setCharacterToKeycodeMap:0];
  [*(a1 + 32) setTypistHWKeyboardQueue:0];
  [*(a1 + 32) setGroup:0];
  [*(a1 + 32) setEmulatedModel:0];
  v4 = dispatch_time(0, 200000000);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = &__block_literal_global_88;
  }

  v6 = MEMORY[0x277D85CD0];

  dispatch_after(v4, v6, v5);
}

void __46__TypistHWKeyboard_Deprecated_modifierCharMap__block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"⌥";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:4];
  v8[0] = v0;
  v7[1] = @"⇧";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v8[1] = v1;
  v7[2] = @"⌘";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v8[2] = v2;
  v7[3] = @"⌃";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v8[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = modifierCharMap_modifierCharMap;
  modifierCharMap_modifierCharMap = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __53__TypistHWKeyboard_Deprecated_typeString_completion___block_invoke(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
    v3 = [v2 generateKeystrokeStream:?];
    [v2 typeKeyStrokeStream:v3];
  }

  v4 = dispatch_time(0, 200000000);
  if (a1[6])
  {
    v5 = a1[6];
  }

  else
  {
    v5 = &__block_literal_global_234;
  }

  v6 = MEMORY[0x277D85CD0];

  dispatch_after(v4, v6, v5);
}

void __58__TypistHWKeyboard_Deprecated_pressAndHoldKey_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) generateKeystrokeStream:?];
    v3 = [v2 subarrayWithRange:{0, objc_msgSend(v2, "count") - 1}];

    [*(a1 + 40) typeKeyStrokeStream:v3];
  }

  v4 = dispatch_time(0, 200000000);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &__block_literal_global_236;
  }

  v6 = MEMORY[0x277D85CD0];

  dispatch_after(v4, v6, v5);
}

void __61__TypistHWKeyboard_Deprecated_releaseKeyPressWithCompletion___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{0, @"keyCode"}];
  v10[1] = @"modifier";
  v11[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v2 typeKeyStrokeStream:v6];

  v7 = dispatch_time(0, 200000000);
  if (*(a1 + 40))
  {
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = &__block_literal_global_238;
  }

  dispatch_after(v7, MEMORY[0x277D85CD0], v8);
  v9 = *MEMORY[0x277D85DE8];
}

void __51__TypistHWKeyboard_Deprecated_keyboardCountryCodes__block_invoke()
{
  v0 = keyboardCountryCodes_keyboardCountryCodes;
  keyboardCountryCodes_keyboardCountryCodes = &unk_28802A758;
}

@end