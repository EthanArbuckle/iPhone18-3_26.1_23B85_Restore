@interface PXUpNextSettings
+ (PXUpNextSettings)sharedInstance;
+ (id)_enabledCondition;
+ (id)_featureSliderForFeature:(id)feature valueKeyPath:(id)path;
+ (id)_upNextVectorSliderSections;
+ (id)settingsControllerModule;
- (id)_featureWeightVectorsFromCurationMode:(unint64_t)mode;
- (id)_mostRelevantFeatureWeightVectors;
- (id)_varietyFeatureWeightVectors;
- (id)_weightArrayWithWeightForPerson:(float)person scene:(float)scene location:(float)location date:(float)date meaning:(float)meaning memoryFeature:(float)feature trip:(float)trip;
- (void)_updateSettingsVectors:(id)vectors;
- (void)didChangeValueForKey:(id)key;
- (void)performPostSaveActions;
- (void)setDefaultValues;
@end

@implementation PXUpNextSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = PXUpNextSettings;
  [(PTSettings *)&v4 setDefaultValues];
  [(PXUpNextSettings *)self setForceFallbackMemories:0];
  [(PXUpNextSettings *)self setEnableCustomVectors:0];
  [(PXUpNextSettings *)self setOverrideMemoriesResult:0];
  [(PXUpNextSettings *)self setCurationMode:0];
  v3 = [(PXUpNextSettings *)self _featureWeightVectorsFromCurationMode:[(PXUpNextSettings *)self curationMode]];
  [(PXUpNextSettings *)self _updateSettingsVectors:v3];
}

- (id)_varietyFeatureWeightVectors
{
  v36[5] = *MEMORY[0x1E69E9840];
  LODWORD(v2) = 10.0;
  LODWORD(v3) = 10.0;
  LODWORD(v4) = 10.0;
  LODWORD(v5) = 20.0;
  LODWORD(v6) = 10.0;
  LODWORD(v7) = 20.0;
  LODWORD(v8) = 10.0;
  v10 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v2 scene:v3 location:v4 date:v5 meaning:v6 memoryFeature:v7 trip:v8];
  LODWORD(v11) = 5.0;
  LODWORD(v12) = 10.0;
  LODWORD(v13) = -15.0;
  LODWORD(v14) = 1.0;
  LODWORD(v15) = 5.0;
  v16 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v11 scene:v12 location:v13 date:v14 meaning:v15 memoryFeature:0.0 trip:0.0, v10];
  v36[1] = v16;
  LODWORD(v17) = -15.0;
  LODWORD(v18) = 5.0;
  LODWORD(v19) = 5.0;
  LODWORD(v20) = 5.0;
  LODWORD(v21) = 2.5;
  v22 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v17 scene:v18 location:v19 date:v20 meaning:v21 memoryFeature:0.0 trip:0.0];
  v36[2] = v22;
  LODWORD(v23) = 20.0;
  LODWORD(v24) = 10.0;
  LODWORD(v25) = 1.0;
  LODWORD(v26) = 5.0;
  v27 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v23 scene:v24 location:0.0 date:v25 meaning:v26 memoryFeature:0.0 trip:0.0];
  v36[3] = v27;
  LODWORD(v28) = 5.0;
  LODWORD(v29) = 5.0;
  LODWORD(v30) = 5.0;
  LODWORD(v31) = -20.0;
  LODWORD(v32) = 2.5;
  v33 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v28 scene:v29 location:v30 date:v31 meaning:v32 memoryFeature:0.0 trip:0.0];
  v36[4] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:5];

  return v34;
}

+ (id)_enabledCondition
{
  v2 = MEMORY[0x1E696AE18];
  v3 = NSStringFromSelector(sel_enableCustomVectors);
  v4 = [v2 predicateWithFormat:@"%K != 0", v3];

  return v4;
}

+ (id)_featureSliderForFeature:(id)feature valueKeyPath:(id)path
{
  v4 = [MEMORY[0x1E69C66A0] rowWithTitle:feature valueKeyPath:path];
  v5 = [v4 minValue:-20.0 maxValue:20.0];
  v6 = [v5 px_increment:0.1];

  return v6;
}

+ (id)_upNextVectorSliderSections
{
  v47[8] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (*MEMORY[0x1E69BEB80])
  {
    v5 = 0;
    v24 = *MEMORY[0x1E69BEB80];
    v25 = v3;
    do
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"personWeight%lu", v5];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sceneWeight%lu", v5];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"locationWeight%lu", v5];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dateWeight%lu", v5];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"meaningWeight%lu", v5];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"memoryFeatureWeight%lu", v5];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tripWeight%lu", v5];
      v30 = MEMORY[0x1E69C65E8];
      v13 = MEMORY[0x1E69C6658];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __51__PXUpNextSettings_UI___upNextVectorSliderSections__block_invoke;
      v39[3] = &unk_1E7736AC0;
      v40 = v6;
      v41 = v7;
      v42 = v8;
      v43 = v9;
      v44 = v10;
      v45 = v11;
      v46 = v12;
      v38 = v12;
      v37 = v11;
      v32 = v10;
      v33 = v9;
      v34 = v8;
      v35 = v7;
      v36 = v6;
      v14 = [v13 actionWithHandler:v39];
      v31 = [v30 rowWithTitle:@"Zero All Weights (Vector can't be all 0s)" action:v14];

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Feature Weight Vector %lu", v5];
      v15 = MEMORY[0x1E69C6638];
      v47[0] = v31;
      v29 = [self _featureSliderForFeature:@"Person" valueKeyPath:v36];
      v47[1] = v29;
      v28 = [self _featureSliderForFeature:@"Scene" valueKeyPath:v35];
      v47[2] = v28;
      v27 = [self _featureSliderForFeature:@"Location" valueKeyPath:v34];
      v47[3] = v27;
      v16 = [self _featureSliderForFeature:@"Date" valueKeyPath:v33];
      v47[4] = v16;
      v17 = [self _featureSliderForFeature:@"Meaning" valueKeyPath:v32];
      v47[5] = v17;
      v18 = [self _featureSliderForFeature:@"Memory Feature" valueKeyPath:v37];
      v47[6] = v18;
      v19 = [self _featureSliderForFeature:@"Trip" valueKeyPath:v38];
      v47[7] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:8];
      _enabledCondition = [self _enabledCondition];
      v22 = [v15 sectionWithRows:v20 title:v26 condition:_enabledCondition];

      v4 = v25;
      [v25 addObject:v22];

      ++v5;
    }

    while (v24 != v5);
  }

  return v4;
}

uint64_t __51__PXUpNextSettings_UI___upNextVectorSliderSections__block_invoke(void *a1)
{
  v2 = +[PXUpNextSettings sharedInstance];
  [v2 setValue:&unk_1F190E0A8 forKeyPath:a1[4]];
  [v2 setValue:&unk_1F190E0A8 forKeyPath:a1[5]];
  [v2 setValue:&unk_1F190E0A8 forKeyPath:a1[6]];
  [v2 setValue:&unk_1F190E0A8 forKeyPath:a1[7]];
  [v2 setValue:&unk_1F190E0A8 forKeyPath:a1[8]];
  [v2 setValue:&unk_1F190E0A8 forKeyPath:a1[9]];
  [v2 setValue:&unk_1F190E0A8 forKeyPath:a1[10]];
  [v2 performPostSaveActions];

  return 1;
}

+ (id)settingsControllerModule
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Curation Mode" valueKeyPath:@"curationMode"];
  v5 = [v4 possibleValues:&unk_1F1910720 titles:&unk_1F1910738];

  _enabledCondition = [self _enabledCondition];
  [v5 setCondition:_enabledCondition];

  v7 = MEMORY[0x1E69C6638];
  v8 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Force Fallback Memories" valueKeyPath:@"forceFallbackMemories"];
  v17[0] = v8;
  v9 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Override Memories Result" valueKeyPath:@"overrideMemoriesResult"];
  v17[1] = v9;
  v10 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Custom Vector" valueKeyPath:@"enableCustomVectors"];
  v17[2] = v10;
  v17[3] = v5;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v12 = [v7 sectionWithRows:v11 title:@"General"];

  [v3 addObject:v12];
  _upNextVectorSliderSections = [self _upNextVectorSliderSections];
  [v3 addObjectsFromArray:_upNextVectorSliderSections];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  [v3 addObject:px_restoreDefaultsSection];
  v15 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Up Next" contents:v3];

  return v15;
}

- (id)_mostRelevantFeatureWeightVectors
{
  v45[5] = *MEMORY[0x1E69E9840];
  LODWORD(v2) = 10.0;
  LODWORD(v3) = 10.0;
  LODWORD(v4) = 10.0;
  LODWORD(v5) = 1.0;
  LODWORD(v6) = 10.0;
  LODWORD(v7) = 10.0;
  LODWORD(v8) = 10.0;
  v10 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v2 scene:v3 location:v4 date:v5 meaning:v6 memoryFeature:v7 trip:v8];
  LODWORD(v11) = 10.0;
  LODWORD(v12) = 10.0;
  LODWORD(v13) = 10.0;
  LODWORD(v14) = 1.0;
  LODWORD(v15) = 10.0;
  LODWORD(v16) = 10.0;
  LODWORD(v17) = 10.0;
  v18 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v11 scene:v12 location:v13 date:v14 meaning:v15 memoryFeature:v16 trip:v17, v10];
  v45[1] = v18;
  LODWORD(v19) = 10.0;
  LODWORD(v20) = 10.0;
  LODWORD(v21) = 10.0;
  LODWORD(v22) = 1.0;
  LODWORD(v23) = 10.0;
  LODWORD(v24) = 10.0;
  LODWORD(v25) = 10.0;
  v26 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v19 scene:v20 location:v21 date:v22 meaning:v23 memoryFeature:v24 trip:v25];
  v45[2] = v26;
  LODWORD(v27) = 10.0;
  LODWORD(v28) = 10.0;
  LODWORD(v29) = 10.0;
  LODWORD(v30) = 1.0;
  LODWORD(v31) = 10.0;
  LODWORD(v32) = 10.0;
  LODWORD(v33) = 10.0;
  v34 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v27 scene:v28 location:v29 date:v30 meaning:v31 memoryFeature:v32 trip:v33];
  v45[3] = v34;
  LODWORD(v35) = 10.0;
  LODWORD(v36) = 10.0;
  LODWORD(v37) = 10.0;
  LODWORD(v38) = 1.0;
  LODWORD(v39) = 10.0;
  LODWORD(v40) = 10.0;
  LODWORD(v41) = 10.0;
  v42 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v35 scene:v36 location:v37 date:v38 meaning:v39 memoryFeature:v40 trip:v41];
  v45[4] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];

  return v43;
}

- (id)_featureWeightVectorsFromCurationMode:(unint64_t)mode
{
  if (mode == 1)
  {
    _mostRelevantFeatureWeightVectors = [(PXUpNextSettings *)self _mostRelevantFeatureWeightVectors];
  }

  else
  {
    if (mode)
    {
      goto LABEL_6;
    }

    _mostRelevantFeatureWeightVectors = [(PXUpNextSettings *)self _varietyFeatureWeightVectors];
  }

  a2 = _mostRelevantFeatureWeightVectors;
LABEL_6:

  return a2;
}

- (id)_weightArrayWithWeightForPerson:(float)person scene:(float)scene location:(float)location date:(float)date meaning:(float)meaning memoryFeature:(float)feature trip:(float)trip
{
  v30[7] = *MEMORY[0x1E69E9840];
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  *&v16 = scene;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:{v16, v15}];
  v30[1] = v17;
  *&v18 = location;
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v30[2] = v19;
  *&v20 = date;
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  v30[3] = v21;
  *&v22 = meaning;
  v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  v30[4] = v23;
  *&v24 = feature;
  v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  v30[5] = v25;
  *&v26 = trip;
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  v30[6] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:7];

  return v28;
}

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = PXUpNextSettings;
  [(PXUpNextSettings *)&v12 didChangeValueForKey:keyCopy];
  v5 = NSStringFromSelector(sel_enableCustomVectors);
  v6 = v5;
  if (v5 == keyCopy)
  {

    goto LABEL_7;
  }

  v7 = [keyCopy isEqualToString:v5];

  if (v7)
  {
LABEL_7:
    [(PXUpNextSettings *)self performPostSaveActions];
    goto LABEL_10;
  }

  v8 = NSStringFromSelector(sel_curationMode);
  v9 = v8;
  if (v8 == keyCopy)
  {
  }

  else
  {
    v10 = [keyCopy isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v11 = [(PXUpNextSettings *)self _featureWeightVectorsFromCurationMode:[(PXUpNextSettings *)self curationMode]];
  [(PXUpNextSettings *)self _updateSettingsVectors:v11];
  [(PXUpNextSettings *)self performPostSaveActions];

LABEL_10:
}

- (void)performPostSaveActions
{
  v124[5] = *MEMORY[0x1E69E9840];
  v123.receiver = self;
  v123.super_class = PXUpNextSettings;
  [(PXSettings *)&v123 performPostSaveActions];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = *MEMORY[0x1E696A400];
  v5 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E696A400]];
  v6 = [v5 mutableCopy];

  if ([(PXUpNextSettings *)self enableCustomVectors])
  {
    [(PXUpNextSettings *)self personWeight0];
    v8 = v7;
    [(PXUpNextSettings *)self sceneWeight0];
    v10 = v9;
    [(PXUpNextSettings *)self locationWeight0];
    v12 = v11;
    [(PXUpNextSettings *)self dateWeight0];
    v14 = v13;
    [(PXUpNextSettings *)self meaningWeight0];
    v16 = v15;
    [(PXUpNextSettings *)self memoryFeatureWeight0];
    v18 = v17;
    [(PXUpNextSettings *)self tripWeight0];
    LODWORD(v20) = v19;
    LODWORD(v21) = v8;
    LODWORD(v22) = v10;
    LODWORD(v23) = v12;
    LODWORD(v24) = v14;
    LODWORD(v25) = v16;
    LODWORD(v26) = v18;
    v27 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v21 scene:v22 location:v23 date:v24 meaning:v25 memoryFeature:v26 trip:v20];
    [(PXUpNextSettings *)self setVector0:v27];

    vector0 = [(PXUpNextSettings *)self vector0];
    [v6 setObject:vector0 forKey:*MEMORY[0x1E69BEB88]];

    [(PXUpNextSettings *)self personWeight1];
    v30 = v29;
    [(PXUpNextSettings *)self sceneWeight1];
    v32 = v31;
    [(PXUpNextSettings *)self locationWeight1];
    v34 = v33;
    [(PXUpNextSettings *)self dateWeight1];
    v36 = v35;
    [(PXUpNextSettings *)self meaningWeight1];
    v38 = v37;
    [(PXUpNextSettings *)self memoryFeatureWeight1];
    v40 = v39;
    [(PXUpNextSettings *)self tripWeight1];
    LODWORD(v42) = v41;
    LODWORD(v43) = v30;
    LODWORD(v44) = v32;
    LODWORD(v45) = v34;
    LODWORD(v46) = v36;
    LODWORD(v47) = v38;
    LODWORD(v48) = v40;
    v49 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v43 scene:v44 location:v45 date:v46 meaning:v47 memoryFeature:v48 trip:v42];
    [(PXUpNextSettings *)self setVector1:v49];

    vector1 = [(PXUpNextSettings *)self vector1];
    [v6 setObject:vector1 forKey:*MEMORY[0x1E69BEB90]];

    [(PXUpNextSettings *)self personWeight2];
    v52 = v51;
    [(PXUpNextSettings *)self sceneWeight2];
    v54 = v53;
    [(PXUpNextSettings *)self locationWeight2];
    v56 = v55;
    [(PXUpNextSettings *)self dateWeight2];
    v58 = v57;
    [(PXUpNextSettings *)self meaningWeight2];
    v60 = v59;
    [(PXUpNextSettings *)self memoryFeatureWeight2];
    v62 = v61;
    [(PXUpNextSettings *)self tripWeight2];
    LODWORD(v64) = v63;
    LODWORD(v65) = v52;
    LODWORD(v66) = v54;
    LODWORD(v67) = v56;
    LODWORD(v68) = v58;
    LODWORD(v69) = v60;
    LODWORD(v70) = v62;
    v71 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v65 scene:v66 location:v67 date:v68 meaning:v69 memoryFeature:v70 trip:v64];
    [(PXUpNextSettings *)self setVector2:v71];

    vector2 = [(PXUpNextSettings *)self vector2];
    [v6 setObject:vector2 forKey:*MEMORY[0x1E69BEB98]];

    [(PXUpNextSettings *)self personWeight3];
    v74 = v73;
    [(PXUpNextSettings *)self sceneWeight3];
    v76 = v75;
    [(PXUpNextSettings *)self locationWeight3];
    v78 = v77;
    [(PXUpNextSettings *)self dateWeight3];
    v80 = v79;
    [(PXUpNextSettings *)self meaningWeight3];
    v82 = v81;
    [(PXUpNextSettings *)self memoryFeatureWeight3];
    v84 = v83;
    [(PXUpNextSettings *)self tripWeight3];
    LODWORD(v86) = v85;
    LODWORD(v87) = v74;
    LODWORD(v88) = v76;
    LODWORD(v89) = v78;
    LODWORD(v90) = v80;
    LODWORD(v91) = v82;
    LODWORD(v92) = v84;
    v93 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v87 scene:v88 location:v89 date:v90 meaning:v91 memoryFeature:v92 trip:v86];
    [(PXUpNextSettings *)self setVector3:v93];

    vector3 = [(PXUpNextSettings *)self vector3];
    [v6 setObject:vector3 forKey:*MEMORY[0x1E69BEBA0]];

    [(PXUpNextSettings *)self personWeight4];
    v96 = v95;
    [(PXUpNextSettings *)self sceneWeight4];
    v98 = v97;
    [(PXUpNextSettings *)self locationWeight4];
    v100 = v99;
    [(PXUpNextSettings *)self dateWeight4];
    v102 = v101;
    [(PXUpNextSettings *)self meaningWeight4];
    v104 = v103;
    [(PXUpNextSettings *)self memoryFeatureWeight4];
    v106 = v105;
    [(PXUpNextSettings *)self tripWeight4];
    LODWORD(v108) = v107;
    LODWORD(v109) = v96;
    LODWORD(v110) = v98;
    LODWORD(v111) = v100;
    LODWORD(v112) = v102;
    LODWORD(v113) = v104;
    LODWORD(v114) = v106;
    v115 = [(PXUpNextSettings *)self _weightArrayWithWeightForPerson:v109 scene:v110 location:v111 date:v112 meaning:v113 memoryFeature:v114 trip:v108];
    [(PXUpNextSettings *)self setVector4:v115];

    vector4 = [(PXUpNextSettings *)self vector4];
    [v6 setObject:vector4 forKey:*MEMORY[0x1E69BEBA8]];

    vector02 = [(PXUpNextSettings *)self vector0];
    v124[0] = vector02;
    vector12 = [(PXUpNextSettings *)self vector1];
    v124[1] = vector12;
    vector22 = [(PXUpNextSettings *)self vector2];
    v124[2] = vector22;
    vector32 = [(PXUpNextSettings *)self vector3];
    v124[3] = vector32;
    vector42 = [(PXUpNextSettings *)self vector4];
    v124[4] = vector42;
    v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:5];
    [(PXUpNextSettings *)self setFeatureWeightVectors:v122];
  }

  else
  {
    [v6 removeObjectForKey:*MEMORY[0x1E69BEB88]];
    [v6 removeObjectForKey:*MEMORY[0x1E69BEB90]];
    [v6 removeObjectForKey:*MEMORY[0x1E69BEB98]];
    [v6 removeObjectForKey:*MEMORY[0x1E69BEBA0]];
    [v6 removeObjectForKey:*MEMORY[0x1E69BEBA8]];
  }

  [standardUserDefaults setPersistentDomain:v6 forName:v4];
}

- (void)_updateSettingsVectors:(id)vectors
{
  v86[5] = *MEMORY[0x1E69E9840];
  vectorsCopy = vectors;
  v5 = [vectorsCopy objectAtIndexedSubscript:0];
  [(PXUpNextSettings *)self setVector0:v5];

  vector0 = [(PXUpNextSettings *)self vector0];
  v7 = [vector0 objectAtIndexedSubscript:0];
  [v7 floatValue];
  [(PXUpNextSettings *)self setPersonWeight0:?];

  vector02 = [(PXUpNextSettings *)self vector0];
  v9 = [vector02 objectAtIndexedSubscript:1];
  [v9 floatValue];
  [(PXUpNextSettings *)self setSceneWeight0:?];

  vector03 = [(PXUpNextSettings *)self vector0];
  v11 = [vector03 objectAtIndexedSubscript:2];
  [v11 floatValue];
  [(PXUpNextSettings *)self setLocationWeight0:?];

  vector04 = [(PXUpNextSettings *)self vector0];
  v13 = [vector04 objectAtIndexedSubscript:3];
  [v13 floatValue];
  [(PXUpNextSettings *)self setDateWeight0:?];

  vector05 = [(PXUpNextSettings *)self vector0];
  v15 = [vector05 objectAtIndexedSubscript:4];
  [v15 floatValue];
  [(PXUpNextSettings *)self setMeaningWeight0:?];

  vector06 = [(PXUpNextSettings *)self vector0];
  v17 = [vector06 objectAtIndexedSubscript:5];
  [v17 floatValue];
  [(PXUpNextSettings *)self setMemoryFeatureWeight0:?];

  vector07 = [(PXUpNextSettings *)self vector0];
  v19 = [vector07 objectAtIndexedSubscript:6];
  [v19 floatValue];
  [(PXUpNextSettings *)self setTripWeight0:?];

  v20 = [vectorsCopy objectAtIndexedSubscript:1];
  [(PXUpNextSettings *)self setVector1:v20];

  vector1 = [(PXUpNextSettings *)self vector1];
  v22 = [vector1 objectAtIndexedSubscript:0];
  [v22 floatValue];
  [(PXUpNextSettings *)self setPersonWeight1:?];

  vector12 = [(PXUpNextSettings *)self vector1];
  v24 = [vector12 objectAtIndexedSubscript:1];
  [v24 floatValue];
  [(PXUpNextSettings *)self setSceneWeight1:?];

  vector13 = [(PXUpNextSettings *)self vector1];
  v26 = [vector13 objectAtIndexedSubscript:2];
  [v26 floatValue];
  [(PXUpNextSettings *)self setLocationWeight1:?];

  vector14 = [(PXUpNextSettings *)self vector1];
  v28 = [vector14 objectAtIndexedSubscript:3];
  [v28 floatValue];
  [(PXUpNextSettings *)self setDateWeight1:?];

  vector15 = [(PXUpNextSettings *)self vector1];
  v30 = [vector15 objectAtIndexedSubscript:4];
  [v30 floatValue];
  [(PXUpNextSettings *)self setMeaningWeight1:?];

  vector16 = [(PXUpNextSettings *)self vector1];
  v32 = [vector16 objectAtIndexedSubscript:5];
  [v32 floatValue];
  [(PXUpNextSettings *)self setMemoryFeatureWeight1:?];

  vector17 = [(PXUpNextSettings *)self vector1];
  v34 = [vector17 objectAtIndexedSubscript:6];
  [v34 floatValue];
  [(PXUpNextSettings *)self setTripWeight1:?];

  v35 = [vectorsCopy objectAtIndexedSubscript:2];
  [(PXUpNextSettings *)self setVector2:v35];

  vector2 = [(PXUpNextSettings *)self vector2];
  v37 = [vector2 objectAtIndexedSubscript:0];
  [v37 floatValue];
  [(PXUpNextSettings *)self setPersonWeight2:?];

  vector22 = [(PXUpNextSettings *)self vector2];
  v39 = [vector22 objectAtIndexedSubscript:1];
  [v39 floatValue];
  [(PXUpNextSettings *)self setSceneWeight2:?];

  vector23 = [(PXUpNextSettings *)self vector2];
  v41 = [vector23 objectAtIndexedSubscript:2];
  [v41 floatValue];
  [(PXUpNextSettings *)self setLocationWeight2:?];

  vector24 = [(PXUpNextSettings *)self vector2];
  v43 = [vector24 objectAtIndexedSubscript:3];
  [v43 floatValue];
  [(PXUpNextSettings *)self setDateWeight2:?];

  vector25 = [(PXUpNextSettings *)self vector2];
  v45 = [vector25 objectAtIndexedSubscript:4];
  [v45 floatValue];
  [(PXUpNextSettings *)self setMeaningWeight2:?];

  vector26 = [(PXUpNextSettings *)self vector2];
  v47 = [vector26 objectAtIndexedSubscript:5];
  [v47 floatValue];
  [(PXUpNextSettings *)self setMemoryFeatureWeight2:?];

  vector27 = [(PXUpNextSettings *)self vector2];
  v49 = [vector27 objectAtIndexedSubscript:6];
  [v49 floatValue];
  [(PXUpNextSettings *)self setTripWeight2:?];

  v50 = [vectorsCopy objectAtIndexedSubscript:3];
  [(PXUpNextSettings *)self setVector3:v50];

  vector3 = [(PXUpNextSettings *)self vector3];
  v52 = [vector3 objectAtIndexedSubscript:0];
  [v52 floatValue];
  [(PXUpNextSettings *)self setPersonWeight3:?];

  vector32 = [(PXUpNextSettings *)self vector3];
  v54 = [vector32 objectAtIndexedSubscript:1];
  [v54 floatValue];
  [(PXUpNextSettings *)self setSceneWeight3:?];

  vector33 = [(PXUpNextSettings *)self vector3];
  v56 = [vector33 objectAtIndexedSubscript:2];
  [v56 floatValue];
  [(PXUpNextSettings *)self setLocationWeight3:?];

  vector34 = [(PXUpNextSettings *)self vector3];
  v58 = [vector34 objectAtIndexedSubscript:3];
  [v58 floatValue];
  [(PXUpNextSettings *)self setDateWeight3:?];

  vector35 = [(PXUpNextSettings *)self vector3];
  v60 = [vector35 objectAtIndexedSubscript:4];
  [v60 floatValue];
  [(PXUpNextSettings *)self setMeaningWeight3:?];

  vector36 = [(PXUpNextSettings *)self vector3];
  v62 = [vector36 objectAtIndexedSubscript:5];
  [v62 floatValue];
  [(PXUpNextSettings *)self setMemoryFeatureWeight3:?];

  vector37 = [(PXUpNextSettings *)self vector3];
  v64 = [vector37 objectAtIndexedSubscript:6];
  [v64 floatValue];
  [(PXUpNextSettings *)self setTripWeight3:?];

  v65 = [vectorsCopy objectAtIndexedSubscript:4];

  [(PXUpNextSettings *)self setVector4:v65];
  vector4 = [(PXUpNextSettings *)self vector4];
  v67 = [vector4 objectAtIndexedSubscript:0];
  [v67 floatValue];
  [(PXUpNextSettings *)self setPersonWeight4:?];

  vector42 = [(PXUpNextSettings *)self vector4];
  v69 = [vector42 objectAtIndexedSubscript:1];
  [v69 floatValue];
  [(PXUpNextSettings *)self setSceneWeight4:?];

  vector43 = [(PXUpNextSettings *)self vector4];
  v71 = [vector43 objectAtIndexedSubscript:2];
  [v71 floatValue];
  [(PXUpNextSettings *)self setLocationWeight4:?];

  vector44 = [(PXUpNextSettings *)self vector4];
  v73 = [vector44 objectAtIndexedSubscript:3];
  [v73 floatValue];
  [(PXUpNextSettings *)self setDateWeight4:?];

  vector45 = [(PXUpNextSettings *)self vector4];
  v75 = [vector45 objectAtIndexedSubscript:4];
  [v75 floatValue];
  [(PXUpNextSettings *)self setMeaningWeight4:?];

  vector46 = [(PXUpNextSettings *)self vector4];
  v77 = [vector46 objectAtIndexedSubscript:5];
  [v77 floatValue];
  [(PXUpNextSettings *)self setMemoryFeatureWeight4:?];

  vector47 = [(PXUpNextSettings *)self vector4];
  v79 = [vector47 objectAtIndexedSubscript:6];
  [v79 floatValue];
  [(PXUpNextSettings *)self setTripWeight4:?];

  vector08 = [(PXUpNextSettings *)self vector0];
  vector18 = [(PXUpNextSettings *)self vector1];
  v86[1] = vector18;
  vector28 = [(PXUpNextSettings *)self vector2];
  v86[2] = vector28;
  vector38 = [(PXUpNextSettings *)self vector3];
  v86[3] = vector38;
  vector48 = [(PXUpNextSettings *)self vector4];
  v86[4] = vector48;
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:5];
  [(PXUpNextSettings *)self setFeatureWeightVectors:v85];
}

+ (PXUpNextSettings)sharedInstance
{
  if (sharedInstance_onceToken_160453 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_160453, &__block_literal_global_160454);
  }

  v3 = sharedInstance_sharedInstance_160455;

  return v3;
}

void __34__PXUpNextSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 upNextSettings];
  v1 = sharedInstance_sharedInstance_160455;
  sharedInstance_sharedInstance_160455 = v0;
}

@end