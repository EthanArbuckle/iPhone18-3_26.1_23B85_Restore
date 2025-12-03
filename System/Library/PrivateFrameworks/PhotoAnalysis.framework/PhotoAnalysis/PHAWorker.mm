@interface PHAWorker
+ (void)configureInterface:(id)interface;
@end

@implementation PHAWorker

+ (void)configureInterface:(id)interface
{
  v83[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  interfaceCopy = interface;
  v5 = [interfaceCopy classesForSelector:sel_generateMemoriesWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v6 = [v3 setWithSet:v5];

  v83[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
  [v6 addObjectsFromArray:v7];

  [interfaceCopy setClasses:v6 forSelector:sel_generateMemoriesWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v8 = MEMORY[0x277CBEB58];
  v9 = [interfaceCopy classesForSelector:sel_generateSuggestionsWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v10 = [v8 setWithSet:v9];

  v82 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  [v10 addObjectsFromArray:v11];

  [interfaceCopy setClasses:v10 forSelector:sel_generateSuggestionsWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v12 = MEMORY[0x277CBEB58];
  v13 = [interfaceCopy classesForSelector:sel_requestGenerateQuestionsWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v14 = [v12 setWithSet:v13];

  [interfaceCopy setClasses:v14 forSelector:sel_requestGenerateQuestionsWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v15 = MEMORY[0x277CBEB58];
  v16 = [interfaceCopy classesForSelector:sel_requestSyndicationProcessingWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v17 = [v15 setWithSet:v16];

  [interfaceCopy setClasses:v17 forSelector:sel_requestSyndicationProcessingWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v18 = MEMORY[0x277CBEB58];
  v19 = [interfaceCopy classesForSelector:sel_requestRevGeocodingSyndicationLibraryWithContext_reply_ argumentIndex:0 ofReply:0];
  v20 = [v18 setWithSet:v19];

  [interfaceCopy setClasses:v20 forSelector:sel_requestRevGeocodingSyndicationLibraryWithContext_reply_ argumentIndex:0 ofReply:0];
  v21 = MEMORY[0x277CBEB58];
  v22 = [interfaceCopy classesForSelector:sel_requestMusicCurationForAssetCollectionLocalIdentifier_options_context_reply_ argumentIndex:0 ofReply:0];
  v23 = [v21 setWithSet:v22];

  [interfaceCopy setClasses:v23 forSelector:sel_requestMusicCurationForAssetCollectionLocalIdentifier_options_context_reply_ argumentIndex:0 ofReply:0];
  v24 = MEMORY[0x277CBEB58];
  v25 = [interfaceCopy classesForSelector:sel_requestMusicCurationForAssetLocalIdentifiers_options_context_reply_ argumentIndex:0 ofReply:0];
  v26 = [v24 setWithSet:v25];

  [interfaceCopy setClasses:v26 forSelector:sel_requestMusicCurationForAssetLocalIdentifiers_options_context_reply_ argumentIndex:0 ofReply:0];
  v27 = MEMORY[0x277CBEB58];
  v28 = [interfaceCopy classesForSelector:sel_requestFlexMusicCurationForAssetCollectionLocalIdentifier_options_context_reply_ argumentIndex:0 ofReply:0];
  v29 = [v27 setWithSet:v28];

  [interfaceCopy setClasses:v29 forSelector:sel_requestFlexMusicCurationForAssetCollectionLocalIdentifier_options_context_reply_ argumentIndex:0 ofReply:0];
  v30 = MEMORY[0x277CBEB58];
  v31 = [interfaceCopy classesForSelector:sel_requestFlexMusicCurationForAssetLocalIdentifiers_options_context_reply_ argumentIndex:0 ofReply:0];
  v32 = [v30 setWithSet:v31];

  [interfaceCopy setClasses:v32 forSelector:sel_requestFlexMusicCurationForAssetLocalIdentifiers_options_context_reply_ argumentIndex:0 ofReply:0];
  v33 = MEMORY[0x277CBEB58];
  v34 = [interfaceCopy classesForSelector:sel_requestSongsForAdamIDs_options_context_reply_ argumentIndex:0 ofReply:0];
  v35 = [v33 setWithSet:v34];

  [interfaceCopy setClasses:v35 forSelector:sel_requestSongsForAdamIDs_options_context_reply_ argumentIndex:0 ofReply:0];
  v36 = MEMORY[0x277CBEB58];
  v37 = [interfaceCopy classesForSelector:sel_requestMusicCacheStatusWithContext_reply_ argumentIndex:0 ofReply:0];
  v38 = [v36 setWithSet:v37];

  [interfaceCopy setClasses:v38 forSelector:sel_requestMusicCacheStatusWithContext_reply_ argumentIndex:0 ofReply:0];
  v39 = MEMORY[0x277CBEB58];
  v40 = [interfaceCopy classesForSelector:sel_requestPrecachingOfAudioDataForAdamIDs_context_reply_ argumentIndex:0 ofReply:0];
  v41 = [v39 setWithSet:v40];

  [interfaceCopy setClasses:v41 forSelector:sel_requestPrecachingOfAudioDataForAdamIDs_context_reply_ argumentIndex:0 ofReply:0];
  v42 = MEMORY[0x277CBEB58];
  v43 = [interfaceCopy classesForSelector:sel_requestMusicCurationDebugInformationForSongWithAdamID_context_reply_ argumentIndex:0 ofReply:0];
  v44 = [v42 setWithSet:v43];

  [interfaceCopy setClasses:v44 forSelector:sel_requestMusicCurationDebugInformationForSongWithAdamID_context_reply_ argumentIndex:0 ofReply:0];
  v45 = MEMORY[0x277CBEB58];
  v46 = [interfaceCopy classesForSelector:sel_requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier_context_reply_ argumentIndex:0 ofReply:0];
  v47 = [v45 setWithSet:v46];

  [interfaceCopy setClasses:v47 forSelector:sel_requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier_context_reply_ argumentIndex:0 ofReply:0];
  v48 = MEMORY[0x277CBEB58];
  v49 = [interfaceCopy classesForSelector:sel_requestFlexMusicCurationDebugInformationForSongWithUID_context_reply_ argumentIndex:0 ofReply:0];
  v50 = [v48 setWithSet:v49];

  [interfaceCopy setClasses:v50 forSelector:sel_requestFlexMusicCurationDebugInformationForSongWithUID_context_reply_ argumentIndex:0 ofReply:0];
  v51 = MEMORY[0x277CBEB58];
  v52 = [interfaceCopy classesForSelector:sel_requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier_context_reply_ argumentIndex:0 ofReply:0];
  v53 = [v51 setWithSet:v52];

  [interfaceCopy setClasses:v53 forSelector:sel_requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier_context_reply_ argumentIndex:0 ofReply:0];
  v54 = MEMORY[0x277CBEB58];
  v55 = [interfaceCopy classesForSelector:sel_requestClearMusicCacheWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v56 = [v54 setWithSet:v55];

  [interfaceCopy setClasses:v56 forSelector:sel_requestClearMusicCacheWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v57 = MEMORY[0x277CBEB58];
  v58 = [interfaceCopy classesForSelector:sel_requestAvailableSuggestionTypeInfosWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v59 = [v57 setWithSet:v58];

  v81[0] = objc_opt_class();
  v81[1] = objc_opt_class();
  v81[2] = objc_opt_class();
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:3];
  [v59 addObjectsFromArray:v60];

  [interfaceCopy setClasses:v59 forSelector:sel_requestAvailableSuggestionTypeInfosWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v61 = MEMORY[0x277CBEB58];
  v62 = [interfaceCopy classesForSelector:sel_requestSuggestionInfosWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v63 = [v61 setWithSet:v62];

  v80[0] = objc_opt_class();
  v80[1] = objc_opt_class();
  v80[2] = objc_opt_class();
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
  [v63 addObjectsFromArray:v64];

  [interfaceCopy setClasses:v63 forSelector:sel_requestSuggestionInfosWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v65 = MEMORY[0x277CBEB58];
  v66 = [interfaceCopy classesForSelector:sel_reportMetricsWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v67 = [v65 setWithSet:v66];

  v79[0] = objc_opt_class();
  v79[1] = objc_opt_class();
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
  [v67 addObjectsFromArray:v68];

  [interfaceCopy setClasses:v67 forSelector:sel_reportMetricsWithOptions_context_reply_ argumentIndex:0 ofReply:0];
  v69 = MEMORY[0x277CBEB58];
  v70 = [interfaceCopy classesForSelector:sel_requestRunPFLWithAttachments_recipeUserInfo_context_resultBlock_ argumentIndex:0 ofReply:0];
  v71 = [v69 setWithSet:v70];

  v78[0] = objc_opt_class();
  v78[1] = objc_opt_class();
  v78[2] = objc_opt_class();
  v78[3] = objc_opt_class();
  v78[4] = objc_opt_class();
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:5];
  [v71 addObjectsFromArray:v72];

  [interfaceCopy setClasses:v71 forSelector:sel_requestRunPFLWithAttachments_recipeUserInfo_context_resultBlock_ argumentIndex:0 ofReply:0];
  v73 = MEMORY[0x277CBEB58];
  v74 = [interfaceCopy classesForSelector:sel_requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs_context_reply_ argumentIndex:0 ofReply:0];
  v75 = [v73 setWithSet:v74];

  v77[0] = objc_opt_class();
  v77[1] = objc_opt_class();
  v77[2] = objc_opt_class();
  v77[3] = objc_opt_class();
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:4];
  [v75 addObjectsFromArray:v76];

  [interfaceCopy setClasses:v75 forSelector:sel_requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs_context_reply_ argumentIndex:0 ofReply:0];
}

@end