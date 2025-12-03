@interface PGFingerprintVersionHelper
+ (id)_assetPrintFeatureExtractorForAssetPrintType:(int64_t)type transformers:(id)transformers error:(id *)error;
+ (id)_clipprintFeatureExtractorInstance;
+ (id)_featureExtractor:(id)extractor withTransformers:(id)transformers parentFeatureExtractorName:(id)name;
+ (id)_featureExtractors:(id)extractors withTransformers:(id)transformers;
+ (id)_featureExtractors:(id)extractors withTransformers:(id)transformers parentFeatureExtractorName:(id)name;
+ (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error;
+ (id)_multiModalFeatureExtractorForMutliModalType:(int64_t)type assetFeatureExtractor:(id)extractor personaVectorFeatureExtractor:(id)featureExtractor graph:(id)graph transformers:(id)transformers error:(id *)error;
+ (id)_personaVectorFeatureExtractorForPersonaVectorType:(int64_t)type fetchOptionPropertySet:(id)set graph:(id)graph transformers:(id)transformers error:(id *)error;
+ (id)_sceneprintFeatureExtractorInstance;
+ (id)featureExtractorForFingerprintVersion:(int64_t)version withGraph:(id)graph withTransformers:(id)transformers error:(id *)error;
+ (id)fetchOptionPropertySetForFingerprintVersion:(int64_t)version;
+ (id)nameForFingerprintVersion:(int64_t)version;
+ (int64_t)fingerprintVersionForName:(id)name;
+ (void)resetPreCalculatedFeatures;
@end

@implementation PGFingerprintVersionHelper

+ (id)_clipprintFeatureExtractorInstance
{
  v2 = objc_alloc_init(PGFeatureExtractorCLIPprint);

  return v2;
}

+ (id)_sceneprintFeatureExtractorInstance
{
  v2 = objc_alloc_init(PGFeatureExtractorSceneprint);

  return v2;
}

+ (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  messageCopy = message;
  v10 = objc_alloc_init(v8);
  [v10 setObject:messageCopy forKey:*MEMORY[0x277CCA450]];

  if (errorCopy)
  {
    [v10 setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotosGraph.PGFingerprintVersion" code:code userInfo:v10];

  return v11;
}

+ (id)_featureExtractor:(id)extractor withTransformers:(id)transformers parentFeatureExtractorName:(id)name
{
  extractorCopy = extractor;
  transformersCopy = transformers;
  nameCopy = name;
  name = [extractorCopy name];
  if (nameCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", nameCopy, name];

    name = v11;
  }

  if (transformersCopy && ([transformersCopy featureTransformersForFeatureExtractorName:name], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, (isKindOfClass & 1) == 0))
  {
    v17 = [transformersCopy featureTransformersForFeatureExtractorName:name];
    v15 = [[PGSequentialFeatureExtractor alloc] initWithFeatureExtractor:extractorCopy featureTransformers:v17];
  }

  else
  {
    v15 = extractorCopy;
  }

  return v15;
}

+ (id)_featureExtractors:(id)extractors withTransformers:(id)transformers parentFeatureExtractorName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  extractorsCopy = extractors;
  transformersCopy = transformers;
  nameCopy = name;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(extractorsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = extractorsCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [self _featureExtractor:*(*(&v20 + 1) + 8 * i) withTransformers:transformersCopy parentFeatureExtractorName:{nameCopy, v20}];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_featureExtractors:(id)extractors withTransformers:(id)transformers
{
  extractorsCopy = extractors;
  v7 = extractorsCopy;
  if (transformers)
  {
    v8 = [self _featureExtractors:extractorsCopy withTransformers:transformers parentFeatureExtractorName:0];
  }

  else
  {
    v8 = extractorsCopy;
  }

  v9 = v8;

  return v9;
}

+ (id)_personaVectorFeatureExtractorForPersonaVectorType:(int64_t)type fetchOptionPropertySet:(id)set graph:(id)graph transformers:(id)transformers error:(id *)error
{
  v190[18] = *MEMORY[0x277D85DE8];
  setCopy = set;
  graphCopy = graph;
  transformersCopy = transformers;
  if (type > 1)
  {
    if (type == 2)
    {
      selfCopy = self;
      if (graphCopy)
      {
        v177 = [[PGMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
        v190[0] = v177;
        v173 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
        v190[1] = v173;
        v169 = [[PGInvariantCoworkerFeatureExtractor alloc] initWithError:error];
        v190[2] = v169;
        v165 = [[PGInvariantPartnerFeatureExtractor alloc] initWithError:error];
        v190[3] = v165;
        v161 = [[PGPublicEventCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v190[4] = v161;
        v157 = [[PGBusinessCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v190[5] = v157;
        v153 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:1 error:error];
        v190[6] = v153;
        v149 = [[PGBabyFeatureExtractor alloc] initWithError:error];
        v190[7] = v149;
        v145 = [[PGSceneFeatureExtractor alloc] initWithVersion:1 error:error];
        v190[8] = v145;
        v42 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
        v190[9] = v42;
        v180 = setCopy;
        v43 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
        v190[10] = v43;
        v184 = transformersCopy;
        v44 = [[PGMobilityFeatureExtractor alloc] initWithError:error];
        v190[11] = v44;
        v45 = [[PGPartOfDayFeatureExtractor alloc] initWithError:error];
        v190[12] = v45;
        v46 = [[PGSeasonFeatureExtractor alloc] initWithError:error];
        v190[13] = v46;
        v47 = [[PGWeekendFeatureExtractor alloc] initWithError:error];
        v190[14] = v47;
        v48 = [[PGWeekdayFeatureExtractor alloc] initWithError:error];
        v190[15] = v48;
        v186 = graphCopy;
        v49 = [[PGPOIFeatureExtractor alloc] initWithVersion:1 error:error];
        v190[16] = v49;
        v50 = [[PGROIFeatureExtractor alloc] initWithError:error];
        v190[17] = v50;
        v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:18];

        v99 = [selfCopy _featureExtractors:v51 withTransformers:v184 parentFeatureExtractorName:@"PersonaVector"];

        v178 = objc_alloc_init(PGFeatureExtractorCartesianLocation);
        v189[0] = v178;
        v174 = objc_alloc_init(PGFeatureExtractorExposureScore);
        v189[1] = v174;
        v170 = objc_alloc_init(PGFeatureExtractorFaceCountScore);
        v189[2] = v170;
        v166 = objc_alloc_init(PGFeatureExtractorActivityScore);
        v189[3] = v166;
        v162 = objc_alloc_init(PGFeatureExtractorVideoScore);
        v189[4] = v162;
        v158 = objc_alloc_init(PGFeatureExtractorBlurrinessScore);
        v189[5] = v158;
        v154 = objc_alloc_init(PGFeatureExtractorAudioClassification);
        v189[6] = v154;
        v150 = objc_alloc_init(PGFeatureExtractorIsFavoriteScore);
        v189[7] = v150;
        v146 = objc_alloc_init(PGFeatureExtractorHasAdjustmentsScore);
        v189[8] = v146;
        v142 = objc_alloc_init(PGFeatureExtractorDurationInSecond);
        v189[9] = v142;
        v139 = objc_alloc_init(PGFeatureExtractorImageAspectRatio);
        v189[10] = v139;
        v136 = objc_alloc_init(PGFeatureExtractorIsScreenRecording);
        v189[11] = v136;
        v133 = objc_alloc_init(PGFeatureExtractorPlayCount);
        v189[12] = v133;
        v131 = objc_alloc_init(PGFeatureExtractorShareCount);
        v189[13] = v131;
        v129 = objc_alloc_init(PGFeatureExtractorViewCount);
        v189[14] = v129;
        v127 = objc_alloc_init(PGFeatureExtractorAutoplaySuggestionScore);
        v189[15] = v127;
        v125 = objc_alloc_init(PGFeatureExtractorTastefullyBlurredScore);
        v189[16] = v125;
        v123 = objc_alloc_init(PGFeatureExtractorFailureScore);
        v189[17] = v123;
        v121 = objc_alloc_init(PGFeatureExtractorAestheticScore);
        v189[18] = v121;
        v119 = objc_alloc_init(PGFeatureExtractorPleasantLightingScore);
        v189[19] = v119;
        v117 = objc_alloc_init(PGFeatureExtractorWellFramedSubjectScore);
        v189[20] = v117;
        v115 = objc_alloc_init(PGFeatureExtractorWellChosenSubjectScore);
        v189[21] = v115;
        v113 = objc_alloc_init(PGFeatureExtractorWellTimedShotScore);
        v189[22] = v113;
        v111 = objc_alloc_init(PGFeatureExtractorSharplyFocusedSubjectScore);
        v189[23] = v111;
        v109 = objc_alloc_init(PGFeatureExtractorHarmoniousColorScore);
        v189[24] = v109;
        v107 = objc_alloc_init(PGFeatureExtractorPleasantReflectionsScore);
        v189[25] = v107;
        v105 = objc_alloc_init(PGFeatureExtractorLivelyColorScore);
        v189[26] = v105;
        v103 = objc_alloc_init(PGFeatureExtractorPleasantSymmetryScore);
        v189[27] = v103;
        v101 = objc_alloc_init(PGFeatureExtractorPleasantPatternScore);
        v189[28] = v101;
        v97 = objc_alloc_init(PGFeatureExtractorImmersivenessScore);
        v189[29] = v97;
        v95 = objc_alloc_init(PGFeatureExtractorPleasantPerspectiveScore);
        v189[30] = v95;
        v93 = objc_alloc_init(PGFeatureExtractorPleasantPostProcessingScore);
        v189[31] = v93;
        v91 = objc_alloc_init(PGFeatureExtractorNoiseScore);
        v189[32] = v91;
        v89 = objc_alloc_init(PGFeatureExtractorPleasantCompositionScore);
        v189[33] = v89;
        v87 = objc_alloc_init(PGFeatureExtractorInterestingSubjectScore);
        v189[34] = v87;
        v85 = objc_alloc_init(PGFeatureExtractorIntrusiveObjectPresenceScore);
        v189[35] = v85;
        v81 = objc_alloc_init(PGFeatureExtractorPleasantCameraTiltScore);
        v189[36] = v81;
        v79 = objc_alloc_init(PGFeatureExtractorLowLightScore);
        v189[37] = v79;
        v77 = objc_alloc_init(PGFeatureExtractorAssetPlaybackStyle);
        v189[38] = v77;
        v75 = objc_alloc_init(PGFeatureExtractorAssetMediaType);
        v189[39] = v75;
        v73 = objc_alloc_init(PGFeatureExtractorAssetMediaSubtype);
        v189[40] = v73;
        v71 = objc_alloc_init(PGFeatureExtractorAssetBurstSelectionType);
        v189[41] = v71;
        v52 = objc_alloc_init(PGFeatureExtractorAssetSourceType);
        v189[42] = v52;
        v53 = objc_alloc_init(PGFeatureExtractorAssetResolution);
        v189[43] = v53;
        v54 = objc_alloc_init(PGFeatureExtractorAssetFormat);
        v189[44] = v54;
        v55 = objc_alloc_init(PGFeatureExtractorAssetImportSource);
        v189[45] = v55;
        v56 = objc_alloc_init(PGFeatureExtractorStandardAspectRatio);
        v189[46] = v56;
        v57 = objc_alloc_init(PGFeatureExtractorLocale);
        v189[47] = v57;
        v58 = objc_alloc_init(PGFeatureExtractorTaboo);
        v189[48] = v58;
        v59 = objc_alloc_init(PGFeatureExtractorPotentialLandmark);
        v189[49] = v59;
        v60 = [PGFeatureExtractorGraphRelations alloc];
        v61 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"GraphRelations" featureExtractors:v99];
        v62 = [(PGFeatureExtractorGraphRelations *)v60 initWithGraph:v186 featureExtractor:v61];
        v189[50] = v62;
        v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:51];

        setCopy = v180;
        transformersCopy = v184;

        v63 = [selfCopy _featureExtractors:v83 withTransformers:v184 parentFeatureExtractorName:@"PersonaVector"];

        v64 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"PersonaVectorMultiModal-V1.0" featureExtractors:v63];
        v65 = [[PGFeatureExtractorPhotoLibraryAverage alloc] initWithAssetFeatureExtractor:v64 assetFetchOptionPropertySet:v180];
        transformers = [[PGFeatureExtractorAssetPhotoLibrary alloc] initWithPhotoLibraryFeatureExtractor:v65];

        graphCopy = v186;
        v40 = v99;
        goto LABEL_12;
      }

      if (error)
      {
        selfCopy5 = self;
        goto LABEL_17;
      }
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_19;
      }

      if (graphCopy)
      {
        v175 = [[PGMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
        v188[0] = v175;
        v171 = [[PGPeopleFeatureExtractor alloc] initWithGraph:graphCopy error:error];
        v188[1] = v171;
        v167 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
        v188[2] = v167;
        v163 = [[PGInvariantCoworkerFeatureExtractor alloc] initWithError:error];
        v188[3] = v163;
        v159 = [[PGInvariantPartnerFeatureExtractor alloc] initWithError:error];
        v188[4] = v159;
        v155 = [[PGPublicEventCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v188[5] = v155;
        v151 = [[PGBusinessCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v188[6] = v151;
        v147 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:1 error:error];
        v188[7] = v147;
        v143 = [[PGBabyFeatureExtractor alloc] initWithError:error];
        v188[8] = v143;
        v140 = [[PGSceneFeatureExtractor alloc] initWithVersion:1 error:error];
        v188[9] = v140;
        v137 = [[PGFrequentLocationFeatureExtractor alloc] initWithGraph:graphCopy error:error];
        v188[10] = v137;
        v183 = transformersCopy;
        v134 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
        v188[11] = v134;
        v16 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
        v188[12] = v16;
        v17 = [[PGMobilityFeatureExtractor alloc] initWithError:error];
        v188[13] = v17;
        v18 = [[PGPartOfDayFeatureExtractor alloc] initWithError:error];
        v188[14] = v18;
        v19 = [[PGSeasonFeatureExtractor alloc] initWithError:error];
        v188[15] = v19;
        v179 = setCopy;
        v20 = [[PGWeekendFeatureExtractor alloc] initWithError:error];
        v188[16] = v20;
        selfCopy3 = self;
        selfCopy4 = self;
        v22 = [[PGWeekdayFeatureExtractor alloc] initWithError:error];
        v188[17] = v22;
        v185 = graphCopy;
        v23 = [[PGPOIFeatureExtractor alloc] initWithVersion:1 error:error];
        v188[18] = v23;
        v24 = [[PGROIFeatureExtractor alloc] initWithError:error];
        v188[19] = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:20];

        v96 = [selfCopy3 _featureExtractors:v25 withTransformers:v183 parentFeatureExtractorName:@"PersonaVector"];

        v176 = objc_alloc_init(PGFeatureExtractorCartesianLocation);
        v187[0] = v176;
        v172 = [[PGFeatureExtractorFrequentPeople alloc] initWithNumberOfFrequentPeopleToExtract:25];
        v187[1] = v172;
        v168 = objc_alloc_init(PGFeatureExtractorExposureScore);
        v187[2] = v168;
        v164 = objc_alloc_init(PGFeatureExtractorFaceCountScore);
        v187[3] = v164;
        v160 = objc_alloc_init(PGFeatureExtractorActivityScore);
        v187[4] = v160;
        v156 = objc_alloc_init(PGFeatureExtractorVideoScore);
        v187[5] = v156;
        v152 = objc_alloc_init(PGFeatureExtractorBlurrinessScore);
        v187[6] = v152;
        v148 = objc_alloc_init(PGFeatureExtractorAudioClassification);
        v187[7] = v148;
        v144 = objc_alloc_init(PGFeatureExtractorIsFavoriteScore);
        v187[8] = v144;
        v141 = objc_alloc_init(PGFeatureExtractorHasAdjustmentsScore);
        v187[9] = v141;
        v138 = objc_alloc_init(PGFeatureExtractorDurationInSecond);
        v187[10] = v138;
        v135 = objc_alloc_init(PGFeatureExtractorImageAspectRatio);
        v187[11] = v135;
        v132 = objc_alloc_init(PGFeatureExtractorIsScreenRecording);
        v187[12] = v132;
        v130 = objc_alloc_init(PGFeatureExtractorPlayCount);
        v187[13] = v130;
        v128 = objc_alloc_init(PGFeatureExtractorShareCount);
        v187[14] = v128;
        v126 = objc_alloc_init(PGFeatureExtractorViewCount);
        v187[15] = v126;
        v124 = objc_alloc_init(PGFeatureExtractorAutoplaySuggestionScore);
        v187[16] = v124;
        v122 = objc_alloc_init(PGFeatureExtractorTastefullyBlurredScore);
        v187[17] = v122;
        v120 = objc_alloc_init(PGFeatureExtractorFailureScore);
        v187[18] = v120;
        v118 = objc_alloc_init(PGFeatureExtractorAestheticScore);
        v187[19] = v118;
        v116 = objc_alloc_init(PGFeatureExtractorPleasantLightingScore);
        v187[20] = v116;
        v114 = objc_alloc_init(PGFeatureExtractorWellFramedSubjectScore);
        v187[21] = v114;
        v112 = objc_alloc_init(PGFeatureExtractorWellChosenSubjectScore);
        v187[22] = v112;
        v110 = objc_alloc_init(PGFeatureExtractorWellTimedShotScore);
        v187[23] = v110;
        v108 = objc_alloc_init(PGFeatureExtractorSharplyFocusedSubjectScore);
        v187[24] = v108;
        v106 = objc_alloc_init(PGFeatureExtractorHarmoniousColorScore);
        v187[25] = v106;
        v104 = objc_alloc_init(PGFeatureExtractorPleasantReflectionsScore);
        v187[26] = v104;
        v102 = objc_alloc_init(PGFeatureExtractorLivelyColorScore);
        v187[27] = v102;
        v100 = objc_alloc_init(PGFeatureExtractorPleasantSymmetryScore);
        v187[28] = v100;
        v98 = objc_alloc_init(PGFeatureExtractorPleasantPatternScore);
        v187[29] = v98;
        v94 = objc_alloc_init(PGFeatureExtractorImmersivenessScore);
        v187[30] = v94;
        v92 = objc_alloc_init(PGFeatureExtractorPleasantPerspectiveScore);
        v187[31] = v92;
        v90 = objc_alloc_init(PGFeatureExtractorPleasantPostProcessingScore);
        v187[32] = v90;
        v88 = objc_alloc_init(PGFeatureExtractorNoiseScore);
        v187[33] = v88;
        v86 = objc_alloc_init(PGFeatureExtractorPleasantCompositionScore);
        v187[34] = v86;
        v84 = objc_alloc_init(PGFeatureExtractorInterestingSubjectScore);
        v187[35] = v84;
        v82 = objc_alloc_init(PGFeatureExtractorIntrusiveObjectPresenceScore);
        v187[36] = v82;
        v78 = objc_alloc_init(PGFeatureExtractorPleasantCameraTiltScore);
        v187[37] = v78;
        v76 = objc_alloc_init(PGFeatureExtractorLowLightScore);
        v187[38] = v76;
        v74 = objc_alloc_init(PGFeatureExtractorAssetPlaybackStyle);
        v187[39] = v74;
        v72 = objc_alloc_init(PGFeatureExtractorAssetMediaType);
        v187[40] = v72;
        v70 = objc_alloc_init(PGFeatureExtractorAssetMediaSubtype);
        v187[41] = v70;
        v69 = objc_alloc_init(PGFeatureExtractorAssetBurstSelectionType);
        v187[42] = v69;
        v26 = objc_alloc_init(PGFeatureExtractorAssetSourceType);
        v187[43] = v26;
        v27 = objc_alloc_init(PGFeatureExtractorAssetResolution);
        v187[44] = v27;
        v28 = objc_alloc_init(PGFeatureExtractorAssetFormat);
        v187[45] = v28;
        v29 = objc_alloc_init(PGFeatureExtractorAssetImportSource);
        v187[46] = v29;
        v30 = objc_alloc_init(PGFeatureExtractorStandardAspectRatio);
        v187[47] = v30;
        v31 = objc_alloc_init(PGFeatureExtractorLocale);
        v187[48] = v31;
        v32 = objc_alloc_init(PGFeatureExtractorTaboo);
        v187[49] = v32;
        v33 = objc_alloc_init(PGFeatureExtractorPotentialLandmark);
        v187[50] = v33;
        v34 = [PGFeatureExtractorGraphRelations alloc];
        v35 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"GraphRelations" featureExtractors:v96];
        v36 = [(PGFeatureExtractorGraphRelations *)v34 initWithGraph:v185 featureExtractor:v35];
        v187[51] = v36;
        v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:52];

        transformersCopy = v183;
        setCopy = v179;

        v37 = [selfCopy4 _featureExtractors:v80 withTransformers:v183 parentFeatureExtractorName:@"PersonaVector"];

        v38 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"PersonaVectorLibrarySpecificMultiModal-V1.0" featureExtractors:v37];
        v39 = [[PGFeatureExtractorPhotoLibraryAverage alloc] initWithAssetFeatureExtractor:v38 assetFetchOptionPropertySet:v179];
        transformers = [[PGFeatureExtractorAssetPhotoLibrary alloc] initWithPhotoLibraryFeatureExtractor:v39];

        graphCopy = v185;
        v40 = v96;
LABEL_12:

        goto LABEL_19;
      }

      if (error)
      {
        selfCopy5 = self;
LABEL_17:
        [selfCopy5 _generateErrorWithErrorCode:0 errorMessage:@"Requested fingerprint version requires a valid PGGraph object." underlyingError:0];
        *error = transformers = 0;
        goto LABEL_19;
      }
    }

    transformers = 0;
    goto LABEL_19;
  }

  if (type)
  {
    if (type == 1)
    {
      v15 = objc_alloc_init(PGFeatureExtractorPCAPrint);
      transformers = [self _featureExtractor:v15 withTransformers:transformersCopy];
    }
  }

  else
  {
    v41 = objc_alloc(MEMORY[0x277D22C30]);
    transformers = [v41 initWithName:&stru_2843F5C58 featureExtractors:MEMORY[0x277CBEBF8]];
  }

LABEL_19:

  v67 = *MEMORY[0x277D85DE8];

  return transformers;
}

+ (id)_multiModalFeatureExtractorForMutliModalType:(int64_t)type assetFeatureExtractor:(id)extractor personaVectorFeatureExtractor:(id)featureExtractor graph:(id)graph transformers:(id)transformers error:(id *)error
{
  v381[2] = *MEMORY[0x277D85DE8];
  extractorCopy = extractor;
  featureExtractorCopy = featureExtractor;
  graphCopy = graph;
  transformersCopy = transformers;
  if (type <= 2)
  {
    switch(type)
    {
      case 0:
        v70 = objc_alloc(MEMORY[0x277D22C30]);
        v381[0] = extractorCopy;
        v381[1] = featureExtractorCopy;
        v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v381 count:2];
        transformers = [v70 initWithName:&stru_2843F5C58 featureExtractors:v71];

        goto LABEL_28;
      case 1:
        selfCopy6 = self;
        if (!graphCopy)
        {
          goto LABEL_25;
        }

        v349 = [[PGMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
        v380[0] = v349;
        v342 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
        v380[1] = v342;
        v334 = [[PGInvariantCoworkerFeatureExtractor alloc] initWithError:error];
        v380[2] = v334;
        v326 = [[PGInvariantPartnerFeatureExtractor alloc] initWithError:error];
        v380[3] = v326;
        v318 = [[PGPublicEventCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v380[4] = v318;
        v311 = [[PGBusinessCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v380[5] = v311;
        v304 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:1 error:error];
        v380[6] = v304;
        v297 = [[PGBabyFeatureExtractor alloc] initWithError:error];
        v380[7] = v297;
        v290 = [[PGSceneFeatureExtractor alloc] initWithVersion:1 error:error];
        v380[8] = v290;
        v112 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
        v380[9] = v112;
        v113 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
        v380[10] = v113;
        v114 = [[PGMobilityFeatureExtractor alloc] initWithError:error];
        v380[11] = v114;
        v360 = featureExtractorCopy;
        v115 = [[PGPartOfDayFeatureExtractor alloc] initWithError:error];
        v380[12] = v115;
        v116 = [[PGSeasonFeatureExtractor alloc] initWithError:error];
        v380[13] = v116;
        v117 = [[PGWeekendFeatureExtractor alloc] initWithError:error];
        v380[14] = v117;
        v354 = graphCopy;
        v118 = [[PGWeekdayFeatureExtractor alloc] initWithError:error];
        v380[15] = v118;
        v366 = transformersCopy;
        v119 = [[PGPOIFeatureExtractor alloc] initWithVersion:1 error:error];
        v380[16] = v119;
        v120 = [[PGROIFeatureExtractor alloc] initWithError:error];
        v380[17] = v120;
        v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v380 count:18];

        v346 = [selfCopy6 _featureExtractors:v121 withTransformers:v366];

        v122 = objc_alloc_init(PGFeatureExtractorFaceSize);
        v379[0] = v122;
        v123 = objc_alloc_init(PGFeatureExtractorFaceQuality);
        v379[1] = v123;
        v124 = objc_alloc_init(PGFeatureExtractorFaceSmileType);
        v379[2] = v124;
        v125 = objc_alloc_init(PGFeatureExtractorFaceEyesState);
        v379[3] = v125;
        v126 = objc_alloc_init(PGFeatureExtractorFaceAgeType);
        v379[4] = v126;
        v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v379 count:5];

        v186 = [selfCopy6 _featureExtractors:v127 withTransformers:v366];

        v378[0] = extractorCopy;
        v343 = objc_alloc_init(PGFeatureExtractorCartesianLocation);
        v378[1] = v343;
        v335 = [[PGFeatureExtractorFrequentPeople alloc] initWithNumberOfFrequentPeopleToExtract:25];
        v378[2] = v335;
        v327 = objc_alloc_init(PGFeatureExtractorExposureScore);
        v378[3] = v327;
        v319 = objc_alloc_init(PGFeatureExtractorFaceCountScore);
        v378[4] = v319;
        v312 = objc_alloc_init(PGFeatureExtractorActivityScore);
        v378[5] = v312;
        v305 = objc_alloc_init(PGFeatureExtractorVideoScore);
        v378[6] = v305;
        v298 = objc_alloc_init(PGFeatureExtractorBlurrinessScore);
        v378[7] = v298;
        v291 = objc_alloc_init(PGFeatureExtractorAudioClassification);
        v378[8] = v291;
        v284 = objc_alloc_init(PGFeatureExtractorIsFavoriteScore);
        v378[9] = v284;
        v278 = objc_alloc_init(PGFeatureExtractorHasAdjustmentsScore);
        v378[10] = v278;
        v272 = objc_alloc_init(PGFeatureExtractorDurationInSecond);
        v378[11] = v272;
        v267 = objc_alloc_init(PGFeatureExtractorImageAspectRatio);
        v378[12] = v267;
        v262 = objc_alloc_init(PGFeatureExtractorIsScreenRecording);
        v378[13] = v262;
        v257 = objc_alloc_init(PGFeatureExtractorPlayCount);
        v378[14] = v257;
        v252 = objc_alloc_init(PGFeatureExtractorShareCount);
        v378[15] = v252;
        v247 = objc_alloc_init(PGFeatureExtractorViewCount);
        v378[16] = v247;
        v243 = objc_alloc_init(PGFeatureExtractorAutoplaySuggestionScore);
        v378[17] = v243;
        v239 = objc_alloc_init(PGFeatureExtractorTastefullyBlurredScore);
        v378[18] = v239;
        v235 = objc_alloc_init(PGFeatureExtractorFailureScore);
        v378[19] = v235;
        v232 = objc_alloc_init(PGFeatureExtractorAestheticScore);
        v378[20] = v232;
        v229 = objc_alloc_init(PGFeatureExtractorPleasantLightingScore);
        v378[21] = v229;
        v226 = objc_alloc_init(PGFeatureExtractorWellFramedSubjectScore);
        v378[22] = v226;
        v223 = objc_alloc_init(PGFeatureExtractorWellChosenSubjectScore);
        v378[23] = v223;
        v220 = objc_alloc_init(PGFeatureExtractorWellTimedShotScore);
        v378[24] = v220;
        v217 = objc_alloc_init(PGFeatureExtractorSharplyFocusedSubjectScore);
        v378[25] = v217;
        v214 = objc_alloc_init(PGFeatureExtractorHarmoniousColorScore);
        v378[26] = v214;
        v211 = objc_alloc_init(PGFeatureExtractorPleasantReflectionsScore);
        v378[27] = v211;
        v208 = objc_alloc_init(PGFeatureExtractorLivelyColorScore);
        v378[28] = v208;
        v205 = objc_alloc_init(PGFeatureExtractorPleasantSymmetryScore);
        v378[29] = v205;
        v202 = objc_alloc_init(PGFeatureExtractorPleasantPatternScore);
        v378[30] = v202;
        v199 = objc_alloc_init(PGFeatureExtractorImmersivenessScore);
        v378[31] = v199;
        v196 = objc_alloc_init(PGFeatureExtractorPleasantPerspectiveScore);
        v378[32] = v196;
        v193 = objc_alloc_init(PGFeatureExtractorPleasantPostProcessingScore);
        v378[33] = v193;
        v190 = objc_alloc_init(PGFeatureExtractorNoiseScore);
        v378[34] = v190;
        v185 = objc_alloc_init(PGFeatureExtractorPleasantCompositionScore);
        v378[35] = v185;
        v182 = objc_alloc_init(PGFeatureExtractorInterestingSubjectScore);
        v378[36] = v182;
        v179 = objc_alloc_init(PGFeatureExtractorIntrusiveObjectPresenceScore);
        v378[37] = v179;
        v176 = objc_alloc_init(PGFeatureExtractorPleasantCameraTiltScore);
        v378[38] = v176;
        v173 = objc_alloc_init(PGFeatureExtractorLowLightScore);
        v378[39] = v173;
        v170 = objc_alloc_init(PGFeatureExtractorAssetPlaybackStyle);
        v378[40] = v170;
        v167 = objc_alloc_init(PGFeatureExtractorAssetMediaType);
        v378[41] = v167;
        v161 = objc_alloc_init(PGFeatureExtractorAssetMediaSubtype);
        v378[42] = v161;
        v158 = objc_alloc_init(PGFeatureExtractorAssetBurstSelectionType);
        v378[43] = v158;
        v155 = objc_alloc_init(PGFeatureExtractorAssetSourceType);
        v378[44] = v155;
        v152 = objc_alloc_init(PGFeatureExtractorAssetResolution);
        v378[45] = v152;
        v149 = objc_alloc_init(PGFeatureExtractorAssetFormat);
        v378[46] = v149;
        v146 = objc_alloc_init(PGFeatureExtractorAssetImportSource);
        v378[47] = v146;
        v128 = objc_alloc_init(PGFeatureExtractorStandardAspectRatio);
        v378[48] = v128;
        v129 = objc_alloc_init(PGFeatureExtractorLocale);
        v378[49] = v129;
        v130 = objc_alloc_init(PGFeatureExtractorTaboo);
        v378[50] = v130;
        v131 = objc_alloc_init(PGFeatureExtractorPotentialLandmark);
        v378[51] = v131;
        v132 = [PGFeatureExtractorAssetPhotoLibrary alloc];
        v133 = objc_alloc_init(PGFeatureExtractorPhotoLibrarySize);
        v134 = [(PGFeatureExtractorAssetPhotoLibrary *)v132 initWithPhotoLibraryFeatureExtractor:v133];
        v378[52] = v134;
        v378[53] = v360;
        v135 = [PGFeatureExtractorFacesFromAssetAverage alloc];
        v136 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"FacesAverage" featureExtractors:v186];
        v137 = [(PGFeatureExtractorFacesFromAssetAverage *)v135 initWithFaceFeatureExtractor:v136 name:@"FacesAverage"];
        v378[54] = v137;
        v138 = [PGFeatureExtractorGraphRelations alloc];
        v139 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"GraphRelations" featureExtractors:v346];
        v140 = [(PGFeatureExtractorGraphRelations *)v138 initWithGraph:v354 featureExtractor:v139];
        v378[55] = v140;
        v164 = [MEMORY[0x277CBEA60] arrayWithObjects:v378 count:56];

        featureExtractorCopy = v360;
        transformersCopy = v366;

        graphCopy = v354;
        v58 = [selfCopy6 _featureExtractors:v164 withTransformers:v366];

        v59 = objc_alloc(MEMORY[0x277D22C30]);
        v60 = @"MultiModal-V1.0";
        break;
      case 2:
        selfCopy6 = self;
        if (!graphCopy)
        {
          goto LABEL_25;
        }

        v345 = [[PGMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
        v377[0] = v345;
        v337 = [[PGPeopleFeatureExtractor alloc] initWithGraph:graphCopy error:error];
        v377[1] = v337;
        v329 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
        v377[2] = v329;
        v321 = [[PGInvariantCoworkerFeatureExtractor alloc] initWithError:error];
        v377[3] = v321;
        v313 = [[PGInvariantPartnerFeatureExtractor alloc] initWithError:error];
        v377[4] = v313;
        v306 = [[PGPublicEventCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v377[5] = v306;
        v299 = [[PGBusinessCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v377[6] = v299;
        v292 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:1 error:error];
        v377[7] = v292;
        v285 = [[PGBabyFeatureExtractor alloc] initWithError:error];
        v377[8] = v285;
        v279 = [[PGSceneFeatureExtractor alloc] initWithVersion:1 error:error];
        v377[9] = v279;
        v273 = [[PGFrequentLocationFeatureExtractor alloc] initWithGraph:graphCopy error:error];
        v377[10] = v273;
        v29 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
        v377[11] = v29;
        v30 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
        v377[12] = v30;
        v31 = [[PGMobilityFeatureExtractor alloc] initWithError:error];
        v377[13] = v31;
        v356 = featureExtractorCopy;
        v32 = [[PGPartOfDayFeatureExtractor alloc] initWithError:error];
        v377[14] = v32;
        v351 = graphCopy;
        v33 = [[PGSeasonFeatureExtractor alloc] initWithError:error];
        v377[15] = v33;
        v34 = [[PGWeekendFeatureExtractor alloc] initWithError:error];
        v377[16] = v34;
        v35 = [[PGWeekdayFeatureExtractor alloc] initWithError:error];
        v377[17] = v35;
        v362 = transformersCopy;
        v36 = [[PGPOIFeatureExtractor alloc] initWithVersion:1 error:error];
        v377[18] = v36;
        v37 = [[PGROIFeatureExtractor alloc] initWithError:error];
        v377[19] = v37;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v377 count:20];

        v346 = [selfCopy6 _featureExtractors:v38 withTransformers:v362];

        v39 = objc_alloc_init(PGFeatureExtractorFaceSize);
        v376[0] = v39;
        v40 = objc_alloc_init(PGFeatureExtractorFaceQuality);
        v376[1] = v40;
        v41 = objc_alloc_init(PGFeatureExtractorFaceSmileType);
        v376[2] = v41;
        v42 = objc_alloc_init(PGFeatureExtractorFaceEyesState);
        v376[3] = v42;
        v43 = objc_alloc_init(PGFeatureExtractorFaceAgeType);
        v376[4] = v43;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v376 count:5];

        v186 = [selfCopy6 _featureExtractors:v44 withTransformers:v362];

        v375[0] = extractorCopy;
        v338 = objc_alloc_init(PGFeatureExtractorCartesianLocation);
        v375[1] = v338;
        v330 = [[PGFeatureExtractorFrequentPeople alloc] initWithNumberOfFrequentPeopleToExtract:25];
        v375[2] = v330;
        v322 = objc_alloc_init(PGFeatureExtractorExposureScore);
        v375[3] = v322;
        v314 = objc_alloc_init(PGFeatureExtractorFaceCountScore);
        v375[4] = v314;
        v307 = objc_alloc_init(PGFeatureExtractorActivityScore);
        v375[5] = v307;
        v300 = objc_alloc_init(PGFeatureExtractorVideoScore);
        v375[6] = v300;
        v293 = objc_alloc_init(PGFeatureExtractorBlurrinessScore);
        v375[7] = v293;
        v286 = objc_alloc_init(PGFeatureExtractorAudioClassification);
        v375[8] = v286;
        v280 = objc_alloc_init(PGFeatureExtractorIsFavoriteScore);
        v375[9] = v280;
        v274 = objc_alloc_init(PGFeatureExtractorHasAdjustmentsScore);
        v375[10] = v274;
        v268 = objc_alloc_init(PGFeatureExtractorDurationInSecond);
        v375[11] = v268;
        v263 = objc_alloc_init(PGFeatureExtractorImageAspectRatio);
        v375[12] = v263;
        v258 = objc_alloc_init(PGFeatureExtractorIsScreenRecording);
        v375[13] = v258;
        v253 = objc_alloc_init(PGFeatureExtractorPlayCount);
        v375[14] = v253;
        v248 = objc_alloc_init(PGFeatureExtractorShareCount);
        v375[15] = v248;
        v244 = objc_alloc_init(PGFeatureExtractorViewCount);
        v375[16] = v244;
        v240 = objc_alloc_init(PGFeatureExtractorAutoplaySuggestionScore);
        v375[17] = v240;
        v236 = objc_alloc_init(PGFeatureExtractorTastefullyBlurredScore);
        v375[18] = v236;
        v233 = objc_alloc_init(PGFeatureExtractorFailureScore);
        v375[19] = v233;
        v230 = objc_alloc_init(PGFeatureExtractorAestheticScore);
        v375[20] = v230;
        v227 = objc_alloc_init(PGFeatureExtractorPleasantLightingScore);
        v375[21] = v227;
        v224 = objc_alloc_init(PGFeatureExtractorWellFramedSubjectScore);
        v375[22] = v224;
        v221 = objc_alloc_init(PGFeatureExtractorWellChosenSubjectScore);
        v375[23] = v221;
        v218 = objc_alloc_init(PGFeatureExtractorWellTimedShotScore);
        v375[24] = v218;
        v215 = objc_alloc_init(PGFeatureExtractorSharplyFocusedSubjectScore);
        v375[25] = v215;
        v212 = objc_alloc_init(PGFeatureExtractorHarmoniousColorScore);
        v375[26] = v212;
        v209 = objc_alloc_init(PGFeatureExtractorPleasantReflectionsScore);
        v375[27] = v209;
        v206 = objc_alloc_init(PGFeatureExtractorLivelyColorScore);
        v375[28] = v206;
        v203 = objc_alloc_init(PGFeatureExtractorPleasantSymmetryScore);
        v375[29] = v203;
        v200 = objc_alloc_init(PGFeatureExtractorPleasantPatternScore);
        v375[30] = v200;
        v197 = objc_alloc_init(PGFeatureExtractorImmersivenessScore);
        v375[31] = v197;
        v194 = objc_alloc_init(PGFeatureExtractorPleasantPerspectiveScore);
        v375[32] = v194;
        v191 = objc_alloc_init(PGFeatureExtractorPleasantPostProcessingScore);
        v375[33] = v191;
        v188 = objc_alloc_init(PGFeatureExtractorNoiseScore);
        v375[34] = v188;
        v183 = objc_alloc_init(PGFeatureExtractorPleasantCompositionScore);
        v375[35] = v183;
        v180 = objc_alloc_init(PGFeatureExtractorInterestingSubjectScore);
        v375[36] = v180;
        v177 = objc_alloc_init(PGFeatureExtractorIntrusiveObjectPresenceScore);
        v375[37] = v177;
        v174 = objc_alloc_init(PGFeatureExtractorPleasantCameraTiltScore);
        v375[38] = v174;
        v171 = objc_alloc_init(PGFeatureExtractorLowLightScore);
        v375[39] = v171;
        v168 = objc_alloc_init(PGFeatureExtractorAssetPlaybackStyle);
        v375[40] = v168;
        v165 = objc_alloc_init(PGFeatureExtractorAssetMediaType);
        v375[41] = v165;
        v159 = objc_alloc_init(PGFeatureExtractorAssetMediaSubtype);
        v375[42] = v159;
        v156 = objc_alloc_init(PGFeatureExtractorAssetBurstSelectionType);
        v375[43] = v156;
        v153 = objc_alloc_init(PGFeatureExtractorAssetSourceType);
        v375[44] = v153;
        v150 = objc_alloc_init(PGFeatureExtractorAssetResolution);
        v375[45] = v150;
        v147 = objc_alloc_init(PGFeatureExtractorAssetFormat);
        v375[46] = v147;
        v144 = objc_alloc_init(PGFeatureExtractorAssetImportSource);
        v375[47] = v144;
        v45 = objc_alloc_init(PGFeatureExtractorStandardAspectRatio);
        v375[48] = v45;
        v46 = objc_alloc_init(PGFeatureExtractorLocale);
        v375[49] = v46;
        v47 = objc_alloc_init(PGFeatureExtractorTaboo);
        v375[50] = v47;
        v48 = objc_alloc_init(PGFeatureExtractorPotentialLandmark);
        v375[51] = v48;
        v49 = [PGFeatureExtractorAssetPhotoLibrary alloc];
        v50 = objc_alloc_init(PGFeatureExtractorPhotoLibrarySize);
        v51 = [(PGFeatureExtractorAssetPhotoLibrary *)v49 initWithPhotoLibraryFeatureExtractor:v50];
        v375[52] = v51;
        v375[53] = v356;
        v52 = [PGFeatureExtractorFacesFromAssetAverage alloc];
        v53 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"FacesAverage" featureExtractors:v186];
        v54 = [(PGFeatureExtractorFacesFromAssetAverage *)v52 initWithFaceFeatureExtractor:v53 name:@"FacesAverage"];
        v375[54] = v54;
        v55 = [PGFeatureExtractorGraphRelations alloc];
        v56 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"GraphRelations" featureExtractors:v346];
        v57 = [(PGFeatureExtractorGraphRelations *)v55 initWithGraph:v351 featureExtractor:v56];
        v375[55] = v57;
        v162 = [MEMORY[0x277CBEA60] arrayWithObjects:v375 count:56];

        featureExtractorCopy = v356;
        transformersCopy = v362;

        graphCopy = v351;
        v58 = [selfCopy6 _featureExtractors:v162 withTransformers:v362];

        v59 = objc_alloc(MEMORY[0x277D22C30]);
        v60 = @"LibrarySpecific-MultiModal-V1.0";
        break;
      default:
        goto LABEL_28;
    }

    transformers = [v59 initWithName:v60 featureExtractors:v58];

    v102 = v186;
    goto LABEL_24;
  }

  if (type > 4)
  {
    if (type == 5)
    {
      selfCopy6 = self;
      if (graphCopy)
      {
        v103 = [[PGMeaningFeatureExtractor alloc] initWithVersion:2 error:error];
        v370[0] = v103;
        v104 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
        v370[1] = v104;
        v365 = transformersCopy;
        v105 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
        v370[2] = v105;
        v359 = featureExtractorCopy;
        v106 = [[PGSocialGroupFeatureExtractor alloc] initWithError:error];
        v370[3] = v106;
        v107 = [[PGROIFeatureExtractor alloc] initWithError:error];
        v370[4] = v107;
        v108 = [[PGInfrequentCountryFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
        v370[5] = v108;
        v109 = [[PGInfrequentCityFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
        v370[6] = v109;
        v110 = graphCopy;
        v111 = objc_alloc_init(PGFeatureExtractorMomentNodeSpecialPOI);
        v370[7] = v111;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v370 count:8];

        graphCopy = v110;
        featureExtractorCopy = v359;

        transformersCopy = v365;
        v26 = [selfCopy6 _featureExtractors:v25 withTransformers:v365];
        v27 = objc_alloc(MEMORY[0x277D22C30]);
        v28 = @"MultiModal-MomentNode-Music-V2.0";
        goto LABEL_20;
      }
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_28;
      }

      selfCopy6 = self;
      if (graphCopy)
      {
        v363 = [[PGMeaningMemoryNodeFeatureExtractor alloc] initWithVersion:2 error:error];
        v369[0] = v363;
        v352 = [[PGInvariantFamilyMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[1] = v352;
        v347 = [[PGInvariantCoworkerMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[2] = v347;
        v339 = [[PGInvariantPartnerMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[3] = v339;
        v331 = [[PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[4] = v331;
        v323 = [[PGInvariantPartnerBiologicalSexFemaleMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[5] = v323;
        v315 = [[PGInvariantPetMemoryNodeFeatureExtractor alloc] initWithVersion:2 error:error];
        v369[6] = v315;
        v308 = [[PGBabyMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[7] = v308;
        v301 = [[PGInvariantMotherMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[8] = v301;
        v294 = [[PGInvariantFatherMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[9] = v294;
        v287 = [[PGInvariantDaughterMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[10] = v287;
        v281 = [[PGInvariantSonMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[11] = v281;
        v275 = [[PGInvariantSisterMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[12] = v275;
        v269 = [[PGInvariantBrotherMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[13] = v269;
        v264 = [[PGInvariantMyFriendMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[14] = v264;
        v259 = [[PGChildMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[15] = v259;
        v254 = [[PGSocialGroupMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[16] = v254;
        v249 = [[PGOverTheYearsMemoryNodeFeatureExtractor alloc] initWithVersion:1 error:error];
        v369[17] = v249;
        v61 = [[PGCelebratedHolidayMemoryNodeFeatureExtractor alloc] initWithVersion:1 error:error];
        v369[18] = v61;
        v357 = featureExtractorCopy;
        v62 = [[PGSceneMemoryNodeFeatureExtractor alloc] initWithVersion:4 error:error];
        v369[19] = v62;
        v63 = [[PGROIMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[20] = v63;
        v64 = [[PGCityMemoryNodeFeatureExtractor alloc] initWithVersion:1 error:error];
        v369[21] = v64;
        v65 = graphCopy;
        v66 = [[PGCountryMemoryNodeFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
        v369[22] = v66;
        v67 = [[PGAOIMemoryNodeFeatureExtractor alloc] initWithError:error];
        v369[23] = v67;
        v68 = transformersCopy;
        v69 = [[PGAudioMemoryNodeFeatureExtractor alloc] initWithVersion:1 error:error];
        v369[24] = v69;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v369 count:25];

        transformersCopy = v68;
        graphCopy = v65;

        featureExtractorCopy = v357;
        v26 = [selfCopy6 _featureExtractors:v25 withTransformers:v68];
        v27 = objc_alloc(MEMORY[0x277D22C30]);
        v28 = @"MultiModal-MemoryNode-Music-V1.0";
        goto LABEL_20;
      }
    }

    goto LABEL_25;
  }

  if (type != 3)
  {
    selfCopy6 = self;
    if (graphCopy)
    {
      v361 = [[PGMeaningFeatureExtractor alloc] initWithVersion:2 error:error];
      v371[0] = v361;
      v355 = [[PGPersonActivityMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
      v371[1] = v355;
      v350 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
      v371[2] = v350;
      v344 = [[PGSocialGroupFeatureExtractor alloc] initWithError:error];
      v371[3] = v344;
      v336 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:2 error:error];
      v371[4] = v336;
      v328 = [[PGSceneFeatureExtractor alloc] initWithVersion:4 error:error];
      v371[5] = v328;
      v320 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
      v371[6] = v320;
      v17 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
      v371[7] = v17;
      v18 = [[PGROIFeatureExtractor alloc] initWithError:error];
      v371[8] = v18;
      v19 = [[PGInfrequentCountryFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
      v371[9] = v19;
      v20 = [[PGInfrequentCityFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
      v371[10] = v20;
      v21 = transformersCopy;
      v22 = [[PGCelebratedHolidayFeatureExtractor alloc] initWithVersion:1 error:error];
      v371[11] = v22;
      v23 = featureExtractorCopy;
      v24 = objc_alloc_init(PGFeatureExtractorMomentNodeSpecialPOI);
      v371[12] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v371 count:13];

      featureExtractorCopy = v23;
      transformersCopy = v21;

      v26 = [selfCopy6 _featureExtractors:v25 withTransformers:v21];
      v27 = objc_alloc(MEMORY[0x277D22C30]);
      v28 = @"MultiModal-MomentNode-Music-V1.0";
LABEL_20:
      transformers = [v27 initWithName:v28 featureExtractors:v26];

      goto LABEL_28;
    }

    goto LABEL_25;
  }

  selfCopy6 = self;
  if (graphCopy)
  {
    v348 = [[PGMeaningFeatureExtractor alloc] initWithVersion:2 error:error];
    v374[0] = v348;
    v340 = [[PGPersonActivityMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
    v374[1] = v340;
    v332 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
    v374[2] = v332;
    v324 = [[PGInvariantCoworkerFeatureExtractor alloc] initWithError:error];
    v374[3] = v324;
    v316 = [[PGInvariantPartnerFeatureExtractor alloc] initWithError:error];
    v374[4] = v316;
    v309 = [[PGInvariantBrotherFeatureExtractor alloc] initWithError:error];
    v374[5] = v309;
    v302 = [[PGInvariantSisterFeatureExtractor alloc] initWithError:error];
    v374[6] = v302;
    v295 = [[PGInvariantMotherFeatureExtractor alloc] initWithError:error];
    v374[7] = v295;
    v288 = [[PGInvariantFatherFeatureExtractor alloc] initWithError:error];
    v374[8] = v288;
    v282 = [[PGInvariantSonFeatureExtractor alloc] initWithError:error];
    v374[9] = v282;
    v276 = [[PGInvariantDaughterFeatureExtractor alloc] initWithError:error];
    v374[10] = v276;
    v270 = [[PGPublicEventCategoryFeatureExtractor alloc] initWithVersion:2 error:error];
    v374[11] = v270;
    v265 = [[PGBusinessCategoryFeatureExtractor alloc] initWithVersion:2 error:error];
    v374[12] = v265;
    v260 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:2 error:error];
    v374[13] = v260;
    v255 = [[PGBabyFeatureExtractor alloc] initWithError:error];
    v374[14] = v255;
    v250 = [[PGSceneFeatureExtractor alloc] initWithVersion:2 error:error];
    v374[15] = v250;
    v245 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
    v374[16] = v245;
    v241 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
    v374[17] = v241;
    v237 = [[PGMobilityFeatureExtractor alloc] initWithError:error];
    v374[18] = v237;
    v72 = [[PGPartOfDayFeatureExtractor alloc] initWithError:error];
    v374[19] = v72;
    v73 = [[PGSeasonFeatureExtractor alloc] initWithError:error];
    v374[20] = v73;
    v74 = [[PGWeekendFeatureExtractor alloc] initWithError:error];
    v374[21] = v74;
    v358 = featureExtractorCopy;
    v75 = [[PGWeekdayFeatureExtractor alloc] initWithError:error];
    v374[22] = v75;
    v76 = [[PGPOIFeatureExtractor alloc] initWithVersion:2 error:error];
    v374[23] = v76;
    v77 = [[PGROIFeatureExtractor alloc] initWithError:error];
    v374[24] = v77;
    v78 = [[PGInfrequentCountryFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
    v374[25] = v78;
    v364 = transformersCopy;
    v79 = [[PGCityFeatureExtractor alloc] initWithVersion:1 error:error];
    v374[26] = v79;
    v353 = graphCopy;
    v80 = [[PGCelebratedHolidayFeatureExtractor alloc] initWithVersion:1 error:error];
    v374[27] = v80;
    v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v374 count:28];

    v346 = [selfCopy6 _featureExtractors:v81 withTransformers:v364];

    v82 = objc_alloc_init(PGFeatureExtractorFaceSize);
    v373[0] = v82;
    v83 = objc_alloc_init(PGFeatureExtractorFaceQuality);
    v373[1] = v83;
    v84 = objc_alloc_init(PGFeatureExtractorFaceSmileType);
    v373[2] = v84;
    v85 = objc_alloc_init(PGFeatureExtractorFaceEyesState);
    v373[3] = v85;
    v86 = objc_alloc_init(PGFeatureExtractorFaceAgeType);
    v373[4] = v86;
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v373 count:5];

    v184 = [selfCopy6 _featureExtractors:v87 withTransformers:v364];

    v372[0] = extractorCopy;
    v341 = objc_alloc_init(PGFeatureExtractorCartesianLocation);
    v372[1] = v341;
    v333 = [[PGFeatureExtractorFrequentPeople alloc] initWithNumberOfFrequentPeopleToExtract:25];
    v372[2] = v333;
    v325 = objc_alloc_init(PGFeatureExtractorExposureScore);
    v372[3] = v325;
    v317 = objc_alloc_init(PGFeatureExtractorFaceCountScore);
    v372[4] = v317;
    v310 = objc_alloc_init(PGFeatureExtractorActivityScore);
    v372[5] = v310;
    v303 = objc_alloc_init(PGFeatureExtractorVideoScore);
    v372[6] = v303;
    v296 = objc_alloc_init(PGFeatureExtractorBlurrinessScore);
    v372[7] = v296;
    v289 = objc_alloc_init(PGFeatureExtractorAudioClassification);
    v372[8] = v289;
    v283 = objc_alloc_init(PGFeatureExtractorIsFavoriteScore);
    v372[9] = v283;
    v277 = objc_alloc_init(PGFeatureExtractorHasAdjustmentsScore);
    v372[10] = v277;
    v271 = objc_alloc_init(PGFeatureExtractorDurationInSecond);
    v372[11] = v271;
    v266 = objc_alloc_init(PGFeatureExtractorImageAspectRatio);
    v372[12] = v266;
    v261 = objc_alloc_init(PGFeatureExtractorIsScreenRecording);
    v372[13] = v261;
    v256 = objc_alloc_init(PGFeatureExtractorPlayCount);
    v372[14] = v256;
    v251 = objc_alloc_init(PGFeatureExtractorShareCount);
    v372[15] = v251;
    v246 = objc_alloc_init(PGFeatureExtractorViewCount);
    v372[16] = v246;
    v242 = objc_alloc_init(PGFeatureExtractorAutoplaySuggestionScore);
    v372[17] = v242;
    v238 = objc_alloc_init(PGFeatureExtractorTastefullyBlurredScore);
    v372[18] = v238;
    v234 = objc_alloc_init(PGFeatureExtractorFailureScore);
    v372[19] = v234;
    v231 = objc_alloc_init(PGFeatureExtractorAestheticScore);
    v372[20] = v231;
    v228 = objc_alloc_init(PGFeatureExtractorPleasantLightingScore);
    v372[21] = v228;
    v225 = objc_alloc_init(PGFeatureExtractorWellFramedSubjectScore);
    v372[22] = v225;
    v222 = objc_alloc_init(PGFeatureExtractorWellChosenSubjectScore);
    v372[23] = v222;
    v219 = objc_alloc_init(PGFeatureExtractorWellTimedShotScore);
    v372[24] = v219;
    v216 = objc_alloc_init(PGFeatureExtractorSharplyFocusedSubjectScore);
    v372[25] = v216;
    v213 = objc_alloc_init(PGFeatureExtractorHarmoniousColorScore);
    v372[26] = v213;
    v210 = objc_alloc_init(PGFeatureExtractorPleasantReflectionsScore);
    v372[27] = v210;
    v207 = objc_alloc_init(PGFeatureExtractorLivelyColorScore);
    v372[28] = v207;
    v204 = objc_alloc_init(PGFeatureExtractorPleasantSymmetryScore);
    v372[29] = v204;
    v201 = objc_alloc_init(PGFeatureExtractorPleasantPatternScore);
    v372[30] = v201;
    v198 = objc_alloc_init(PGFeatureExtractorImmersivenessScore);
    v372[31] = v198;
    v195 = objc_alloc_init(PGFeatureExtractorPleasantPerspectiveScore);
    v372[32] = v195;
    v192 = objc_alloc_init(PGFeatureExtractorPleasantPostProcessingScore);
    v372[33] = v192;
    v189 = objc_alloc_init(PGFeatureExtractorNoiseScore);
    v372[34] = v189;
    v187 = objc_alloc_init(PGFeatureExtractorPleasantCompositionScore);
    v372[35] = v187;
    v181 = objc_alloc_init(PGFeatureExtractorInterestingSubjectScore);
    v372[36] = v181;
    v178 = objc_alloc_init(PGFeatureExtractorIntrusiveObjectPresenceScore);
    v372[37] = v178;
    v175 = objc_alloc_init(PGFeatureExtractorPleasantCameraTiltScore);
    v372[38] = v175;
    v172 = objc_alloc_init(PGFeatureExtractorLowLightScore);
    v372[39] = v172;
    v169 = objc_alloc_init(PGFeatureExtractorAssetPlaybackStyle);
    v372[40] = v169;
    v166 = objc_alloc_init(PGFeatureExtractorAssetMediaType);
    v372[41] = v166;
    v163 = objc_alloc_init(PGFeatureExtractorAssetMediaSubtype);
    v372[42] = v163;
    v157 = objc_alloc_init(PGFeatureExtractorAssetBurstSelectionType);
    v372[43] = v157;
    v154 = objc_alloc_init(PGFeatureExtractorAssetSourceType);
    v372[44] = v154;
    v151 = objc_alloc_init(PGFeatureExtractorAssetResolution);
    v372[45] = v151;
    v148 = objc_alloc_init(PGFeatureExtractorAssetFormat);
    v372[46] = v148;
    v145 = objc_alloc_init(PGFeatureExtractorAssetImportSource);
    v372[47] = v145;
    v143 = objc_alloc_init(PGFeatureExtractorStandardAspectRatio);
    v372[48] = v143;
    v88 = objc_alloc_init(PGFeatureExtractorLocale);
    v372[49] = v88;
    v89 = objc_alloc_init(PGFeatureExtractorTaboo);
    v372[50] = v89;
    v90 = objc_alloc_init(PGFeatureExtractorPotentialLandmark);
    v372[51] = v90;
    v91 = [PGFeatureExtractorAssetPhotoLibrary alloc];
    v92 = objc_alloc_init(PGFeatureExtractorPhotoLibrarySize);
    v93 = [(PGFeatureExtractorAssetPhotoLibrary *)v91 initWithPhotoLibraryFeatureExtractor:v92];
    v372[52] = v93;
    v94 = [[PGFeatureExtractorAssetSpecialPOI alloc] initWithGraph:v353];
    v372[53] = v94;
    v95 = [PGFeatureExtractorFacesFromAssetAverage alloc];
    v96 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"FacesAverage" featureExtractors:v184];
    v97 = [(PGFeatureExtractorFacesFromAssetAverage *)v95 initWithFaceFeatureExtractor:v96 name:@"FacesAverage"];
    v372[54] = v97;
    v98 = [PGFeatureExtractorGraphRelations alloc];
    v99 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"GraphRelations" featureExtractors:v346];
    v100 = [(PGFeatureExtractorGraphRelations *)v98 initWithGraph:v353 featureExtractor:v99];
    v372[55] = v100;
    v372[56] = v358;
    v160 = [MEMORY[0x277CBEA60] arrayWithObjects:v372 count:57];

    graphCopy = v353;
    featureExtractorCopy = v358;

    transformersCopy = v364;
    v101 = [selfCopy6 _featureExtractors:v160 withTransformers:v364];

    transformers = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"MultiModal-V2.0" featureExtractors:v101];
    v102 = v184;
LABEL_24:

    goto LABEL_28;
  }

LABEL_25:
  if (error)
  {
    [selfCopy6 _generateErrorWithErrorCode:0 errorMessage:@"Requested fingerprint version requires a valid PGGraph object." underlyingError:0];
    *error = transformers = 0;
  }

  else
  {
    transformers = 0;
  }

LABEL_28:

  v141 = *MEMORY[0x277D85DE8];

  return transformers;
}

+ (id)_assetPrintFeatureExtractorForAssetPrintType:(int64_t)type transformers:(id)transformers error:(id *)error
{
  transformersCopy = transformers;
  if (type > 1)
  {
    if (type == 2)
    {
      _clipprintFeatureExtractorInstance = objc_alloc_init(PGFeatureExtractorPCAPrint);
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      _clipprintFeatureExtractorInstance = [self _clipprintFeatureExtractorInstance];
    }
  }

  else
  {
    if (!type)
    {
      v10 = objc_alloc(MEMORY[0x277D22C30]);
      v5 = [v10 initWithName:&stru_2843F5C58 featureExtractors:MEMORY[0x277CBEBF8]];
      goto LABEL_11;
    }

    if (type != 1)
    {
      goto LABEL_11;
    }

    _clipprintFeatureExtractorInstance = [self _sceneprintFeatureExtractorInstance];
  }

  v11 = _clipprintFeatureExtractorInstance;
  v5 = [self _featureExtractor:_clipprintFeatureExtractorInstance withTransformers:transformersCopy];

LABEL_11:

  return v5;
}

+ (void)resetPreCalculatedFeatures
{
  +[PGFeatureExtractorPhotoLibraryAverage resetPreCalculatedFeatureVector];

  +[PGFeatureExtractorPhotoLibrarySize resetPreCalculatedPhotoLibrarySize];
}

+ (id)fetchOptionPropertySetForFingerprintVersion:(int64_t)version
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = version + 55;
  if ((version - 201) <= 0x1C)
  {
    if (((1 << v3) & 0x11003FFC) != 0)
    {
      goto LABEL_11;
    }

    if (((1 << v3) & 3) != 0)
    {
      goto LABEL_17;
    }
  }

  if (version > 0x19)
  {
    goto LABEL_3;
  }

  if (((1 << version) & 0x200F7F8) != 0)
  {
LABEL_11:
    v6 = *MEMORY[0x277CD9A80];
    v14 = *MEMORY[0x277CD9B18];
    v15 = v6;
    v7 = *MEMORY[0x277CD9AD0];
    v16 = *MEMORY[0x277CD9B28];
    v17 = v7;
    v8 = *MEMORY[0x277CD9AB0];
    v18 = *MEMORY[0x277CD9A60];
    v19 = v8;
    v9 = MEMORY[0x277CBEA60];
    v10 = &v14;
    v11 = 6;
LABEL_12:
    v4 = [v9 arrayWithObjects:v10 count:{v11, v14, v15, v16, v17, v18, v19, v20, v21}];
    goto LABEL_13;
  }

  if (((1 << version) & 6) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v4 = 0;
  v5 = version - 101;
  if ((version - 101) > 0x18)
  {
    goto LABEL_13;
  }

  if (((1 << v5) & 0x1003FFC) != 0)
  {
    goto LABEL_11;
  }

  if (((1 << v5) & 3) != 0)
  {
LABEL_17:
    v20 = *MEMORY[0x277CD9B18];
    v9 = MEMORY[0x277CBEA60];
    v10 = &v20;
    v11 = 1;
    goto LABEL_12;
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)featureExtractorForFingerprintVersion:(int64_t)version withGraph:(id)graph withTransformers:(id)transformers error:(id *)error
{
  graphCopy = graph;
  transformersCopy = transformers;
  v12 = 0;
  if (!(!v14 & v13))
  {
    v16 = 0;
    v17 = 0;
    switch(version)
    {
      case 201:
        goto LABEL_9;
      case 202:
        goto LABEL_17;
      case 203:
        goto LABEL_15;
      case 204:
        goto LABEL_18;
      case 205:
        goto LABEL_20;
      case 206:
        goto LABEL_14;
      case 207:
        goto LABEL_23;
      case 208:
        goto LABEL_13;
      case 209:
        goto LABEL_12;
      case 210:
        goto LABEL_11;
      case 211:
        goto LABEL_10;
      case 212:
        goto LABEL_26;
      case 213:
        goto LABEL_22;
      case 214:
        goto LABEL_27;
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        goto LABEL_30;
      case 225:
        goto LABEL_16;
      case 226:
        v12 = 0;
        v17 = 0;
        v16 = 4;
        goto LABEL_30;
      case 227:
        v12 = 0;
        v17 = 0;
        v16 = 5;
        goto LABEL_30;
      case 228:
        v12 = 0;
        v17 = 0;
        v16 = 6;
        goto LABEL_30;
      case 229:
        v12 = 0;
        v16 = 0;
        v17 = 3;
        goto LABEL_30;
      default:
        JUMPOUT(0);
    }
  }

  v16 = 0;
  v17 = 0;
  switch(version)
  {
    case 0:
      if (error)
      {
        [self _generateErrorWithErrorCode:2 errorMessage:@"Cannot produce feature extractor for PGFingerprintVersionUnknown." underlyingError:0];
        *error = v15 = 0;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_42;
    case 1:
LABEL_9:
      v12 = 0;
      v16 = 0;
      goto LABEL_29;
    case 2:
LABEL_17:
      v12 = 0;
      v16 = 0;
      goto LABEL_25;
    case 3:
LABEL_15:
      v12 = 0;
      goto LABEL_24;
    case 4:
LABEL_18:
      v12 = 0;
      v17 = 1;
      goto LABEL_19;
    case 5:
LABEL_20:
      v12 = 0;
      v17 = 2;
      goto LABEL_21;
    case 6:
LABEL_14:
      v12 = 0;
      goto LABEL_28;
    case 7:
LABEL_23:
      v12 = 1;
LABEL_24:
      v16 = 1;
      goto LABEL_25;
    case 8:
LABEL_13:
      v16 = 1;
      v12 = 2;
      goto LABEL_25;
    case 9:
LABEL_12:
      v16 = 2;
      v12 = 1;
LABEL_25:
      v17 = 1;
      break;
    case 10:
LABEL_11:
      v17 = 1;
      v12 = 2;
LABEL_19:
      v16 = 2;
      break;
    case 11:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
      break;
    case 12:
LABEL_10:
      v17 = 2;
      v12 = 1;
LABEL_21:
      v16 = 1;
      break;
    case 13:
LABEL_26:
      v16 = 1;
      v12 = 2;
      goto LABEL_29;
    case 14:
LABEL_22:
      v16 = 2;
      v12 = 1;
      goto LABEL_29;
    case 15:
LABEL_27:
      v12 = 2;
LABEL_28:
      v16 = 2;
LABEL_29:
      v17 = 2;
      break;
    case 25:
LABEL_16:
      v12 = 0;
      v17 = 2;
      v16 = 3;
      break;
    default:
      v16 = 0;
      v17 = 0;
      switch(version)
      {
        case 'e':
          goto LABEL_9;
        case 'f':
          goto LABEL_17;
        case 'g':
          goto LABEL_15;
        case 'h':
          goto LABEL_18;
        case 'i':
          goto LABEL_20;
        case 'j':
          goto LABEL_14;
        case 'k':
          goto LABEL_23;
        case 'l':
          goto LABEL_13;
        case 'm':
          goto LABEL_12;
        case 'n':
          goto LABEL_11;
        case 'o':
          goto LABEL_10;
        case 'p':
          goto LABEL_26;
        case 'q':
          goto LABEL_22;
        case 'r':
          goto LABEL_27;
        case '}':
          goto LABEL_16;
        default:
          goto LABEL_30;
      }
  }

LABEL_30:
  v18 = [self _assetPrintFeatureExtractorForAssetPrintType:v17 transformers:transformersCopy error:error];
  if (v18)
  {
    v19 = [self fetchOptionPropertySetForFingerprintVersion:version];
    v20 = [self _personaVectorFeatureExtractorForPersonaVectorType:v12 fetchOptionPropertySet:v19 graph:graphCopy transformers:transformersCopy error:error];
    if (v20)
    {
      v15 = [self _multiModalFeatureExtractorForMutliModalType:v16 assetFeatureExtractor:v18 personaVectorFeatureExtractor:v20 graph:graphCopy transformers:transformersCopy error:error];
      if (v15)
      {
        if ([self isMomentNodeFingerprintVersion:version])
        {
          v21 = [self _featureExtractor:v15 withTransformers:transformersCopy];

          v15 = v21;
        }

        if (([self isMomentFingerprintVersion:version] & 1) != 0 || objc_msgSend(self, "isMemoryFingerprintVersion:", version))
        {
          v22 = [self nameForFingerprintVersion:version];
          v23 = [[PGFeatureExtractorAssetCollectionAverage alloc] initWithAssetFeatureExtractor:v15 assetFetchOptionPropertySet:v19 name:v22];
          v24 = [self _featureExtractor:v23 withTransformers:transformersCopy];

          v15 = v24;
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_42:

  return v15;
}

+ (int64_t)fingerprintVersionForName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    if ([@"sceneprint-pca-256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 1;
    }

    else if ([@"sceneprint-2048_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 2;
    }

    else if ([@"Asset-Scene2048-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 3;
    }

    else if ([@"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 4;
    }

    else if ([@"Asset-ScenePCA256-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 5;
    }

    else if ([@"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 6;
    }

    else if ([@"moment-average-sceneprint-pca-256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 101;
    }

    else if ([@"moment-average-sceneprint-2048_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 102;
    }

    else if ([@"MomentAverage-Scene2048-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 103;
    }

    else if ([@"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 104;
    }

    else if ([@"MomentAverage-ScenePCA256-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 105;
    }

    else if ([@"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 106;
    }

    else if ([@"memory-average-sceneprint-pca-256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 201;
    }

    else if ([@"memory-average-sceneprint-2048_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 202;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 203;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 204;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 205;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 206;
    }

    else if ([@"Asset-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 7;
    }

    else if ([@"Asset-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 8;
    }

    else if ([@"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 9;
    }

    else if ([@"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 10;
    }

    else if ([@"Asset-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 12;
    }

    else if ([@"Asset-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 13;
    }

    else if ([@"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 14;
    }

    else if ([@"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 15;
    }

    else if ([@"MomentAverage-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 107;
    }

    else if ([@"MomentAverage-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 108;
    }

    else if ([@"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 109;
    }

    else if ([@"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 110;
    }

    else if ([@"MomentAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 111;
    }

    else if ([@"MomentAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 112;
    }

    else if ([@"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 113;
    }

    else if ([@"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 114;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 207;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 208;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 209;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 210;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 211;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 212;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 213;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 214;
    }

    else if ([@"Asset-ScenePCA256-MultiModal-V2.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 25;
    }

    else if ([@"MomentAverage-ScenePCA256-MultiModal-V2.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 125;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V2.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 225;
    }

    else if ([@"MomentNode-MultiModalMusic-V1.0" isEqualToString:nameCopy])
    {
      v4 = 226;
    }

    else if ([@"MomentNode-MultiModalMusic-V2.0" isEqualToString:nameCopy])
    {
      v4 = 227;
    }

    else if ([@"sceneprint-clip-768" isEqualToString:nameCopy])
    {
      v4 = 229;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)nameForFingerprintVersion:(int64_t)version
{
  result = 0;
  if (!v4 & v3)
  {
    switch(version)
    {
      case 1:
        result = @"sceneprint-pca-256_DEPRECATED";
        break;
      case 2:
        result = @"sceneprint-2048_DEPRECATED";
        break;
      case 3:
        result = @"Asset-Scene2048-MultiModal-V1.0_DEPRECATED";
        break;
      case 4:
        result = @"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0_DEPRECATED";
        break;
      case 5:
        result = @"Asset-ScenePCA256-MultiModal-V1.0_DEPRECATED";
        break;
      case 6:
        result = @"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0_DEPRECATED";
        break;
      case 7:
        result = @"Asset-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 8:
        result = @"Asset-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 9:
        result = @"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 10:
        result = @"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 11:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
        return result;
      case 12:
        result = @"Asset-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 13:
        result = @"Asset-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 14:
        result = @"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 15:
        result = @"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 25:
        result = @"Asset-ScenePCA256-MultiModal-V2.0_DEPRECATED";
        break;
      default:
        switch(version)
        {
          case 'e':
            result = @"moment-average-sceneprint-pca-256_DEPRECATED";
            break;
          case 'f':
            result = @"moment-average-sceneprint-2048_DEPRECATED";
            break;
          case 'g':
            result = @"MomentAverage-Scene2048-MultiModal-V1.0_DEPRECATED";
            break;
          case 'h':
            result = @"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0_DEPRECATED";
            break;
          case 'i':
            result = @"MomentAverage-ScenePCA256-MultiModal-V1.0_DEPRECATED";
            break;
          case 'j':
            result = @"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0_DEPRECATED";
            break;
          case 'k':
            result = @"MomentAverage-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
            break;
          case 'l':
            result = @"MomentAverage-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
            break;
          case 'm':
            result = @"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
            break;
          case 'n':
            result = @"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
            break;
          case 'o':
            result = @"MomentAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
            break;
          case 'p':
            result = @"MomentAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
            break;
          case 'q':
            result = @"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
            break;
          case 'r':
            result = @"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
            break;
          case '}':
            result = @"MomentAverage-ScenePCA256-MultiModal-V2.0_DEPRECATED";
            break;
          default:
            return result;
        }

        break;
    }
  }

  else
  {
    switch(version)
    {
      case 201:
        result = @"memory-average-sceneprint-pca-256_DEPRECATED";
        break;
      case 202:
        result = @"memory-average-sceneprint-2048_DEPRECATED";
        break;
      case 203:
      case 204:
        result = @"MemoryAverage-Scene2048-MultiModal-V1.0_DEPRECATED";
        break;
      case 205:
      case 206:
        result = @"MemoryAverage-ScenePCA256-MultiModal-V1.0_DEPRECATED";
        break;
      case 207:
      case 209:
        result = @"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 208:
      case 210:
        result = @"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 211:
      case 213:
        result = @"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 212:
      case 214:
        result = @"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        return result;
      case 225:
        result = @"MemoryAverage-ScenePCA256-MultiModal-V2.0_DEPRECATED";
        break;
      case 226:
        result = @"MomentNode-MultiModalMusic-V1.0";
        break;
      case 227:
        result = @"MomentNode-MultiModalMusic-V2.0";
        break;
      case 228:
        result = @"MemoryNode-MultiModalMusic-V1.0";
        break;
      case 229:
        result = @"sceneprint-clip-768";
        break;
      default:
        JUMPOUT(0);
    }
  }

  return result;
}

@end