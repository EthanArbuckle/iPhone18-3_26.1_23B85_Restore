@interface TypistKeyboardDataInProcess
+ (BOOL)_activeInputModesContainsInputMode:(id)a3;
+ (BOOL)generatePopupKeySubtrees:(id)a3 key:(id)a4 plane:(id)a5 layout:(id)a6 keyplaneKeycaps:(id)a7;
+ (BOOL)hasMarkedText;
+ (BOOL)isCandidateCellVisible:(id)a3;
+ (BOOL)isExtendedCandidateViewMode;
+ (BOOL)keyHasAccentedVariants:(id)a3 plane:(id)a4 keyplaneKeycaps:(id)a5;
+ (BOOL)shouldShowDictationKey;
+ (BOOL)shouldShowGlobeKey;
+ (BOOL)switchToKeyboard:(id)a3;
+ (BOOL)switchToPlane:(id)a3;
+ (CGPoint)centerOfKey:(CGPoint)a3 withOffset:(CGPoint)a4;
+ (CGPoint)floatingKeyboardDraggablePoint;
+ (CGPoint)getCandidateCenter:(id)a3;
+ (CGPoint)getCandidateCenterAtIndex:(int64_t)a3;
+ (CGPoint)getExtendedCandidateViewToggleButtonCenter;
+ (CGRect)findKeyBoundsInKeyboard:(id)a3;
+ (CGRect)getCandidateBarRect;
+ (__n128)getKeyboardScaleTransform;
+ (id)_variantsByAppendingDualStringKey:(id)a3 toVariants:(id)a4;
+ (id)addKeyboardGestureKeys:(id)a3 keys:(id)a4 inPlane:(id)a5 addTo:(id)a6;
+ (id)addKeyboardPopupKeys:(id)a3 keys:(id)a4 inPlane:(id)a5 addTo:(id)a6 keyplaneKeycaps:(id)a7;
+ (id)addKeyboards:(id)a3;
+ (id)appendingSecondaryStringToVariantsTop:(id)a3 secondaryString:(id)a4 withDirection:(id)a5;
+ (id)cleanUpSwitchTableBasedOnDefaultPlane:(id)a3 defaultPlaneName:(id)a4;
+ (id)determineDefaultPlane10Key:(id)a3 basePlaneName:(id)a4;
+ (id)determineDefaultPlane:(id)a3 basePlaneName:(id)a4;
+ (id)generateKeyplaneSwitchTable:(id)a3;
+ (id)generateKeyplaneSwitchTableFor10Key:(id)a3;
+ (id)getAllCandidates;
+ (id)getKeyboardLayout:(id)a3;
+ (id)getKeyboardPlaneKeys:(id)a3 keys:(id)a4 inPlane:(id)a5;
+ (id)getKeyboardUISettings;
+ (id)getKeyplaneDescription:(id)a3;
+ (id)getRepresentedStringFromKey:(id)a3;
+ (id)getTIPreferences;
+ (id)getVisibleCandidateList:(id)a3;
+ (id)getVisibleKeyplaneName;
+ (id)markedText;
+ (id)removeKeyboards:(id)a3;
+ (id)setKeyboardUISettings:(id)a3;
+ (id)setKeyboards:(id)a3;
+ (id)setOneHandedKeyboardHandBias:(id)a3;
+ (id)setTIPreferences:(id)a3;
+ (id)updateCachedKeyplaneKeycaps:(id)a3;
+ (int)getShuangpinEnumeration:(id)a3;
+ (int)getWubiEnumeration:(id)a3;
+ (unint64_t)downActionFlagsForKey:(id)a3 plane:(id)a4 keyplaneKeycaps:(id)a5;
+ (void)showCandidateAtIndex:(int64_t)a3;
+ (void)showPopupVariantsForKey:(id)a3 key:(id)a4 plane:(id)a5 keyplaneKeycaps:(id)a6;
@end

@implementation TypistKeyboardDataInProcess

+ (id)getKeyboardLayout:(id)a3
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x3032000000;
  v93[3] = __Block_byref_object_copy__4;
  v93[4] = __Block_byref_object_dispose__4;
  v94 = [MEMORY[0x277D75658] activeKeyboard];
  [MEMORY[0x277D75678] activeInstance];
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x3032000000;
  v91[3] = __Block_byref_object_copy__4;
  v36 = v91[4] = __Block_byref_object_dispose__4;
  v92 = [v36 _layout];
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__4;
  v89 = __Block_byref_object_dispose__4;
  v90 = 0;
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke;
  v84[3] = &unk_279DF49C8;
  v84[4] = &v85;
  v84[5] = v93;
  [TypistKeyboardUtilities runOnMainThread:v84];
  if ([v86[5] containsString:@"_"])
  {
    v6 = [v86[5] componentsSeparatedByString:@"_"];
    v7 = [v6 lastObject];
    v8 = [v7 lowercaseString];
    v9 = v86[5];
    v86[5] = v8;
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__4;
  v82 = __Block_byref_object_dispose__4;
  v83 = 0;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke_2;
  v71[3] = &unk_279DF4A40;
  v74 = v91;
  v75 = &v78;
  v39 = v4;
  v72 = v39;
  v76 = &v85;
  v77 = a1;
  v10 = v5;
  v73 = v10;
  [TypistKeyboardUtilities runOnMainThread:v71];
  v35 = v10;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v11 = [v79[5] allKeys];
  v19 = [v11 countByEnumeratingWithState:&v67 objects:v95 count:16];
  if (v19)
  {
    v38 = *v68;
    v20 = *MEMORY[0x277D76AA8];
    obj = v11;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v68 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v67 + 1) + 8 * i);
        TYLog(@"\n------------------------------------ PREPROCESSING Plane:%@", v12, v13, v14, v15, v16, v17, v18, v22);
        v61 = 0;
        v62 = &v61;
        v63 = 0x3032000000;
        v64 = __Block_byref_object_copy__4;
        v65 = __Block_byref_object_dispose__4;
        v66 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x3032000000;
        v58 = __Block_byref_object_copy__4;
        v59 = __Block_byref_object_dispose__4;
        v60 = 0;
        v49 = 0;
        v50 = &v49;
        v51 = 0x3032000000;
        v52 = __Block_byref_object_copy__4;
        v53 = __Block_byref_object_dispose__4;
        v54 = 0;
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke_3;
        v41[3] = &unk_279DF4A68;
        v43 = v93;
        v41[4] = v22;
        v44 = v91;
        v45 = &v61;
        v47 = &v49;
        v48 = a1;
        v46 = &v55;
        v23 = v39;
        v42 = v23;
        [TypistKeyboardUtilities runOnMainThread:v41];
        v24 = [a1 getKeyboardUISettings];
        v25 = [v24 objectForKeyedSubscript:v20];
        v26 = [v25 BOOLValue];

        if (v26)
        {
          v27 = [a1 addKeyboardGestureKeys:v23 keys:v62[5] inPlane:v22 addTo:v50[5]];
          v28 = v50[5];
          v50[5] = v27;
        }

        if ([v23 usePopupKeys])
        {
          v29 = [v23 addKeyboardPopupKeys:v62[5] inPlane:v22 addTo:v50[5] keyplaneKeycaps:v56[5]];
          v30 = v50[5];
          v50[5] = v29;
        }

        [v40 setObject:v50[5] forKey:v22];

        _Block_object_dispose(&v49, 8);
        _Block_object_dispose(&v55, 8);

        _Block_object_dispose(&v61, 8);
      }

      v11 = obj;
      v19 = [obj countByEnumeratingWithState:&v67 objects:v95 count:16];
    }

    while (v19);
  }

  [v35 setObject:v40 forKey:@"keyPlanes"];
  v31 = v73;
  v32 = v35;

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v85, 8);

  _Block_object_dispose(v91, 8);
  _Block_object_dispose(v93, 8);

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

uint64_t __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) _getCurrentKeyplaneName];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v39 = a1;
  [*(*(*(a1 + 48) + 8) + 40) performSelector:sel_keyboard];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v38 = v43 = 0u;
  v3 = [v38 subtrees];
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v40 + 1) + 8 * i) name];
        if ([v8 containsString:@"_"])
        {
          v9 = [v8 componentsSeparatedByString:@"_"];
          v10 = [v9 lastObject];
          v11 = [v10 lowercaseString];

          v8 = v11;
        }

        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v5);
  }

  v12 = [*(v39 + 32) generateKeyplaneSwitchTable:v2];
  v13 = *(*(v39 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [*(v39 + 32) isTenKey];
  v16 = *(v39 + 72);
  v17 = *(*(*(v39 + 56) + 8) + 40);
  v18 = *(*(*(v39 + 64) + 8) + 40);
  if (v15)
  {
    [v16 determineDefaultPlane10Key:v17 basePlaneName:v18];
  }

  else
  {
    [v16 determineDefaultPlane:v17 basePlaneName:v18];
  }
  v19 = ;
  [*(v39 + 40) setObject:v19 forKey:@"defaultPlaneName"];
  TYLog(@"#####  DEFAULT PLANE: %@", v20, v21, v22, v23, v24, v25, v26, v19);
  v27 = [*(v39 + 72) cleanUpSwitchTableBasedOnDefaultPlane:*(*(*(v39 + 56) + 8) + 40) defaultPlaneName:v19];
  v28 = *(*(v39 + 56) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  [*(v39 + 40) setObject:*(*(*(v39 + 56) + 8) + 40) forKey:@"planeSwitchTable"];
  TYLog(@"\nplaneSwitchTable = %@", v30, v31, v32, v33, v34, v35, v36, *(*(*(v39 + 56) + 8) + 40));

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(*(*(a1 + 56) + 8) + 40) keyplaneNamed:*(a1 + 32)];
  [v2 _changeToKeyplane:v3];

  v4 = [*(*(*(a1 + 56) + 8) + 40) keyplaneNamed:*(a1 + 32)];
  v5 = [v4 keys];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 88) updateCachedKeyplaneKeycaps:*(*(*(a1 + 64) + 8) + 40)];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 88) getKeyboardPlaneKeys:*(a1 + 40) keys:*(*(*(a1 + 64) + 8) + 40) inPlane:*(a1 + 32)];
  v12 = *(*(a1 + 80) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  return MEMORY[0x2821F96F8]();
}

+ (id)getTIPreferences
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F7B8];
  v5 = [v3 BOOLForPreferenceKey:*MEMORY[0x277D6F7B8]];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v2 setObject:v6 forKey:v4];

  v7 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v8 = *MEMORY[0x277D6F7C0];
  v9 = [v7 BOOLForPreferenceKey:*MEMORY[0x277D6F7C0]];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [v2 setObject:v10 forKey:v8];

  v11 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v12 = *MEMORY[0x277D6F820];
  v13 = [v11 BOOLForPreferenceKey:*MEMORY[0x277D6F820]];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [v2 setObject:v14 forKey:v12];

  v15 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v16 = *MEMORY[0x277D6F920];
  v17 = [v15 BOOLForPreferenceKey:*MEMORY[0x277D6F920]];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  [v2 setObject:v18 forKey:v16];

  v19 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v20 = *MEMORY[0x277D6F818];
  v21 = [v19 BOOLForPreferenceKey:*MEMORY[0x277D6F818]];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:v21];
  [v2 setObject:v22 forKey:v20];

  v23 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v24 = *MEMORY[0x277D6F928];
  v25 = [v23 BOOLForPreferenceKey:*MEMORY[0x277D6F928]];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:v25];
  [v2 setObject:v26 forKey:v24];

  v27 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v28 = *MEMORY[0x277D6F630];
  v29 = [v27 BOOLForPreferenceKey:*MEMORY[0x277D6F630]];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:v29];
  [v2 setObject:v30 forKey:v28];

  v31 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v32 = *MEMORY[0x277D6FA78];
  v33 = [v31 BOOLForPreferenceKey:*MEMORY[0x277D6FA78]];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:v33];
  [v2 setObject:v34 forKey:v32];

  v35 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v36 = *MEMORY[0x277D6FA88];
  v37 = [v35 BOOLForPreferenceKey:*MEMORY[0x277D6FA88]];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:v37];
  [v2 setObject:v38 forKey:v36];

  v39 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v40 = *MEMORY[0x277D6F7A0];
  v41 = [v39 BOOLForPreferenceKey:*MEMORY[0x277D6F7A0]];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:v41];
  [v2 setObject:v42 forKey:v40];

  v43 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v44 = *MEMORY[0x277D6FD08];
  v45 = [v43 BOOLForPreferenceKey:*MEMORY[0x277D6FD08]];

  v46 = [MEMORY[0x277CCABB0] numberWithBool:v45];
  [v2 setObject:v46 forKey:v44];

  v47 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v48 = *MEMORY[0x277D6FA80];
  v49 = [v47 BOOLForPreferenceKey:*MEMORY[0x277D6FA80]];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:v49];
  [v2 setObject:v50 forKey:v48];

  v51 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v52 = *MEMORY[0x277D6F640];
  v53 = [v51 valueForPreferenceKey:*MEMORY[0x277D6F640]];
  v54 = v53 != 0;

  v55 = [MEMORY[0x277CCABB0] numberWithBool:v54];
  [v2 setObject:v55 forKey:v52];

  v56 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v57 = *MEMORY[0x277D6FD18];
  v58 = [v56 valueForPreferenceKey:*MEMORY[0x277D6FD18]];
  v59 = [v58 intValue];

  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v59];
  [v2 setObject:v60 forKey:v57];

  v61 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v62 = *MEMORY[0x277D6FA70];
  v63 = [v61 valueForPreferenceKey:*MEMORY[0x277D6FA70]];
  v64 = [v63 intValue];

  v65 = [MEMORY[0x277CCABB0] numberWithInt:v64];
  [v2 setObject:v65 forKey:v62];

  return v2;
}

+ (id)getKeyboardUISettings
{
  v3 = objc_opt_new();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __52__TypistKeyboardDataInProcess_getKeyboardUISettings__block_invoke;
  v26[3] = &unk_279DF4710;
  v26[4] = &v27;
  [TypistKeyboardUtilities runOnMainThread:v26];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(v28 + 24)];
  [v3 setObject:v4 forKey:@"floatingKeyboard"];

  v5 = [MEMORY[0x277D75698] _showSmallDisplayKeyplane];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v3 setObject:v6 forKey:@"LowerCaseKeyboard"];

  v7 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v8 = [v7 preferencesActions];
  v9 = *MEMORY[0x277D76AA8];
  v10 = [v8 BOOLForPreferenceKey:*MEMORY[0x277D76AA8]];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  [v3 setObject:v11 forKey:v9];

  v12 = [MEMORY[0x277CEF368] sharedPreferences];
  v13 = [v12 dictationIsEnabled];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [v3 setObject:v14 forKey:@"dictation"];

  v15 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v16 = *MEMORY[0x277D6F7C8];
  v17 = [v15 valueForPreferenceKey:*MEMORY[0x277D6F7C8]];
  v18 = v17;
  v19 = @"Unknown";
  if (v17)
  {
    v19 = v17;
  }

  v20 = v19;

  [v3 setObject:v20 forKey:v16];
  v21 = [a1 shouldShowDictationKey];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:v21];
  [v3 setObject:v22 forKey:@"shouldShowDictationKey"];

  v23 = [a1 shouldShowGlobeKey];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v23];
  [v3 setObject:v24 forKey:@"shouldShowGlobeKey"];

  _Block_object_dispose(&v27, 8);

  return v3;
}

uint64_t __52__TypistKeyboardDataInProcess_getKeyboardUISettings__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)setTIPreferences:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAC0] dictionary];
  v6 = [a1 getTIPreferences];
  v7 = [v4 allKeys];
  v8 = v7;
  if (v7 && [v7 count])
  {
    v9 = *MEMORY[0x277D6F7B8];
    if ([v8 containsObject:*MEMORY[0x277D6F7B8]])
    {
      v10 = [v6 objectForKeyedSubscript:v9];
      v11 = [v10 BOOLValue];
      v12 = [v4 objectForKeyedSubscript:v9];
      [v12 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing AutoCapitalization Settings: Current=%d ChangeTo=%d", v13, v14, v15, v16, v17, v18, v11);

      v19 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v20 = [v4 objectForKeyedSubscript:v9];
      [v19 setValue:v20 forKey:9];
    }

    v21 = *MEMORY[0x277D6F7C0];
    if ([v8 containsObject:*MEMORY[0x277D6F7C0]])
    {
      v22 = [v6 objectForKeyedSubscript:v21];
      v23 = [v22 BOOLValue];
      v24 = [v4 objectForKeyedSubscript:v21];
      [v24 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing AutoCorrection Settings: Current=%d ChangeTo=%d", v25, v26, v27, v28, v29, v30, v23);

      v31 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v32 = [v4 objectForKeyedSubscript:v21];
      [v31 setValue:v32 forKey:8];
    }

    v33 = *MEMORY[0x277D6F820];
    if ([v8 containsObject:*MEMORY[0x277D6F820]])
    {
      v34 = [v6 objectForKeyedSubscript:v33];
      v35 = [v34 BOOLValue];
      v36 = [v4 objectForKeyedSubscript:v33];
      [v36 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing CheckSpelling Settings: Current=%d ChangeTo=%d", v37, v38, v39, v40, v41, v42, v35);

      v43 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v44 = [v4 objectForKeyedSubscript:v33];
      [v43 setValue:v44 forKey:10];
    }

    v45 = *MEMORY[0x277D6F920];
    if ([v8 containsObject:*MEMORY[0x277D6F920]])
    {
      v46 = [v6 objectForKeyedSubscript:v45];
      v47 = [v46 BOOLValue];
      v48 = [v4 objectForKeyedSubscript:v45];
      [v48 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing PeriodShortcut Settings: Current=%d ChangeTo=%d", v49, v50, v51, v52, v53, v54, v47);

      v55 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v56 = [v4 objectForKeyedSubscript:v45];
      [v55 setValue:v56 forKey:11];
    }

    v57 = *MEMORY[0x277D6F818];
    if ([v8 containsObject:*MEMORY[0x277D6F818]])
    {
      v58 = [v6 objectForKeyedSubscript:v57];
      v59 = [v58 BOOLValue];
      v60 = [v4 objectForKeyedSubscript:v57];
      [v60 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing CapsLock Settings: Current=%d ChangeTo=%d", v61, v62, v63, v64, v65, v66, v59);

      v67 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v68 = [v4 objectForKeyedSubscript:v57];
      [v67 setValue:v68 forKey:12];
    }

    v69 = *MEMORY[0x277D6F928];
    if ([v8 containsObject:*MEMORY[0x277D6F928]])
    {
      v70 = [v6 objectForKeyedSubscript:v69];
      v71 = [v70 BOOLValue];
      v72 = [v4 objectForKeyedSubscript:v69];
      [v72 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Predictive Settings: Current=%d ChangeTo=%d", v73, v74, v75, v76, v77, v78, v71);

      v79 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v80 = [v4 objectForKeyedSubscript:v69];
      [v79 setValue:v80 forKey:36];
    }

    v81 = *MEMORY[0x277D6F630];
    if ([v8 containsObject:*MEMORY[0x277D6F630]])
    {
      v82 = [v6 objectForKeyedSubscript:v81];
      v83 = [v82 BOOLValue];
      v84 = [v4 objectForKeyedSubscript:v81];
      [v84 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Fuzzy Settings: Current=%d ChangeTo=%d", v85, v86, v87, v88, v89, v90, v83);

      v91 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v92 = [v4 objectForKeyedSubscript:v81];
      [v91 setValue:v92 forPreferenceKey:v81];
    }

    v93 = *MEMORY[0x277D6FA78];
    if ([v8 containsObject:*MEMORY[0x277D6FA78]])
    {
      v94 = [v6 objectForKeyedSubscript:v93];
      v95 = [v94 BOOLValue];
      v96 = [v4 objectForKeyedSubscript:v93];
      [v96 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Smart Dashes Settings: Current=%d ChangeTo=%d", v97, v98, v99, v100, v101, v102, v95);

      v103 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v104 = [v4 objectForKeyedSubscript:v93];
      [v103 setValue:v104 forPreferenceKey:v93];
    }

    v105 = *MEMORY[0x277D6FA88];
    if ([v8 containsObject:*MEMORY[0x277D6FA88]])
    {
      v106 = [v6 objectForKeyedSubscript:v105];
      v107 = [v106 BOOLValue];
      v108 = [v4 objectForKeyedSubscript:v93];
      [v108 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Smart Quotes Settings: Current=%d ChangeTo=%d", v109, v110, v111, v112, v113, v114, v107);

      v115 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v116 = [v4 objectForKeyedSubscript:v105];
      [v115 setValue:v116 forPreferenceKey:v105];
    }

    v117 = *MEMORY[0x277D6F7A0];
    if ([v8 containsObject:*MEMORY[0x277D6F7A0]])
    {
      v118 = [v6 objectForKeyedSubscript:v117];
      v119 = [v118 BOOLValue];
      v120 = [v4 objectForKeyedSubscript:v117];
      [v120 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing KeyPaddle Settings: Current=%d ChangeTo=%d", v121, v122, v123, v124, v125, v126, v119);

      v127 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v128 = [v4 objectForKeyedSubscript:v117];
      [v127 setValue:v128 forKey:38];
    }

    v129 = *MEMORY[0x277D6FD08];
    if ([v8 containsObject:*MEMORY[0x277D6FD08]])
    {
      v130 = [v6 objectForKeyedSubscript:v129];
      v131 = [v130 BOOLValue];
      v132 = [v4 objectForKeyedSubscript:v129];
      [v132 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Typology Settings: Current=%d ChangeTo=%d", v133, v134, v135, v136, v137, v138, v131);

      v139 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v140 = [v4 objectForKeyedSubscript:v129];
      [v139 setValue:v140 forKey:53];
    }

    v141 = *MEMORY[0x277D6FA80];
    if ([v8 containsObject:*MEMORY[0x277D6FA80]])
    {
      v142 = [v6 objectForKeyedSubscript:v141];
      v143 = [v142 BOOLValue];
      v144 = [v4 objectForKeyedSubscript:v141];
      [v144 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Smart Full-width Settings: Current=%d ChangeTo=%d", v145, v146, v147, v148, v149, v150, v143);

      v151 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v152 = [v4 objectForKeyedSubscript:v141];
      [v151 setValue:v152 forPreferenceKey:v141];
    }

    v153 = *MEMORY[0x277D6F640];
    if ([v8 containsObject:*MEMORY[0x277D6F640]])
    {
      v154 = [v6 objectForKeyedSubscript:v153];
      v155 = [v154 BOOLValue];
      v156 = [v4 objectForKeyedSubscript:v153];
      [v156 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Use CapsLock as Roman Switch Settings: Current=%d ChangeTo=%d", v157, v158, v159, v160, v161, v162, v155);

      v163 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v164 = [v4 objectForKeyedSubscript:v153];
      [v163 setValue:v164 forPreferenceKey:v153];
    }

    v165 = *MEMORY[0x277D6FD18];
    if ([v8 containsObject:*MEMORY[0x277D6FD18]])
    {
      v166 = [v4 objectForKeyedSubscript:v165];
      v167 = [a1 getWubiEnumeration:v166];

      v168 = [v6 objectForKeyedSubscript:v165];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Wubi Standard Settings: Current=%i, ChangeTo=%i", v169, v170, v171, v172, v173, v174, v168);

      v175 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v176 = [MEMORY[0x277CCABB0] numberWithInt:v167];
      [v175 setValue:v176 forPreferenceKey:v165];
    }

    v177 = *MEMORY[0x277D6FA70];
    if ([v8 containsObject:*MEMORY[0x277D6FA70]])
    {
      v178 = [v4 objectForKeyedSubscript:v177];
      v179 = [a1 getShuangpinEnumeration:v178];

      v180 = [v6 objectForKeyedSubscript:v177];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Shaungpin Settings: Current=%i, ChangeTo=%i", v181, v182, v183, v184, v185, v186, v180);

      v187 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v188 = [MEMORY[0x277CCABB0] numberWithInt:v179];
      [v187 setValue:v188 forPreferenceKey:v177];
    }
  }

  v189 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v189 synchronizePreferences];

  [TypistKeyboardUtilities waitFor:0.5];
  v190 = [a1 getTIPreferences];

  return v190;
}

+ (id)setKeyboardUISettings:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [a1 getKeyboardUISettings];
  v7 = [v4 allKeys];
  v8 = v7;
  v9 = 0x277D75000;
  v10 = 0x279DF4000;
  if (!v7 || ![v7 count])
  {
    goto LABEL_22;
  }

  if ([v8 containsObject:@"floatingKeyboard"])
  {
    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 1)
    {
      v13 = [v4 objectForKeyedSubscript:@"floatingKeyboard"];
      v14 = [v13 BOOLValue];

      v15 = [v6 objectForKeyedSubscript:@"floatingKeyboard"];
      v16 = [v15 BOOLValue];

      if (v16)
      {
        v24 = @"Floating";
      }

      else
      {
        v24 = @"Not floating";
      }

      TYLog(@"Changing Floating Settings: Current=%@ ChangeTo=%@", v17, v18, v19, v20, v21, v22, v23, v24);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __53__TypistKeyboardDataInProcess_setKeyboardUISettings___block_invoke;
      v81[3] = &__block_descriptor_34_e5_v8__0l;
      v82 = v14;
      v9 = 0x277D75000;
      v83 = v16;
      [TypistKeyboardUtilities runOnMainThread:v81];
    }
  }

  v25 = *MEMORY[0x277D76AA8];
  if ([v8 containsObject:*MEMORY[0x277D76AA8]])
  {
    v26 = [MEMORY[0x277D75418] currentDevice];
    if ([v26 userInterfaceIdiom] != 1)
    {
LABEL_13:

      goto LABEL_14;
    }

    v27 = [v6 objectForKeyedSubscript:@"floatingKeyboard"];
    v28 = [v27 BOOLValue];

    v9 = 0x277D75000;
    if ((v28 & 1) == 0)
    {
      v29 = [v6 objectForKeyedSubscript:v25];
      v30 = [v29 BOOLValue];
      v31 = [v4 objectForKeyedSubscript:v25];
      [v31 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing GestureKey Settings: Current=%d ChangeTo=%d", v32, v33, v34, v35, v36, v37, v30);

      v26 = [MEMORY[0x277D756A0] sharedPreferencesController];
      v38 = [v26 preferencesActions];
      v39 = [v4 objectForKeyedSubscript:v25];
      [v38 setValue:v39 forPreferenceKey:v25];

      v9 = 0x277D75000;
      goto LABEL_13;
    }
  }

LABEL_14:
  if ([v8 containsObject:@"LowerCaseKeyboard"])
  {
    v40 = [v6 objectForKeyedSubscript:@"LowerCaseKeyboard"];
    v41 = [v40 BOOLValue];
    v42 = [v4 objectForKeyedSubscript:@"LowerCaseKeyboard"];
    v78 = v41;
    [v42 BOOLValue];
    v9 = 0x277D75000;
    TYLogl(OS_LOG_TYPE_INFO, @"Changing SmallDisplay Settings: Current=%d ChangeTo=%d", v43, v44, v45, v46, v47, v48, v78);

    v49 = [v4 objectForKeyedSubscript:@"LowerCaseKeyboard"];
    v50 = MEMORY[0x277CBED28];
    if (!v49)
    {
      v50 = MEMORY[0x277CBED10];
    }

    CFPreferencesSetAppValue(@"LowerCaseKeyboard", *v50, @"com.apple.Accessibility");
  }

  if ([v8 containsObject:@"dictation"])
  {
    v51 = [v6 objectForKeyedSubscript:@"dictation"];
    v52 = [v51 BOOLValue];
    v53 = [v4 objectForKeyedSubscript:@"dictation"];
    v79 = v52;
    [v53 BOOLValue];
    v9 = 0x277D75000;
    TYLogl(OS_LOG_TYPE_INFO, @"Changing Dictation Settings: Current=%d ChangeTo=%d", v54, v55, v56, v57, v58, v59, v79);

    v60 = [MEMORY[0x277CEF368] sharedPreferences];
    [v60 setSuppressDictationOptIn:1];

    v61 = [MEMORY[0x277CEF368] sharedPreferences];
    v62 = [v4 objectForKeyedSubscript:@"dictation"];
    [v61 setDictationIsEnabled:{objc_msgSend(v62, "BOOLValue")}];
  }

  v63 = *MEMORY[0x277D6F7C8];
  v10 = 0x279DF4000uLL;
  if ([v8 containsObject:*MEMORY[0x277D6F7C8]])
  {
    v64 = [v6 objectForKeyedSubscript:v63];
    v80 = [v4 objectForKeyedSubscript:v63];
    TYLogl(OS_LOG_TYPE_INFO, @"Changing Dictation Settings: Current=%@ ChangeTo=%@", v65, v66, v67, v68, v69, v70, v64);

    v9 = 0x277D75000uLL;
    v71 = [v4 objectForKeyedSubscript:v63];
    v72 = [a1 setOneHandedKeyboardHandBias:v71];
  }

LABEL_22:
  v73 = [*(v9 + 1696) sharedPreferencesController];
  v74 = [v73 preferencesActions];
  [v74 synchronizePreferences];

  v75 = [MEMORY[0x277CEF368] sharedPreferences];
  [v75 synchronize];

  [*(v10 + 560) waitFor:0.5];
  v76 = [a1 getKeyboardUISettings];

  return v76;
}

void __53__TypistKeyboardDataInProcess_setKeyboardUISettings___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D75678] supportsFloating] && *(a1 + 32) != *(a1 + 33))
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v6 localizedStringForKey:@"Dock and Merge" value:@"Dock and Merge" table:@"Localizable"];
    v3 = [v6 localizedStringForKey:@"Floating" value:@"Floating" table:@"Localizable"];
    v4 = [NSClassFromString(&cfstr_Uikeyboardspli.isa) performSelector:sel_sharedInstance];
    if (*(a1 + 32))
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    [v4 performSelector:sel_actionForItem_ withObject:v5];
  }
}

+ (id)setKeyboards:(id)a3
{
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:0];
  TYLog(@"Replacing keyboards with: %@", v5, v6, v7, v8, v9, v10, v11, v4);

  v12 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v13 = [v12 valueForKey:0];
  TYLog(@"Current Keyboards are\n%@", v14, v15, v16, v17, v18, v19, v20, v13);

  v21 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v21 setValue:v3 forKey:0];

  v22 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v22 setValue:MEMORY[0x277CBEC38] forKey:1];

  v23 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v23 synchronizePreferences];

  v24 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v25 = [v24 valueForKey:0];

  TYLog(@"New Keyboard is\n%@", v26, v27, v28, v29, v30, v31, v32, v25);

  return v25;
}

+ (id)addKeyboards:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v5 = [v4 valueForKey:0];
  v6 = [v5 mutableCopy];

  TYLog(@"Appending keyboards: %@\n to current list: %@", v7, v8, v9, v10, v11, v12, v13, v3);
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB18] array];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = v3;
  v15 = [v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v43 + 1) + 8 * i);
        v27 = [v6 containsObject:v19];
        v28 = @"Keyboard [%@] already exists. Skipping...";
        if ((v27 & 1) == 0)
        {
          [v6 addObject:v19];
          v28 = @"Added [%@] to list of keyboard IDs.";
        }

        TYLog(v28, v20, v21, v22, v23, v24, v25, v26, v19);
      }

      v16 = [v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v16);
  }

  v29 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v29 setValue:v6 forKey:0];

  v30 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v30 setValue:MEMORY[0x277CBEC38] forKey:1];

  v31 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v31 synchronizePreferences];

  v32 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v33 = [v32 valueForKey:0];

  TYLog(@"New Keyboards are:\n%@", v34, v35, v36, v37, v38, v39, v40, v33);
  v41 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)removeKeyboards:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a3;
  TYLog(@"Removing keyboard: %@", v4, v5, v6, v7, v8, v9, v10, v3);
  v11 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v12 = [v11 valueForKey:0];
  v13 = [v12 mutableCopy];

  TYLog(@"Current Keyboards are\n%@", v14, v15, v16, v17, v18, v19, v20, v13);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v21 = v3;
  v22 = [v21 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v57;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v56 + 1) + 8 * i);
        v34 = [v13 containsObject:v26];
        v35 = @"Unable to remove [%@] since the ID does not match any keyboard in the current set";
        if (v34)
        {
          if ([v13 count] == 1)
          {
            TYLog(@"[%@] cannot be removed, because it's the only keyboard enabled. Aborting...", v36, v37, v38, v39, v40, v41, v42, v26);
            goto LABEL_13;
          }

          [v13 removeObject:v26];
          v35 = @"Removed [%@] from the list of keyboards.";
        }

        TYLog(v35, v27, v28, v29, v30, v31, v32, v33, v26);
      }

      v23 = [v21 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v43 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v43 setValue:v13 forKey:0];

  v44 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v44 synchronizePreferences];

  v45 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v46 = [v45 valueForKey:0];

  TYLog(@"New Keyboards are\n%@", v47, v48, v49, v50, v51, v52, v53, v46);
  v54 = *MEMORY[0x277D85DE8];

  return v46;
}

+ (BOOL)switchToKeyboard:(id)a3
{
  v3 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__TypistKeyboardDataInProcess_switchToKeyboard___block_invoke;
  v16[3] = &unk_279DF4650;
  v4 = v3;
  v17 = v4;
  [TypistKeyboardUtilities runOnMainThread:v16];
  v5 = 10.0;
  while (1)
  {
    [TypistKeyboardUtilities waitFor:0.2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__TypistKeyboardDataInProcess_switchToKeyboard___block_invoke_2;
    v15[3] = &unk_279DF4710;
    v15[4] = &v18;
    [TypistKeyboardUtilities runOnMainThread:v15];
    v13 = [v19[5] isEqualToString:v4];
    if (v13)
    {
      break;
    }

    v5 = v5 + -0.2;
    if (v5 <= 0.0)
    {
      TYLogl(OS_LOG_TYPE_ERROR, @"Unable to switch to keyboard [%@] after %ld", v7, v8, v9, v10, v11, v12, v4);
      goto LABEL_6;
    }
  }

  TYLog(@"Switched keyboard to %@", v6, v7, v8, v9, v10, v11, v12, v4);
LABEL_6:

  _Block_object_dispose(&v18, 8);
  return v13;
}

void __48__TypistKeyboardDataInProcess_switchToKeyboard___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75680] keyboardInputModeWithIdentifier:*(a1 + 32)];
  v1 = [MEMORY[0x277D75678] sharedInstance];
  [v1 setKeyboardInputMode:v2 userInitiated:1];
}

void __48__TypistKeyboardDataInProcess_switchToKeyboard___block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x277D75678] sharedInstance];
  v2 = [v5 _getLocalizedInputMode];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __46__TypistKeyboardDataInProcess_dismissKeyboard__block_invoke()
{
  v0 = [MEMORY[0x277D75678] activeInstance];
  [v0 dismissKeyboard];
}

+ (BOOL)switchToPlane:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D75658] activeKeyboard];
  v5 = [MEMORY[0x277D75678] activeInstance];
  v6 = [v5 _layout];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__TypistKeyboardDataInProcess_switchToPlane___block_invoke;
  v11[3] = &unk_279DF4AB0;
  v12 = v4;
  v13 = v6;
  v14 = v3;
  v7 = v3;
  v8 = v6;
  v9 = v4;
  [TypistKeyboardUtilities runOnMainThread:v11];

  return 1;
}

void __45__TypistKeyboardDataInProcess_switchToPlane___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) keyplaneNamed:*(a1 + 48)];
  [v1 _changeToKeyplane:v2];
}

+ (id)getVisibleKeyplaneName
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__TypistKeyboardDataInProcess_getVisibleKeyplaneName__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __53__TypistKeyboardDataInProcess_getVisibleKeyplaneName__block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v6 _getCurrentKeyplaneName];
  v3 = [v2 lowercaseString];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)getKeyplaneDescription:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = objc_opt_new();
  v4 = [MEMORY[0x277D75678] activeInstance];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__4;
  v15[4] = __Block_byref_object_dispose__4;
  v16 = [v4 _layout];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__4;
  v13[4] = __Block_byref_object_dispose__4;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__TypistKeyboardDataInProcess_getKeyplaneDescription___block_invoke;
  v8[3] = &unk_279DF4AD8;
  v10 = v13;
  v11 = v15;
  v5 = v3;
  v9 = v5;
  v12 = &v17;
  [TypistKeyboardUtilities runOnMainThread:v8];
  v6 = v18[5];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);

  _Block_object_dispose(&v17, 8);

  return v6;
}

uint64_t __54__TypistKeyboardDataInProcess_getKeyplaneDescription___block_invoke(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) keyplaneNamed:a1[4]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1[5] + 8) + 40) name];
  [*(*(a1[7] + 8) + 40) setName:v5];

  [*(*(a1[7] + 8) + 40) setIsLetters:{objc_msgSend(*(*(a1[5] + 8) + 40), "isLetters")}];
  [*(*(a1[7] + 8) + 40) setIsAlphabeticPlane:{objc_msgSend(*(*(a1[5] + 8) + 40), "isAlphabeticPlane")}];
  [*(*(a1[7] + 8) + 40) setIsShiftKeyplane:{objc_msgSend(*(*(a1[5] + 8) + 40), "isShiftKeyplane")}];
  [*(*(a1[7] + 8) + 40) setUsesAutoShift:{objc_msgSend(*(*(a1[5] + 8) + 40), "usesAutoShift")}];
  v6 = [*(*(a1[6] + 8) + 40) ignoresShiftState];
  v7 = *(*(a1[7] + 8) + 40);

  return [v7 setIgnoresShiftState:v6];
}

+ (id)getAllCandidates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__TypistKeyboardDataInProcess_getAllCandidates__block_invoke;
  v5[3] = &unk_279DF4710;
  v5[4] = &v6;
  [TypistKeyboardUtilities runOnMainThread:v5];
  v2 = v7[5];
  if (!v2)
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__TypistKeyboardDataInProcess_getAllCandidates__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v5 _getAutocorrectionList];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)getVisibleCandidateList:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"typistCandidateBarTypeMecabra"])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__4;
    v13 = __Block_byref_object_dispose__4;
    v14 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__TypistKeyboardDataInProcess_getVisibleCandidateList___block_invoke;
    v8[3] = &unk_279DF4710;
    v8[4] = &v9;
    [TypistKeyboardUtilities runOnMainThread:v8];
    v5 = v10[5];
    if (!v5)
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    v6 = v5;
    _Block_object_dispose(&v9, 8);
  }

  else if ([v4 isEqual:@"typistCandidateBarTypeFavonious"])
  {
    v6 = [a1 getAllCandidates];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

void __55__TypistKeyboardDataInProcess_getVisibleCandidateList___block_invoke(uint64_t a1)
{
  v2 = [TypistKeyboardUtilities searchForViewInKeyboardWindow:@"TUICandidateView"];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 visibleCandidates];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

+ (CGPoint)getCandidateCenter:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3010000000;
  v18 = 0;
  v19 = 0;
  v17 = &unk_2701AD026;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__TypistKeyboardDataInProcess_getCandidateCenter___block_invoke;
  v10[3] = &unk_279DF4B00;
  v5 = v4;
  v12 = &v14;
  v13 = a1;
  v11 = v5;
  [TypistKeyboardUtilities runOnMainThread:v10];
  v6 = v15[4];
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);
  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

void __50__TypistKeyboardDataInProcess_getCandidateCenter___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v3 = *MEMORY[0x277CBF398];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v54;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v54 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v53 + 1) + 8 * i);
        NSClassFromString(&cfstr_Uiremotekeyboa.isa);
        if (objc_opt_isKindOfClass())
        {
          [v9 allSubViews];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v10 = v52 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v50;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v50 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v49 + 1) + 8 * j);
                NSClassFromString(&cfstr_Tuicandidatear.isa);
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  NSClassFromString(&cfstr_Uikeyboardcand.isa);
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }
                }

                v16 = [v15 superview];
                [v15 frame];
                [v16 convertRect:0 toView:?];
                v3 = v17;

                goto LABEL_21;
              }

              v12 = [v10 countByEnumeratingWithState:&v49 objects:v58 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_22:
  v44 = v4;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    while (2)
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v45 + 1) + 8 * k);
        NSClassFromString(&cfstr_Tuicandidatece.isa);
        if (objc_opt_isKindOfClass())
        {
          v24 = [v23 performSelector:sel_textLabel];
          v25 = [v24 text];
          if ([v25 isEqualToString:*(a1 + 32)])
          {
            v26 = [*(a1 + 48) isCandidateCellVisible:v23];

            if (v26)
            {
              v27 = +[TypistKeyboardUtilities getRootViewControllerViaScene];
              v28 = [v24 superview];
              [v24 frame];
              v30 = v29;
              v32 = v31;
              v34 = v33;
              v36 = v35;
              v37 = [v27 view];
              [v28 convertRect:v37 toView:{v30, v32, v34, v36}];

              UIRectGetCenter();
              v40 = *(*(a1 + 40) + 8);
              *(v40 + 32) = v38;
              *(v40 + 40) = v39;
              v41 = *(*(a1 + 40) + 8);
              v42 = *(v41 + 32);
              if (v42 >= v3 + -2.0)
              {
                v42 = v3 + -2.0;
              }

              *(v41 + 32) = v42;

              goto LABEL_39;
            }
          }

          else
          {
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_39:

  v43 = *MEMORY[0x277D85DE8];
}

+ (CGPoint)getCandidateCenterAtIndex:(int64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_2701AD026;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__TypistKeyboardDataInProcess_getCandidateCenterAtIndex___block_invoke;
  v7[3] = &unk_279DF4B28;
  v7[4] = &v8;
  v7[5] = a3;
  v7[6] = a1;
  [TypistKeyboardUtilities runOnMainThread:v7];
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

void __57__TypistKeyboardDataInProcess_getCandidateCenterAtIndex___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v1 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v1)
  {
    v2 = 0;
    v27 = *v33;
    do
    {
      v3 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v32 + 1) + 8 * v3);
        NSClassFromString(&cfstr_Uiremotekeyboa.isa);
        if (objc_opt_isKindOfClass())
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v5 = [v4 allSubViews];
          v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v6)
          {
            v7 = *v29;
            do
            {
              v8 = 0;
              do
              {
                if (*v29 != v7)
                {
                  objc_enumerationMutation(v5);
                }

                v9 = *(*(&v28 + 1) + 8 * v8);
                NSClassFromString(&cfstr_Uimorphinglabe.isa);
                if (objc_opt_isKindOfClass())
                {
                  if (*(a1 + 40) == v2)
                  {
                    v10 = +[TypistKeyboardUtilities getRootViewControllerViaScene];
                    v11 = [v9 superview];
                    [v9 frame];
                    v13 = v12;
                    v15 = v14;
                    v17 = v16;
                    v19 = v18;
                    v20 = [v10 view];
                    [v11 convertRect:v20 toView:{v13, v15, v17, v19}];
                    UIRectGetCenter();
                    v21 = *(*(a1 + 32) + 8);
                    *(v21 + 32) = v22;
                    *(v21 + 40) = v23;

                    goto LABEL_18;
                  }

                  ++v2;
                }

                ++v8;
              }

              while (v6 != v8);
              v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v6);
          }

LABEL_18:
        }

        ++v3;
      }

      while (v3 != v1);
      v1 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v1);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (CGRect)getCandidateBarRect
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4010000000;
  v14 = &unk_2701AD026;
  v15 = 0u;
  v16 = 0u;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__TypistKeyboardDataInProcess_getCandidateBarRect__block_invoke;
  v10[3] = &unk_279DF4710;
  v10[4] = &v11;
  [TypistKeyboardUtilities runOnMainThread:v10];
  v2 = v12[4];
  v3 = v12[5];
  v4 = v12[6];
  v5 = v12[7];
  _Block_object_dispose(&v11, 8);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

void __50__TypistKeyboardDataInProcess_getCandidateBarRect__block_invoke(uint64_t a1)
{
  v2 = [TypistKeyboardUtilities searchForViewInKeyboardWindow:@"TUICandidateView"];
  if (v2)
  {
    v11 = v2;
    [v2 frame];
    v4 = v3;
    [v11 frame];
    v6 = v5;
    [v11 frame];
    v8 = v7;
    [v11 frame];
    v2 = v11;
    v9 = *(*(a1 + 32) + 8);
    v9[4] = v4;
    v9[5] = v6;
    v9[6] = v8;
    v9[7] = v10;
  }
}

+ (__n128)getKeyboardScaleTransform
{
  result = *MEMORY[0x277D860B8];
  v1 = *(MEMORY[0x277D860B8] + 16);
  v2 = *(MEMORY[0x277D860B8] + 32);
  v3 = *(MEMORY[0x277D860B8] + 48);
  return result;
}

+ (BOOL)isExtendedCandidateViewMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__TypistKeyboardDataInProcess_isExtendedCandidateViewMode__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __58__TypistKeyboardDataInProcess_isExtendedCandidateViewMode__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v3 candidateList];
  *(*(*(a1 + 32) + 8) + 24) = [v2 isExtendedList];
}

+ (CGPoint)getExtendedCandidateViewToggleButtonCenter
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_2701AD026;
  v11 = *MEMORY[0x277CBF348];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__TypistKeyboardDataInProcess_getExtendedCandidateViewToggleButtonCenter__block_invoke;
  v6[3] = &unk_279DF4710;
  v6[4] = &v7;
  [TypistKeyboardUtilities runOnMainThread:v6];
  v2 = v8[4];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

void __73__TypistKeyboardDataInProcess_getExtendedCandidateViewToggleButtonCenter__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = v28 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    v19 = *v26;
    v20 = a1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v25 + 1) + 8 * i) allSubViews];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              NSClassFromString(&cfstr_Tuicandidatear.isa);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                NSClassFromString(&cfstr_Uikeyboardcand.isa);
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }

              v14 = [v13 superview];
              [v13 frame];
              [v14 convertRect:0 toView:?];
              UIRectGetCenter();
              v15 = *(*(v20 + 32) + 8);
              *(v15 + 32) = v16;
              *(v15 + 40) = v17;

              goto LABEL_19;
            }

            v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            v5 = v19;
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v4);
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
}

+ (BOOL)hasMarkedText
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__TypistKeyboardDataInProcess_hasMarkedText__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __44__TypistKeyboardDataInProcess_hasMarkedText__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75678] activeInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 hasMarkedText];
}

+ (id)markedText
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__TypistKeyboardDataInProcess_markedText__block_invoke;
  v5[3] = &unk_279DF4710;
  v5[4] = &v6;
  [TypistKeyboardUtilities runOnMainThread:v5];
  v2 = v7[5];
  if (!v2)
  {
    v2 = &stru_288014100;
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__TypistKeyboardDataInProcess_markedText__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v5 markedText];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (void)showCandidateAtIndex:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__TypistKeyboardDataInProcess_showCandidateAtIndex___block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = a3;
  [TypistKeyboardUtilities runOnMainThread:v3];
}

void __52__TypistKeyboardDataInProcess_showCandidateAtIndex___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v3 candidateList];
  [v2 showCandidateAtIndex:*(a1 + 32)];
}

+ (CGRect)findKeyBoundsInKeyboard:(id)a3
{
  v3 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x4010000000;
  v23 = &unk_2701AD026;
  v4 = *(MEMORY[0x277CBF398] + 16);
  v24 = *MEMORY[0x277CBF398];
  v25 = v4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__4;
  v18[4] = __Block_byref_object_dispose__4;
  v19 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__TypistKeyboardDataInProcess_findKeyBoundsInKeyboard___block_invoke;
  v14[3] = &unk_279DF4B50;
  v16 = v18;
  v5 = v3;
  v15 = v5;
  v17 = &v20;
  [TypistKeyboardUtilities runOnMainThread:v14];
  v6 = v21[4];
  v7 = v21[5];
  v8 = v21[6];
  v9 = v21[7];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

void __55__TypistKeyboardDataInProcess_findKeyBoundsInKeyboard___block_invoke(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75678] activeInstance];
  v3 = [v2 _layout];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(*(a1[5] + 8) + 40) performSelector:sel_keyboard];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v6 subtrees];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 firstCachedKeyWithName:a1[4]];

        if (v13)
        {
          v14 = [v12 firstCachedKeyWithName:a1[4]];
          [v14 frame];
          v15 = *(a1[6] + 8);
          v15[4] = v16;
          v15[5] = v17;
          v15[6] = v18;
          v15[7] = v19;

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [*(*(a1[5] + 8) + 40) convertRect:0 toView:{*(*(a1[6] + 8) + 32), *(*(a1[6] + 8) + 40), *(*(a1[6] + 8) + 48), *(*(a1[6] + 8) + 56)}];
  v20 = *(a1[6] + 8);
  v20[4] = v21;
  v20[5] = v22;
  v20[6] = v23;
  v20[7] = v24;

  v25 = *MEMORY[0x277D85DE8];
}

+ (id)generateKeyplaneSwitchTable:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v67 = objc_opt_new();
  v4 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v3;
  v12 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
  if (v12)
  {
    v13 = *v81;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v81 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v80 + 1) + 8 * i);
        TYLog(@"########  PLANE NAME: %@", v5, v6, v7, v8, v9, v10, v11, v15);
        if ([v15 hasSuffix:@"-split"])
        {
          TYLog(@"                      ===> IGNORED", v16, v17, v18, v19, v20, v21, v22, v65);
          continue;
        }

        v23 = objc_opt_new();
        v74 = 0;
        v75 = &v74;
        v76 = 0x3032000000;
        v77 = __Block_byref_object_copy__4;
        v78 = __Block_byref_object_dispose__4;
        v79 = 0;
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __59__TypistKeyboardDataInProcess_generateKeyplaneSwitchTable___block_invoke;
        v73[3] = &unk_279DF4B78;
        v73[4] = v15;
        v73[5] = &v74;
        [TypistKeyboardUtilities runOnMainThread:v73];
        v24 = [v75[5] isAlphabeticPlane];
        [v75[5] isShiftKeyplane];
        [v75[5] isShiftKeyPlaneChooser];
        [v75[5] isLetters];
        TYLog(@"          { isAlphabet:%d, isShift:%d, isShiftChooser:%d, isLetters:%d }", v25, v26, v27, v28, v29, v30, v31, v24);
        v32 = [v75[5] stringForProperty:@"shift-alternate"];
        v33 = [a1 getKeyboardUISettings];
        v34 = [v33 objectForKeyedSubscript:@"LowerCaseKeyboard"];
        if (([v34 BOOLValue] & 1) == 0)
        {

          goto LABEL_12;
        }

        v35 = [v75[5] stringForProperty:@"shift-alternate-small-display"];
        v36 = v35 == 0;

        if (!v36)
        {
          [v75[5] stringForProperty:@"shift-alternate-small-display"];
          v32 = v33 = v32;
LABEL_12:
        }

        if ([v32 length] && (objc_msgSend(v32, "isEqualToString:", v15) & 1) == 0)
        {
          [v23 setObject:@"⇧" forKey:v32];
          [v4 addObject:v32];
          TYLog(@"      --> Shift --> %@", v37, v38, v39, v40, v41, v42, v43, v32);
        }

        v44 = [v75[5] stringForProperty:@"more-alternate"];

        v45 = [a1 getKeyboardUISettings];
        v46 = [v45 objectForKeyedSubscript:@"LowerCaseKeyboard"];
        if (([v46 BOOLValue] & 1) == 0)
        {

          goto LABEL_20;
        }

        v47 = [v75[5] stringForProperty:@"more-alternate-small-display"];
        v48 = v47 == 0;

        if (!v48)
        {
          [v75[5] stringForProperty:@"more-alternate-small-display"];
          v44 = v45 = v44;
LABEL_20:
        }

        if ([v44 length])
        {
          [v23 setObject:@"🔤" forKey:v44];
          [v4 addObject:v44];
          TYLog(@"      --> More  --> %@", v49, v50, v51, v52, v53, v54, v55, v44);
        }

        if ([v23 count])
        {
          if (![v75[5] isLetters] || (v56 = objc_msgSend(v75[5], "isShiftKeyplane"), v57 = @"YES", v56))
          {
            v57 = @"NO";
          }

          [v23 setObject:v57 forKey:@"maybeDefaultPlane"];
          [v67 setObject:v23 forKey:v15];
        }

        _Block_object_dispose(&v74, 8);
      }

      v12 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
    }

    while (v12);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v58 = [v67 allKeys];
  v59 = [v58 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v59)
  {
    v60 = *v70;
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v70 != v60)
        {
          objc_enumerationMutation(v58);
        }

        v62 = *(*(&v69 + 1) + 8 * j);
        if (([v4 containsObject:v62] & 1) == 0)
        {
          [v67 removeObjectForKey:v62];
        }
      }

      v59 = [v58 countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v59);
  }

  v63 = *MEMORY[0x277D85DE8];

  return v67;
}

void __59__TypistKeyboardDataInProcess_generateKeyplaneSwitchTable___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v6 _layout];
  v3 = [v2 keyplaneNamed:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)generateKeyplaneSwitchTableFor10Key:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v53 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v4)
  {
    v12 = v4;
    v13 = *v64;
    v52 = *v64;
    do
    {
      v14 = 0;
      v54 = v12;
      do
      {
        if (*v64 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v63 + 1) + 8 * v14);
        TYLog(@"########  PLANE NAME: %@", v5, v6, v7, v8, v9, v10, v11, v15);
        if ([v15 hasSuffix:@"-split"])
        {
          TYLog(@"                      ===> IGNORED", v16, v17, v18, v19, v20, v21, v22, v51);
        }

        else
        {
          v58 = v14;
          v23 = objc_opt_new();
          v24 = [MEMORY[0x277D75678] activeInstance];
          v25 = [v24 _layout];
          v26 = [v25 keyplaneNamed:v15];

          v27 = [v26 stringForProperty:@"shift-alternate"];
          if ([v27 length])
          {
            [v23 setObject:@"⇧" forKey:v27];
            TYLog(@"      --> Shift --> %@", v28, v29, v30, v31, v32, v33, v34, v27);
          }

          v56 = v27;
          v57 = v26;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v35 = [v26 keys];
          v36 = [v35 countByEnumeratingWithState:&v59 objects:v67 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v60;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v60 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = [*(*(&v59 + 1) + 8 * i) representedString];
                v41 = [v40 lowercaseString];

                if ([v41 hasSuffix:@"-plane"] && (objc_msgSend(v41, "isEqualToString:", v15) & 1) == 0)
                {
                  [v23 setObject:v41 forKey:v41];
                  TYLog(@"      --> Switch --> %@", v42, v43, v44, v45, v46, v47, v48, v41);
                }
              }

              v37 = [v35 countByEnumeratingWithState:&v59 objects:v67 count:16];
            }

            while (v37);
          }

          [v53 setObject:v23 forKey:v15];
          v12 = v54;
          v13 = v52;
          v14 = v58;
        }

        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v12);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v53;
}

+ (id)determineDefaultPlane:(id)a3 basePlaneName:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v43 = a4;
  v48 = [MEMORY[0x277CBEB58] set];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [v5 allKeys];
  v49 = v5;
  v46 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v46)
  {
    v45 = *v61;
    v6 = @"🔤";
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v61 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v60 + 1) + 8 * i);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v9 = [v5 objectForKeyedSubscript:v8];
        v10 = [v9 allKeys];

        v51 = v10;
        v11 = [v10 countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v11)
        {
          v12 = v11;
          v47 = i;
          v13 = 0;
          v14 = *v57;
          do
          {
            v15 = 0;
            v50 = v12;
            do
            {
              v16 = v13;
              if (*v57 != v14)
              {
                objc_enumerationMutation(v51);
              }

              v13 = *(*(&v56 + 1) + 8 * v15);

              v17 = [v5 objectForKeyedSubscript:v8];
              v18 = [v17 objectForKeyedSubscript:v13];
              if ([v18 isEqualToString:v6])
              {
                [v5 objectForKeyedSubscript:v13];
                v19 = v14;
                v20 = v8;
                v22 = v21 = v6;
                v23 = [v22 objectForKeyedSubscript:@"maybeDefaultPlane"];
                v24 = [v23 isEqualToString:@"YES"];

                v5 = v49;
                v6 = v21;
                v8 = v20;
                v14 = v19;
                v12 = v50;

                if (v24)
                {
                  [v48 addObject:v13];
                }
              }

              else
              {
              }

              ++v15;
            }

            while (v12 != v15);
            v12 = [v51 countByEnumeratingWithState:&v56 objects:v65 count:16];
          }

          while (v12);

          i = v47;
        }
      }

      v46 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v46);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v25 = v48;
  v26 = [v25 countByEnumeratingWithState:&v52 objects:v64 count:16];
  v27 = v43;
  if (v26)
  {
    v28 = v26;
    v29 = 0;
    v30 = *v53;
    while (2)
    {
      v31 = 0;
      v32 = v29;
      do
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v52 + 1) + 8 * v31);

        if ([v27 isEqualToString:v29])
        {
LABEL_35:
          v40 = v29;

          goto LABEL_36;
        }

        v33 = [v5 objectForKeyedSubscript:v29];
        v34 = [v33 objectForKeyedSubscript:v27];
        if (v34)
        {
          v35 = v34;
          v36 = [v5 objectForKeyedSubscript:v29];
          v37 = [v36 objectForKeyedSubscript:v27];
          v38 = [v37 isEqualToString:@"⇧"];

          v27 = v43;
          v5 = v49;

          if (v38)
          {
            goto LABEL_35;
          }
        }

        else
        {
        }

        ++v31;
        v32 = v29;
      }

      while (v28 != v31);
      v28 = [v25 countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  if ([v25 count])
  {
    v39 = [v25 allObjects];
    v40 = [v39 objectAtIndex:0];
  }

  else
  {
    v40 = v27;
  }

LABEL_36:

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)determineDefaultPlane10Key:(id)a3 basePlaneName:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  v6 = [MEMORY[0x277D75678] activeInstance];
  v7 = [v6 _layout];
  v8 = [v7 performSelector:sel_keyboard];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = v8;
  v9 = [v8 subtrees];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v28;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v28 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = [*(*(&v27 + 1) + 8 * v14) name];

      if ([v15 containsString:@"_"])
      {
        v16 = [v15 componentsSeparatedByString:@"_"];
        v17 = [v16 lastObject];
        v12 = [v17 lowercaseString];
      }

      else
      {
        v12 = v15;
      }

      v18 = [v5 allKeys];
      v19 = [v18 containsObject:v12];

      if (v19)
      {
        break;
      }

      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if ([v12 length])
  {
    v20 = v12;
    v21 = v26;
  }

  else
  {
    v21 = v26;
    v20 = [a1 determineDefaultPlane:v5 basePlaneName:v26];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)cleanUpSwitchTableBasedOnDefaultPlane:(id)a3 defaultPlaneName:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v37 = v6;
  v8 = [v5 objectForKeyedSubscript:v6];
  v9 = [v8 allKeys];

  obj = v9;
  v40 = [v9 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v40)
  {
    v39 = *v63;
    do
    {
      v10 = 0;
      do
      {
        if (*v63 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v10;
        v11 = *(*(&v62 + 1) + 8 * v10);
        [v7 addObject:v11];
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v12 = [v5 objectForKeyedSubscript:v11];
        v13 = [v12 allKeys];

        v42 = v13;
        v44 = [v13 countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v44)
        {
          v43 = *v59;
          do
          {
            v14 = 0;
            do
            {
              if (*v59 != v43)
              {
                objc_enumerationMutation(v42);
              }

              v45 = v14;
              v15 = *(*(&v58 + 1) + 8 * v14);
              [v7 addObject:v15];
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v16 = [v5 objectForKeyedSubscript:v15];
              v17 = [v16 allKeys];

              v18 = [v17 countByEnumeratingWithState:&v54 objects:v68 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v55;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v55 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v54 + 1) + 8 * i);
                    [v7 addObject:v22];
                    v52 = 0u;
                    v53 = 0u;
                    v50 = 0u;
                    v51 = 0u;
                    v23 = [v5 objectForKeyedSubscript:v22];
                    v24 = [v23 allKeys];

                    v25 = [v24 countByEnumeratingWithState:&v50 objects:v67 count:16];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *v51;
                      do
                      {
                        for (j = 0; j != v26; ++j)
                        {
                          if (*v51 != v27)
                          {
                            objc_enumerationMutation(v24);
                          }

                          [v7 addObject:*(*(&v50 + 1) + 8 * j)];
                        }

                        v26 = [v24 countByEnumeratingWithState:&v50 objects:v67 count:16];
                      }

                      while (v26);
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v54 objects:v68 count:16];
                }

                while (v19);
              }

              v14 = v45 + 1;
            }

            while (v45 + 1 != v44);
            v44 = [v42 countByEnumeratingWithState:&v58 objects:v69 count:16];
          }

          while (v44);
        }

        v10 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v40);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = [v5 allKeys];
  v30 = [v29 countByEnumeratingWithState:&v46 objects:v66 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v46 + 1) + 8 * k);
        if (([v7 containsObject:v34] & 1) == 0)
        {
          [v5 removeObjectForKey:v34];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v46 objects:v66 count:16];
    }

    while (v31);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)getKeyboardPlaneKeys:(id)a3 keys:(id)a4 inPlane:(id)a5
{
  v124[13] = *MEMORY[0x277D85DE8];
  v106 = a3;
  v102 = a4;
  v93 = a5;
  v89 = [MEMORY[0x277D75678] activeInstance];
  v90 = [v106 shouldShowDictationKey];
  v88 = [v106 shouldShowGlobeKey];
  v7 = [v89 _layout];
  v8 = [v7 globeKeyDisplaysAsEmojiKey];

  v9 = [v89 _layout];
  v10 = [v9 showsDedicatedEmojiKeyAlongsideGlobeButton];

  v86 = [v89 keyplaneView];
  v85 = [v86 factory];
  [v85 dynamicInsets];
  v97 = v12;
  v98 = v11;
  v91 = v14;
  v92 = v13;
  v15 = objc_opt_new();
  if ([v102 count])
  {
    v16 = 0;
    v87 = v8 ^ 1 | v10;
    v94 = *(MEMORY[0x277CBF348] + 8);
    v95 = *MEMORY[0x277CBF348];
    while (1)
    {
      v101 = v16;
      v107 = [v102 objectAtIndexedSubscript:?];
      v17 = [v107 name];
      v18 = [v106 changeKeyNameToGenericCharacter:v17];

      v19 = [v107 name];
      v20 = [v19 lowercaseString];
      if ([v20 hasPrefix:@"copy-"])
      {
        goto LABEL_6;
      }

      v21 = [v107 name];
      v22 = [v21 lowercaseString];
      if ([v22 hasPrefix:@"cut-"])
      {
        break;
      }

      v25 = [v107 name];
      v26 = [v25 lowercaseString];
      v27 = [v26 hasPrefix:@"paste-"];

      if (v27)
      {
        goto LABEL_7;
      }

      v23 = v18;
      if (v18)
      {
LABEL_9:
        v103 = v93;
        v104 = v23;
        if (([(__CFString *)v23 isEqualToString:@"Dictation"]& 1) != 0)
        {
          v24 = v90;
        }

        else if ([(__CFString *)v23 isEqualToString:@"🌐"])
        {
          if ((v87 & 1) == 0)
          {

            v104 = @"Emoji";
          }

          v24 = v88;
        }

        else
        {
          v24 = [v107 visible];
        }

        [v107 frame];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        UIRectGetCenter();
        [a1 centerOfKey:? withOffset:?];
        v41 = v40;
        v43 = v42;
        UIRectGetCenter();
        [a1 centerOfKey:? withOffset:?];
        v45 = v44;
        v47 = v46;
        v105 = [v106 convertRepresentedStringsIfNecessary:v104];
        v124[0] = v105;
        v123[0] = @"key";
        v123[1] = @"keyname";
        v100 = [v107 name];
        v124[1] = v100;
        v124[2] = @"tap";
        v123[2] = @"action";
        v123[3] = @"x";
        v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v41];
        v124[3] = v99;
        v123[4] = @"y";
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v43];
        v124[4] = v48;
        v123[5] = @"rect";
        v49 = [MEMORY[0x277CCAE60] valueWithCGRect:{v33, v35, v37, v39}];
        v124[5] = v49;
        v124[6] = v103;
        v123[6] = @"plane";
        v123[7] = @"more-after";
        v50 = [v107 cache];
        v51 = [v50 objectForKey:@"more-after"];
        v52 = v51;
        v53 = &unk_2880299D0;
        if (v51)
        {
          v53 = v51;
        }

        v124[7] = v53;
        v124[8] = @"basekey";
        v123[8] = @"type";
        v123[9] = @"visible";
        v54 = MEMORY[0x277CBEC28];
        if (v24)
        {
          v54 = MEMORY[0x277CBEC38];
        }

        v124[9] = v54;
        v123[10] = @"secondaryDisplayString";
        v55 = [v107 secondaryDisplayStrings];
        v56 = v55;
        v57 = &stru_288014100;
        if (v55)
        {
          v57 = v55;
        }

        v124[10] = v57;
        v123[11] = @"edgeInsets";
        v58 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v98, v97, v92, v91}];
        v124[11] = v58;
        v123[12] = @"centerOfGlyph";
        v59 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v45, v47}];
        v124[12] = v59;
        v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:13];

        [v15 setValue:v60 forKey:v105];
        v117 = 0;
        v118 = &v117;
        v119 = 0x2020000000;
        v120 = 0;
        v116[0] = MEMORY[0x277D85DD0];
        v116[1] = 3221225472;
        v116[2] = __65__TypistKeyboardDataInProcess_getKeyboardPlaneKeys_keys_inPlane___block_invoke;
        v116[3] = &unk_279DF4710;
        v116[4] = &v117;
        [TypistKeyboardUtilities runOnMainThread:v116];
        v61 = [MEMORY[0x277D75418] currentDevice];
        if ([v61 userInterfaceIdiom] == 1)
        {
          v62 = [MEMORY[0x277D75418] currentDevice];
          if ([v62 userInterfaceIdiom] == 1)
          {
            v63 = *(v118 + 24);

            if ((v63 & 1) == 0)
            {
              goto LABEL_42;
            }

LABEL_32:
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v61 = [v107 secondaryDisplayStrings];
            v64 = [v61 countByEnumeratingWithState:&v112 objects:v122 count:16];
            if (v64)
            {
              v65 = *v113;
              do
              {
                for (i = 0; i != v64; ++i)
                {
                  if (*v113 != v65)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v67 = [@"⊎" stringByAppendingString:*(*(&v112 + 1) + 8 * i)];
                  [v15 setValue:v60 forKey:v67];
                }

                v64 = [v61 countByEnumeratingWithState:&v112 objects:v122 count:16];
              }

              while (v64);
            }
          }

          else
          {
          }

LABEL_42:
          if ([v106 isTenKey])
          {
            [v106 setupTenKey:v15 forKey:v107 keyName:v105 planeName:v103];
          }

          else if (([v106 isTenKey] & 1) == 0 && objc_msgSend(v106, "isKanaKeyboard"))
          {
            v68 = [MEMORY[0x277D75418] currentDevice];
            if ([v68 userInterfaceIdiom] == 1)
            {
              v69 = *(v118 + 24);

              if ((v69 & 1) == 0)
              {
                [v106 setup50OnFlick:v15 forKey:v107 keyName:v105 planeName:v103];
              }
            }

            else
            {
            }
          }

          _Block_object_dispose(&v117, 8);

          goto LABEL_51;
        }

        goto LABEL_32;
      }

      if (![v93 isEqual:@"second-alternate"] || (objc_msgSend(v107, "secondaryRepresentedStrings"), v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 == 0, v28, v29))
      {
        v23 = [v107 representedString];
      }

      else
      {
        v30 = [v107 secondaryRepresentedStrings];
        v31 = [v30 objectAtIndexedSubscript:0];

        v23 = v31;
      }

LABEL_8:
      if (v23)
      {
        goto LABEL_9;
      }

LABEL_51:

      v70 = [v102 count];
      v16 = v101 + 1;
      if (v70 <= v101 + 1)
      {
        goto LABEL_54;
      }
    }

LABEL_6:
LABEL_7:
    v23 = [v107 name];

    goto LABEL_8;
  }

LABEL_54:
  v71 = objc_opt_new();
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v72 = v15;
  v73 = [v72 countByEnumeratingWithState:&v108 objects:v121 count:16];
  if (v73)
  {
    v74 = *v109;
    do
    {
      for (j = 0; j != v73; ++j)
      {
        if (*v109 != v74)
        {
          objc_enumerationMutation(v72);
        }

        [v71 appendFormat:@"[%@]", *(*(&v108 + 1) + 8 * j)];
      }

      v73 = [v72 countByEnumeratingWithState:&v108 objects:v121 count:16];
    }

    while (v73);
  }

  TYLog(@"Plane: %@, Keys -> %@", v76, v77, v78, v79, v80, v81, v82, v93);
  v83 = *MEMORY[0x277D85DE8];

  return v72;
}

uint64_t __65__TypistKeyboardDataInProcess_getKeyboardPlaneKeys_keys_inPlane___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)updateCachedKeyplaneKeycaps:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 displayString];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 interactionType];

          if (v14 != 10)
          {
            v15 = [MEMORY[0x277D75698] _showSmallDisplayKeyplane];
            v16 = [v11 displayString];
            v17 = v16;
            if ((v15 & 1) == 0)
            {
              v18 = [v16 uppercaseStringWithLocale:v5];

              v17 = v18;
            }

            [v4 addObject:v17];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (CGPoint)centerOfKey:(CGPoint)a3 withOffset:(CGPoint)a4
{
  v4 = a3.x + a4.x;
  v5 = a3.y + a4.y;
  v6 = [MEMORY[0x277D75678] activeInstance];
  v7 = [v6 _layout];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v22 = 0;
  v23 = 0;
  v21 = &unk_2701AD026;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__TypistKeyboardDataInProcess_centerOfKey_withOffset___block_invoke;
  v13[3] = &unk_279DF4BA0;
  v15 = &v18;
  v8 = v7;
  v14 = v8;
  v16 = v4;
  v17 = v5;
  [TypistKeyboardUtilities runOnMainThread:v13];
  v9 = v19[4];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  v11 = v9;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

void __54__TypistKeyboardDataInProcess_centerOfKey_withOffset___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) layer];
  [v5 convertPoint:0 toLayer:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
}

+ (id)addKeyboardGestureKeys:(id)a3 keys:(id)a4 inPlane:(id)a5 addTo:(id)a6
{
  v122[1] = *MEMORY[0x277D85DE8];
  v102 = a3;
  v9 = a4;
  v10 = a5;
  v101 = a6;
  v92 = v9;
  v94 = v10;
  if (!v9 || !v10)
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"[addKeyboardGestureKeys] - FAILURE - keys or planeName is missing!", v11, v12, v13, v14, v15, v16, v88);
    goto LABEL_53;
  }

  v91 = [MEMORY[0x277D75678] activeInstance];
  v90 = [v91 keyplaneView];
  v89 = [v90 factory];
  [v89 dynamicInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v117 = 0;
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __73__TypistKeyboardDataInProcess_addKeyboardGestureKeys_keys_inPlane_addTo___block_invoke;
  v113[3] = &unk_279DF4710;
  v113[4] = &v114;
  [TypistKeyboardUtilities runOnMainThread:v113];
  v93 = 0;
LABEL_4:
  if ([v92 count] > v93)
  {
    v97 = [v92 objectAtIndexedSubscript:?];
    v25 = [v97 name];
    v103 = [v102 changeKeyNameToGenericCharacter:v25];

    if (!v103)
    {
      if (![v94 isEqual:@"second-alternate"] || (objc_msgSend(v97, "secondaryRepresentedStrings"), v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
      {
        v103 = [v97 representedString];
      }

      else
      {
        v28 = [v97 secondaryRepresentedStrings];
        v103 = [v28 objectAtIndexedSubscript:0];
      }
    }

    v29 = [v97 secondaryRepresentedStrings];
    if ([v29 count])
    {
      if ([v97 displayTypeHint] == 10)
      {

LABEL_13:
        v30 = [v97 secondaryRepresentedStrings];
LABEL_23:
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        obj = v30;
        v36 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
        if (!v36)
        {
          goto LABEL_39;
        }

        v99 = 0;
        v95 = *v110;
        while (1)
        {
          v96 = v36;
          for (i = 0; i != v96; ++i)
          {
            if (*v110 != v95)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v109 + 1) + 8 * i);
            v39 = [obj count];
            if (v39 == 1)
            {
              v104 = @"↓";
              v100 = @"flick-down";
LABEL_35:
              v48 = [v101 objectForKey:v103];
              v49 = [v48 objectForKeyedSubscript:@"x"];
              [v49 floatValue];
              v51 = v50;
              v52 = [v101 objectForKey:v103];
              v53 = [v52 objectForKeyedSubscript:@"y"];
              [v53 floatValue];
              v55 = v54;

              LODWORD(v56) = 1118175232;
              [v102 calculateCoordinatesForFlickGesture:v104 direction:v51 offset:{v55, v56}];
              v58 = v57;
              v60 = v59;
              v119[0] = @"key";
              v61 = [v102 convertRepresentedStringsIfNecessary:v38];
              v120[0] = v61;
              v119[1] = @"keyname";
              v62 = [v97 name];
              v120[1] = v62;
              v120[2] = v103;
              v119[2] = @"basekey";
              v119[3] = @"action";
              v120[3] = v100;
              v119[4] = @"x";
              v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v58];
              v120[4] = v63;
              v119[5] = @"y";
              v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v60];
              v120[5] = v64;
              v119[6] = @"rect";
              v65 = MEMORY[0x277CCAE60];
              [v97 frame];
              v66 = [v65 valueWithCGRect:?];
              v120[6] = v66;
              v120[7] = v94;
              v119[7] = @"plane";
              v119[8] = @"type";
              v120[8] = @"gesture";
              v119[9] = @"edgeInsets";
              v67 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v18, v20, v22, v24}];
              v120[9] = v67;
              v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:10];
              v69 = [v102 convertRepresentedStringsIfNecessary:v38];
              v70 = [(__CFString *)v104 stringByAppendingString:v69];
              [v101 setValue:v68 forKey:v70];

              ++v99;
              continue;
            }

            if (v39 == 2)
            {
              v46 = @"↙";
              if (v99)
              {
                v47 = @"flick-down-left";
              }

              else
              {
                v46 = @"↘";
                v47 = @"flick-down-right";
              }

              v104 = v46;
              v100 = v47;
              goto LABEL_35;
            }

            TYLogl(OS_LOG_TYPE_ERROR, @"Too many secondaryRepresentedStrings on key '%@'. Unable to determine gesture direction.", v40, v41, v42, v43, v44, v45, v103);
          }

          v36 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
          if (!v36)
          {
LABEL_39:

            ++v93;
            goto LABEL_4;
          }
        }
      }

      if ([v97 displayType] == 7)
      {
        v31 = [MEMORY[0x277D75418] currentDevice];
        if ([v31 userInterfaceIdiom] == 1)
        {
          v32 = *(v115 + 24);

          if ((v32 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_20:
          v33 = [v97 gestureKey];

          if (v33)
          {
            v34 = [v97 gestureKey];
            v35 = [v34 representedString];
            v122[0] = v35;
            v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:1];
          }

          else
          {
            v30 = 0;
          }

          goto LABEL_23;
        }
      }
    }

    goto LABEL_20;
  }

  v71 = objc_opt_new();
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v72 = v101;
  v73 = [v72 countByEnumeratingWithState:&v105 objects:v118 count:16];
  if (v73)
  {
    v74 = *v106;
    do
    {
      for (j = 0; j != v73; ++j)
      {
        if (*v106 != v74)
        {
          objc_enumerationMutation(v72);
        }

        v76 = *(*(&v105 + 1) + 8 * j);
        if (([v76 hasPrefix:@"↓"] & 1) != 0 || (objc_msgSend(v76, "hasPrefix:", @"↘") & 1) != 0 || objc_msgSend(v76, "hasPrefix:", @"flick-down-left"))
        {
          v77 = [v72 objectForKeyedSubscript:v76];
          v78 = [v77 objectForKeyedSubscript:@"basekey"];
          [v71 appendFormat:@"[%@{%@}]", v76, v78];
        }
      }

      v73 = [v72 countByEnumeratingWithState:&v105 objects:v118 count:16];
    }

    while (v73);
  }

  TYLog(@"Plane: %@, Gesture keys -> %@", v79, v80, v81, v82, v83, v84, v85, v94);
  _Block_object_dispose(&v114, 8);

LABEL_53:
  v86 = *MEMORY[0x277D85DE8];

  return v101;
}

uint64_t __73__TypistKeyboardDataInProcess_addKeyboardGestureKeys_keys_inPlane_addTo___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)addKeyboardPopupKeys:(id)a3 keys:(id)a4 inPlane:(id)a5 addTo:(id)a6 keyplaneKeycaps:(id)a7
{
  v132 = *MEMORY[0x277D85DE8];
  v89 = a3;
  v11 = a4;
  v12 = a5;
  v95 = a6;
  v85 = a7;
  v81 = [MEMORY[0x277D75678] activeInstance];
  v80 = [v81 keyplaneView];
  v79 = [v80 factory];
  [v79 dynamicInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v81 _layout];
  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = __Block_byref_object_copy__4;
  v125 = __Block_byref_object_dispose__4;
  v126 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v120 = 0;
  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __87__TypistKeyboardDataInProcess_addKeyboardPopupKeys_keys_inPlane_addTo_keyplaneKeycaps___block_invoke;
  v112[3] = &unk_279DF4BC8;
  v115 = &v121;
  v84 = v21;
  v113 = v84;
  v91 = v12;
  v114 = v91;
  v116 = &v117;
  [TypistKeyboardUtilities runOnMainThread:v112];
  v22 = [MEMORY[0x277D759A0] mainScreen];
  [v22 _referenceBounds];
  if (CGRectGetHeight(v134) <= 1194.0)
  {
    v82 = 0;
  }

  else
  {
    v82 = *(v118 + 24) ^ 1;
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v11;
  v87 = [obj countByEnumeratingWithState:&v108 objects:v131 count:16];
  if (v87)
  {
    v86 = *v109;
    v23 = *MEMORY[0x277CBF348];
    v24 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v109 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v94 = *(*(&v108 + 1) + 8 * i);
        v98 = [v94 representedString];
        v90 = [MEMORY[0x277CCAB68] string];
        if (![v98 length])
        {
          goto LABEL_37;
        }

        if ([v94 displayType] == 7)
        {
          v25 = [v94 secondaryRepresentedStrings];
          if (![v25 count])
          {
            goto LABEL_14;
          }

          v26 = [v122[5] isShiftKeyplane];

          if (v26)
          {
            v25 = [v94 secondaryRepresentedStrings];
            v27 = [v25 firstObject];

            v98 = v27;
LABEL_14:
          }
        }

        if ([a1 generatePopupKeySubtrees:v89 key:v94 plane:v122[5] layout:v84 keyplaneKeycaps:v85])
        {
          v28 = [v95 objectForKeyedSubscript:v98];
          v29 = v28 == 0;

          if (!v29)
          {
            v30 = [v94 subtrees];
            if ([v30 count] == 1)
            {
              v31 = [v94 subtrees];
              v32 = [v31 objectAtIndexedSubscript:0];
              v33 = [v32 secondaryDisplayStrings];
              v34 = v33 != 0;

              if (v34 & v82)
              {
                goto LABEL_37;
              }
            }

            else
            {
            }

            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v35 = [v94 subtrees];
            v97 = [v35 countByEnumeratingWithState:&v104 objects:v130 count:16];
            if (v97)
            {
              v96 = *v105;
              v93 = v35;
              do
              {
                for (j = 0; j != v97; ++j)
                {
                  if (*v105 != v96)
                  {
                    objc_enumerationMutation(v93);
                  }

                  v37 = *(*(&v104 + 1) + 8 * j);
                  v38 = [v37 representedString];
                  if (([v38 isEqualToString:v98] & 1) == 0)
                  {
                    [v37 frame];
                    UIRectGetCenter();
                    [a1 centerOfKey:? withOffset:?];
                    v40 = v39;
                    v42 = v41;
                    v129[0] = v38;
                    v128[0] = @"key";
                    v128[1] = @"keyname";
                    v43 = [v37 name];
                    v129[1] = v43;
                    v129[2] = @"drag";
                    v128[2] = @"action";
                    v128[3] = @"x";
                    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v40];
                    v129[3] = v44;
                    v128[4] = @"y";
                    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v42];
                    v129[4] = v45;
                    v128[5] = @"rect";
                    v46 = MEMORY[0x277CCAE60];
                    [v37 frame];
                    v47 = [v46 valueWithCGRect:?];
                    v129[5] = v47;
                    v129[6] = @"popover";
                    v128[6] = @"type";
                    v128[7] = @"basekey";
                    v129[7] = v98;
                    v129[8] = v91;
                    v128[8] = @"plane";
                    v128[9] = @"more-after";
                    v48 = [v94 cache];
                    v49 = [v48 objectForKey:@"more-after"];
                    v50 = v49;
                    v51 = &unk_2880299D0;
                    if (v49)
                    {
                      v51 = v49;
                    }

                    v129[9] = v51;
                    v128[10] = @"edgeInsets";
                    v52 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v14, v16, v18, v20}];
                    v129[10] = v52;
                    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:11];

                    v54 = [v95 objectForKeyedSubscript:v38];
                    v55 = v54 == 0;

                    if (v55)
                    {
                      [v95 setValue:v53 forKey:v38];
                      [v90 appendString:v38];
                    }

                    else
                    {
                      v56 = [v89 keyboardID];
                      v57 = [v56 hasPrefix:@"am"];

                      if (v57)
                      {
                        v58 = [@"‍" stringByAppendingString:v38];
                        [v95 setValue:v53 forKey:v58];

                        v59 = [@"‍" stringByAppendingString:v38];
                        [v90 appendString:v59];
                      }
                    }
                  }
                }

                v35 = v93;
                v97 = [v93 countByEnumeratingWithState:&v104 objects:v130 count:16];
              }

              while (v97);
            }
          }
        }

LABEL_37:
      }

      v87 = [obj countByEnumeratingWithState:&v108 objects:v131 count:16];
    }

    while (v87);
  }

  v99 = objc_opt_new();
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v60 = v95;
  v61 = [v60 countByEnumeratingWithState:&v100 objects:v127 count:16];
  if (v61)
  {
    v62 = *v101;
    do
    {
      for (k = 0; k != v61; ++k)
      {
        if (*v101 != v62)
        {
          objc_enumerationMutation(v60);
        }

        v64 = *(*(&v100 + 1) + 8 * k);
        v65 = [v60 objectForKeyedSubscript:v64];
        v66 = [v65 objectForKeyedSubscript:@"type"];
        v67 = [v66 isEqualToString:@"popover"];

        if (v67)
        {
          v68 = [v60 objectForKeyedSubscript:v64];
          v69 = [v68 objectForKeyedSubscript:@"basekey"];
          [v99 appendFormat:@"[%@{%@}]", v64, v69];
        }
      }

      v61 = [v60 countByEnumeratingWithState:&v100 objects:v127 count:16];
    }

    while (v61);
  }

  TYLog(@"Plane: %@, Popup keys -> %@", v70, v71, v72, v73, v74, v75, v76, v91);
  _Block_object_dispose(&v117, 8);
  _Block_object_dispose(&v121, 8);

  v77 = *MEMORY[0x277D85DE8];

  return v60;
}

uint64_t __87__TypistKeyboardDataInProcess_addKeyboardPopupKeys_keys_inPlane_addTo_keyplaneKeycaps___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyplaneNamed:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

+ (BOOL)generatePopupKeySubtrees:(id)a3 key:(id)a4 plane:(id)a5 layout:(id)a6 keyplaneKeycaps:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 state];
  if (v13 && ([a1 downActionFlagsForKey:v13 plane:v14 keyplaneKeycaps:v16] & 0x1000F8000) != 0)
  {
    [a1 showPopupVariantsForKey:v12 key:v13 plane:v14 keyplaneKeycaps:v16];
  }

  v18 = [v13 subtrees];
  if (v18)
  {
    v19 = [v13 state];

    if (v19 == 16)
    {
      v20 = [v13 selectedVariantIndex];
      v18 = [v13 highlightedVariantsList];
      [v13 setSelectedVariantIndex:0];
      [v13 setHighlightedVariantsList:0];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __89__TypistKeyboardDataInProcess_generatePopupKeySubtrees_key_plane_layout_keyplaneKeycaps___block_invoke;
      v23[3] = &unk_279DF4AB0;
      v21 = v13;
      v24 = v21;
      v25 = v15;
      v26 = v14;
      [TypistKeyboardUtilities runOnMainThread:v23];
      [v21 setSelectedVariantIndex:v20];
      [v21 setHighlightedVariantsList:v18];

      LOBYTE(v18) = 1;
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  [v13 setState:v17];

  return v18;
}

void __89__TypistKeyboardDataInProcess_generatePopupKeySubtrees_key_plane_layout_keyplaneKeycaps___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dynamicLayout];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    [v3 preparePopupVariantsForKey:v4 onKeyplane:v5];
  }

  else
  {
    v8 = [v3 currentKeyplaneView];
    v6 = [v8 factory];
    v7 = [v6 traitsForKey:*(a1 + 32) onKeyplane:*(a1 + 48)];
  }
}

+ (void)showPopupVariantsForKey:(id)a3 key:(id)a4 plane:(id)a5 keyplaneKeycaps:(id)a6
{
  v122 = *MEMORY[0x277D85DE8];
  v88 = a3;
  v10 = a4;
  v90 = a5;
  v89 = a6;
  v91 = v10;
  if (!v10 || [v10 state] == 16)
  {
    goto LABEL_93;
  }

  v77 = [v10 representedString];
  v11 = [MEMORY[0x277D75678] activeInstance];
  v81 = UIKeyboardGetCurrentUILanguage();
  v86 = [MEMORY[0x277CBEAF8] currentLocale];
  v87 = [a1 downActionFlagsForKey:v10 plane:v90 keyplaneKeycaps:v89];
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke_2;
  v103[3] = &unk_279DF4BF0;
  v105 = &v116;
  v74 = v11;
  v104 = v74;
  v106 = &v112;
  v107 = &v108;
  [TypistKeyboardUtilities runOnMainThread:v103];
  v12 = [MEMORY[0x277D75418] currentDevice];
  if ([v12 userInterfaceIdiom] == 1)
  {
    v13 = *(v109 + 24);
  }

  else
  {
    v13 = 1;
  }

  v82 = v13;

  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 _referenceBounds];
  if (CGRectGetHeight(v123) <= 1194.0)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(v109 + 24);
  }

  if ((v87 & 0x8000) != 0)
  {
    v17 = UIKeyboardGetCurrentInputMode();

    v18 = v77;
    v19 = v18;
    if ((v87 & 0x80000) != 0)
    {
      v20 = [v90 componentName];
      v19 = [v18 stringByAppendingFormat:@"-%@", v20];
    }

    if ([v91 displayType] == 7)
    {
      v21 = [v91 secondaryRepresentedStrings];
      v22 = [v21 count] == 0;

      if (!v22)
      {
        v23 = [v91 secondaryRepresentedStrings];
        v24 = [v23 firstObject];
        v25 = [v19 stringByAppendingString:v24];

        v19 = v25;
      }
    }

    v26 = UIKeyboardRomanAccentVariants();
    if ((v15 & 1) == 0 && [v91 displayType] == 7 && objc_msgSend(v91, "interactionType") == 2 && objc_msgSend(v91, "variantType") != 3)
    {
      if (*(v117 + 24) == 1 && *(v113 + 24) != 1)
      {
        v65 = [v91 secondaryRepresentedStrings];
        v66 = [v65 objectAtIndex:0];
        v67 = v66;
        if (v66)
        {
          v68 = v66;
        }

        else
        {
          v69 = [v91 representedString];
          v68 = [v69 substringFromIndex:1];
        }

        if ((v87 & 0x80000) != 0)
        {
          v70 = [v90 componentName];
          v71 = [v18 stringByAppendingFormat:@"-%@", v70];

          v68 = v71;
        }

        v16 = UIKeyboardRomanAccentVariants();

        v26 = v68;
      }

      else
      {
        v16 = [a1 _variantsByAppendingDualStringKey:v91 toVariants:v26];
      }
    }

    else
    {
      v16 = v26;
    }
  }

  else
  {
    if (v87 & 0x40000) == 0 || (v117[3] & v15)
    {
      v16 = 0;
      goto LABEL_25;
    }

    v19 = UIKeyboardCurrencyVariants();
    if (!((v19 != 0) | v15 & 1))
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v55 = [v10 secondaryRepresentedStrings];
      v56 = [v55 countByEnumeratingWithState:&v99 objects:v121 count:16];
      if (v56)
      {
        v57 = *v100;
LABEL_69:
        v58 = 0;
        while (1)
        {
          if (*v100 != v57)
          {
            objc_enumerationMutation(v55);
          }

          v59 = *(*(&v99 + 1) + 8 * v58);
          v19 = UIKeyboardCurrencyVariants();
          if (v19)
          {
            break;
          }

          if (v56 == ++v58)
          {
            v56 = [v55 countByEnumeratingWithState:&v99 objects:v121 count:16];
            if (v56)
            {
              goto LABEL_69;
            }

            goto LABEL_75;
          }
        }
      }

      else
      {
LABEL_75:
        v19 = 0;
      }
    }

    if (v19)
    {
      v17 = v81;
      if (v15)
      {
LABEL_79:
        v16 = v19;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = UIKeyboardGetCurrentInputMode();

      v19 = UIKeyboardCurrencyVariants();
      if (v15)
      {
        goto LABEL_79;
      }
    }

    v16 = [a1 _variantsByAppendingDualStringKey:v91 toVariants:v19];
  }

LABEL_24:
  v81 = v17;
LABEL_25:
  v78 = [v16 objectForKey:*MEMORY[0x277D76C40]];
  v76 = [v16 objectForKey:*MEMORY[0x277D76C38]];
  v75 = v16;
  if (v16 && [v78 count])
  {
    v83 = [MEMORY[0x277CBEB18] arrayWithArray:v78];
    v85 = [MEMORY[0x277CBEB18] arrayWithArray:v76];
    v72 = [v16 objectForKey:*MEMORY[0x277D76C30]];
    if (v83 && v85 && v72)
    {
      v27 = [v72 isEqualToString:*MEMORY[0x277D6FFB8]];
      if (v27 & 1) != 0 || (v27 = [v72 isEqualToString:*MEMORY[0x277D6FFC0]], (v27) || (v27 = objc_msgSend(v72, "isEqualToString:", *MEMORY[0x277D6FFB0]), v27))
      {
        __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke(v27, v83);
        __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke(v28, v85);
      }

      v29 = [v83 count];
      if (v29 <= [v85 count])
      {
        v30 = v83;
      }

      else
      {
        v30 = v85;
      }

      v80 = [v30 count];
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke_3;
      v97[3] = &unk_279DF4650;
      v98 = v74;
      [TypistKeyboardUtilities runOnMainThread:v97];
      v31 = [MEMORY[0x277CBEB18] array];
      v73 = [MEMORY[0x277CBEB18] array];
      v79 = [v91 representedString];
      if ([v91 displayType] == 7 && objc_msgSend(v77, "length") >= 2)
      {
        v96 = [v77 characterAtIndex:0];
        v32 = [MEMORY[0x277CCACA8] stringWithCharacters:&v96 length:1];

        v79 = v32;
      }

      if (v80)
      {
        v33 = 0;
        v34 = 1;
        while (1)
        {
          v35 = [v85 objectAtIndex:v33];
          if (([v90 isShiftKeyplane] & 1) != 0 || !objc_msgSend(MEMORY[0x277D75698], "_showSmallDisplayKeyplane"))
          {
            v36 = [v35 uppercaseStringWithLocale:v86];
          }

          else
          {
            v36 = [v35 lowercaseStringWithLocale:v86];
          }

          v37 = v36;
          v38 = (v87 & 0x40000) != 0 ? v35 : v36;
          v39 = v38;
          v40 = [v91 displayString];
          if (([v40 isEqual:v39] & 1) != 0 || !objc_msgSend(v89, "containsObject:", v37) || objc_msgSend(v91, "variantType") == 9)
          {
            break;
          }

          v53 = [v88 keyboardID];
          v54 = [v53 hasPrefix:@"am"];

          if (v54)
          {
            goto LABEL_53;
          }

LABEL_62:

          if (v80 == ++v33)
          {
            goto LABEL_81;
          }
        }

LABEL_53:
        v41 = [v83 objectAtIndex:v33];
        v42 = [v41 isEqual:v79];
        v43 = 2;
        if (!v42)
        {
          v43 = v34;
        }

        v84 = v43;
        if (v82 & 1 | ((v42 & 1) == 0))
        {
          v44 = [v91 copy];
          [v44 setRepresentedString:v41];
          [v44 setDisplayString:v35];
          [v44 setDisplayType:0];
          v45 = MEMORY[0x277CCACA8];
          v46 = [v91 name];
          v47 = [v44 representedString];
          v48 = [v45 stringWithFormat:@"%@/%@", v46, v47];
          [v44 setName:v48];

          [v44 setOverrideDisplayString:0];
          v49 = [v35 length];
          v50 = v31;
          if (v49 == 1)
          {
            v51 = [v35 characterAtIndex:0];
            v50 = v73;
            if (v51 != 170)
            {
              v52 = [v35 characterAtIndex:0];
              v50 = v31;
              if (v52 == 186)
              {
                v50 = v73;
              }
            }
          }

          [v50 addObject:v44];

          v34 = v84;
        }

        goto LABEL_62;
      }

      v34 = 1;
LABEL_81:
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v60 = v73;
      v61 = [v60 countByEnumeratingWithState:&v92 objects:v120 count:16];
      if (v61)
      {
        v62 = *v93;
        do
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v93 != v62)
            {
              objc_enumerationMutation(v60);
            }

            [v31 addObject:*(*(&v92 + 1) + 8 * i)];
          }

          v61 = [v60 countByEnumeratingWithState:&v92 objects:v120 count:16];
        }

        while (v61);
      }

      if ([v31 count] >= v34)
      {
        [v91 updateVariantTypeForActions:v87];
        [v91 setVariantPopupBias:v72];
        [v91 setSubtrees:v31];
        [v91 setState:16];
      }
    }
  }

  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);

LABEL_93:
  v64 = *MEMORY[0x277D85DE8];
}

void __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v2 = [v8 count];
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = v2 >> 1;
    v5 = v2 - 1;
    do
    {
      v6 = [v8 objectAtIndex:v3];
      v7 = [v8 objectAtIndex:v5];
      [v8 replaceObjectAtIndex:v3 withObject:v7];

      [v8 replaceObjectAtIndex:v5 withObject:v6];
      ++v3;
      --v5;
    }

    while (v4 != v3);
  }
}

uint64_t __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isShifted];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) isAutoShifted];
  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) autocorrectPrompt];

  if (v2)
  {
    v3 = *(a1 + 32);

    [v3 removeAutocorrectPromptAndCandidateList];
  }
}

+ (unint64_t)downActionFlagsForKey:(id)a3 plane:(id)a4 keyplaneKeycaps:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 visible])
  {
    goto LABEL_63;
  }

  v11 = [v8 interactionType];
  v12 = [v8 variantType];
  v13 = 5;
  if (v11 == 15 || v11 == 13)
  {
    goto LABEL_64;
  }

  if (v11 == 4)
  {
    v13 = 69;
    goto LABEL_64;
  }

  if ((v11 - 1) > 1)
  {
    if (v11 > 9)
    {
      if (v11 > 0x28)
      {
        goto LABEL_45;
      }

      if (((1 << v11) & 0x10000031000) != 0)
      {
        goto LABEL_28;
      }

      if (v11 == 14)
      {
        v13 = 20;
        goto LABEL_64;
      }

      if (v11 != 38)
      {
LABEL_45:
        if (v11 == 10)
        {
          v13 = 536870916;
          goto LABEL_64;
        }

        if (v11 == 11)
        {
          v13 = 36;
          goto LABEL_64;
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (v11 > 6)
      {
        if (v11 == 7)
        {
          v13 = 1048581;
          goto LABEL_64;
        }

        if (v11 == 9)
        {
          v13 = 4229;
          goto LABEL_64;
        }

        goto LABEL_60;
      }

      if (v11 != 3)
      {
        if (v11 == 6)
        {
          if ([MEMORY[0x277D75678] rivenTranslationPreference])
          {
            v13 = 133;
          }

          else
          {
            v13 = 5;
          }

          goto LABEL_64;
        }

LABEL_60:
        if ((v11 & 0xFFFFFFFE) != 0x14)
        {
          if ((v11 - 24) <= 0xD)
          {
            v13 = qword_2701A44E8[v11 - 24];
            goto LABEL_64;
          }

LABEL_63:
          v13 = 0;
          goto LABEL_64;
        }

LABEL_28:
        v13 = 5;
        goto LABEL_64;
      }
    }

    v13 = 128;
    goto LABEL_64;
  }

  v14 = v12;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__TypistKeyboardDataInProcess_downActionFlagsForKey_plane_keyplaneKeycaps___block_invoke;
  v23[3] = &unk_279DF4710;
  v23[4] = &v24;
  [TypistKeyboardUtilities runOnMainThread:v23];
  v15 = [MEMORY[0x277D759A0] mainScreen];
  [v15 _referenceBounds];
  if (CGRectGetHeight(v28) <= 1194.0 || (v25[3] & 1) != 0 || [v8 displayType] != 7)
  {

    v13 = 5;
  }

  else
  {

    if (v14 == 3)
    {
      v13 = 5;
    }

    else
    {
      v13 = 32901;
    }
  }

  if (v14 > 6)
  {
    if (v14 <= 8)
    {
      if (v14 == 7)
      {
        v16 = 65664;
        goto LABEL_53;
      }

      v13 = 557189;
      goto LABEL_54;
    }

    if (v14 == 9)
    {
      v16 = 2155872261;
      goto LABEL_53;
    }

    if (v14 != 10)
    {
      goto LABEL_37;
    }

LABEL_41:
    v16 = 8421376;
    goto LABEL_53;
  }

  if (v14 > 3)
  {
    if (v14 == 4)
    {
      v16 = 131200;
      goto LABEL_53;
    }

    if (v14 != 5)
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (v14 != 1)
  {
    if (v14 == 3)
    {
      v16 = 262272;
LABEL_53:
      v13 |= v16;
      goto LABEL_54;
    }

LABEL_37:
    if ((v14 - 11) > 1)
    {
      if ([a1 keyHasAccentedVariants:v8 plane:v9 keyplaneKeycaps:v10])
      {
        v21 = [v8 name];
        v22 = [v21 hasPrefix:@"Assist"];

        if ((v22 & 1) == 0)
        {
          v13 = 32901;
        }
      }

      goto LABEL_54;
    }

    v16 = 0x100000080;
    goto LABEL_53;
  }

  v13 = 32901;
LABEL_54:
  v17 = [v8 name];
  if ([v17 hasPrefix:@"NumberPad-"])
  {
    v18 = [v8 name];
    v19 = [v18 hasSuffix:@"-0-Plus"];

    if (v19)
    {
      v13 |= 0x80uLL;
    }
  }

  else
  {
  }

  _Block_object_dispose(&v24, 8);
LABEL_64:

  return v13;
}

uint64_t __75__TypistKeyboardDataInProcess_downActionFlagsForKey_plane_keyplaneKeycaps___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)_variantsByAppendingDualStringKey:(id)a3 toVariants:(id)a4
{
  v32[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 displayType] == 7)
  {
    v8 = [v6 secondaryDisplayStrings];
    v9 = [v8 objectAtIndex:0];
    v10 = v9;
    if (v9)
    {
      v30 = v9;
    }

    else
    {
      v11 = [v6 displayString];
      v30 = [v11 substringFromIndex:1];
    }

    v12 = [v6 secondaryRepresentedStrings];
    v13 = [v12 objectAtIndex:0];
    v14 = v13;
    if (v13)
    {
      v29 = v13;
    }

    else
    {
      v15 = [v6 representedString];
      v29 = [v15 substringFromIndex:1];
    }

    v16 = *MEMORY[0x277D76C38];
    v17 = [v7 objectForKey:*MEMORY[0x277D76C38]];
    v18 = *MEMORY[0x277D76C40];
    v19 = [v7 objectForKey:*MEMORY[0x277D76C40]];
    v20 = *MEMORY[0x277D76C30];
    v21 = [v7 objectForKey:*MEMORY[0x277D76C30]];
    v22 = [a1 appendingSecondaryStringToVariantsTop:v17 secondaryString:v30 withDirection:v21];

    v23 = [v7 objectForKey:v20];
    v24 = [a1 appendingSecondaryStringToVariantsTop:v19 secondaryString:v29 withDirection:v23];

    v31[0] = v20;
    v25 = [v7 objectForKey:v20];
    v32[0] = v25;
    v32[1] = v22;
    v31[1] = v16;
    v31[2] = v18;
    v32[2] = v24;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

    v7 = v26;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)appendingSecondaryStringToVariantsTop:(id)a3 secondaryString:(id)a4 withDirection:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 mutableCopy];
  v10 = [v9 indexOfObject:v7];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 removeObjectAtIndex:v10];
  }

  if ([v8 isEqualToString:*MEMORY[0x277D6FFB8]])
  {
    [v9 addObject:v7];
  }

  else
  {
    [v9 insertObject:v7 atIndex:0];
  }

  return v9;
}

+ (BOOL)keyHasAccentedVariants:(id)a3 plane:(id)a4 keyplaneKeycaps:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 name];
  v11 = [v10 hasPrefix:@"NumberPad"];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = [v7 representedString];
    if ([v7 variantType] == 8)
    {
      v16 = [v8 componentName];
      v17 = [v15 stringByAppendingFormat:@"-%@", v16];

      v15 = v17;
    }

    if ([v7 displayType] == 7)
    {
      v18 = [v7 secondaryRepresentedStrings];
      v19 = [v18 count];

      if (v19)
      {
        v20 = [v7 secondaryRepresentedStrings];
        v21 = [v20 firstObject];
        v22 = [v15 stringByAppendingString:v21];

        v15 = v22;
      }
    }

    if (v15 && ([v13 containsObject:v15] & 1) == 0)
    {
      [v13 addObject:v15];
      v23 = UIKeyboardGetCurrentInputMode();
      v24 = UIKeyboardRomanAccentVariants();

      v25 = [v24 objectForKey:*MEMORY[0x277D76C40]];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __76__TypistKeyboardDataInProcess_keyHasAccentedVariants_plane_keyplaneKeycaps___block_invoke;
      v29[3] = &unk_279DF4C18;
      v30 = v9;
      v26 = [v25 indexesOfObjectsPassingTest:v29];
      v27 = [v25 objectsAtIndexes:v26];

      if ([v27 count])
      {
        [v14 addObject:v15];
      }
    }

    v12 = [v14 containsObject:v15];
  }

  return v12;
}

+ (id)setOneHandedKeyboardHandBias:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"left"];

  if (v5)
  {
    v6 = @"Left";
  }

  else
  {
    v7 = [v3 lowercaseString];
    v8 = [v7 isEqualToString:@"right"];

    if (v8)
    {
      v6 = @"Right";
    }

    else
    {
      v6 = @"None";
    }
  }

  v9 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v10 = *MEMORY[0x277D6F7C8];
  v11 = [v9 valueForPreferenceKey:*MEMORY[0x277D6F7C8]];

  TYLog(@"Changing HandBias for One-Handed Keyboard: Current=%@ ChangeTo=%@", v12, v13, v14, v15, v16, v17, v18, v11);
  if ([v11 isEqualToString:v6])
  {
    TYLog(@"HandBias for One-Handed Keyboard is already set to %@", v19, v20, v21, v22, v23, v24, v25, v6);
  }

  else
  {
    v26 = [MEMORY[0x277D6F470] sharedPreferencesController];
    [v26 updateKeyboardHandBias:v6];

    v27 = [MEMORY[0x277D6F470] sharedPreferencesController];
    [v27 synchronizePreferences];

    v28 = [MEMORY[0x277D756A0] sharedPreferencesController];
    v6 = [v28 valueForPreferenceKey:v10];

    if ([(__CFString *)v6 isEqualToString:v11])
    {
      v36 = 0.0;
      do
      {
        v37 = v6;
        [TypistKeyboardUtilities waitFor:0.2];
        v38 = [MEMORY[0x277D6F470] sharedPreferencesController];
        [v38 synchronizePreferences];

        v39 = [MEMORY[0x277D756A0] sharedPreferencesController];
        v6 = [v39 valueForPreferenceKey:v10];

        v36 = v36 + 0.2;
        if ([(__CFString *)v6 isEqualToString:v11])
        {
          v40 = v36 < 10.0;
        }

        else
        {
          v40 = 0;
        }
      }

      while (v40);
    }

    TYLog(@"HandBias for One-Handed Keyboard is changed to %@  %@", v29, v30, v31, v32, v33, v34, v35, v6);
  }

  return v6;
}

+ (BOOL)_activeInputModesContainsInputMode:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4;
  v36 = __Block_byref_object_dispose__4;
  v37 = 0;
  v4 = 10.0;
  do
  {
    [TypistKeyboardUtilities waitFor:0.2];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __66__TypistKeyboardDataInProcess__activeInputModesContainsInputMode___block_invoke;
    v31[3] = &unk_279DF4710;
    v31[4] = &v32;
    [TypistKeyboardUtilities runOnMainThread:v31];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = v33[5];
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v6)
    {
      v7 = *v28;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v27 + 1) + 8 * i) identifier];
          v10 = [v9 isEqualToString:v3];

          if (v10)
          {
            TYLog(@"Active input mode list now contains %@", v11, v12, v13, v14, v15, v16, v17, v3);

            v24 = 1;
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v27 objects:v38 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v4 = v4 + -0.2;
  }

  while (v4 > 0.0);
  TYLogl(OS_LOG_TYPE_ERROR, @"Timed out while waiting for activeInputMode to contain %@", v18, v19, v20, v21, v22, v23, v3);
  v24 = 0;
LABEL_13:
  _Block_object_dispose(&v32, 8);

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void __66__TypistKeyboardDataInProcess__activeInputModesContainsInputMode___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D75688] sharedInputModeController];
  v2 = [v5 activeInputModes];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (int)getWubiEnumeration:(id)a3
{
  v3 = getWubiEnumeration__wubiOnceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[TypistKeyboardDataInProcess getWubiEnumeration:];
  }

  v5 = [getWubiEnumeration__wubiDictionary valueForKey:v4];

  v6 = [v5 intValue];
  return v6;
}

void __50__TypistKeyboardDataInProcess_getWubiEnumeration___block_invoke()
{
  v0 = getWubiEnumeration__wubiDictionary;
  getWubiEnumeration__wubiDictionary = &unk_28802A618;
}

+ (int)getShuangpinEnumeration:(id)a3
{
  v3 = getShuangpinEnumeration__shuangpinOnceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[TypistKeyboardDataInProcess getShuangpinEnumeration:];
  }

  v5 = [getShuangpinEnumeration__shuangpinSchemaDictionary valueForKey:v4];

  v6 = [v5 intValue];
  return v6;
}

void __55__TypistKeyboardDataInProcess_getShuangpinEnumeration___block_invoke()
{
  v0 = getShuangpinEnumeration__shuangpinSchemaDictionary;
  getShuangpinEnumeration__shuangpinSchemaDictionary = &unk_28802A640;
}

+ (BOOL)shouldShowDictationKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__TypistKeyboardDataInProcess_shouldShowDictationKey__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __53__TypistKeyboardDataInProcess_shouldShowDictationKey__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75678] activeInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 shouldShowDictationKey];
}

+ (BOOL)shouldShowGlobeKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__TypistKeyboardDataInProcess_shouldShowGlobeKey__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __49__TypistKeyboardDataInProcess_shouldShowGlobeKey__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75678] activeInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 shouldShowInternationalKey];
}

+ (id)getRepresentedStringFromKey:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__TypistKeyboardDataInProcess_getRepresentedStringFromKey___block_invoke;
  v7[3] = &unk_279DF4B78;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [TypistKeyboardUtilities runOnMainThread:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __59__TypistKeyboardDataInProcess_getRepresentedStringFromKey___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v7 _layout];
  v3 = [v2 baseKeyForString:*(a1 + 32)];
  v4 = [v3 representedString];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (CGPoint)floatingKeyboardDraggablePoint
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_2701AD026;
  v11 = *MEMORY[0x277CBF348];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__TypistKeyboardDataInProcess_floatingKeyboardDraggablePoint__block_invoke;
  v6[3] = &unk_279DF4710;
  v6[4] = &v7;
  [TypistKeyboardUtilities runOnMainThread:v6];
  v2 = v8[4];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

void __61__TypistKeyboardDataInProcess_floatingKeyboardDraggablePoint__block_invoke(uint64_t a1)
{
  v15 = [MEMORY[0x277D75678] activeInstance];
  v2 = [MEMORY[0x277D75658] activeKeyboard];
  [v2 _floatingKeyboardDraggableRect];
  UIRectGetCenter();
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = [v7 delegate];
  v9 = [v8 window];
  v10 = [v9 rootViewController];
  v11 = [v10 view];
  [v15 convertPoint:v11 toView:{v4, v6}];
  v12 = *(*(a1 + 32) + 8);
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
}

+ (BOOL)isCandidateCellVisible:(id)a3
{
  v4 = a3;
  if (v4)
  {
    NSClassFromString(&cfstr_Uikeyboardcand_0.isa);
    if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Uikeyboardcand_1.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Tuicandidatece.isa), (objc_opt_isKindOfClass()))
    {
      LODWORD(a1) = [v4 isHidden] ^ 1;
    }

    else
    {
      v6 = [v4 superview];
      LOBYTE(a1) = [a1 isCandidateCellVisible:v6];
    }
  }

  else
  {
    LOBYTE(a1) = 0;
  }

  return a1;
}

@end