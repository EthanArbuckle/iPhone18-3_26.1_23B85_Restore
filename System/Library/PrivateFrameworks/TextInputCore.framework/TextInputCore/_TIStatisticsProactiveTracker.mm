@interface _TIStatisticsProactiveTracker
+ (id)sharedInstance;
- (_TIStatisticsProactiveTracker)init;
@end

@implementation _TIStatisticsProactiveTracker

- (_TIStatisticsProactiveTracker)init
{
  v107[3] = *MEMORY[0x277D85DE8];
  v89.receiver = self;
  v89.super_class = _TIStatisticsProactiveTracker;
  v2 = [(_TIStatisticsProactiveTracker *)&v89 init];
  if (v2)
  {
    v3 = MEMORY[0x277D41DA0];
    v106[0] = &unk_28400BC88;
    v106[1] = &unk_28400BCA0;
    v107[0] = @"LanguageModeling";
    v107[1] = @"ResponseKit";
    v106[2] = &unk_28400BCB8;
    v107[2] = @"TaggedTextField";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:3];
    v5 = [v3 propertyWithName:@"source" enumMapping:v4];

    v6 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"locale"];
    v7 = TIStatisticsCategoryToLegacyCategoryDictionary();
    v83 = [v7 allKeys];

    v8 = TIStatisticsDescriptionToLegacyDescriptionDictionary();
    v82 = [v8 allKeys];

    v9 = TIStatisticsEngagementDescriptionToLegacyDescriptionDictionary();
    v81 = [v9 allKeys];

    v84 = [MEMORY[0x277D41DA0] propertyWithName:@"category" possibleValues:v83];
    v85 = [MEMORY[0x277D41DA0] propertyWithName:@"count" possibleValues:&unk_28400B928];
    v10 = MEMORY[0x277D41DA0];
    v104[0] = &unk_28400BCA0;
    v104[1] = &unk_28400BCB8;
    v105[0] = @"NoResult";
    v105[1] = @"Error";
    v104[2] = &unk_28400BCD0;
    v105[2] = @"Timeout";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:3];
    v86 = [v10 propertyWithName:@"reason" enumMapping:v11];

    v12 = [MEMORY[0x277D41DA0] propertyWithName:@"description" possibleValues:v82];
    v88 = [MEMORY[0x277D41DA0] propertyWithName:@"description" possibleValues:v81];
    v87 = [MEMORY[0x277D41DA0] propertyWithName:@"position" possibleValues:&unk_28400B940];
    v80 = [MEMORY[0x277D41DA0] propertyWithName:@"position" possibleValues:&unk_28400B958];
    v13 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"fieldType"];
    v14 = objc_alloc(MEMORY[0x277D41DB8]);
    v103[0] = v5;
    v103[1] = v12;
    v103[2] = v6;
    v103[3] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:4];
    v16 = [v14 initWithFeatureId:@"quicktype" event:@"zeroSuggDesc" registerProperties:v15];
    failureEventDescriptionTracker = v2->_failureEventDescriptionTracker;
    v2->_failureEventDescriptionTracker = v16;

    v18 = objc_alloc(MEMORY[0x277D41DB8]);
    v102[0] = v5;
    v102[1] = v12;
    v102[2] = v84;
    v102[3] = v6;
    v102[4] = v13;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:5];
    v20 = [v18 initWithFeatureId:@"quicktype" event:@"zeroSuggDesc_category" registerProperties:v19];
    failureCategoryEventDescriptionTracker = v2->_failureCategoryEventDescriptionTracker;
    v2->_failureCategoryEventDescriptionTracker = v20;

    v22 = objc_alloc(MEMORY[0x277D41DB8]);
    v101[0] = v5;
    v101[1] = v88;
    v101[2] = v6;
    v101[3] = v13;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:4];
    v24 = [v22 initWithFeatureId:@"quicktype" event:@"zeroEngageDesc" registerProperties:v23];
    engagementEventDescriptionTracker = v2->_engagementEventDescriptionTracker;
    v2->_engagementEventDescriptionTracker = v24;

    v26 = objc_alloc(MEMORY[0x277D41DB8]);
    v100[0] = v5;
    v100[1] = v88;
    v100[2] = v84;
    v100[3] = v6;
    v100[4] = v13;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:5];
    v28 = [v26 initWithFeatureId:? event:? registerProperties:?];
    engagementCategoryEventDescriptionTracker = v2->_engagementCategoryEventDescriptionTracker;
    v2->_engagementCategoryEventDescriptionTracker = v28;

    v30 = objc_alloc(MEMORY[0x277D41DB8]);
    v99[0] = v5;
    v99[1] = v6;
    v99[2] = v13;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:3];
    v32 = [v30 initWithFeatureId:@"quicktype" event:@"triggered" registerProperties:v31];
    triggeredEventTracker = v2->_triggeredEventTracker;
    v2->_triggeredEventTracker = v32;

    v34 = objc_alloc(MEMORY[0x277D41DB8]);
    v98[0] = v5;
    v98[1] = v84;
    v98[2] = v6;
    v98[3] = v13;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:4];
    v36 = [v34 initWithFeatureId:@"quicktype" event:@"triggered_category" registerProperties:v35];
    triggeredCategoryEventTracker = v2->_triggeredCategoryEventTracker;
    v2->_triggeredCategoryEventTracker = v36;

    v38 = objc_alloc(MEMORY[0x277D41DB8]);
    v97[0] = v5;
    v97[1] = v85;
    v97[2] = v6;
    v97[3] = v13;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:4];
    v40 = [v38 initWithFeatureId:@"quicktype" event:@"suggested" registerProperties:v39];
    suggestedEventTracker = v2->_suggestedEventTracker;
    v2->_suggestedEventTracker = v40;

    v42 = objc_alloc(MEMORY[0x277D41DB8]);
    v96[0] = v5;
    v96[1] = v85;
    v96[2] = v84;
    v96[3] = v6;
    v96[4] = v13;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:5];
    v44 = [v42 initWithFeatureId:@"quicktype" event:@"suggested_category" registerProperties:v43];
    suggestedCategoryEventTracker = v2->_suggestedCategoryEventTracker;
    v2->_suggestedCategoryEventTracker = v44;

    v46 = objc_alloc(MEMORY[0x277D41DB8]);
    v95[0] = v5;
    v95[1] = v86;
    v95[2] = v6;
    v95[3] = v13;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:4];
    v48 = [v46 initWithFeatureId:@"quicktype" event:@"failure" registerProperties:v47];
    failureEventTracker = v2->_failureEventTracker;
    v2->_failureEventTracker = v48;

    v50 = objc_alloc(MEMORY[0x277D41DB8]);
    v94[0] = v5;
    v94[1] = v86;
    v94[2] = v84;
    v94[3] = v6;
    v94[4] = v13;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:5];
    v52 = [v50 initWithFeatureId:@"quicktype" event:@"failure_category" registerProperties:v51];
    failureCategoryEventTracker = v2->_failureCategoryEventTracker;
    v2->_failureCategoryEventTracker = v52;

    v54 = objc_alloc(MEMORY[0x277D41DB8]);
    v93[0] = v5;
    v93[1] = v87;
    v93[2] = v6;
    v93[3] = v13;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
    v56 = [v54 initWithFeatureId:@"quicktype" event:@"selected" registerProperties:v55];
    selectedEventTracker = v2->_selectedEventTracker;
    v2->_selectedEventTracker = v56;

    v58 = objc_alloc(MEMORY[0x277D41DB8]);
    v92[0] = v5;
    v92[1] = v87;
    v92[2] = v84;
    v92[3] = v6;
    v92[4] = v13;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:5];
    v60 = [v58 initWithFeatureId:@"quicktype" event:@"selected_category" registerProperties:v59];
    selectedCategoryEventTracker = v2->_selectedCategoryEventTracker;
    v2->_selectedCategoryEventTracker = v60;

    v62 = objc_alloc(MEMORY[0x277D41D98]);
    v91[0] = v5;
    v91[1] = v80;
    v91[2] = v6;
    v91[3] = v13;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:4];
    v64 = [v62 initWithFeatureId:@"quicktype" event:@"timing" registerProperties:v63];
    timeInPredictionBarEventTracker = v2->_timeInPredictionBarEventTracker;
    v2->_timeInPredictionBarEventTracker = v64;

    v66 = objc_alloc(MEMORY[0x277D41D98]);
    v90[0] = v5;
    v90[1] = v80;
    v90[2] = v84;
    v90[3] = v6;
    v90[4] = v13;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:5];
    v68 = [v66 initWithFeatureId:@"quicktype" event:@"timing_category" registerProperties:v67];
    timeInPredictionBarCategoryEventTracker = v2->_timeInPredictionBarCategoryEventTracker;
    v2->_timeInPredictionBarCategoryEventTracker = v68;

    v70 = objc_alloc(MEMORY[0x277D41DB8]);
    v71 = MEMORY[0x277CBEBF8];
    v72 = [v70 initWithFeatureId:@"quicktype" event:@"pers_word_accept" registerProperties:MEMORY[0x277CBEBF8]];
    personalizationWordAcceptanceTracker = v2->_personalizationWordAcceptanceTracker;
    v2->_personalizationWordAcceptanceTracker = v72;

    v74 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"quicktype" event:@"pers_offer" registerProperties:v71];
    personalizationOfferTracker = v2->_personalizationOfferTracker;
    v2->_personalizationOfferTracker = v74;

    v76 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"quicktype" event:@"pers_engage" registerProperties:v71];
    personalizationEngagementTracker = v2->_personalizationEngagementTracker;
    v2->_personalizationEngagementTracker = v76;
  }

  v78 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3210 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3210, &__block_literal_global_350);
  }

  v3 = sharedInstance_instance;

  return v3;
}

@end