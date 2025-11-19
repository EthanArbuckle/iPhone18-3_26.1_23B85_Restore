@interface TypistHWKeyboard_Deprecated
+ (id)_determineAppropriatePropertyDictionaryForHWModelStr:(id)a3;
+ (id)_getModifierMaskMap;
+ (id)keyboardCountryCodes;
+ (id)modifierCharMap;
+ (unsigned)_convertCountryCodeToHIDKeyboardType:(unsigned __int8)a3;
+ (unsigned)_convertGSKeyboardTypeToIOHIDKeyboardType:(unsigned __int8)a3;
+ (unsigned)_convertHIDKeyboardTypeToGSKeyboardType:(unsigned int)a3;
- (TypistHWKeyboard_Deprecated)initWithCountryCode:(id)a3;
- (TypistHWKeyboard_Deprecated)initWithCountryCode:(id)a3 andPropertyDictionaryAtPath:(id)a4;
- (id)generateKeystrokeStream:(id)a3;
- (id)generateKeystrokeStream:(id)a3 position:(int *)a4;
- (void)_setupCharacterToKeycodeMap;
- (void)detach:(id)a3;
- (void)pressAndHoldKey:(id)a3 completion:(id)a4;
- (void)releaseKeyPressWithCompletion:(id)a3;
- (void)typeKeyStrokeStream:(id)a3;
- (void)typeString:(id)a3 completion:(id)a4;
@end

@implementation TypistHWKeyboard_Deprecated

- (TypistHWKeyboard_Deprecated)initWithCountryCode:(id)a3 andPropertyDictionaryAtPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(TypistHWKeyboard_Deprecated *)self setEmulatedModel:v7];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 pathForResource:v7 ofType:@"plist"];

    v10 = MEMORY[0x277CBEB38];
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v9];
    v12 = [v10 dictionaryWithDictionary:v11];

    [v12 setValue:v6 forKey:@"CountryCode"];
    v13 = *MEMORY[0x277CBECE8];
    v14 = IOHIDUserDeviceCreate();
    v15 = +[TypistHWKeyboard_Deprecated _convertCountryCodeToHIDKeyboardType:](TypistHWKeyboard_Deprecated, "_convertCountryCodeToHIDKeyboardType:", [v6 unsignedIntValue]);
    [TypistHWKeyboard_Deprecated _convertHIDKeyboardTypeToGSKeyboardType:v15];
    [(TypistHWKeyboard_Deprecated *)self setHidKeyboardType:v15];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __79__TypistHWKeyboard_Deprecated_initWithCountryCode_andPropertyDictionaryAtPath___block_invoke;
    v31[3] = &unk_279DF4710;
    v31[4] = &v32;
    [TypistKeyboardUtilities runOnMainThread:v31];
    TYLog(@"HWKeyboardEumlator: Layout: %@, keyboardType: %u", v16, v17, v18, v19, v20, v21, v22, v33[3]);
    [(TypistHWKeyboard_Deprecated *)self setEmulatedKeyboard:v14];
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(TypistHWKeyboard_Deprecated *)self setCharacterToKeycodeMap:v23];

    v24 = v33[3];
    [(TypistHWKeyboard_Deprecated *)self setHardwareKeyboard:GSKeyboardCreate()];
    [(TypistHWKeyboard_Deprecated *)self setKeyboardCountryCode:v6];
    v25 = dispatch_group_create();
    [(TypistHWKeyboard_Deprecated *)self setGroup:v25];

    v26 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v27 = dispatch_queue_create("TypistHWKeyboard.queue", v26);
    dispatch_async(v27, &__block_literal_global_7);

    [(TypistHWKeyboard_Deprecated *)self setTypistHWKeyboardQueue:v27];
    [(TypistHWKeyboard_Deprecated *)self _setupCharacterToKeycodeMap];
    [v6 unsignedIntValue];
    GSEventSetHardwareKeyboardAttachedWithCountryCodeAndType();
    [(TypistHWKeyboard_Deprecated *)self emulatedKeyboard];
    CFRunLoopGetMain();
    v28 = *MEMORY[0x277CBF058];
    IOHIDUserDeviceScheduleWithRunLoop();
    [(TypistHWKeyboard_Deprecated *)self setTypeInterval:0.02];
    v29 = self;
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (TypistHWKeyboard_Deprecated)initWithCountryCode:(id)a3
{
  v4 = a3;
  v5 = [TypistKeyboardUtilities getMobileGestalt:@"HWModelStr"];
  v6 = [TypistHWKeyboard_Deprecated _determineAppropriatePropertyDictionaryForHWModelStr:v5];

  v7 = [(TypistHWKeyboard_Deprecated *)self initWithCountryCode:v4 andPropertyDictionaryAtPath:v6];
  return v7;
}

- (void)detach:(id)a3
{
  v4 = a3;
  v5 = [(TypistHWKeyboard_Deprecated *)self group];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__TypistHWKeyboard_Deprecated_detach___block_invoke;
  v7[3] = &unk_279DF4CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], v7);
}

+ (id)_determineAppropriatePropertyDictionaryForHWModelStr:(id)a3
{
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"J207"] && objc_msgSend(v3, "caseInsensitiveCompare:", @"J208") && objc_msgSend(v3, "caseInsensitiveCompare:", @"J217") && objc_msgSend(v3, "caseInsensitiveCompare:", @"J218"))
  {
    if ([v3 caseInsensitiveCompare:@"J98A"] && objc_msgSend(v3, "caseInsensitiveCompare:", @"J99A") && objc_msgSend(v3, "caseInsensitiveCompare:", @"J120") && objc_msgSend(v3, "caseInsensitiveCompare:", @"J121"))
    {
      if ([v3 caseInsensitiveCompare:@"J127"] && objc_msgSend(v3, "caseInsensitiveCompare:", @"J128") && objc_msgSend(v3, "caseInsensitiveCompare:", @"J210") && objc_msgSend(v3, "caseInsensitiveCompare:", @"J211") && objc_msgSend(v3, "caseInsensitiveCompare:", @"J96") && objc_msgSend(v3, "caseInsensitiveCompare:", @"J97"))
      {
        if ([v3 caseInsensitiveCompare:@"J317"] && objc_msgSend(v3, "caseInsensitiveCompare:", @"J318") && objc_msgSend(v3, "caseInsensitiveCompare:", @"J317x") && objc_msgSend(v3, "caseInsensitiveCompare:", @"J318x"))
        {
          if ([v3 caseInsensitiveCompare:@"J320"] && objc_msgSend(v3, "caseInsensitiveCompare:", @"J321"))
          {
            v4 = 0;
          }

          else
          {
            v4 = @"R98";
          }
        }

        else
        {
          v4 = @"R88";
        }
      }

      else
      {
        v4 = @"B259";
      }
    }

    else
    {
      v4 = @"B249";
    }
  }

  else
  {
    v4 = @"R119";
  }

  return v4;
}

+ (unsigned)_convertGSKeyboardTypeToIOHIDKeyboardType:(unsigned __int8)a3
{
  if (a3 == 202)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  if (a3 == 203)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 207)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

+ (unsigned)_convertHIDKeyboardTypeToGSKeyboardType:(unsigned int)a3
{
  v3 = 0xCFCBCAu >> (8 * a3);
  if (a3 >= 3)
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (id)modifierCharMap
{
  if (modifierCharMap_onceToken != -1)
  {
    +[TypistHWKeyboard_Deprecated modifierCharMap];
  }

  v3 = modifierCharMap_modifierCharMap;

  return v3;
}

- (void)_setupCharacterToKeycodeMap
{
  v66[2] = *MEMORY[0x277D85DE8];
  v44 = malloc_type_calloc(1uLL, 0xA2uLL, 0x10000402B2F1F51uLL);
  v3 = 4;
  while (v3 <= 0x2Au)
  {
    if (v3 == 40)
    {
      v4 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
      v61[0] = @"keyCode";
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:40];
      v61[1] = @"modifier";
      v62[0] = v5;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
      v62[1] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
      v8 = v4;
      v9 = v7;
      v10 = @"⏎";
      goto LABEL_13;
    }

    if (v3 != 41)
    {
      if (v3 != 42)
      {
        goto LABEL_17;
      }

      v4 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
      v63[0] = @"keyCode";
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:42];
      v63[1] = @"modifier";
      v64[0] = v5;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
      v64[1] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
      v8 = v4;
      v9 = v7;
      v10 = @"⌫";
      goto LABEL_13;
    }

    v11 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
    v65[0] = @"keyCode";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:41];
    v65[1] = @"modifier";
    v66[0] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v66[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
    [v11 setObject:v14 forKey:@"␛"];

LABEL_14:
    v15 = v3++;
    if (v15 >= 0x39)
    {
      goto LABEL_19;
    }
  }

  if (v3 == 43)
  {
    v4 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
    v59[0] = @"keyCode";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:43];
    v59[1] = @"modifier";
    v60[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v60[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v8 = v4;
    v9 = v7;
    v10 = @"⇥";
    goto LABEL_13;
  }

  if (v3 == 44)
  {
    v4 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
    v55[0] = @"keyCode";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:44];
    v55[1] = @"modifier";
    v56[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v56[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
    v8 = v4;
    v9 = v7;
    v10 = @" ";
LABEL_13:
    [v8 setObject:v9 forKey:v10];

    goto LABEL_14;
  }

  if (v3 != 57)
  {
LABEL_17:
    [(TypistHWKeyboard_Deprecated *)self _insertKey:v3 gsKeyInfo:v44];
    goto LABEL_14;
  }

  v16 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v57[0] = @"keyCode";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:57];
  v57[1] = @"modifier";
  v58[0] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v58[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  [v16 setObject:v19 forKey:@"⇪"];

LABEL_19:
  if ([(TypistHWKeyboard_Deprecated *)self hidKeyboardType]== 2)
  {
    v20 = v44;
    [(TypistHWKeyboard_Deprecated *)self _insertKey:135 gsKeyInfo:v44];
    v21 = 137;
    goto LABEL_23;
  }

  v20 = v44;
  if ([(TypistHWKeyboard_Deprecated *)self hidKeyboardType]== 1)
  {
    v21 = 100;
LABEL_23:
    [(TypistHWKeyboard_Deprecated *)self _insertKey:v21 gsKeyInfo:v20];
  }

  v22 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v53[0] = @"keyCode";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:79];
  v53[1] = @"modifier";
  v54[0] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v54[1] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  [v22 setObject:v25 forKey:@"→"];

  v26 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v51[0] = @"keyCode";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:80];
  v51[1] = @"modifier";
  v52[0] = v27;
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v52[1] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  [v26 setObject:v29 forKey:@"←"];

  v30 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v49[0] = @"keyCode";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:81];
  v49[1] = @"modifier";
  v50[0] = v31;
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v50[1] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  [v30 setObject:v33 forKey:@"↓"];

  v34 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v47[0] = @"keyCode";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:82];
  v47[1] = @"modifier";
  v48[0] = v35;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v48[1] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  [v34 setObject:v37 forKey:@"↑"];

  v38 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v45[0] = @"keyCode";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v46[0] = v39;
  v45[1] = @"modifier";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v46[1] = v40;
  v45[2] = @"globeKey";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:2];
  v46[2] = v41;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
  [v38 setObject:v42 forKey:@"⌨"];

  free(v20);
  v43 = *MEMORY[0x277D85DE8];
}

- (id)generateKeystrokeStream:(id)a3 position:(int *)a4
{
  v59[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *a4;
  if ([v6 length] <= v7)
  {
    v57[0] = @"keyCode";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v57[1] = @"modifier";
    v58[0] = v8;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v58[1] = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v59[0] = v14;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
  }

  else
  {
    v8 = +[TypistHWKeyboard_Deprecated modifierCharMap];
    v49 = [v6 characterAtIndex:*a4];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [MEMORY[0x277CCACA8] stringWithCharacters:&v49 length:1];
    v11 = [v8 objectForKey:v10];

    if (v11)
    {
      v41 = v9;
      ++*a4;
      v12 = [(TypistHWKeyboard_Deprecated *)self generateKeystrokeStream:v6 position:a4];
      v13 = [v11 unsignedShortValue];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v45 objects:v56 count:16];
      if (v15)
      {
        v16 = v15;
        v43 = v11;
        v38 = v8;
        v39 = v6;
        v17 = 0;
        v18 = *v46;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v46 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v45 + 1) + 8 * i);
            v21 = [v20 objectForKey:{@"keyCode", v38}];
            v17 |= [v21 unsignedShortValue];

            v22 = [v20 objectForKey:@"modifier"];
            v13 |= [v22 unsignedShortValue];
          }

          v16 = [v14 countByEnumeratingWithState:&v45 objects:v56 count:16];
        }

        while (v16);
        v8 = v38;
        v6 = v39;
        v11 = v43;
      }

      else
      {
        LOWORD(v17) = 0;
      }

      v54[0] = @"keyCode";
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
      v54[1] = @"modifier";
      v55[0] = v25;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
      v55[1] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
      v9 = v41;
    }

    else
    {
      v23 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
      v24 = [MEMORY[0x277CCACA8] stringWithCharacters:&v49 length:1];
      v14 = [v23 objectForKey:v24];

      if (v14)
      {
        [v9 addObject:v14];
      }

      else
      {
        v44 = [MEMORY[0x277CCACA8] stringWithCharacters:&v49 length:1];
        [(TypistHWKeyboard_Deprecated *)self hardwareKeyboard];
        GSKeyboardHWKeyboardNormalizeInput();
        v28 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
        v42 = [v28 objectForKey:v44];

        v52[0] = @"keyCode";
        v40 = [v42 objectForKey:?];
        v52[1] = @"modifier";
        v53[0] = v40;
        v29 = +[TypistHWKeyboard_Deprecated _getModifierMaskMap];
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
        [v29 objectForKey:v30];
        v32 = v31 = v8;
        v53[1] = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

        v8 = v31;
        v34 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
        v35 = [MEMORY[0x277CCACA8] stringWithCharacters:&v49 length:1];
        [v34 setObject:v33 forKey:v35];

        [v9 addObject:v33];
      }

      v50[0] = @"keyCode";
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
      v50[1] = @"modifier";
      v51[0] = v25;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
      v51[1] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
      v11 = 0;
    }

    [v9 addObject:v27];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)generateKeystrokeStream:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"\t" withString:@"⇥"];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"⏎"];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0;
  if ([v5 length])
  {
    do
    {
      v7 = [(TypistHWKeyboard_Deprecated *)self generateKeystrokeStream:v5 position:&v11];
      [v6 addObjectsFromArray:v7];
      v8 = [v7 count];
      v11 = v8 + v11 - 1;

      v9 = v11;
    }

    while ([v5 length] > v9);
  }

  return v6;
}

- (void)typeKeyStrokeStream:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 objectForKey:@"modifier"];
        v10 = [v9 unsignedShortValue];

        v11 = [v8 objectForKey:@"keyCode"];
        v12 = [v11 unsignedShortValue];

        v13 = [v8 objectForKey:@"globeKey"];
        if (v13)
        {
          v14 = [v8 objectForKey:@"globeKey"];
          v15 = [v14 unsignedShortValue];
        }

        else
        {
          v15 = 0;
        }

        v16 = MEMORY[0x277CCACC8];
        [(TypistHWKeyboard_Deprecated *)self typeInterval];
        [v16 sleepForTimeInterval:?];
        v24 = 1;
        v25 = v10;
        v26 = 0;
        v27 = v12;
        v28 = 0;
        v29 = 0;
        v30 = v15;
        [(TypistHWKeyboard_Deprecated *)self emulatedKeyboard];
        IOHIDUserDeviceHandleReport();
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v31 count:16];
    }

    while (v5);
  }

  v17 = MEMORY[0x277CCACC8];
  [(TypistHWKeyboard_Deprecated *)self typeInterval];
  [v17 sleepForTimeInterval:?];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)typeString:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TypistHWKeyboard_Deprecated *)self group];
  v9 = [(TypistHWKeyboard_Deprecated *)self TypistHWKeyboardQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TypistHWKeyboard_Deprecated_typeString_completion___block_invoke;
  block[3] = &unk_279DF4D20;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_group_async(v8, v9, block);
}

- (void)pressAndHoldKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TypistHWKeyboard_Deprecated *)self group];
  v9 = [(TypistHWKeyboard_Deprecated *)self TypistHWKeyboardQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TypistHWKeyboard_Deprecated_pressAndHoldKey_completion___block_invoke;
  block[3] = &unk_279DF4D20;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_group_async(v8, v9, block);
}

- (void)releaseKeyPressWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TypistHWKeyboard_Deprecated *)self group];
  v6 = [(TypistHWKeyboard_Deprecated *)self TypistHWKeyboardQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__TypistHWKeyboard_Deprecated_releaseKeyPressWithCompletion___block_invoke;
  v8[3] = &unk_279DF4CF8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_async(v5, v6, v8);
}

+ (id)_getModifierMaskMap
{
  v40[16] = *MEMORY[0x277D85DE8];
  v26 = MEMORY[0x277CBEB38];
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v39[0] = v38;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v40[0] = v37;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x20000];
  v39[1] = v36;
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:2];
  v40[1] = v35;
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x80000];
  v39[2] = v34;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:4];
  v40[2] = v33;
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x100000];
  v39[3] = v32;
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1];
  v40[3] = v31;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x10000];
  v39[4] = v30;
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:8];
  v40[4] = v29;
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:655360];
  v39[5] = v28;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:6];
  v40[5] = v25;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1179648];
  v39[6] = v24;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:3];
  v40[6] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:196608];
  v39[7] = v22;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:10];
  v40[7] = v21;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1572864];
  v39[8] = v20;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:5];
  v40[8] = v19;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:589824];
  v39[9] = v18;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:12];
  v40[9] = v17;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1114112];
  v39[10] = v16;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:9];
  v40[10] = v15;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1703936];
  v39[11] = v14;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:7];
  v40[11] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:720896];
  v39[12] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:14];
  v40[12] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1245184];
  v39[13] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:11];
  v40[13] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1638400];
  v39[14] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:13];
  v40[14] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1769472];
  v39[15] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:15];
  v40[15] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:16];
  v27 = [v26 dictionaryWithDictionary:v11];

  v12 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)keyboardCountryCodes
{
  if (keyboardCountryCodes_onceToken != -1)
  {
    +[TypistHWKeyboard_Deprecated keyboardCountryCodes];
  }

  v3 = keyboardCountryCodes_keyboardCountryCodes;

  return v3;
}

+ (unsigned)_convertCountryCodeToHIDKeyboardType:(unsigned __int8)a3
{
  if (a3 > 29)
  {
    return a3 != 30 && a3 != 33;
  }

  if (a3 != 15)
  {
    return a3 != 16;
  }

  return 2;
}

@end