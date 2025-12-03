@interface SCROMobileBrailleDisplayInputManager
+ (SCROMobileBrailleDisplayInputManager)sharedManager;
- (SCROMobileBrailleDisplayInputManager)init;
- (id)_bundle;
- (id)_commandForHidUsage:(id)usage;
- (id)_commandsFromBrailleInputMode:(int)mode;
- (id)_eightDotCommands;
- (id)_sixDotCommands;
- (id)_updatedCommandDictionaryForCommandDictionary:(id)dictionary;
- (id)_updatedCommandForCommand:(id)command;
- (id)buttonNamesForInputIdentifier:(id)identifier forDisplayWithToken:(int)token;
- (id)commandDictionaryForDisplayWithToken:(int)token;
- (id)commandForBrailleKey:(id)key;
- (id)driverIdentifierForDisplayWithToken:(int)token;
- (id)inputIdentifierAtIndex:(unint64_t)index forDisplayWithToken:(int)token;
- (id)modelIdentifierForDisplayWithToken:(int)token;
- (id)userDefaultsForModelIdentifier:(id)identifier;
- (unint64_t)countForDisplayWithToken:(int)token;
- (void)configureWithDriverConfiguration:(id)configuration;
- (void)setCommand:(id)command forBrailleKey:(id)key;
- (void)setUserDefaults:(id)defaults forModelIdentifier:(id)identifier;
@end

@implementation SCROMobileBrailleDisplayInputManager

+ (SCROMobileBrailleDisplayInputManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[SCROMobileBrailleDisplayInputManager sharedManager];
  }

  v3 = _sharedManager_0;

  return v3;
}

uint64_t __53__SCROMobileBrailleDisplayInputManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SCROMobileBrailleDisplayInputManager);
  _sharedManager_0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (id)_bundle
{
  bundle = self->_bundle;
  if (!bundle)
  {
    v4 = MEMORY[0x277CCA8D8];
    v5 = objc_opt_self();
    v6 = [v4 bundleForClass:v5];
    v7 = self->_bundle;
    self->_bundle = v6;

    bundle = self->_bundle;
  }

  return bundle;
}

- (SCROMobileBrailleDisplayInputManager)init
{
  v16.receiver = self;
  v16.super_class = SCROMobileBrailleDisplayInputManager;
  v2 = [(SCROMobileBrailleDisplayInputManager *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    displayInfoDict = v2->_displayInfoDict;
    v2->_displayInfoDict = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = 0;
    v7 = 65538;
    do
    {
      v8 = v7 & 0xFFFF00FF;
      v7 = v6 + v8;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6 + v8];
      stringValue = [v9 stringValue];
      [v5 addObject:stringValue];

      v6 += 256;
    }

    while (v6 != 3584);
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v5];
    brailleKeys = v2->_brailleKeys;
    v2->_brailleKeys = v11;

    v13 = objc_opt_new();
    contentLock = v2->_contentLock;
    v2->_contentLock = v13;
  }

  return v2;
}

- (void)configureWithDriverConfiguration:(id)configuration
{
  v81 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NSLock *)self->_contentLock lock];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  selfCopy = self;
  v5 = self->_displayInfoDict;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v71;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v71 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)selfCopy->_displayInfoDict objectForKey:*(*(&v70 + 1) + 8 * i)];
        driverIdentifier = [v10 driverIdentifier];
        modelIdentifier = [v10 modelIdentifier];
        if (driverIdentifier)
        {
          bundle = [v10 bundle];
          if (bundle)
          {
            [v60 setObject:bundle forKey:driverIdentifier];
          }
        }

        if (modelIdentifier)
        {
          commandDictionary = [v10 commandDictionary];
          if (commandDictionary)
          {
            [v61 setObject:commandDictionary forKey:modelIdentifier];
          }

          orderedIdentifiers = [v10 orderedIdentifiers];
          if (orderedIdentifiers)
          {
            [v62 setObject:orderedIdentifiers forKey:modelIdentifier];
          }
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v7);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = configurationCopy;
  v16 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v67;
    v51 = *v67;
    do
    {
      v19 = 0;
      v52 = v17;
      do
      {
        if (*v67 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v66 + 1) + 8 * v19);
        v21 = [v20 objectForKey:kSCROBrailleDisplayToken[0]];
        if (v21)
        {
          v65 = v21;
          v22 = [v20 objectForKey:kSCROBrailleDisplayBrailleInputMode[0]];
          integerValue = [v22 integerValue];

          v23 = [v20 objectForKey:kSCROBrailleDisplayDriverIdentifier[0]];
          if ([v23 length])
          {
            v57 = v20;
            v24 = [v20 objectForKey:kSCROBrailleDisplayModelIdentifier[0]];
            if ([v24 length])
            {
              v55 = v23;
              v25 = [v60 objectForKey:v23];
              if (!v25)
              {
                v25 = [MEMORY[0x277CCA8D8] brailleDriverBundleWithIdentifier:v55];
                if (v25)
                {
                  [v60 setObject:v25 forKey:v55];
                }
              }

              v26 = [v61 objectForKey:v24];
              if (!v26)
              {
                v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
                [v61 setObject:v26 forKey:v24];
              }

              v53 = v19;
              v27 = [v62 objectForKey:v24];
              v28 = integerValue;
              if (!v27)
              {
                v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v62 setObject:v27 forKey:v24];
              }

              v56 = [(SCROMobileBrailleDisplayInputManager *)selfCopy _commandsFromBrailleInputMode:integerValue];
              v58 = v24;
              v59 = v25;
              v29 = v26;
              v30 = v27;
              v31 = v30;
              if (v29 && v30)
              {
                [v29 removeAllObjects];
                [v31 removeAllObjects];
                v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-mobile", v58];
                v33 = [v59 pathForResource:v32 ofType:@"plist"];

                v49 = v33;
                v50 = v24;
                if (v33 && (v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithContentsOfFile:v33]) != 0)
                {
LABEL_40:
                  v37 = v34;
                }

                else
                {
                  v35 = [v59 pathForResource:v58 ofType:@"plist"];
                  if (!v35 || (v36 = v35, v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithContentsOfFile:v35], v36, !v37))
                  {
                    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    goto LABEL_40;
                  }
                }

                [v37 addObjectsFromArray:v56];
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v38 = v37;
                v39 = [v38 countByEnumeratingWithState:&v74 objects:v80 count:16];
                if (v39)
                {
                  v40 = v39;
                  v41 = *v75;
                  do
                  {
                    for (j = 0; j != v40; ++j)
                    {
                      if (*v75 != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v43 = *(*(&v74 + 1) + 8 * j);
                      v44 = [v43 objectForKey:@"SCRBrailleInputIdentifier"];
                      if (v44)
                      {
                        v45 = [v43 objectForKey:@"SCRCommand"];
                        if (v45)
                        {
                          [v29 setObject:v45 forKey:v44];
                        }

                        [v31 addObject:v44];
                      }
                    }

                    v40 = [v38 countByEnumeratingWithState:&v74 objects:v80 count:16];
                  }

                  while (v40);
                }

                v24 = v50;
                v28 = integerValue;
              }

              v46 = objc_alloc_init(SCROMobileBrailleDisplayInputManagerCacheObject);
              [(SCROMobileBrailleDisplayInputManagerCacheObject *)v46 setDriverIdentifier:v55];
              [(SCROMobileBrailleDisplayInputManagerCacheObject *)v46 setModelIdentifier:v58];
              [(SCROMobileBrailleDisplayInputManagerCacheObject *)v46 setCommandDictionary:v29];
              [(SCROMobileBrailleDisplayInputManagerCacheObject *)v46 setBundle:v59];
              [(SCROMobileBrailleDisplayInputManagerCacheObject *)v46 setBrailleInputMode:v28];
              v47 = [v57 objectForKeyedSubscript:kSCROBrailleDisplayBrailleProductName[0]];
              [(SCROMobileBrailleDisplayInputManagerCacheObject *)v46 setProductName:v47];

              [(NSMutableDictionary *)selfCopy->_displayInfoDict setObject:v46 forKey:v65];
              v23 = v55;

              v18 = v51;
              v17 = v52;
              v19 = v53;
            }
          }

          v21 = v65;
        }

        ++v19;
      }

      while (v19 != v17);
      v17 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v17);
  }

  [(NSLock *)selfCopy->_contentLock unlock];
  v48 = *MEMORY[0x277D85DE8];
}

- (id)commandDictionaryForDisplayWithToken:(int)token
{
  [(NSLock *)self->_contentLock lock];
  v5 = MEMORY[0x277CCABB0];
  v6 = self->_displayInfoDict;
  v7 = [v5 numberWithInteger:token];
  v8 = [(NSMutableDictionary *)v6 objectForKey:v7];

  commandDictionary = [v8 commandDictionary];
  v10 = [commandDictionary mutableCopy];

  modelIdentifier = [v8 modelIdentifier];
  v12 = [(SCROMobileBrailleDisplayInputManager *)self userDefaultsForModelIdentifier:modelIdentifier];
  [v10 setValuesForKeysWithDictionary:v12];

  [(NSLock *)self->_contentLock unlock];
  v13 = [(SCROMobileBrailleDisplayInputManager *)self _updatedCommandDictionaryForCommandDictionary:v10];

  return v13;
}

- (id)driverIdentifierForDisplayWithToken:(int)token
{
  [(NSLock *)self->_contentLock lock];
  v5 = MEMORY[0x277CCABB0];
  v6 = self->_displayInfoDict;
  v7 = [v5 numberWithInteger:token];
  v8 = [(NSMutableDictionary *)v6 objectForKey:v7];

  driverIdentifier = [v8 driverIdentifier];
  [(NSLock *)self->_contentLock unlock];

  return driverIdentifier;
}

- (id)modelIdentifierForDisplayWithToken:(int)token
{
  [(NSLock *)self->_contentLock lock];
  v5 = MEMORY[0x277CCABB0];
  v6 = self->_displayInfoDict;
  v7 = [v5 numberWithInteger:token];
  v8 = [(NSMutableDictionary *)v6 objectForKey:v7];

  modelIdentifier = [v8 modelIdentifier];
  [(NSLock *)self->_contentLock unlock];

  return modelIdentifier;
}

- (id)_commandForHidUsage:(id)usage
{
  v3 = _commandForHidUsage__onceToken;
  usageCopy = usage;
  if (v3 != -1)
  {
    [SCROMobileBrailleDisplayInputManager _commandForHidUsage:];
  }

  identifier = [usageCopy identifier];

  integerValue = [identifier integerValue];
  if ((integerValue & 0xF) == 6)
  {
    v7 = integerValue >> 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = _commandForHidUsage__hidCommandToCommandMap;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v10 = [v8 objectForKey:v9];

  return v10;
}

void __60__SCROMobileBrailleDisplayInputManager__commandForHidUsage___block_invoke()
{
  v4[70] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_287651CF8;
  v3[1] = &unk_287651D10;
  v4[0] = @"VOTEventCommandBrailleNextInputTable";
  v4[1] = @"VOTEventCommandBrailleNextOutputTable";
  v3[2] = &unk_287651D28;
  v3[3] = &unk_287651D40;
  v4[2] = @"VOTEventCommandBraillePanLeft";
  v4[3] = @"VOTEventCommandBraillePanRight";
  v3[4] = &unk_287651D58;
  v3[5] = &unk_287651D70;
  v4[4] = @"VOTEventCommandBraillePanLeft";
  v4[5] = @"VOTEventCommandBraillePanRight";
  v3[6] = &unk_287651D88;
  v3[7] = &unk_287651DA0;
  v4[6] = @"VOTEventCommandDelete";
  v4[7] = @"VOTEventCommandReturn";
  v3[8] = &unk_287651DB8;
  v3[9] = &unk_287651DD0;
  v4[8] = @"VOTEventCommandEscape";
  v4[9] = @"VOTEventCommandMoveToStatusBar";
  v3[10] = &unk_287651DE8;
  v3[11] = &unk_287651E00;
  v4[10] = @"VOTEventCommandFirstElement";
  v4[11] = @"VOTEventCommandLastElement";
  v3[12] = &unk_287651E18;
  v3[13] = &unk_287651E30;
  v4[12] = @"VOTEventCommandPreviousElement";
  v4[13] = @"VOTEventCommandNextElement";
  v3[14] = &unk_287651E48;
  v3[15] = &unk_287651E60;
  v4[14] = @"VOTEventCommandReadFromTop";
  v4[15] = @"VOTEventCommandReadAll";
  v3[16] = &unk_287651E78;
  v3[17] = &unk_287651E90;
  v4[16] = @"VOTEventCommandScrollLeftPage";
  v4[17] = @"VOTEventCommandScrollRightPage";
  v3[18] = &unk_287651EA8;
  v3[19] = &unk_287651EC0;
  v4[18] = @"VOTEventCommandScrollUpPage";
  v4[19] = @"VOTEventCommandScrollDownPage";
  v3[20] = &unk_287651ED8;
  v3[21] = &unk_287651EF0;
  v4[20] = @"VOTEventCommandSearchRotorRight";
  v4[21] = @"VOTEventCommandSearchRotorLeft";
  v3[22] = &unk_287651F08;
  v3[23] = &unk_287651F20;
  v4[22] = @"VOTEventCommandSearchRotorUp";
  v4[23] = @"VOTEventCommandSearchRotorDown";
  v3[24] = &unk_287651F38;
  v3[25] = &unk_287651F50;
  v4[24] = @"VOTEventCommandSimpleTap";
  v4[25] = @"VOTEventCommandToggleSpeaking";
  v3[26] = &unk_287651F68;
  v3[27] = &unk_287651F80;
  v4[26] = @"VOTEventCommandStartStopToggle";
  v4[27] = @"VOTEventCommandHomeButtonPress";
  v3[28] = &unk_287651F98;
  v3[29] = &unk_287651FB0;
  v4[28] = @"VOTEventCommandBottomEdgeSingleSwipe";
  v4[29] = @"VOTEventCommandMoveToStatusBar";
  v3[30] = &unk_287651FC8;
  v3[31] = &unk_287651FE0;
  v4[30] = @"VOTEventCommandNextHeading";
  v4[31] = @"VOTEventCommandPreviousHeading";
  v3[32] = &unk_287651FF8;
  v3[33] = &unk_287652010;
  v4[32] = @"VOTEventCommandNextGraphic";
  v4[33] = @"VOTEventCommandPreviousGraphic";
  v3[34] = &unk_287652028;
  v3[35] = &unk_287652040;
  v4[34] = @"VOTEventCommandNextTable";
  v4[35] = @"VOTEventCommandPreviousTable";
  v3[36] = &unk_287652058;
  v3[37] = &unk_287652070;
  v4[36] = @"VOTEventCommandNextList";
  v4[37] = @"VOTEventCommandPreviousList";
  v3[38] = &unk_287652088;
  v3[39] = &unk_2876520A0;
  v4[38] = @"VOTEventCommandNextControl";
  v4[39] = @"VOTEventCommandPreviousControl";
  v3[40] = &unk_2876520B8;
  v3[41] = &unk_2876520D0;
  v4[40] = @"VOTEventCommandNextBlockquote";
  v4[41] = @"VOTEventCommandPreviousBlockquote";
  v3[42] = &unk_2876520E8;
  v3[43] = &unk_287652100;
  v4[42] = @"VOTEventCommandNextSameBlockquote";
  v4[43] = @"VOTEventCommandPreviousSameBlockquote";
  v3[44] = &unk_287652118;
  v3[45] = &unk_287652130;
  v4[44] = @"VOTEventCommandNextLink";
  v4[45] = @"VOTEventCommandPreviousLink";
  v3[46] = &unk_287652148;
  v3[47] = &unk_287652160;
  v4[46] = @"VOTEventCommandNextVisitedLink";
  v4[47] = @"VOTEventCommandPreviousVisitedLink";
  v3[48] = &unk_287652178;
  v3[49] = &unk_287652190;
  v4[48] = @"VOTEventCommandNextSameHeading";
  v4[49] = @"VOTEventCommandPreviousSameHeading";
  v3[50] = &unk_2876521A8;
  v3[51] = &unk_2876521C0;
  v4[50] = @"VOTEventCommandNextBoldText";
  v4[51] = @"VOTEventCommandPreviousBoldText";
  v3[52] = &unk_2876521D8;
  v3[53] = &unk_2876521F0;
  v4[52] = @"VOTEventCommandNextItalicText";
  v4[53] = @"VOTEventCommandPreviousItalicText";
  v3[54] = &unk_287652208;
  v3[55] = &unk_287652220;
  v4[54] = @"VOTEventCommandNextUnderlineText";
  v4[55] = @"VOTEventCommandPreviousUnderlineText";
  v3[56] = &unk_287652238;
  v3[57] = &unk_287652250;
  v4[56] = @"VOTEventCommandNextMisspelledWord";
  v4[57] = @"VOTEventCommandPreviousMisspelledWord";
  v3[58] = &unk_287652268;
  v3[59] = &unk_287652280;
  v4[58] = @"VOTEventCommandNextPlainText";
  v4[59] = @"VOTEventCommandPreviousPlainText";
  v3[60] = &unk_287652298;
  v3[61] = &unk_2876522B0;
  v4[60] = @"VOTEventCommandNextColorChange";
  v4[61] = @"VOTEventCommandPreviousColorChange";
  v3[62] = &unk_2876522C8;
  v3[63] = &unk_2876522E0;
  v4[62] = @"VOTEventCommandNextFontChange";
  v4[63] = @"VOTEventCommandPreviousFontChange";
  v3[64] = &unk_2876522F8;
  v4[64] = @"VOTEventCommandNextStyleChange";
  v3[65] = &unk_287652310;
  v4[65] = @"VOTEventCommandPreviousStyleChange";
  v3[66] = &unk_287652328;
  v4[66] = @"VOTEventCommandNextSameElement";
  v3[67] = &unk_287652340;
  v4[67] = @"VOTEventCommandPreviousSameElement";
  v3[68] = &unk_287652358;
  v4[68] = @"VOTEventCommandNextDifferentElement";
  v3[69] = &unk_287652370;
  v4[69] = @"VOTEventCommandPreviousDifferentElement";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:70];
  v1 = _commandForHidUsage__hidCommandToCommandMap;
  _commandForHidUsage__hidCommandToCommandMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_updatedCommandForCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy isEqualToString:@"VOTEventCommandBrailleNextInputMode"])
  {
    v4 = @"VOTEventCommandBrailleNextInputTable";
  }

  else if ([commandCopy isEqualToString:@"VOTEventCommandBrailleNextOutputMode"])
  {
    v4 = @"VOTEventCommandBrailleNextOutputTable";
  }

  else
  {
    v4 = commandCopy;
  }

  return v4;
}

- (id)_updatedCommandDictionaryForCommandDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = dictionaryCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v16}];
        v13 = [(SCROMobileBrailleDisplayInputManager *)self _updatedCommandForCommand:v12];
        [v5 setObject:v13 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)commandForBrailleKey:(id)key
{
  keyCopy = key;
  [(NSLock *)self->_contentLock lock];
  displayInfoDict = self->_displayInfoDict;
  displayToken = [keyCopy displayToken];
  v7 = MEMORY[0x277CCABB0];
  v8 = displayInfoDict;
  v9 = [v7 numberWithInteger:displayToken];
  v10 = [(NSMutableDictionary *)v8 objectForKey:v9];

  modelIdentifier = [v10 modelIdentifier];
  commandDictionary = [v10 commandDictionary];
  v13 = [commandDictionary copy];

  [(NSLock *)self->_contentLock unlock];
  v14 = [(SCROMobileBrailleDisplayInputManager *)self userDefaultsForModelIdentifier:modelIdentifier];
  identifier = [keyCopy identifier];
  v16 = [v14 objectForKey:identifier];

  if (v16)
  {
    v17 = [(SCROMobileBrailleDisplayInputManager *)self _updatedCommandForCommand:v16];
  }

  else
  {
    identifier2 = [keyCopy identifier];
    v19 = [v13 objectForKey:identifier2];

    if (!v19)
    {
      v19 = [(SCROMobileBrailleDisplayInputManager *)self _commandForHidUsage:keyCopy];
    }

    v17 = [(SCROMobileBrailleDisplayInputManager *)self _updatedCommandForCommand:v19];
  }

  return v17;
}

- (void)setCommand:(id)command forBrailleKey:(id)key
{
  keyCopy = key;
  commandCopy = command;
  identifier = [keyCopy identifier];
  displayToken = [keyCopy displayToken];

  [(SCROMobileBrailleDisplayInputManager *)self setCommand:commandCopy forInputIdentifier:identifier forDisplayWithToken:displayToken];
}

- (id)buttonNamesForInputIdentifier:(id)identifier forDisplayWithToken:(int)token
{
  v63 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  _bundle = [(SCROMobileBrailleDisplayInputManager *)self _bundle];
  if ([identifierCopy hasPrefix:@"unassigned"])
  {
    v8 = MEMORY[0x277CBEA60];
    v9 = [_bundle localizedStringForKey:@"unassigned" value:&stru_28763D5C8 table:@"Client"];
    array = [v8 arrayWithObject:v9];

    goto LABEL_41;
  }

  [(NSLock *)self->_contentLock lock];
  v11 = MEMORY[0x277CCABB0];
  v12 = self->_displayInfoDict;
  v13 = [v11 numberWithInteger:token];
  v14 = [(NSMutableDictionary *)v12 objectForKey:v13];

  bundle = [v14 bundle];
  driverIdentifier = [v14 driverIdentifier];
  modelIdentifier = [v14 modelIdentifier];
  v43 = v14;
  productName = [v14 productName];
  [(NSLock *)self->_contentLock unlock];
  v16 = _SCROD_LOG();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v58 = identifierCopy;
    v59 = 2112;
    v60 = modelIdentifier;
    v61 = 2112;
    v62 = productName;
    _os_log_impl(&dword_26490B000, v16, OS_LOG_TYPE_DEFAULT, "Button name %@ for %@ %@", buf, 0x20u);
  }

  v17 = [identifierCopy componentsSeparatedByString:@"."];
  v45 = identifierCopy;
  v51 = _bundle;
  if ([v17 count])
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    array = 0;
  }

  v44 = bundle;
  localizedInfoDictionary = [bundle localizedInfoDictionary];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v53;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v53 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v52 + 1) + 8 * i);
        if ([(NSSet *)self->_brailleKeys containsObject:v22])
        {
          v23 = [@"braille.key" stringByAppendingPathExtension:v22];
          v24 = [v51 localizedStringForKey:v23 value:&stru_28763D5C8 table:@"Client"];
        }

        else
        {
          v23 = 0;
          v24 = 0;
        }

        if (![v24 length])
        {
          v25 = [modelIdentifier stringByAppendingPathExtension:v22];

          if (v25)
          {
            v26 = [localizedInfoDictionary objectForKey:v25];

            v23 = v25;
            v24 = v26;
          }

          else
          {
            v23 = 0;
          }
        }

        if (![v24 length])
        {
          v27 = [driverIdentifier stringByAppendingPathExtension:v22];

          if (v27)
          {
            v28 = [localizedInfoDictionary objectForKey:v27];

            v23 = v27;
            v24 = v28;
          }

          else
          {
            v23 = 0;
          }
        }

        if (![v24 length])
        {
          integerValue = [v22 integerValue];
          v30 = (integerValue >> 17) & 3;
          if (v30 > 1)
          {
            v31 = @"HID.joystick.key";
            if (v30 != 3)
            {
              v31 = @"HID.rocker.key";
            }

            goto LABEL_30;
          }

          if (v30)
          {
            v31 = @"HID.button.key";
LABEL_30:
            v32 = [v51 localizedStringForKey:v31 value:&stru_28763D5C8 table:@"Client"];
            v42 = (integerValue & 0xFF000000) != 0;
            v33 = SCRCFormattedString();

            v24 = v33;
          }
        }

        if (![v24 length])
        {
          if ([modelIdentifier isEqualToString:@"com.apple.generic.hid.mobile"])
          {
            v34 = [productName hasPrefix:@"Brailliant BI"];
            v35 = @"com.apple.scrod.braille.driver.humanware.brailliant.BI";
            if ((v34 & 1) != 0 || (v36 = [productName hasPrefix:@"NLS eReader Humanware"], v35 = @"com.apple.scrod.braille.driver.nls.ereader", v36))
            {
              v37 = [(__CFString *)v35 stringByAppendingPathExtension:v22];
              v38 = [localizedInfoDictionary objectForKey:v37];

              v24 = v38;
            }
          }
        }

        if (![v24 length])
        {
          v39 = v22;

          v24 = v39;
        }

        [array addObject:v24];
      }

      v19 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v19);
  }

  identifierCopy = v45;
  _bundle = v51;
LABEL_41:

  v40 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_sixDotCommands
{
  sixDotCommands = self->_sixDotCommands;
  if (!sixDotCommands)
  {
    _bundle = [(SCROMobileBrailleDisplayInputManager *)self _bundle];
    v5 = [_bundle pathForResource:@"6dot.mobile.commands" ofType:@"plist"];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfFile:v5];
      v7 = self->_sixDotCommands;
      self->_sixDotCommands = v6;
    }

    sixDotCommands = self->_sixDotCommands;
  }

  return sixDotCommands;
}

- (id)_eightDotCommands
{
  eightDotCommands = self->_eightDotCommands;
  if (!eightDotCommands)
  {
    _bundle = [(SCROMobileBrailleDisplayInputManager *)self _bundle];
    v5 = [_bundle pathForResource:@"8dot.mobile.commands" ofType:@"plist"];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfFile:v5];
      v7 = self->_eightDotCommands;
      self->_eightDotCommands = v6;
    }

    eightDotCommands = self->_eightDotCommands;
  }

  return eightDotCommands;
}

- (id)_commandsFromBrailleInputMode:(int)mode
{
  if (mode == 2)
  {
    array = [MEMORY[0x277CBEB18] array];
    _sixDotCommands = [(SCROMobileBrailleDisplayInputManager *)self _sixDotCommands];
    [array addObjectsFromArray:_sixDotCommands];

    _eightDotCommands = [(SCROMobileBrailleDisplayInputManager *)self _eightDotCommands];
    goto LABEL_5;
  }

  if (mode == 1)
  {
    array = [MEMORY[0x277CBEB18] array];
    _eightDotCommands = [(SCROMobileBrailleDisplayInputManager *)self _sixDotCommands];
LABEL_5:
    v7 = _eightDotCommands;
    [array addObjectsFromArray:_eightDotCommands];

    goto LABEL_7;
  }

  array = 0;
LABEL_7:

  return array;
}

- (unint64_t)countForDisplayWithToken:(int)token
{
  [(NSLock *)self->_contentLock lock];
  v5 = MEMORY[0x277CCABB0];
  v6 = self->_displayInfoDict;
  v7 = [v5 numberWithInteger:token];
  v8 = [(NSMutableDictionary *)v6 objectForKey:v7];

  orderedIdentifiers = [v8 orderedIdentifiers];
  v10 = [orderedIdentifiers count];

  [(NSLock *)self->_contentLock unlock];
  return v10;
}

- (id)inputIdentifierAtIndex:(unint64_t)index forDisplayWithToken:(int)token
{
  [(NSLock *)self->_contentLock lock];
  v7 = MEMORY[0x277CCABB0];
  v8 = self->_displayInfoDict;
  v9 = [v7 numberWithInteger:token];
  v10 = [(NSMutableDictionary *)v8 objectForKey:v9];

  orderedIdentifiers = [v10 orderedIdentifiers];
  if ([orderedIdentifiers count] <= index)
  {
    v12 = 0;
  }

  else
  {
    v12 = [orderedIdentifiers objectAtIndex:index];
  }

  [(NSLock *)self->_contentLock unlock];

  return v12;
}

- (id)userDefaultsForModelIdentifier:(id)identifier
{
  v3 = CFPreferencesCopyAppValue([(SCROMobileBrailleDisplayInputManager *)self defaultsKeyForModelIdentifier:identifier], @"com.apple.VoiceOverTouch");
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v6 = v5;

  return v5;
}

- (void)setUserDefaults:(id)defaults forModelIdentifier:(id)identifier
{
  value = defaults;
  CFPreferencesSetAppValue([(SCROMobileBrailleDisplayInputManager *)self defaultsKeyForModelIdentifier:identifier], value, @"com.apple.VoiceOverTouch");
}

@end