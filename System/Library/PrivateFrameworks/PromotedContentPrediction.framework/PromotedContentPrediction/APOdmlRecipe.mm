@interface APOdmlRecipe
- (APOdmlRecipe)initWithDictionary:(id)dictionary;
- (APOdmlRecipe)initWithMLRTask:(id)task;
- (id)rangeBoundaryForFeature:(id)feature upperBound:(BOOL)bound;
- (id)sentinelValuesForFeature:(id)feature;
- (id)sentinelValuesForOutput;
@end

@implementation APOdmlRecipe

- (APOdmlRecipe)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v108.receiver = self;
  v108.super_class = APOdmlRecipe;
  v6 = [(APOdmlRecipe *)&v108 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"ModelType");
    modelType = v6->_modelType;
    v6->_modelType = v7;

    v10 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v9, @"ModelFileName");
    modelFileName = v6->_modelFileName;
    v6->_modelFileName = v10;

    v13 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v12, @"LossName");
    lossName = v6->_lossName;
    v6->_lossName = v13;

    v16 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v15, @"LabelName");
    labelName = v6->_labelName;
    v6->_labelName = v16;

    v19 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v18, @"LearningRateName");
    learningRateName = v6->_learningRateName;
    v6->_learningRateName = v19;

    v22 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v21, @"InitName");
    functionInitName = v6->_functionInitName;
    v6->_functionInitName = v22;

    v25 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v24, @"IsTrainingName");
    isTrainingName = v6->_isTrainingName;
    v6->_isTrainingName = v25;

    v28 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v27, @"IsCounterfactual");
    isCounterfactual = v6->_isCounterfactual;
    v6->_isCounterfactual = v28;

    v31 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v30, @"CentralDifferentialPrivacyParameters");
    privacyParams = v6->_privacyParams;
    v6->_privacyParams = v31;

    v34 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v33, @"L2NormBound");
    l2NormBound = v6->_l2NormBound;
    v6->_l2NormBound = v34;

    v37 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v36, @"LearningRate");
    learningRate = v6->_learningRate;
    v6->_learningRate = v37;

    v40 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v39, @"NumLocalIterations");
    localIterationsCount = v6->_localIterationsCount;
    v6->_localIterationsCount = v40;

    v43 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v42, @"TrainLayers");
    trainLayers = v6->_trainLayers;
    v6->_trainLayers = v43;

    v46 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v45, @"WeightBySamples");
    weightBySamples = v6->_weightBySamples;
    v6->_weightBySamples = v46;

    v49 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v48, @"shouldShuffle");
    shouldShuffle = v6->_shouldShuffle;
    v6->_shouldShuffle = v49;

    v52 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v51, @"des_settings");
    desSettings = v6->_desSettings;
    v6->_desSettings = v52;

    v55 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v54, @"iCloudAggServiceKey");
    iCloudServiceKey = v6->_iCloudServiceKey;
    v6->_iCloudServiceKey = v55;

    v58 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v57, @"maxNorm");
    maxNorm = v6->_maxNorm;
    v6->_maxNorm = v58;

    v61 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v60, @"minTrainingSamples");
    minTrainingSamples = v6->_minTrainingSamples;
    v6->_minTrainingSamples = v61;

    v64 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v63, @"normBinCount");
    normBinCount = v6->_normBinCount;
    v6->_normBinCount = v64;

    v67 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v66, @"WeightNames");
    weightNames = v6->_weightNames;
    v6->_weightNames = v67;

    v70 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v69, @"batchSize");
    batchSize = v6->_batchSize;
    v6->_batchSize = v70;

    v73 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v72, @"featureValueConfig");
    featureValueConfig = v6->_featureValueConfig;
    v6->_featureValueConfig = v73;

    v76 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v75, @"modelOutputConfig");
    modelOutputConfig = v6->_modelOutputConfig;
    v6->_modelOutputConfig = v76;

    v79 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v78, @"augmentedDESRecords");
    augmentedDESRecords = v6->_augmentedDESRecords;
    v6->_augmentedDESRecords = v79;

    v82 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v81, @"augmentedDESRecordsLimit");
    augmentedDESRecordsLimit = v6->_augmentedDESRecordsLimit;
    v6->_augmentedDESRecordsLimit = v82;

    v85 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v84, @"augmentedDESRecordsRatio");
    augmentedDESRecordsRatio = v6->_augmentedDESRecordsRatio;
    v6->_augmentedDESRecordsRatio = v85;

    v88 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v87, @"augmentedDESRecordsTruePercentage");
    augmentedDESRecordsTruePercentage = v6->_augmentedDESRecordsTruePercentage;
    v6->_augmentedDESRecordsTruePercentage = v88;

    v91 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v90, @"augmentedDESRecordsTargetKey");
    augmentedDESRecordsTargetKey = v6->_augmentedDESRecordsTargetKey;
    v6->_augmentedDESRecordsTargetKey = v91;

    v94 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v93, @"InputNames");
    inputNames = v6->_inputNames;
    v6->_inputNames = v94;

    v97 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v96, @"OutputNames");
    outputNames = v6->_outputNames;
    v6->_outputNames = v97;

    v100 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v99, @"MILModel");

    if (v100)
    {
      v101 = [APOdmlRecipe alloc];
      v103 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v102, @"MILModel");
      v105 = objc_msgSend_initWithDictionary_(v101, v104, v103);
      coreMLRecipe = v6->_coreMLRecipe;
      v6->_coreMLRecipe = v105;
    }
  }

  return v6;
}

- (APOdmlRecipe)initWithMLRTask:(id)task
{
  v4 = objc_msgSend_parameters(task, a2, task);
  v95.receiver = self;
  v95.super_class = APOdmlRecipe;
  v6 = [(APOdmlRecipe *)&v95 init];
  if (v6)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"ModelType");
    modelType = v6->_modelType;
    v6->_modelType = v8;

    v11 = objc_msgSend_objectForKeyedSubscript_(v4, v10, @"ModelFileName");
    modelFileName = v6->_modelFileName;
    v6->_modelFileName = v11;

    v14 = objc_msgSend_objectForKeyedSubscript_(v4, v13, @"LossName");
    lossName = v6->_lossName;
    v6->_lossName = v14;

    v17 = objc_msgSend_objectForKeyedSubscript_(v4, v16, @"LabelName");
    labelName = v6->_labelName;
    v6->_labelName = v17;

    v20 = objc_msgSend_objectForKeyedSubscript_(v4, v19, @"LearningRateName");
    learningRateName = v6->_learningRateName;
    v6->_learningRateName = v20;

    v23 = objc_msgSend_objectForKeyedSubscript_(v4, v22, @"InitName");
    functionInitName = v6->_functionInitName;
    v6->_functionInitName = v23;

    v26 = objc_msgSend_objectForKeyedSubscript_(v4, v25, @"IsTrainingName");
    isTrainingName = v6->_isTrainingName;
    v6->_isTrainingName = v26;

    v29 = objc_msgSend_objectForKeyedSubscript_(v4, v28, @"IsCounterfactual");
    isCounterfactual = v6->_isCounterfactual;
    v6->_isCounterfactual = v29;

    v32 = objc_msgSend_objectForKeyedSubscript_(v4, v31, @"CentralDifferentialPrivacyParameters");
    privacyParams = v6->_privacyParams;
    v6->_privacyParams = v32;

    v35 = objc_msgSend_objectForKeyedSubscript_(v4, v34, @"L2NormBound");
    l2NormBound = v6->_l2NormBound;
    v6->_l2NormBound = v35;

    v38 = objc_msgSend_objectForKeyedSubscript_(v4, v37, @"LearningRate");
    learningRate = v6->_learningRate;
    v6->_learningRate = v38;

    v41 = objc_msgSend_objectForKeyedSubscript_(v4, v40, @"NumLocalIterations");
    localIterationsCount = v6->_localIterationsCount;
    v6->_localIterationsCount = v41;

    v44 = objc_msgSend_objectForKeyedSubscript_(v4, v43, @"TrainLayers");
    trainLayers = v6->_trainLayers;
    v6->_trainLayers = v44;

    v47 = objc_msgSend_objectForKeyedSubscript_(v4, v46, @"WeightBySamples");
    weightBySamples = v6->_weightBySamples;
    v6->_weightBySamples = v47;

    v50 = objc_msgSend_objectForKeyedSubscript_(v4, v49, @"shouldShuffle");
    shouldShuffle = v6->_shouldShuffle;
    v6->_shouldShuffle = v50;

    v53 = objc_msgSend_objectForKeyedSubscript_(v4, v52, @"des_settings");
    desSettings = v6->_desSettings;
    v6->_desSettings = v53;

    v56 = objc_msgSend_objectForKeyedSubscript_(v4, v55, @"iCloudAggServiceKey");
    iCloudServiceKey = v6->_iCloudServiceKey;
    v6->_iCloudServiceKey = v56;

    v59 = objc_msgSend_objectForKeyedSubscript_(v4, v58, @"maxNorm");
    maxNorm = v6->_maxNorm;
    v6->_maxNorm = v59;

    v62 = objc_msgSend_objectForKeyedSubscript_(v4, v61, @"minTrainingSamples");
    minTrainingSamples = v6->_minTrainingSamples;
    v6->_minTrainingSamples = v62;

    v65 = objc_msgSend_objectForKeyedSubscript_(v4, v64, @"normBinCount");
    normBinCount = v6->_normBinCount;
    v6->_normBinCount = v65;

    v68 = objc_msgSend_objectForKeyedSubscript_(v4, v67, @"WeightNames");
    weightNames = v6->_weightNames;
    v6->_weightNames = v68;

    v71 = objc_msgSend_objectForKeyedSubscript_(v4, v70, @"batchSize");
    batchSize = v6->_batchSize;
    v6->_batchSize = v71;

    v74 = objc_msgSend_objectForKeyedSubscript_(v4, v73, @"featureValueConfig");
    featureValueConfig = v6->_featureValueConfig;
    v6->_featureValueConfig = v74;

    v77 = objc_msgSend_objectForKeyedSubscript_(v4, v76, @"modelOutputConfig");
    modelOutputConfig = v6->_modelOutputConfig;
    v6->_modelOutputConfig = v77;

    v80 = objc_msgSend_objectForKeyedSubscript_(v4, v79, @"augmentedDESRecords");
    augmentedDESRecords = v6->_augmentedDESRecords;
    v6->_augmentedDESRecords = v80;

    v83 = objc_msgSend_objectForKeyedSubscript_(v4, v82, @"augmentedDESRecordsLimit");
    augmentedDESRecordsLimit = v6->_augmentedDESRecordsLimit;
    v6->_augmentedDESRecordsLimit = v83;

    v86 = objc_msgSend_objectForKeyedSubscript_(v4, v85, @"augmentedDESRecordsRatio");
    augmentedDESRecordsRatio = v6->_augmentedDESRecordsRatio;
    v6->_augmentedDESRecordsRatio = v86;

    v89 = objc_msgSend_objectForKeyedSubscript_(v4, v88, @"augmentedDESRecordsTruePercentage");
    augmentedDESRecordsTruePercentage = v6->_augmentedDESRecordsTruePercentage;
    v6->_augmentedDESRecordsTruePercentage = v89;

    v92 = objc_msgSend_objectForKeyedSubscript_(v4, v91, @"augmentedDESRecordsTargetKey");
    augmentedDESRecordsTargetKey = v6->_augmentedDESRecordsTargetKey;
    v6->_augmentedDESRecordsTargetKey = v92;
  }

  return v6;
}

- (id)sentinelValuesForFeature:(id)feature
{
  featureCopy = feature;
  v7 = objc_msgSend_featureValueConfig(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, featureCopy);

  v11 = objc_msgSend_objectForKey_(v9, v10, @"sentinelValueSet");

  return v11;
}

- (id)rangeBoundaryForFeature:(id)feature upperBound:(BOOL)bound
{
  boundCopy = bound;
  featureCopy = feature;
  v9 = objc_msgSend_featureValueConfig(self, v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, featureCopy);

  v13 = kAPOdmlConfigMax;
  if (!boundCopy)
  {
    v13 = kAPOdmlConfigMin;
  }

  v14 = objc_msgSend_objectForKey_(v11, v12, *v13);

  return v14;
}

- (id)sentinelValuesForOutput
{
  v3 = objc_msgSend_modelOutputConfig(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"sentinelValueSet");

  return v5;
}

@end