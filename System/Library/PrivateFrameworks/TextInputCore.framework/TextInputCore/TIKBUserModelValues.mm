@interface TIKBUserModelValues
- (TIKBUserModelValues)initWithInputMode:(id)a3 context:(id)a4 userModelDataStore:(id)a5 durableCounters:(id)a6 settingsDictionary:(id)a7;
- (id)bucketCountsByWordLength:(id)a3;
- (id)calcAutocorrectionEnabled;
- (id)calcFloatingKeyboardUsageFromUserModel:(id)a3;
- (id)calcTypingSpeedFromUserModel:(id)a3;
- (id)computeValueFromExpression:(id)a3 precondition:(id)a4 defaultValue:(id)a5 bindings:(id)a6 bucketThresholds:(id)a7 bucketValues:(id)a8;
- (id)settingValueFromName:(id)a3;
- (void)persistForDate:(id)a3;
@end

@implementation TIKBUserModelValues

- (id)calcAutocorrectionEnabled
{
  v3 = [(TIKBUserModelValues *)self kbContext];
  v4 = [v3 keyboardType];

  v5 = [(TIUserModelValues *)self settingsDictionary];
  v6 = v5;
  v7 = MEMORY[0x277D6F638];
  if (v4 != 5)
  {
    v7 = MEMORY[0x277D6F7C0];
  }

  v8 = [v5 objectForKey:*v7];

  return v8;
}

- (id)calcTypingSpeedFromUserModel:(id)a3
{
  v4 = a3;
  v5 = kFeatureCounterDurationPathedWords;
  v6 = MEMORY[0x277D6FD28];
  v7 = *MEMORY[0x277D6FD28];
  v8 = [v4 loadedDate];
  v9 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v5 forNumberOfDays:v7 fromLoadedDate:v8];

  v10 = kFeatureCounterDurationTappedWords;
  v11 = *v6;
  v12 = [v4 loadedDate];
  v71 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v10 forNumberOfDays:v11 fromLoadedDate:v12];

  v13 = kFeatureValueWithWordLenWholeWordsPathed;
  v14 = *v6;
  v15 = [v4 loadedDate];
  v16 = v13;
  v17 = v9;
  v18 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v16 forNumberOfDays:v14 fromLoadedDate:v15];

  v19 = kFeatureValueWithWordLenWordCompletionsPathed;
  v20 = *v6;
  v21 = [v4 loadedDate];
  v22 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v19 forNumberOfDays:v20 fromLoadedDate:v21];

  v23 = kFeatureValueWithWordLenPathEligibleWordsTapped;
  v24 = *v6;
  v25 = [v4 loadedDate];
  v26 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v23 forNumberOfDays:v24 fromLoadedDate:v25];

  v27 = kFeatureValueWithWordLenPathIneligibleWordsTapped;
  v28 = *v6;
  v66 = v4;
  v29 = [v4 loadedDate];
  v30 = [(TIUserModelValues *)self countsFromTransientCounterWithName:v27 forNumberOfDays:v28 fromLoadedDate:v29];

  v31 = [v17 count];
  v69 = v26;
  v70 = v18;
  if (v31)
  {
    v32 = 0;
    v67 = v31;
    v68 = v30;
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = [v18 objectAtIndex:v32];
      v74 = [v35 intValue];
      v36 = [v22 objectAtIndex:v32];
      v73 = [v36 intValue];

      v37 = [v17 objectAtIndex:v32];
      v72 = [v37 intValue];

      v38 = [v69 objectAtIndex:v32];
      v39 = [v38 intValue];
      [v68 objectAtIndex:v32];
      v41 = v40 = v17;
      v42 = v22;
      v43 = [v41 intValue];

      v44 = [v71 objectAtIndex:v32];
      LODWORD(v41) = [v44 intValue];

      v45 = v39 + v43;
      v22 = v42;
      v33 += (v73 + v74 + v45) * (v32 + 1);
      v18 = v70;
      v34 += v72 + v41;
      v17 = v40;
      ++v32;
    }

    while (v67 != v32);
    v46 = v34;
    v47 = v33;
    v30 = v68;
  }

  else
  {
    v46 = 0.0;
    v47 = 0.0;
  }

  v48 = v47 / (v46 / 1000.0) / 5.0;
  v49 = v48 * 60.0;
  v50 = MEMORY[0x277CBEA60];
  LODWORD(v48) = 5.0;
  v51 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  LODWORD(v52) = 10.0;
  v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
  LODWORD(v54) = 20.0;
  v55 = [MEMORY[0x277CCABB0] numberWithFloat:v54];
  LODWORD(v56) = 1109393408;
  v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
  LODWORD(v58) = 1117782016;
  v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
  v60 = [v50 arrayWithObjects:{v51, v53, v55, v57, v59, 0}];

  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:{kFeatureStringTypingSpeedVerySlow, kFeatureStringTypingSpeedSlow, kFeatureStringTypingSpeedMedium, kFeatureStringTypingSpeedFast, kFeatureStringTypingSpeedVeryFast, kFeatureStringTypingSpeedUnusual, 0}];
  v62 = MEMORY[0x277D6F320];
  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
  v64 = [v62 bucketNumber:v63 bucketThresholds:v60 bucketValues:v61];

  return v64;
}

- (id)calcFloatingKeyboardUsageFromUserModel:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TIKBUserModelValues *)self kbContext];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = [(TIKBUserModelValues *)self kbContext];
    v8 = [v7 keyboardType];

    if (v8 == 3)
    {
      v9 = kFeatureCounterWithWordLenWordsTypedOnFloatingKeyboard;
      v10 = MEMORY[0x277D6FD28];
      v11 = *MEMORY[0x277D6FD28];
      v12 = [v4 loadedDate];
      v13 = [(TIUserModelValues *)self aggregatedCountFromTransientCounterWithName:v9 forNumberOfDays:v11 fromLoadedDate:v12];
      [v13 doubleValue];
      v15 = v14;

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = [v4 contexts];
      v16 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
      v17 = 0.0;
      if (v16)
      {
        v18 = v16;
        v19 = *v73;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v73 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v72 + 1) + 8 * i);
            if ([v21 userInterfaceIdiom] == 1)
            {
              v22 = [v4 valuesFromContext:v21];
              v23 = kFeatureValueWithWordLenWholeWordsPathed;
              v24 = *v10;
              v25 = [v4 loadedDate];
              v26 = [v22 aggregatedCountFromTransientCounterWithName:v23 forNumberOfDays:v24 fromLoadedDate:v25];
              [v26 doubleValue];
              v28 = v17 + v27;

              v29 = kFeatureValueWithWordLenWordCompletionsPathed;
              v30 = *v10;
              v31 = [v4 loadedDate];
              v32 = [v22 aggregatedCountFromTransientCounterWithName:v29 forNumberOfDays:v30 fromLoadedDate:v31];
              [v32 doubleValue];
              v34 = v28 + v33;

              v35 = kFeatureValueWithWordLenPathEligibleWordsTapped;
              v36 = *v10;
              v37 = [v4 loadedDate];
              v38 = [v22 aggregatedCountFromTransientCounterWithName:v35 forNumberOfDays:v36 fromLoadedDate:v37];
              [v38 doubleValue];
              v40 = v34 + v39;

              v41 = kFeatureValueWithWordLenPathIneligibleWordsTapped;
              v42 = *v10;
              v43 = [v4 loadedDate];
              v44 = [v22 aggregatedCountFromTransientCounterWithName:v41 forNumberOfDays:v42 fromLoadedDate:v43];
              [v44 doubleValue];
              v17 = v40 + v45;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
        }

        while (v18);
      }

      v46 = v15 / v17;
      if (v17 == 0.0)
      {
        v47 = 0.0;
      }

      else
      {
        v47 = v15 / v17;
      }

      v48 = MEMORY[0x277CBEA60];
      LODWORD(v46) = 1008981770;
      v49 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
      LODWORD(v50) = 1045220557;
      v51 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
      LODWORD(v52) = 1053609165;
      v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
      LODWORD(v54) = 1058642330;
      v55 = [MEMORY[0x277CCABB0] numberWithFloat:v54];
      LODWORD(v56) = 1061997773;
      v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
      LODWORD(v58) = 1065185444;
      v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
      v60 = [v48 arrayWithObjects:{v49, v51, v53, v55, v57, v59, 0}];

      v61 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277D6FD60], *MEMORY[0x277D6FD58], *MEMORY[0x277D6FD38], *MEMORY[0x277D6FD40], *MEMORY[0x277D6FD30], *MEMORY[0x277D6FD50], *MEMORY[0x277D6FD48], 0}];
      v62 = MEMORY[0x277D6F320];
      v63 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
      v64 = [v62 bucketNumber:v63 bucketThresholds:v60 bucketValues:v61];
    }

    else
    {
      v60 = [*MEMORY[0x277D6FDB0] stringByAppendingString:kFeatureCounterTotalWordsTypedOnFloatingKeyboard];
      v66 = [(TIUserModelValues *)self userModelDataStore];
      v61 = [v66 getDurableValueForKey:v60];

      v63 = [v61 value];
      v67 = [v63 intValue];
      v68 = MEMORY[0x277D6FD60];
      if (v67 <= 0)
      {
        v68 = MEMORY[0x277D6FD78];
      }

      v64 = *v68;
    }

    v65 = v64;
  }

  else
  {
    v65 = *MEMORY[0x277D6FD80];
  }

  v69 = *MEMORY[0x277D85DE8];

  return v65;
}

- (id)computeValueFromExpression:(id)a3 precondition:(id)a4 defaultValue:(id)a5 bindings:(id)a6 bucketThresholds:(id)a7 bucketValues:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = v15;
  if (!v14 || (v20 = v19, [v14 evaluateWithObject:v16]))
  {
    v20 = [v13 expressionValueWithObject:v16 context:0];
  }

  v21 = [MEMORY[0x277D6F320] bucketNumber:v20 bucketThresholds:v17 bucketValues:v18];

  return v21;
}

- (id)bucketCountsByWordLength:(id)a3
{
  v4 = a3;
  v5 = [(TIKBUserModelValues *)self kbContext];
  v6 = [v5 inputLanguage];
  if ([v6 hasPrefix:@"zh"])
  {
    v7 = &unk_28400BB98;
  }

  else
  {
    v7 = &unk_28400BBB0;
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_28400BBC8];
  v9 = *MEMORY[0x277D6FDA0];
  if (*MEMORY[0x277D6FDA0])
  {
    v10 = 0;
    do
    {
      v11 = [v7 objectAtIndexedSubscript:v10];
      v12 = [v11 integerValue];

      v13 = [v8 objectAtIndexedSubscript:v12];
      v14 = [v13 integerValue];
      v15 = [v4 objectAtIndexedSubscript:v10];
      v16 = [v15 integerValue];

      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v16 + v14];
      [v8 setObject:v17 atIndexedSubscript:v12];

      ++v10;
    }

    while (v9 != v10);
  }

  return v8;
}

- (void)persistForDate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TIKBUserModelValues;
  [(TIUserModelValues *)&v17 persistForDate:a3];
  v4 = IXADefaultLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [(TIUserModelValues *)self inputMode];
    v5 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardLanguage];
    v6 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardRegion];
    v7 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardVariant];
    v8 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardSecondaryLanguage];
    v9 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardSecondaryRegion];
    v10 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardLayout];
    v11 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardType];
    v12 = [(NSMutableDictionary *)self->_stringValues objectForKey:kFeatureStringKeyboardConfiguration];
    v13 = [v15 stringWithFormat:@"%s TIKBUserModelValues persisted: %@ %@_%@-%@ %@_%@ %@ %@ %@", "-[TIKBUserModelValues persistForDate:]", v16, v5, v6, v7, v8, v9, v10, v11, v12];
    *buf = 138412290;
    v19 = v13;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)settingValueFromName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kSettingValueAutocorrectionEnabled])
  {
    v5 = [(TIKBUserModelValues *)self calcAutocorrectionEnabled];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TIKBUserModelValues;
    v5 = [(TIUserModelValues *)&v8 settingValueFromName:v4];
  }

  v6 = v5;

  return v6;
}

- (TIKBUserModelValues)initWithInputMode:(id)a3 context:(id)a4 userModelDataStore:(id)a5 durableCounters:(id)a6 settingsDictionary:(id)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v51.receiver = self;
  v51.super_class = TIKBUserModelValues;
  v14 = [(TIUserModelValues *)&v51 initWithInputMode:v12 context:v13 userModelDataStore:a5 durableCounters:a6 settingsDictionary:a7];
  if (v14)
  {
    v50 = v12;
    v15 = v13;
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
    stringValues = v14->_stringValues;
    v14->_stringValues = v16;

    v18 = v14->_stringValues;
    v19 = [v15 inputLanguage];
    [(NSMutableDictionary *)v18 setObject:v19 forKey:kFeatureStringKeyboardLanguage];

    v20 = v14->_stringValues;
    v21 = [v15 inputRegion];
    [(NSMutableDictionary *)v20 setObject:v21 forKey:kFeatureStringKeyboardRegion];

    v22 = v14->_stringValues;
    v23 = [v15 inputVariant];
    [(NSMutableDictionary *)v22 setObject:v23 forKey:kFeatureStringKeyboardVariant];

    v24 = v14->_stringValues;
    v25 = [v15 secondaryLanguage];
    [(NSMutableDictionary *)v24 setObject:v25 forKey:kFeatureStringKeyboardSecondaryLanguage];

    v26 = v14->_stringValues;
    v27 = [v15 secondaryRegion];
    [(NSMutableDictionary *)v26 setObject:v27 forKey:kFeatureStringKeyboardSecondaryRegion];

    v28 = v14->_stringValues;
    v29 = [v15 layoutName];
    [(NSMutableDictionary *)v28 setObject:v29 forKey:kFeatureStringKeyboardLayout];

    v30 = v14->_stringValues;
    v31 = +[TIKBAnalyticsMetricsContext keyboardTypeEnumToString:](TIKBAnalyticsMetricsContext, "keyboardTypeEnumToString:", [v15 keyboardType]);
    [(NSMutableDictionary *)v30 setObject:v31 forKey:kFeatureStringKeyboardType];

    v32 = v14->_stringValues;
    v33 = [v15 keyboardConfiguration];
    v34 = v33;
    if (!v33)
    {
      v33 = @"None";
    }

    v35 = [(__CFString *)v33 copy];
    [(NSMutableDictionary *)v32 setObject:v35 forKey:kFeatureStringKeyboardConfiguration];

    v36 = IXADefaultLogFacility();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v47 = MEMORY[0x277CCACA8];
      v49 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardLanguage];
      v37 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardRegion];
      v38 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardVariant];
      [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardSecondaryLanguage];
      v39 = v48 = v13;
      v40 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardSecondaryRegion];
      v46 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardLayout];
      v41 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardType];
      v42 = [(NSMutableDictionary *)v14->_stringValues objectForKey:kFeatureStringKeyboardConfiguration];
      v43 = [v47 stringWithFormat:@"%s TIKBUserModelValues created: %@ %@_%@-%@ %@_%@ %@ %@ %@", "-[TIKBUserModelValues initWithInputMode:context:userModelDataStore:durableCounters:settingsDictionary:]", v50, v49, v37, v38, v39, v40, v46, v41, v42];
      *buf = 138412290;
      v53 = v43;
      _os_log_impl(&dword_22CA55000, v36, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);

      v13 = v48;
    }

    v12 = v50;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v14;
}

@end