@interface TISKMetricDefinition
+ (double)pointsToMM:(double)m;
+ (id)metricDefinitions;
- (id)init:(id)init type:(int)type metricDef:(id *)def size:(unint64_t)size isPointMetric:(BOOL)metric;
@end

@implementation TISKMetricDefinition

- (id)init:(id)init type:(int)type metricDef:(id *)def size:(unint64_t)size isPointMetric:(BOOL)metric
{
  initCopy = init;
  v17.receiver = self;
  v17.super_class = TISKMetricDefinition;
  v14 = [(TISKMetricDefinition *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_metricName, init);
    v15->_metricType = type;
    v15->_isPointMetric = metric;
    v15->_positionalSize = size;
    v15->_metricDefinition = def;
  }

  return v15;
}

+ (id)metricDefinitions
{
  if (metricDefinitions_onceToken != -1)
  {
    dispatch_once(&metricDefinitions_onceToken, &__block_literal_global_18656);
  }

  v3 = metricDefinitions_defs;

  return v3;
}

void __41__TISKMetricDefinition_metricDefinitions__block_invoke()
{
  v262[85] = *MEMORY[0x277D85DE8];
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v0 = getSRKeyboardMetricScalarTotalWordsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalWordsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalWordsKeySymbolLoc_ptr)
  {
    v1 = SensorKitLibrary();
    v259[3] = dlsym(v1, "SRKeyboardMetricScalarTotalWordsKey");
    getSRKeyboardMetricScalarTotalWordsKeySymbolLoc_ptr = v259[3];
    v0 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v0)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfWordsCounter, *v0);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v2 = getSRKeyboardMetricScalarTotalAlteredWordsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalAlteredWordsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalAlteredWordsKeySymbolLoc_ptr)
  {
    v3 = SensorKitLibrary();
    v259[3] = dlsym(v3, "SRKeyboardMetricScalarTotalAlteredWordsKey");
    getSRKeyboardMetricScalarTotalAlteredWordsKeySymbolLoc_ptr = v259[3];
    v2 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v2)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfAlteredWordsCounter, *v2);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v4 = getSRKeyboardMetricScalarTotalTapsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalTapsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalTapsKeySymbolLoc_ptr)
  {
    v5 = SensorKitLibrary();
    v259[3] = dlsym(v5, "SRKeyboardMetricScalarTotalTapsKey");
    getSRKeyboardMetricScalarTotalTapsKeySymbolLoc_ptr = v259[3];
    v4 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v4)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfTappedKeysCounter, *v4);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v6 = getSRKeyboardMetricScalarTotalDragsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalDragsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalDragsKeySymbolLoc_ptr)
  {
    v7 = SensorKitLibrary();
    v259[3] = dlsym(v7, "SRKeyboardMetricScalarTotalDragsKey");
    getSRKeyboardMetricScalarTotalDragsKeySymbolLoc_ptr = v259[3];
    v6 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v6)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfDragsCounter, *v6);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v8 = getSRKeyboardMetricScalarTotalDeletesKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalDeletesKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalDeletesKeySymbolLoc_ptr)
  {
    v9 = SensorKitLibrary();
    v259[3] = dlsym(v9, "SRKeyboardMetricScalarTotalDeletesKey");
    getSRKeyboardMetricScalarTotalDeletesKeySymbolLoc_ptr = v259[3];
    v8 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v8)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfDeletesCounter, *v8);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v10 = getSRKeyboardMetricScalarTotalEmojiKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalEmojiKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalEmojiKeySymbolLoc_ptr)
  {
    v11 = SensorKitLibrary();
    v259[3] = dlsym(v11, "SRKeyboardMetricScalarTotalEmojiKey");
    getSRKeyboardMetricScalarTotalEmojiKeySymbolLoc_ptr = v259[3];
    v10 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v10)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfEmojiCounter, *v10);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v12 = getSRKeyboardMetricScalarTotalPathsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalPathsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalPathsKeySymbolLoc_ptr)
  {
    v13 = SensorKitLibrary();
    v259[3] = dlsym(v13, "SRKeyboardMetricScalarTotalPathsKey");
    getSRKeyboardMetricScalarTotalPathsKeySymbolLoc_ptr = v259[3];
    v12 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v12)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfPaths, *v12);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v14 = getSRKeyboardMetricScalarTotalPathTimeKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalPathTimeKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalPathTimeKeySymbolLoc_ptr)
  {
    v15 = SensorKitLibrary();
    v259[3] = dlsym(v15, "SRKeyboardMetricScalarTotalPathTimeKey");
    getSRKeyboardMetricScalarTotalPathTimeKeySymbolLoc_ptr = v259[3];
    v14 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v14)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKTotalPathTime, *v14);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v16 = getSRKeyboardMetricScalarTotalPathLengthKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalPathLengthKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalPathLengthKeySymbolLoc_ptr)
  {
    v17 = SensorKitLibrary();
    v259[3] = dlsym(v17, "SRKeyboardMetricScalarTotalPathLengthKey");
    getSRKeyboardMetricScalarTotalPathLengthKeySymbolLoc_ptr = v259[3];
    v16 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v16)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKTotalPathLength, *v16);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v18 = getSRKeyboardMetricScalarTotalSessionTypingDurationKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalSessionTypingDurationKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalSessionTypingDurationKeySymbolLoc_ptr)
  {
    v19 = SensorKitLibrary();
    v259[3] = dlsym(v19, "SRKeyboardMetricScalarTotalSessionTypingDurationKey");
    getSRKeyboardMetricScalarTotalSessionTypingDurationKeySymbolLoc_ptr = v259[3];
    v18 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v18)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKTotalSessionTypingDuration, *v18);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v20 = getSRKeyboardMetricScalarTypingPausesKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTypingPausesKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTypingPausesKeySymbolLoc_ptr)
  {
    v21 = SensorKitLibrary();
    v259[3] = dlsym(v21, "SRKeyboardMetricScalarTypingPausesKey");
    getSRKeyboardMetricScalarTypingPausesKeySymbolLoc_ptr = v259[3];
    v20 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v20)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKTypingPauses, *v20);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v22 = getSRKeyboardMetricScalarEpisodeCountKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarEpisodeCountKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarEpisodeCountKeySymbolLoc_ptr)
  {
    v23 = SensorKitLibrary();
    v259[3] = dlsym(v23, "SRKeyboardMetricScalarEpisodeCountKey");
    getSRKeyboardMetricScalarEpisodeCountKeySymbolLoc_ptr = v259[3];
    v22 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v22)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKEpisodeCount, *v22);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v24 = getSRKeyboardMetricScalarTapTypingSpeedKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTapTypingSpeedKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTapTypingSpeedKeySymbolLoc_ptr)
  {
    v25 = SensorKitLibrary();
    v259[3] = dlsym(v25, "SRKeyboardMetricScalarTapTypingSpeedKey");
    getSRKeyboardMetricScalarTapTypingSpeedKeySymbolLoc_ptr = v259[3];
    v24 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v24)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKTapTypingSpeed, *v24);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v26 = getSRKeyboardMetricScalarPathTypingSpeedSymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarPathTypingSpeedSymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarPathTypingSpeedSymbolLoc_ptr)
  {
    v27 = SensorKitLibrary();
    v259[3] = dlsym(v27, "SRKeyboardMetricScalarPathTypingSpeed");
    getSRKeyboardMetricScalarPathTypingSpeedSymbolLoc_ptr = v259[3];
    v26 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v26)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKPathTypingSpeed, *v26);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v28 = getSRKeyboardMetricScalarTotalAutoCorrectionsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalAutoCorrectionsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalAutoCorrectionsKeySymbolLoc_ptr)
  {
    v29 = SensorKitLibrary();
    v259[3] = dlsym(v29, "SRKeyboardMetricScalarTotalAutoCorrectionsKey");
    getSRKeyboardMetricScalarTotalAutoCorrectionsKeySymbolLoc_ptr = v259[3];
    v28 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v28)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfAutoCorrections, *v28);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v30 = getSRKeyboardMetricScalarTotalSpaceCorrectionsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalSpaceCorrectionsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalSpaceCorrectionsKeySymbolLoc_ptr)
  {
    v31 = SensorKitLibrary();
    v259[3] = dlsym(v31, "SRKeyboardMetricScalarTotalSpaceCorrectionsKey");
    getSRKeyboardMetricScalarTotalSpaceCorrectionsKeySymbolLoc_ptr = v259[3];
    v30 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v30)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfSpaceCorrections, *v30);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v32 = getSRKeyboardMetricScalarTotalRetroCorrectionsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalRetroCorrectionsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalRetroCorrectionsKeySymbolLoc_ptr)
  {
    v33 = SensorKitLibrary();
    v259[3] = dlsym(v33, "SRKeyboardMetricScalarTotalRetroCorrectionsKey");
    getSRKeyboardMetricScalarTotalRetroCorrectionsKeySymbolLoc_ptr = v259[3];
    v32 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v32)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfRetroCorrections, *v32);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v34 = getSRKeyboardMetricScalarTotalTranspositionCorrectionsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalTranspositionCorrectionsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalTranspositionCorrectionsKeySymbolLoc_ptr)
  {
    v35 = SensorKitLibrary();
    v259[3] = dlsym(v35, "SRKeyboardMetricScalarTotalTranspositionCorrectionsKey");
    getSRKeyboardMetricScalarTotalTranspositionCorrectionsKeySymbolLoc_ptr = v259[3];
    v34 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v34)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfTranspositionCorrections, *v34);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v36 = getSRKeyboardMetricScalarTotalInsertKeyCorrectionsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalInsertKeyCorrectionsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalInsertKeyCorrectionsKeySymbolLoc_ptr)
  {
    v37 = SensorKitLibrary();
    v259[3] = dlsym(v37, "SRKeyboardMetricScalarTotalInsertKeyCorrectionsKey");
    getSRKeyboardMetricScalarTotalInsertKeyCorrectionsKeySymbolLoc_ptr = v259[3];
    v36 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v36)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfInsertKeyCorrections, *v36);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v38 = getSRKeyboardMetricScalarTotalSkipTouchCorrectionsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalSkipTouchCorrectionsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalSkipTouchCorrectionsKeySymbolLoc_ptr)
  {
    v39 = SensorKitLibrary();
    v259[3] = dlsym(v39, "SRKeyboardMetricScalarTotalSkipTouchCorrectionsKey");
    getSRKeyboardMetricScalarTotalSkipTouchCorrectionsKeySymbolLoc_ptr = v259[3];
    v38 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v38)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfSkipTouchCorrections, *v38);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v40 = getSRKeyboardMetricScalarTotalNearKeyCorrectionsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalNearKeyCorrectionsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalNearKeyCorrectionsKeySymbolLoc_ptr)
  {
    v41 = SensorKitLibrary();
    v259[3] = dlsym(v41, "SRKeyboardMetricScalarTotalNearKeyCorrectionsKey");
    getSRKeyboardMetricScalarTotalNearKeyCorrectionsKeySymbolLoc_ptr = v259[3];
    v40 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v40)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfNearKeyCorrections, *v40);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v42 = getSRKeyboardMetricScalarTotalSubstitutionCorrectionsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalSubstitutionCorrectionsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalSubstitutionCorrectionsKeySymbolLoc_ptr)
  {
    v43 = SensorKitLibrary();
    v259[3] = dlsym(v43, "SRKeyboardMetricScalarTotalSubstitutionCorrectionsKey");
    getSRKeyboardMetricScalarTotalSubstitutionCorrectionsKeySymbolLoc_ptr = v259[3];
    v42 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v42)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfSubstitutionCorrections, *v42);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v44 = getSRKeyboardMetricScalarTotalHitTestCorrectionsKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarTotalHitTestCorrectionsKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarTotalHitTestCorrectionsKeySymbolLoc_ptr)
  {
    v45 = SensorKitLibrary();
    v259[3] = dlsym(v45, "SRKeyboardMetricScalarTotalHitTestCorrectionsKey");
    getSRKeyboardMetricScalarTotalHitTestCorrectionsKeySymbolLoc_ptr = v259[3];
    v44 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v44)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKNumberOfHitTestCorrections, *v44);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v46 = getSRKeyboardMetricPositionalWordDownErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricPositionalWordDownErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricPositionalWordDownErrorDistanceKeySymbolLoc_ptr)
  {
    v47 = SensorKitLibrary();
    v259[3] = dlsym(v47, "SRKeyboardMetricPositionalWordDownErrorDistanceKey");
    getSRKeyboardMetricPositionalWordDownErrorDistanceKeySymbolLoc_ptr = v259[3];
    v46 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v46)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKLongWordPositionalDownErrorDistance, *v46);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v48 = getSRKeyboardMetricPositionalWordUpErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricPositionalWordUpErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricPositionalWordUpErrorDistanceKeySymbolLoc_ptr)
  {
    v49 = SensorKitLibrary();
    v259[3] = dlsym(v49, "SRKeyboardMetricPositionalWordUpErrorDistanceKey");
    getSRKeyboardMetricPositionalWordUpErrorDistanceKeySymbolLoc_ptr = v259[3];
    v48 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v48)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKLongWordPositionalUpErrorDistance, *v48);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v50 = getSRKeyboardMetricPositionalWordTouchDownUpKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricPositionalWordTouchDownUpKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricPositionalWordTouchDownUpKeySymbolLoc_ptr)
  {
    v51 = SensorKitLibrary();
    v259[3] = dlsym(v51, "SRKeyboardMetricPositionalWordTouchDownUpKey");
    getSRKeyboardMetricPositionalWordTouchDownUpKeySymbolLoc_ptr = v259[3];
    v50 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v50)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKLongWordTouchDownUpPositionalMetric, *v50);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v52 = getSRKeyboardMetricPositionalWordTouchDownDownKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricPositionalWordTouchDownDownKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricPositionalWordTouchDownDownKeySymbolLoc_ptr)
  {
    v53 = SensorKitLibrary();
    v259[3] = dlsym(v53, "SRKeyboardMetricPositionalWordTouchDownDownKey");
    getSRKeyboardMetricPositionalWordTouchDownDownKeySymbolLoc_ptr = v259[3];
    v52 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v52)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKLongWordTouchDownDownPositionalMetric, *v52);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v54 = getSRKeyboardMetricProbabilityUpErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityUpErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityUpErrorDistanceKeySymbolLoc_ptr)
  {
    v55 = SensorKitLibrary();
    v259[3] = dlsym(v55, "SRKeyboardMetricProbabilityUpErrorDistanceKey");
    getSRKeyboardMetricProbabilityUpErrorDistanceKeySymbolLoc_ptr = v259[3];
    v54 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v54)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKUpErrorDistance, *v54);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v56 = getSRKeyboardMetricProbabilityDownErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityDownErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityDownErrorDistanceKeySymbolLoc_ptr)
  {
    v57 = SensorKitLibrary();
    v259[3] = dlsym(v57, "SRKeyboardMetricProbabilityDownErrorDistanceKey");
    getSRKeyboardMetricProbabilityDownErrorDistanceKeySymbolLoc_ptr = v259[3];
    v56 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v56)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDownErrorDistance, *v56);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v58 = getSRKeyboardMetricProbabilitySpaceUpErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilitySpaceUpErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilitySpaceUpErrorDistanceKeySymbolLoc_ptr)
  {
    v59 = SensorKitLibrary();
    v259[3] = dlsym(v59, "SRKeyboardMetricProbabilitySpaceUpErrorDistanceKey");
    getSRKeyboardMetricProbabilitySpaceUpErrorDistanceKeySymbolLoc_ptr = v259[3];
    v58 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v58)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKSpaceUpErrorDistance, *v58);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v60 = getSRKeyboardMetricProbabilitySpaceDownErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilitySpaceDownErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilitySpaceDownErrorDistanceKeySymbolLoc_ptr)
  {
    v61 = SensorKitLibrary();
    v259[3] = dlsym(v61, "SRKeyboardMetricProbabilitySpaceDownErrorDistanceKey");
    getSRKeyboardMetricProbabilitySpaceDownErrorDistanceKeySymbolLoc_ptr = v259[3];
    v60 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v60)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKSpaceDownErrorDistance, *v60);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v62 = getSRKeyboardMetricProbabilityDeleteUpErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityDeleteUpErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityDeleteUpErrorDistanceKeySymbolLoc_ptr)
  {
    v63 = SensorKitLibrary();
    v259[3] = dlsym(v63, "SRKeyboardMetricProbabilityDeleteUpErrorDistanceKey");
    getSRKeyboardMetricProbabilityDeleteUpErrorDistanceKeySymbolLoc_ptr = v259[3];
    v62 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v62)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDeleteUpErrorDistance, *v62);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v64 = getSRKeyboardMetricProbabilityDeleteDownErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityDeleteDownErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityDeleteDownErrorDistanceKeySymbolLoc_ptr)
  {
    v65 = SensorKitLibrary();
    v259[3] = dlsym(v65, "SRKeyboardMetricProbabilityDeleteDownErrorDistanceKey");
    getSRKeyboardMetricProbabilityDeleteDownErrorDistanceKeySymbolLoc_ptr = v259[3];
    v64 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v64)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDeleteDownErrorDistance, *v64);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v66 = getSRKeyboardMetricProbabilityShortWordCharKeyUpErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityShortWordCharKeyUpErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityShortWordCharKeyUpErrorDistanceKeySymbolLoc_ptr)
  {
    v67 = SensorKitLibrary();
    v259[3] = dlsym(v67, "SRKeyboardMetricProbabilityShortWordCharKeyUpErrorDistanceKey");
    getSRKeyboardMetricProbabilityShortWordCharKeyUpErrorDistanceKeySymbolLoc_ptr = v259[3];
    v66 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v66)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKShortWordCharUpErrorDistance, *v66);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v68 = getSRKeyboardMetricProbabilityShortWordCharKeyDownErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityShortWordCharKeyDownErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityShortWordCharKeyDownErrorDistanceKeySymbolLoc_ptr)
  {
    v69 = SensorKitLibrary();
    v259[3] = dlsym(v69, "SRKeyboardMetricProbabilityShortWordCharKeyDownErrorDistanceKey");
    getSRKeyboardMetricProbabilityShortWordCharKeyDownErrorDistanceKeySymbolLoc_ptr = v259[3];
    v68 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v68)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKShortWordCharDownErrorDistance, *v68);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v70 = getSRKeyboardMetricProbabilityShortWordCharKeyToCharKeyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityShortWordCharKeyToCharKeyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityShortWordCharKeyToCharKeyKeySymbolLoc_ptr)
  {
    v71 = SensorKitLibrary();
    v259[3] = dlsym(v71, "SRKeyboardMetricProbabilityShortWordCharKeyToCharKeyKey");
    getSRKeyboardMetricProbabilityShortWordCharKeyToCharKeyKeySymbolLoc_ptr = v259[3];
    v70 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v70)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKShortWordCharToCharMetric, *v70);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v72 = getSRKeyboardMetricProbabilityShortWordCharKeyTouchDownUpKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityShortWordCharKeyTouchDownUpKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityShortWordCharKeyTouchDownUpKeySymbolLoc_ptr)
  {
    v73 = SensorKitLibrary();
    v259[3] = dlsym(v73, "SRKeyboardMetricProbabilityShortWordCharKeyTouchDownUpKey");
    getSRKeyboardMetricProbabilityShortWordCharKeyTouchDownUpKeySymbolLoc_ptr = v259[3];
    v72 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v72)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKShortWordCharTouchDownUpMetric, *v72);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v74 = getSRKeyboardMetricProbabilityTouchDownUpKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityTouchDownUpKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityTouchDownUpKeySymbolLoc_ptr)
  {
    v75 = SensorKitLibrary();
    v259[3] = dlsym(v75, "SRKeyboardMetricProbabilityTouchDownUpKey");
    getSRKeyboardMetricProbabilityTouchDownUpKeySymbolLoc_ptr = v259[3];
    v74 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v74)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKTouchDownUpMetric, *v74);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v76 = getSRKeyboardMetricProbabilitySpaceTouchDownUpKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilitySpaceTouchDownUpKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilitySpaceTouchDownUpKeySymbolLoc_ptr)
  {
    v77 = SensorKitLibrary();
    v259[3] = dlsym(v77, "SRKeyboardMetricProbabilitySpaceTouchDownUpKey");
    getSRKeyboardMetricProbabilitySpaceTouchDownUpKeySymbolLoc_ptr = v259[3];
    v76 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v76)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKSpaceTouchDownUpMetric, *v76);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v78 = getSRKeyboardMetricProbabilityDeleteTouchDownUpKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityDeleteTouchDownUpKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityDeleteTouchDownUpKeySymbolLoc_ptr)
  {
    v79 = SensorKitLibrary();
    v259[3] = dlsym(v79, "SRKeyboardMetricProbabilityDeleteTouchDownUpKey");
    getSRKeyboardMetricProbabilityDeleteTouchDownUpKeySymbolLoc_ptr = v259[3];
    v78 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v78)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDeleteTouchDownUpMetric, *v78);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v80 = getSRKeyboardMetricProbabilityTouchDownDownKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityTouchDownDownKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityTouchDownDownKeySymbolLoc_ptr)
  {
    v81 = SensorKitLibrary();
    v259[3] = dlsym(v81, "SRKeyboardMetricProbabilityTouchDownDownKey");
    getSRKeyboardMetricProbabilityTouchDownDownKeySymbolLoc_ptr = v259[3];
    v80 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v80)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKTouchDownDownMetric, *v80);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v82 = getSRKeyboardMetricProbabilityTouchUpDownKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityTouchUpDownKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityTouchUpDownKeySymbolLoc_ptr)
  {
    v83 = SensorKitLibrary();
    v259[3] = dlsym(v83, "SRKeyboardMetricProbabilityTouchUpDownKey");
    getSRKeyboardMetricProbabilityTouchUpDownKeySymbolLoc_ptr = v259[3];
    v82 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v82)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKTouchUpDownMetric, *v82);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v84 = getSRKeyboardMetricPositionalWordTouchUpDownKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricPositionalWordTouchUpDownKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricPositionalWordTouchUpDownKeySymbolLoc_ptr)
  {
    v85 = SensorKitLibrary();
    v259[3] = dlsym(v85, "SRKeyboardMetricPositionalWordTouchUpDownKey");
    getSRKeyboardMetricPositionalWordTouchUpDownKeySymbolLoc_ptr = v259[3];
    v84 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v84)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKLongWordTouchUpDownPositionalMetric, *v84);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v86 = getSRKeyboardMetricProbabilityCharKeyToPredictionKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityCharKeyToPredictionKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityCharKeyToPredictionKeySymbolLoc_ptr)
  {
    v87 = SensorKitLibrary();
    v259[3] = dlsym(v87, "SRKeyboardMetricProbabilityCharKeyToPredictionKey");
    getSRKeyboardMetricProbabilityCharKeyToPredictionKeySymbolLoc_ptr = v259[3];
    v86 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v86)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKCharToPredictionMetric, *v86);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v88 = getSRKeyboardMetricProbabilityCharKeyToAnyTapKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityCharKeyToAnyTapKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityCharKeyToAnyTapKeySymbolLoc_ptr)
  {
    v89 = SensorKitLibrary();
    v259[3] = dlsym(v89, "SRKeyboardMetricProbabilityCharKeyToAnyTapKey");
    getSRKeyboardMetricProbabilityCharKeyToAnyTapKeySymbolLoc_ptr = v259[3];
    v88 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v88)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKCharToAnyTapMetric, *v88);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v90 = getSRKeyboardMetricProbabilityAnyTapToCharKeyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityAnyTapToCharKeyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityAnyTapToCharKeyKeySymbolLoc_ptr)
  {
    v91 = SensorKitLibrary();
    v259[3] = dlsym(v91, "SRKeyboardMetricProbabilityAnyTapToCharKeyKey");
    getSRKeyboardMetricProbabilityAnyTapToCharKeyKeySymbolLoc_ptr = v259[3];
    v90 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v90)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKAnyTapToCharMetric, *v90);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v92 = getSRKeyboardMetricProbabilitySpaceToCharKeyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilitySpaceToCharKeyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilitySpaceToCharKeyKeySymbolLoc_ptr)
  {
    v93 = SensorKitLibrary();
    v259[3] = dlsym(v93, "SRKeyboardMetricProbabilitySpaceToCharKeyKey");
    getSRKeyboardMetricProbabilitySpaceToCharKeyKeySymbolLoc_ptr = v259[3];
    v92 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v92)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKSpaceToCharMetric, *v92);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v94 = getSRKeyboardMetricProbabilityCharKeyToSpaceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityCharKeyToSpaceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityCharKeyToSpaceKeySymbolLoc_ptr)
  {
    v95 = SensorKitLibrary();
    v259[3] = dlsym(v95, "SRKeyboardMetricProbabilityCharKeyToSpaceKey");
    getSRKeyboardMetricProbabilityCharKeyToSpaceKeySymbolLoc_ptr = v259[3];
    v94 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v94)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKCharToSpaceMetric, *v94);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v96 = getSRKeyboardMetricProbabilitySpaceToDeleteKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilitySpaceToDeleteKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilitySpaceToDeleteKeySymbolLoc_ptr)
  {
    v97 = SensorKitLibrary();
    v259[3] = dlsym(v97, "SRKeyboardMetricProbabilitySpaceToDeleteKey");
    getSRKeyboardMetricProbabilitySpaceToDeleteKeySymbolLoc_ptr = v259[3];
    v96 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v96)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKSpaceToDeleteMetric, *v96);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v98 = getSRKeyboardMetricProbabilityDeleteToSpaceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityDeleteToSpaceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityDeleteToSpaceKeySymbolLoc_ptr)
  {
    v99 = SensorKitLibrary();
    v259[3] = dlsym(v99, "SRKeyboardMetricProbabilityDeleteToSpaceKey");
    getSRKeyboardMetricProbabilityDeleteToSpaceKeySymbolLoc_ptr = v259[3];
    v98 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v98)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDeleteToSpaceMetric, *v98);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v100 = getSRKeyboardMetricProbabilitySpaceToSpaceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilitySpaceToSpaceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilitySpaceToSpaceKeySymbolLoc_ptr)
  {
    v101 = SensorKitLibrary();
    v259[3] = dlsym(v101, "SRKeyboardMetricProbabilitySpaceToSpaceKey");
    getSRKeyboardMetricProbabilitySpaceToSpaceKeySymbolLoc_ptr = v259[3];
    v100 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v100)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKSpaceToSpaceMetric, *v100);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v102 = getSRKeyboardMetricProbabilitySpaceToShiftKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilitySpaceToShiftKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilitySpaceToShiftKeySymbolLoc_ptr)
  {
    v103 = SensorKitLibrary();
    v259[3] = dlsym(v103, "SRKeyboardMetricProbabilitySpaceToShiftKey");
    getSRKeyboardMetricProbabilitySpaceToShiftKeySymbolLoc_ptr = v259[3];
    v102 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v102)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKSpaceToShiftMetric, *v102);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v104 = getSRKeyboardMetricProbabilitySpaceTo123KeyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilitySpaceTo123KeyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilitySpaceTo123KeyKeySymbolLoc_ptr)
  {
    v105 = SensorKitLibrary();
    v259[3] = dlsym(v105, "SRKeyboardMetricProbabilitySpaceTo123KeyKey");
    getSRKeyboardMetricProbabilitySpaceTo123KeyKeySymbolLoc_ptr = v259[3];
    v104 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v104)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKSpaceTo123Metric, *v104);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v106 = getSRKeyboardMetricProbabilitySpaceToPredictionKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilitySpaceToPredictionKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilitySpaceToPredictionKeySymbolLoc_ptr)
  {
    v107 = SensorKitLibrary();
    v259[3] = dlsym(v107, "SRKeyboardMetricProbabilitySpaceToPredictionKey");
    getSRKeyboardMetricProbabilitySpaceToPredictionKeySymbolLoc_ptr = v259[3];
    v106 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v106)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKSpaceToPredictionMetric, *v106);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v108 = getSRKeyboardMetricProbabilityDeleteToCharKeyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityDeleteToCharKeyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityDeleteToCharKeyKeySymbolLoc_ptr)
  {
    v109 = SensorKitLibrary();
    v259[3] = dlsym(v109, "SRKeyboardMetricProbabilityDeleteToCharKeyKey");
    getSRKeyboardMetricProbabilityDeleteToCharKeyKeySymbolLoc_ptr = v259[3];
    v108 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v108)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDeleteToCharMetric, *v108);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v110 = getSRKeyboardMetricProbabilityCharKeyToDeleteKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityCharKeyToDeleteKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityCharKeyToDeleteKeySymbolLoc_ptr)
  {
    v111 = SensorKitLibrary();
    v259[3] = dlsym(v111, "SRKeyboardMetricProbabilityCharKeyToDeleteKey");
    getSRKeyboardMetricProbabilityCharKeyToDeleteKeySymbolLoc_ptr = v259[3];
    v110 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v110)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKKeyToDeleteMetric, *v110);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v112 = getSRKeyboardMetricProbabilityDeleteToDeleteKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityDeleteToDeleteKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityDeleteToDeleteKeySymbolLoc_ptr)
  {
    v113 = SensorKitLibrary();
    v259[3] = dlsym(v113, "SRKeyboardMetricProbabilityDeleteToDeleteKey");
    getSRKeyboardMetricProbabilityDeleteToDeleteKeySymbolLoc_ptr = v259[3];
    v112 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v112)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDeleteToDeleteMetric, *v112);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v114 = getSRKeyboardMetricProbabilityDeleteToShiftKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityDeleteToShiftKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityDeleteToShiftKeySymbolLoc_ptr)
  {
    v115 = SensorKitLibrary();
    v259[3] = dlsym(v115, "SRKeyboardMetricProbabilityDeleteToShiftKey");
    getSRKeyboardMetricProbabilityDeleteToShiftKeySymbolLoc_ptr = v259[3];
    v114 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v114)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDeleteToShiftMetric, *v114);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v116 = getSRKeyboardMetricProbabilityDeleteTo123KeyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityDeleteTo123KeyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityDeleteTo123KeyKeySymbolLoc_ptr)
  {
    v117 = SensorKitLibrary();
    v259[3] = dlsym(v117, "SRKeyboardMetricProbabilityDeleteTo123KeyKey");
    getSRKeyboardMetricProbabilityDeleteTo123KeyKeySymbolLoc_ptr = v259[3];
    v116 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v116)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDeleteTo123Metric, *v116);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v118 = getSRKeyboardMetricProbabilityPathErrorDistanceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityPathErrorDistanceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityPathErrorDistanceKeySymbolLoc_ptr)
  {
    v119 = SensorKitLibrary();
    v259[3] = dlsym(v119, "SRKeyboardMetricProbabilityPathErrorDistanceKey");
    getSRKeyboardMetricProbabilityPathErrorDistanceKeySymbolLoc_ptr = v259[3];
    v118 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v118)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKPathErrorDistanceMetric, *v118);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v120 = getSRKeyboardMetricProbabilityDeleteToPathKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityDeleteToPathKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityDeleteToPathKeySymbolLoc_ptr)
  {
    v121 = SensorKitLibrary();
    v259[3] = dlsym(v121, "SRKeyboardMetricProbabilityDeleteToPathKey");
    getSRKeyboardMetricProbabilityDeleteToPathKeySymbolLoc_ptr = v259[3];
    v120 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v120)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDeleteToPathMetric, *v120);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v122 = getSRKeyboardMetricProbabilityPathToDeleteKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityPathToDeleteKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityPathToDeleteKeySymbolLoc_ptr)
  {
    v123 = SensorKitLibrary();
    v259[3] = dlsym(v123, "SRKeyboardMetricProbabilityPathToDeleteKey");
    getSRKeyboardMetricProbabilityPathToDeleteKeySymbolLoc_ptr = v259[3];
    v122 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v122)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKPathToDeleteMetric, *v122);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v124 = getSRKeyboardMetricProbabilitySpaceToPathKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilitySpaceToPathKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilitySpaceToPathKeySymbolLoc_ptr)
  {
    v125 = SensorKitLibrary();
    v259[3] = dlsym(v125, "SRKeyboardMetricProbabilitySpaceToPathKey");
    getSRKeyboardMetricProbabilitySpaceToPathKeySymbolLoc_ptr = v259[3];
    v124 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v124)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKSpaceToPathMetric, *v124);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v126 = getSRKeyboardMetricProbabilityPathToSpaceKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityPathToSpaceKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityPathToSpaceKeySymbolLoc_ptr)
  {
    v127 = SensorKitLibrary();
    v259[3] = dlsym(v127, "SRKeyboardMetricProbabilityPathToSpaceKey");
    getSRKeyboardMetricProbabilityPathToSpaceKeySymbolLoc_ptr = v259[3];
    v126 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v126)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKPathSpaceMetric, *v126);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v128 = getSRKeyboardMetricProbabilityPathToPathKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityPathToPathKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityPathToPathKeySymbolLoc_ptr)
  {
    v129 = SensorKitLibrary();
    v259[3] = dlsym(v129, "SRKeyboardMetricProbabilityPathToPathKey");
    getSRKeyboardMetricProbabilityPathToPathKeySymbolLoc_ptr = v259[3];
    v128 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v128)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKPathToPathMetric, *v128);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v130 = getSRKeyboardMetricScalarMidPathPauseKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarMidPathPauseKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarMidPathPauseKeySymbolLoc_ptr)
  {
    v131 = SensorKitLibrary();
    v259[3] = dlsym(v131, "SRKeyboardMetricScalarMidPathPauseKey");
    getSRKeyboardMetricScalarMidPathPauseKeySymbolLoc_ptr = v259[3];
    v130 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v130)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKMidPathPause, *v130);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v132 = getSRKeyboardMetricPositionalDeleteToDeleteKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricPositionalDeleteToDeleteKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricPositionalDeleteToDeleteKeySymbolLoc_ptr)
  {
    v133 = SensorKitLibrary();
    v259[3] = dlsym(v133, "SRKeyboardMetricPositionalDeleteToDeleteKey");
    getSRKeyboardMetricPositionalDeleteToDeleteKeySymbolLoc_ptr = v259[3];
    v132 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v132)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKDeleteToDeletePositionalMetric, *v132);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v134 = getSRKeyboardMetricProbabilityAnyTapTo123KeyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityAnyTapTo123KeyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityAnyTapTo123KeyKeySymbolLoc_ptr)
  {
    v135 = SensorKitLibrary();
    v259[3] = dlsym(v135, "SRKeyboardMetricProbabilityAnyTapTo123KeyKey");
    getSRKeyboardMetricProbabilityAnyTapTo123KeyKeySymbolLoc_ptr = v259[3];
    v134 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v134)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKAnyTapTo123Metric, *v134);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v136 = getSRKeyboardMetricProbabilityCharKeyTo123KeyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbabilityCharKeyTo123KeyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbabilityCharKeyTo123KeyKeySymbolLoc_ptr)
  {
    v137 = SensorKitLibrary();
    v259[3] = dlsym(v137, "SRKeyboardMetricProbabilityCharKeyTo123KeyKey");
    getSRKeyboardMetricProbabilityCharKeyTo123KeyKeySymbolLoc_ptr = v259[3];
    v136 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v136)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKCharTo123Metric, *v136);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v138 = getSRKeyboardMetricProbability123KeyToAnyTapKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbability123KeyToAnyTapKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbability123KeyToAnyTapKeySymbolLoc_ptr)
  {
    v139 = SensorKitLibrary();
    v259[3] = dlsym(v139, "SRKeyboardMetricProbability123KeyToAnyTapKey");
    getSRKeyboardMetricProbability123KeyToAnyTapKeySymbolLoc_ptr = v259[3];
    v138 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v138)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISK123ToAnyTapMetric, *v138);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v140 = getSRKeyboardMetricProbability123KeyToCharKeyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricProbability123KeyToCharKeyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricProbability123KeyToCharKeyKeySymbolLoc_ptr)
  {
    v141 = SensorKitLibrary();
    v259[3] = dlsym(v141, "SRKeyboardMetricProbability123KeyToCharKeyKey");
    getSRKeyboardMetricProbability123KeyToCharKeyKeySymbolLoc_ptr = v259[3];
    v140 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v140)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISK123ToCharMetric, *v140);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v142 = getSRKeyboardMetricScalarlWordBucketAbsolutistKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarlWordBucketAbsolutistKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarlWordBucketAbsolutistKeySymbolLoc_ptr)
  {
    v143 = SensorKitLibrary();
    v259[3] = dlsym(v143, "SRKeyboardMetricScalarlWordBucketAbsolutistKey");
    getSRKeyboardMetricScalarlWordBucketAbsolutistKeySymbolLoc_ptr = v259[3];
    v142 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v142)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalAbsolutistWords, *v142);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v144 = getSRKeyboardMetricScalarlWordBucketDownKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarlWordBucketDownKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarlWordBucketDownKeySymbolLoc_ptr)
  {
    v145 = SensorKitLibrary();
    v259[3] = dlsym(v145, "SRKeyboardMetricScalarlWordBucketDownKey");
    getSRKeyboardMetricScalarlWordBucketDownKeySymbolLoc_ptr = v259[3];
    v144 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v144)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalDownWords, *v144);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v146 = getSRKeyboardMetricScalarlWordBucketDeathKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarlWordBucketDeathKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarlWordBucketDeathKeySymbolLoc_ptr)
  {
    v147 = SensorKitLibrary();
    v259[3] = dlsym(v147, "SRKeyboardMetricScalarlWordBucketDeathKey");
    getSRKeyboardMetricScalarlWordBucketDeathKeySymbolLoc_ptr = v259[3];
    v146 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v146)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalDeathWords, *v146);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v148 = getSRKeyboardMetricScalarlWordBucketAnxietyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarlWordBucketAnxietyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarlWordBucketAnxietyKeySymbolLoc_ptr)
  {
    v149 = SensorKitLibrary();
    v259[3] = dlsym(v149, "SRKeyboardMetricScalarlWordBucketAnxietyKey");
    getSRKeyboardMetricScalarlWordBucketAnxietyKeySymbolLoc_ptr = v259[3];
    v148 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v148)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalAnxietyWords, *v148);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v150 = getSRKeyboardMetricScalarlWordBucketAngerKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarlWordBucketAngerKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarlWordBucketAngerKeySymbolLoc_ptr)
  {
    v151 = SensorKitLibrary();
    v259[3] = dlsym(v151, "SRKeyboardMetricScalarlWordBucketAngerKey");
    getSRKeyboardMetricScalarlWordBucketAngerKeySymbolLoc_ptr = v259[3];
    v150 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v150)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalAngerWords, *v150);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v152 = getSRKeyboardMetricScalarlWordBucketFeelKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarlWordBucketFeelKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarlWordBucketFeelKeySymbolLoc_ptr)
  {
    v153 = SensorKitLibrary();
    v259[3] = dlsym(v153, "SRKeyboardMetricScalarlWordBucketFeelKey");
    getSRKeyboardMetricScalarlWordBucketFeelKeySymbolLoc_ptr = v259[3];
    v152 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v152)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalHealthFeelingWords, *v152);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v154 = getSRKeyboardMetricScalarWordBucketPositiveKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarWordBucketPositiveKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarWordBucketPositiveKeySymbolLoc_ptr)
  {
    v155 = SensorKitLibrary();
    v259[3] = dlsym(v155, "SRKeyboardMetricScalarWordBucketPositiveKey");
    getSRKeyboardMetricScalarWordBucketPositiveKeySymbolLoc_ptr = v259[3];
    v154 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v154)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalPositiveWords, *v154);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v156 = getSRKeyboardMetricScalarEmojiBucketPositiveKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarEmojiBucketPositiveKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarEmojiBucketPositiveKeySymbolLoc_ptr)
  {
    v157 = SensorKitLibrary();
    v259[3] = dlsym(v157, "SRKeyboardMetricScalarEmojiBucketPositiveKey");
    getSRKeyboardMetricScalarEmojiBucketPositiveKeySymbolLoc_ptr = v259[3];
    v156 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v156)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalPositiveEmoji, *v156);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v158 = getSRKeyboardMetricScalarEmojiBucketSadKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarEmojiBucketSadKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarEmojiBucketSadKeySymbolLoc_ptr)
  {
    v159 = SensorKitLibrary();
    v259[3] = dlsym(v159, "SRKeyboardMetricScalarEmojiBucketSadKey");
    getSRKeyboardMetricScalarEmojiBucketSadKeySymbolLoc_ptr = v259[3];
    v158 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v158)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalSadEmoji, *v158);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v160 = getSRKeyboardMetricScalarEmojiBucketAnxietyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarEmojiBucketAnxietyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarEmojiBucketAnxietyKeySymbolLoc_ptr)
  {
    v161 = SensorKitLibrary();
    v259[3] = dlsym(v161, "SRKeyboardMetricScalarEmojiBucketAnxietyKey");
    getSRKeyboardMetricScalarEmojiBucketAnxietyKeySymbolLoc_ptr = v259[3];
    v160 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v160)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalAnxietyEmoji, *v160);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v162 = getSRKeyboardMetricScalarEmojiBucketAngerKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarEmojiBucketAngerKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarEmojiBucketAngerKeySymbolLoc_ptr)
  {
    v163 = SensorKitLibrary();
    v259[3] = dlsym(v163, "SRKeyboardMetricScalarEmojiBucketAngerKey");
    getSRKeyboardMetricScalarEmojiBucketAngerKeySymbolLoc_ptr = v259[3];
    v162 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v162)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalAngerEmoji, *v162);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v164 = getSRKeyboardMetricScalarEmojiBucketFeelKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarEmojiBucketFeelKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarEmojiBucketFeelKeySymbolLoc_ptr)
  {
    v165 = SensorKitLibrary();
    v259[3] = dlsym(v165, "SRKeyboardMetricScalarEmojiBucketFeelKey");
    getSRKeyboardMetricScalarEmojiBucketFeelKeySymbolLoc_ptr = v259[3];
    v164 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v164)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalFeelEmoji, *v164);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v166 = getSRKeyboardMetricScalarEmojiBucketLowEnergyKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarEmojiBucketLowEnergyKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarEmojiBucketLowEnergyKeySymbolLoc_ptr)
  {
    v167 = SensorKitLibrary();
    v259[3] = dlsym(v167, "SRKeyboardMetricScalarEmojiBucketLowEnergyKey");
    getSRKeyboardMetricScalarEmojiBucketLowEnergyKeySymbolLoc_ptr = v259[3];
    v166 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v166)
  {
    goto LABEL_257;
  }

  objc_storeStrong(&kTISKtotalLowEnergyEmoji, *v166);
  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v168 = getSRKeyboardMetricScalarEmojiBucketConfusedKeySymbolLoc_ptr;
  v261 = getSRKeyboardMetricScalarEmojiBucketConfusedKeySymbolLoc_ptr;
  if (!getSRKeyboardMetricScalarEmojiBucketConfusedKeySymbolLoc_ptr)
  {
    v169 = SensorKitLibrary();
    v259[3] = dlsym(v169, "SRKeyboardMetricScalarEmojiBucketConfusedKey");
    getSRKeyboardMetricScalarEmojiBucketConfusedKeySymbolLoc_ptr = v259[3];
    v168 = v259[3];
  }

  _Block_object_dispose(&v258, 8);
  if (!v168)
  {
LABEL_257:
    dlerror();
    abort_report_np();
  }

  objc_storeStrong(&kTISKtotalConfusedEmoji, *v168);
  v257 = [TISKMetricDefinition _makeMetric:kTISKNumberOfWordsCounter type:0];
  v262[0] = v257;
  v256 = [TISKMetricDefinition _makeMetric:kTISKNumberOfAlteredWordsCounter type:0];
  v262[1] = v256;
  v255 = [TISKMetricDefinition _makeMetric:kTISKNumberOfTappedKeysCounter type:0];
  v262[2] = v255;
  v254 = [TISKMetricDefinition _makeMetric:kTISKNumberOfDragsCounter type:0];
  v262[3] = v254;
  v253 = [TISKMetricDefinition _makeMetric:kTISKTotalSessionTypingDuration type:0];
  v262[4] = v253;
  v252 = [TISKMetricDefinition _makeMetric:kTISKTypingPauses type:0];
  v262[5] = v252;
  v251 = [TISKMetricDefinition _makeMetric:kTISKEpisodeCount type:0];
  v262[6] = v251;
  v250 = [TISKMetricDefinition _makeMetric:kTISKTapTypingSpeed type:2];
  v262[7] = v250;
  v249 = [TISKMetricDefinition _makeMetric:kTISKPathTypingSpeed type:2];
  v262[8] = v249;
  v248 = [TISKMetricDefinition _makeMetric:kTISKUpErrorDistance type:1 metricDef:&kErrorDistanceDefintion];
  v262[9] = v248;
  v247 = [TISKMetricDefinition _makeMetric:kTISKDownErrorDistance type:1 metricDef:&kErrorDistanceDefintion];
  v262[10] = v247;
  v246 = [TISKMetricDefinition _makeMetric:kTISKLongWordPositionalUpErrorDistance type:3 metricDef:&kErrorDistanceDefintion size:6];
  v262[11] = v246;
  v245 = [TISKMetricDefinition _makeMetric:kTISKLongWordPositionalDownErrorDistance type:3 metricDef:&kErrorDistanceDefintion size:6 isPointMetric:1];
  v262[12] = v245;
  v244 = [TISKMetricDefinition _makeMetric:kTISKShortWordCharUpErrorDistance type:1 metricDef:&kErrorDistanceDefintion];
  v262[13] = v244;
  v243 = [TISKMetricDefinition _makeMetric:kTISKShortWordCharDownErrorDistance type:1 metricDef:&kErrorDistanceDefintion];
  v262[14] = v243;
  v242 = [TISKMetricDefinition _makeMetric:kTISKSpaceUpErrorDistance type:1 metricDef:&kErrorDistanceDefintion isPointMetric:1];
  v262[15] = v242;
  v241 = [TISKMetricDefinition _makeMetric:kTISKSpaceDownErrorDistance type:1 metricDef:&kErrorDistanceDefintion isPointMetric:1];
  v262[16] = v241;
  v240 = [TISKMetricDefinition _makeMetric:kTISKDeleteUpErrorDistance type:1 metricDef:&kErrorDistanceDefintion isPointMetric:1];
  v262[17] = v240;
  v239 = [TISKMetricDefinition _makeMetric:kTISKDeleteDownErrorDistance type:1 metricDef:&kErrorDistanceDefintion isPointMetric:1];
  v262[18] = v239;
  v238 = [TISKMetricDefinition _makeMetric:kTISKNumberOfAutoCorrections type:0];
  v262[19] = v238;
  v237 = [TISKMetricDefinition _makeMetric:kTISKNumberOfSpaceCorrections type:0];
  v262[20] = v237;
  v236 = [TISKMetricDefinition _makeMetric:kTISKNumberOfRetroCorrections type:0];
  v262[21] = v236;
  v235 = [TISKMetricDefinition _makeMetric:kTISKNumberOfTranspositionCorrections type:0];
  v262[22] = v235;
  v234 = [TISKMetricDefinition _makeMetric:kTISKNumberOfInsertKeyCorrections type:0];
  v262[23] = v234;
  v233 = [TISKMetricDefinition _makeMetric:kTISKNumberOfSkipTouchCorrections type:0];
  v262[24] = v233;
  v232 = [TISKMetricDefinition _makeMetric:kTISKNumberOfNearKeyCorrections type:0];
  v262[25] = v232;
  v231 = [TISKMetricDefinition _makeMetric:kTISKNumberOfSubstitutionCorrections type:0];
  v262[26] = v231;
  v230 = [TISKMetricDefinition _makeMetric:kTISKNumberOfHitTestCorrections type:0];
  v262[27] = v230;
  v229 = [TISKMetricDefinition _makeMetric:kTISKTouchDownUpMetric type:1 metricDef:&kTouchDownUpDefintion];
  v262[28] = v229;
  v228 = [TISKMetricDefinition _makeMetric:kTISKTouchDownDownMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[29] = v228;
  v227 = [TISKMetricDefinition _makeMetric:kTISKTouchUpDownMetric type:1 metricDef:&kTouchUpDownDefintion];
  v262[30] = v227;
  v226 = [TISKMetricDefinition _makeMetric:kTISKLongWordTouchDownUpPositionalMetric type:3 metricDef:&kTouchDownUpDefintion size:6];
  v262[31] = v226;
  v225 = [TISKMetricDefinition _makeMetric:kTISKLongWordTouchDownDownPositionalMetric type:3 metricDef:&kTouchDownDownDefintion size:6];
  v262[32] = v225;
  v224 = [TISKMetricDefinition _makeMetric:kTISKLongWordTouchUpDownPositionalMetric type:3 metricDef:&kTouchDownUpDefintion size:6];
  v262[33] = v224;
  v223 = [TISKMetricDefinition _makeMetric:kTISKDeleteToDeletePositionalMetric type:3 metricDef:&kTouchDownUpDefintion size:5];
  v262[34] = v223;
  v222 = [TISKMetricDefinition _makeMetric:kTISKShortWordCharTouchDownUpMetric type:1 metricDef:&kTouchDownUpDefintion];
  v262[35] = v222;
  v221 = [TISKMetricDefinition _makeMetric:kTISKShortWordCharToCharMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[36] = v221;
  v220 = [TISKMetricDefinition _makeMetric:kTISKCharToAnyTapMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[37] = v220;
  v219 = [TISKMetricDefinition _makeMetric:kTISKAnyTapToCharMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[38] = v219;
  v218 = [TISKMetricDefinition _makeMetric:kTISKCharToPredictionMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[39] = v218;
  v217 = [TISKMetricDefinition _makeMetric:kTISKSpaceTouchDownUpMetric type:1 metricDef:&kTouchDownUpDefintion];
  v262[40] = v217;
  v216 = [TISKMetricDefinition _makeMetric:kTISKSpaceToCharMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[41] = v216;
  v215 = [TISKMetricDefinition _makeMetric:kTISKCharToSpaceMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[42] = v215;
  v214 = [TISKMetricDefinition _makeMetric:kTISKSpaceToDeleteMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[43] = v214;
  v213 = [TISKMetricDefinition _makeMetric:kTISKDeleteToSpaceMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[44] = v213;
  v212 = [TISKMetricDefinition _makeMetric:kTISKSpaceToSpaceMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[45] = v212;
  v211 = [TISKMetricDefinition _makeMetric:kTISKSpaceToPredictionMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[46] = v211;
  v210 = [TISKMetricDefinition _makeMetric:kTISKSpaceToShiftMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[47] = v210;
  v209 = [TISKMetricDefinition _makeMetric:kTISKSpaceTo123Metric type:1 metricDef:&kTouchDownDownDefintion];
  v262[48] = v209;
  v208 = [TISKMetricDefinition _makeMetric:kTISKNumberOfDeletesCounter type:0];
  v262[49] = v208;
  v207 = [TISKMetricDefinition _makeMetric:kTISKDeleteTouchDownUpMetric type:1 metricDef:&kTouchDownUpDefintion];
  v262[50] = v207;
  v206 = [TISKMetricDefinition _makeMetric:kTISKDeleteToCharMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[51] = v206;
  v205 = [TISKMetricDefinition _makeMetric:kTISKKeyToDeleteMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[52] = v205;
  v204 = [TISKMetricDefinition _makeMetric:kTISKDeleteToDeleteMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[53] = v204;
  v203 = [TISKMetricDefinition _makeMetric:kTISKDeleteToShiftMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[54] = v203;
  v202 = [TISKMetricDefinition _makeMetric:kTISKDeleteTo123Metric type:1 metricDef:&kTouchDownDownDefintion];
  v262[55] = v202;
  v201 = [TISKMetricDefinition _makeMetric:kTISKNumberOfPaths type:0];
  v262[56] = v201;
  v200 = [TISKMetricDefinition _makeMetric:kTISKTotalPathTime type:0];
  v262[57] = v200;
  v199 = [TISKMetricDefinition _makeMetric:kTISKTotalPathLength type:0];
  v262[58] = v199;
  v198 = [TISKMetricDefinition _makeMetric:kTISKMidPathPause type:0];
  v262[59] = v198;
  v197 = [TISKMetricDefinition _makeMetric:kTISKNumberOfEmojiCounter type:0];
  v262[60] = v197;
  v196 = [TISKMetricDefinition _makeMetric:kTISKPathErrorDistanceMetric type:1 metricDef:&kPathErrorDistanceDefintion];
  v262[61] = v196;
  v195 = [TISKMetricDefinition _makeMetric:kTISKPathToPathMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[62] = v195;
  v194 = [TISKMetricDefinition _makeMetric:kTISKDeleteToPathMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[63] = v194;
  v193 = [TISKMetricDefinition _makeMetric:kTISKPathToDeleteMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[64] = v193;
  v192 = [TISKMetricDefinition _makeMetric:kTISKSpaceToPathMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[65] = v192;
  v191 = [TISKMetricDefinition _makeMetric:kTISKPathSpaceMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[66] = v191;
  v190 = [TISKMetricDefinition _makeMetric:kTISKAnyTapTo123Metric type:1 metricDef:&kTouchDownDownDefintion];
  v262[67] = v190;
  v189 = [TISKMetricDefinition _makeMetric:kTISKCharTo123Metric type:1 metricDef:&kTouchDownDownDefintion];
  v262[68] = v189;
  v188 = [TISKMetricDefinition _makeMetric:kTISK123ToAnyTapMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[69] = v188;
  v187 = [TISKMetricDefinition _makeMetric:kTISK123ToCharMetric type:1 metricDef:&kTouchDownDownDefintion];
  v262[70] = v187;
  v186 = [TISKMetricDefinition _makeMetric:kTISKtotalAbsolutistWords type:0];
  v262[71] = v186;
  v185 = [TISKMetricDefinition _makeMetric:kTISKtotalDownWords type:0];
  v262[72] = v185;
  v184 = [TISKMetricDefinition _makeMetric:kTISKtotalDeathWords type:0];
  v262[73] = v184;
  v183 = [TISKMetricDefinition _makeMetric:kTISKtotalAnxietyWords type:0];
  v262[74] = v183;
  v170 = [TISKMetricDefinition _makeMetric:kTISKtotalAngerWords type:0];
  v262[75] = v170;
  v171 = [TISKMetricDefinition _makeMetric:kTISKtotalHealthFeelingWords type:0];
  v262[76] = v171;
  v172 = [TISKMetricDefinition _makeMetric:kTISKtotalPositiveWords type:0];
  v262[77] = v172;
  v173 = [TISKMetricDefinition _makeMetric:kTISKtotalPositiveEmoji type:0];
  v262[78] = v173;
  v174 = [TISKMetricDefinition _makeMetric:kTISKtotalSadEmoji type:0];
  v262[79] = v174;
  v175 = [TISKMetricDefinition _makeMetric:kTISKtotalAnxietyEmoji type:0];
  v262[80] = v175;
  v176 = [TISKMetricDefinition _makeMetric:kTISKtotalAngerEmoji type:0];
  v262[81] = v176;
  v177 = [TISKMetricDefinition _makeMetric:kTISKtotalFeelEmoji type:0];
  v262[82] = v177;
  v178 = [TISKMetricDefinition _makeMetric:kTISKtotalLowEnergyEmoji type:0];
  v262[83] = v178;
  v179 = [TISKMetricDefinition _makeMetric:kTISKtotalConfusedEmoji type:0];
  v262[84] = v179;
  v180 = [MEMORY[0x277CBEA60] arrayWithObjects:v262 count:85];
  v181 = metricDefinitions_defs;
  metricDefinitions_defs = v180;

  v182 = *MEMORY[0x277D85DE8];
}

+ (double)pointsToMM:(double)m
{
  v4 = MGGetSInt32Answer();
  MGGetFloat32Answer();
  return m * 25.3999996 * v5 / v4;
}

@end