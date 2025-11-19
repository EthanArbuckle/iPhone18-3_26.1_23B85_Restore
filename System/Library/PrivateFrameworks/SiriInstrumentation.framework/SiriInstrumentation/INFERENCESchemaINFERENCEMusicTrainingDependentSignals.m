@interface INFERENCESchemaINFERENCEMusicTrainingDependentSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEMusicTrainingDependentSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEMusicTrainingDependentSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCommonForegroundBundleApp:(BOOL)a3;
- (void)setHasCompoundActiveBundleScore:(BOOL)a3;
- (void)setHasCompoundMediaTypeBundleScore:(BOOL)a3;
- (void)setHasEntitySearchBundleRecencyS:(BOOL)a3;
- (void)setHasEntitySearchBundleScore:(BOOL)a3;
- (void)setHasEntitySearchBundleScoreRemote:(BOOL)a3;
- (void)setHasIsAppFirstParty:(BOOL)a3;
- (void)setHasIsBoltEnabled:(BOOL)a3;
- (void)setHasIsCommonForegroundApp:(BOOL)a3;
- (void)setHasIsDisambiguationSelectedApp:(BOOL)a3;
- (void)setHasIsForegroundBundle:(BOOL)a3;
- (void)setHasIsModelPredictedApp:(BOOL)a3;
- (void)setHasIsNowPlayingBundle:(BOOL)a3;
- (void)setHasIsNowPlayingBundlePSE1:(BOOL)a3;
- (void)setHasIsNowPlayingBundlePSE2:(BOOL)a3;
- (void)setHasIsNowPlayingLastBundle:(BOOL)a3;
- (void)setHasIsRawLastNowPlaying:(BOOL)a3;
- (void)setHasIsRawLastNowPlayingCoreDuet:(BOOL)a3;
- (void)setHasIsRawMediaCategoryAudiobookSignal:(BOOL)a3;
- (void)setHasIsRawMediaCategoryMusicSignal:(BOOL)a3;
- (void)setHasIsRawMediaCategoryPodcastSignal:(BOOL)a3;
- (void)setHasIsRawMediaCategoryRadioSignal:(BOOL)a3;
- (void)setHasIsRawMediaCategoryVideoSignal:(BOOL)a3;
- (void)setHasIsRawNowPlayingBundle:(BOOL)a3;
- (void)setHasIsRequestedApp:(BOOL)a3;
- (void)setHasIsSupportedFlag:(BOOL)a3;
- (void)setHasIsSupportedUnicornMatchFlag:(BOOL)a3;
- (void)setHasIsUnicornFlag:(BOOL)a3;
- (void)setHasNowPlayingBundleCount:(BOOL)a3;
- (void)setHasNowPlayingBundleRecencyS:(BOOL)a3;
- (void)setHasNowPlayingBundleScore:(BOOL)a3;
- (void)setHasNowPlayingUsage14Days:(BOOL)a3;
- (void)setHasNowPlayingUsage1Day:(BOOL)a3;
- (void)setHasNowPlayingUsage7Days:(BOOL)a3;
- (void)setHasRawEntitySearchRecency:(BOOL)a3;
- (void)setHasRawLastNowPlayingRecency:(BOOL)a3;
- (void)setHasRawMediaTypeUsageSignalBook:(BOOL)a3;
- (void)setHasRawMediaTypeUsageSignalMusic:(BOOL)a3;
- (void)setHasRawMediaTypeUsageSignalMusicWithoutRadio:(BOOL)a3;
- (void)setHasRawMediaTypeUsageSignalPodcast:(BOOL)a3;
- (void)setHasRawMediaTypeUsageSignalRadio:(BOOL)a3;
- (void)setHasRawMediaTypeUsageSignalVideo:(BOOL)a3;
- (void)setHasRawNowPlaying10Minutes:(BOOL)a3;
- (void)setHasRawNowPlaying1Day:(BOOL)a3;
- (void)setHasRawNowPlaying1Hour:(BOOL)a3;
- (void)setHasRawNowPlaying28Days:(BOOL)a3;
- (void)setHasRawNowPlaying2Minutes:(BOOL)a3;
- (void)setHasRawNowPlaying6Hours:(BOOL)a3;
- (void)setHasRawNowPlaying7Days:(BOOL)a3;
- (void)setHasRawNowPlayingBundleScore:(BOOL)a3;
- (void)setHasRawNowPlayingCountCoreDuet10Min:(BOOL)a3;
- (void)setHasRawNowPlayingCountCoreDuet1Day:(BOOL)a3;
- (void)setHasRawNowPlayingCountCoreDuet1Hr:(BOOL)a3;
- (void)setHasRawNowPlayingCountCoreDuet28Day:(BOOL)a3;
- (void)setHasRawNowPlayingCountCoreDuet2Min:(BOOL)a3;
- (void)setHasRawNowPlayingCountCoreDuet6Hr:(BOOL)a3;
- (void)setHasRawNowPlayingCountCoreDuet7Day:(BOOL)a3;
- (void)setHasRawNowPlayingRecencyCD:(BOOL)a3;
- (void)setHasRawNowPlayingTotal:(BOOL)a3;
- (void)setHasSubscriptionStatus:(BOOL)a3;
- (void)setHasUsageScoreBooks:(BOOL)a3;
- (void)setHasUsageScoreBooksRemote:(BOOL)a3;
- (void)setHasUsageScoreMusic:(BOOL)a3;
- (void)setHasUsageScoreMusicRemote:(BOOL)a3;
- (void)setHasUsageScoreMusicWithoutRadio:(BOOL)a3;
- (void)setHasUsageScoreMusicWithoutRadioRemote:(BOOL)a3;
- (void)setHasUsageScorePodcasts:(BOOL)a3;
- (void)setHasUsageScorePodcastsRemote:(BOOL)a3;
- (void)setHasUsageScoreRadio:(BOOL)a3;
- (void)setHasUsageScoreRadioRemote:(BOOL)a3;
- (void)setHasVq21Score:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEMusicTrainingDependentSignals

- (INFERENCESchemaINFERENCEMusicTrainingDependentSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v157.receiver = self;
  v157.super_class = INFERENCESchemaINFERENCEMusicTrainingDependentSignals;
  v5 = [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)&v157 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isClientForegroundActiveBundle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsClientForegroundActiveBundle:](v5, "setIsClientForegroundActiveBundle:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"compoundActiveBundleScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setCompoundActiveBundleScore:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"compoundMediaTypeBundleScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setCompoundMediaTypeBundleScore:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"entitySearchBundleRecencyS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setEntitySearchBundleRecencyS:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"entitySearchBundleScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setEntitySearchBundleScore:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"isForegroundBundle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsForegroundBundle:](v5, "setIsForegroundBundle:", [v11 BOOLValue]);
    }

    v123 = v6;
    v12 = [v4 objectForKeyedSubscript:@"isNowPlayingBundle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsNowPlayingBundle:](v5, "setIsNowPlayingBundle:", [v12 BOOLValue]);
    }

    v117 = v12;
    v13 = [v4 objectForKeyedSubscript:@"nowPlayingBundleCount"];
    objc_opt_class();
    v156 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setNowPlayingBundleCount:](v5, "setNowPlayingBundleCount:", [v13 intValue]);
    }

    v122 = v7;
    v14 = [v4 objectForKeyedSubscript:@"nowPlayingBundleRecencyS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setNowPlayingBundleRecencyS:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"nowPlayingBundleScore"];
    objc_opt_class();
    v155 = v15;
    if (objc_opt_isKindOfClass())
    {
      [v15 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setNowPlayingBundleScore:?];
    }

    v121 = v8;
    v16 = [v4 objectForKeyedSubscript:@"isNowPlayingLastBundle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsNowPlayingLastBundle:](v5, "setIsNowPlayingLastBundle:", [v16 BOOLValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"nowPlayingUsage1Day"];
    objc_opt_class();
    v154 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setNowPlayingUsage1Day:](v5, "setNowPlayingUsage1Day:", [v17 intValue]);
    }

    v120 = v9;
    v18 = [v4 objectForKeyedSubscript:@"nowPlayingUsage7Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setNowPlayingUsage7Days:](v5, "setNowPlayingUsage7Days:", [v18 intValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"nowPlayingUsage14Days"];
    objc_opt_class();
    v153 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setNowPlayingUsage14Days:](v5, "setNowPlayingUsage14Days:", [v19 intValue]);
    }

    v20 = v10;
    v21 = [v4 objectForKeyedSubscript:@"isRawLastNowPlayingCoreDuet"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsRawLastNowPlayingCoreDuet:](v5, "setIsRawLastNowPlayingCoreDuet:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"isRawMediaCategoryAudiobookSignal"];
    objc_opt_class();
    v152 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsRawMediaCategoryAudiobookSignal:](v5, "setIsRawMediaCategoryAudiobookSignal:", [v22 BOOLValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"isRawMediaCategoryMusicSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsRawMediaCategoryMusicSignal:](v5, "setIsRawMediaCategoryMusicSignal:", [v23 BOOLValue]);
    }

    v112 = v23;
    v24 = [v4 objectForKeyedSubscript:@"isRawMediaCategoryPodcastSignal"];
    objc_opt_class();
    v151 = v24;
    v119 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsRawMediaCategoryPodcastSignal:](v5, "setIsRawMediaCategoryPodcastSignal:", [v24 BOOLValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"isRawMediaCategoryRadioSignal"];
    objc_opt_class();
    v150 = v25;
    v118 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsRawMediaCategoryRadioSignal:](v5, "setIsRawMediaCategoryRadioSignal:", [v25 BOOLValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"isRawMediaCategoryVideoSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsRawMediaCategoryVideoSignal:](v5, "setIsRawMediaCategoryVideoSignal:", [v26 BOOLValue]);
    }

    v111 = v26;
    v27 = v21;
    v28 = [v4 objectForKeyedSubscript:@"rawMediaTypeUsageSignalBook"];
    objc_opt_class();
    v149 = v28;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawMediaTypeUsageSignalBook:](v5, "setRawMediaTypeUsageSignalBook:", [v28 intValue]);
    }

    v29 = v18;
    v30 = [v4 objectForKeyedSubscript:@"rawMediaTypeUsageSignalMusic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawMediaTypeUsageSignalMusic:](v5, "setRawMediaTypeUsageSignalMusic:", [v30 intValue]);
    }

    v110 = v30;
    v31 = v16;
    v32 = [v4 objectForKeyedSubscript:@"rawMediaTypeUsageSignalPodcast"];
    objc_opt_class();
    v148 = v32;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawMediaTypeUsageSignalPodcast:](v5, "setRawMediaTypeUsageSignalPodcast:", [v32 intValue]);
    }

    v33 = v14;
    v34 = [v4 objectForKeyedSubscript:@"rawMediaTypeUsageSignalVideo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawMediaTypeUsageSignalVideo:](v5, "setRawMediaTypeUsageSignalVideo:", [v34 intValue]);
    }

    v109 = v34;
    v35 = [v4 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet10Min"];
    objc_opt_class();
    v147 = v35;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlayingCountCoreDuet10Min:](v5, "setRawNowPlayingCountCoreDuet10Min:", [v35 intValue]);
    }

    v36 = [v4 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlayingCountCoreDuet1Day:](v5, "setRawNowPlayingCountCoreDuet1Day:", [v36 intValue]);
    }

    v108 = v36;
    v37 = [v4 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet1Hr"];
    objc_opt_class();
    v146 = v37;
    v116 = v33;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlayingCountCoreDuet1Hr:](v5, "setRawNowPlayingCountCoreDuet1Hr:", [v37 intValue]);
    }

    v38 = [v4 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet28Day"];
    objc_opt_class();
    v145 = v38;
    v115 = v31;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlayingCountCoreDuet28Day:](v5, "setRawNowPlayingCountCoreDuet28Day:", [v38 intValue]);
    }

    v39 = [v4 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet2Min"];
    objc_opt_class();
    v144 = v39;
    v114 = v29;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlayingCountCoreDuet2Min:](v5, "setRawNowPlayingCountCoreDuet2Min:", [v39 intValue]);
    }

    v40 = [v4 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet6Hr"];
    objc_opt_class();
    v143 = v40;
    v113 = v27;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlayingCountCoreDuet6Hr:](v5, "setRawNowPlayingCountCoreDuet6Hr:", [v40 intValue]);
    }

    v41 = [v4 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet7Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlayingCountCoreDuet7Day:](v5, "setRawNowPlayingCountCoreDuet7Day:", [v41 intValue]);
    }

    v107 = v41;
    v42 = [v4 objectForKeyedSubscript:@"rawNowPlayingRecencyCD"];
    objc_opt_class();
    v142 = v42;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlayingRecencyCD:](v5, "setRawNowPlayingRecencyCD:", [v42 intValue]);
    }

    v43 = [v4 objectForKeyedSubscript:@"rawEntitySearchRecency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawEntitySearchRecency:](v5, "setRawEntitySearchRecency:", [v43 intValue]);
    }

    v44 = [v4 objectForKeyedSubscript:@"usageScoreBooks"];
    objc_opt_class();
    v141 = v44;
    if (objc_opt_isKindOfClass())
    {
      [v44 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setUsageScoreBooks:?];
    }

    v45 = [v4 objectForKeyedSubscript:@"usageScoreMusic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v45 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setUsageScoreMusic:?];
    }

    v46 = [v4 objectForKeyedSubscript:@"usageScorePodcasts"];
    objc_opt_class();
    v140 = v46;
    if (objc_opt_isKindOfClass())
    {
      [v46 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setUsageScorePodcasts:?];
    }

    v47 = [v4 objectForKeyedSubscript:@"isAppFirstParty"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsAppFirstParty:](v5, "setIsAppFirstParty:", [v47 BOOLValue]);
    }

    v48 = [v4 objectForKeyedSubscript:@"isRequestedApp"];
    objc_opt_class();
    v139 = v48;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsRequestedApp:](v5, "setIsRequestedApp:", [v48 BOOLValue]);
    }

    v49 = [v4 objectForKeyedSubscript:@"isNowPlayingBundlePSE1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsNowPlayingBundlePSE1:](v5, "setIsNowPlayingBundlePSE1:", [v49 BOOLValue]);
    }

    v50 = [v4 objectForKeyedSubscript:@"isNowPlayingBundlePSE2"];
    objc_opt_class();
    v138 = v50;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsNowPlayingBundlePSE2:](v5, "setIsNowPlayingBundlePSE2:", [v50 BOOLValue]);
    }

    v51 = [v4 objectForKeyedSubscript:@"vq21Score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v51 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setVq21Score:?];
    }

    v102 = v51;
    v52 = v49;
    v53 = [v4 objectForKeyedSubscript:@"isSupportedFlag"];
    objc_opt_class();
    v137 = v53;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsSupportedFlag:](v5, "setIsSupportedFlag:", [v53 BOOLValue]);
    }

    v54 = v47;
    v55 = [v4 objectForKeyedSubscript:@"isUnicornFlag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsUnicornFlag:](v5, "setIsUnicornFlag:", [v55 BOOLValue]);
    }

    v101 = v55;
    v56 = v45;
    v57 = [v4 objectForKeyedSubscript:@"isSupportedUnicornMatchFlag"];
    objc_opt_class();
    v136 = v57;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsSupportedUnicornMatchFlag:](v5, "setIsSupportedUnicornMatchFlag:", [v57 BOOLValue]);
    }

    v58 = v43;
    v59 = [v4 objectForKeyedSubscript:@"isDisambiguationSelectedApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsDisambiguationSelectedApp:](v5, "setIsDisambiguationSelectedApp:", [v59 BOOLValue]);
    }

    v100 = v59;
    v60 = [v4 objectForKeyedSubscript:@"isModelPredictedApp"];
    objc_opt_class();
    v135 = v60;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsModelPredictedApp:](v5, "setIsModelPredictedApp:", [v60 BOOLValue]);
    }

    v61 = [v4 objectForKeyedSubscript:@"usageScoreRadio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v61 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setUsageScoreRadio:?];
    }

    v99 = v61;
    v62 = [v4 objectForKeyedSubscript:@"usageScoreMusicWithoutRadio"];
    objc_opt_class();
    v134 = v62;
    v106 = v58;
    if (objc_opt_isKindOfClass())
    {
      [v62 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setUsageScoreMusicWithoutRadio:?];
    }

    v63 = [v4 objectForKeyedSubscript:@"rawMediaTypeUsageSignalRadio"];
    objc_opt_class();
    v133 = v63;
    v105 = v56;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawMediaTypeUsageSignalRadio:](v5, "setRawMediaTypeUsageSignalRadio:", [v63 intValue]);
    }

    v64 = [v4 objectForKeyedSubscript:@"rawMediaTypeUsageSignalMusicWithoutRadio"];
    objc_opt_class();
    v132 = v64;
    v104 = v54;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawMediaTypeUsageSignalMusicWithoutRadio:](v5, "setRawMediaTypeUsageSignalMusicWithoutRadio:", [v64 intValue]);
    }

    v65 = [v4 objectForKeyedSubscript:@"subscriptionStatus"];
    objc_opt_class();
    v131 = v65;
    v103 = v52;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setSubscriptionStatus:](v5, "setSubscriptionStatus:", [v65 intValue]);
    }

    v66 = [v4 objectForKeyedSubscript:@"isRawNowPlayingBundle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsRawNowPlayingBundle:](v5, "setIsRawNowPlayingBundle:", [v66 BOOLValue]);
    }

    v98 = v66;
    v67 = [v4 objectForKeyedSubscript:@"rawNowPlayingTotal"];
    objc_opt_class();
    v130 = v67;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlayingTotal:](v5, "setRawNowPlayingTotal:", [v67 intValue]);
    }

    v68 = [v4 objectForKeyedSubscript:@"rawNowPlayingBundleScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v68 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setRawNowPlayingBundleScore:?];
    }

    v69 = [v4 objectForKeyedSubscript:@"isRawLastNowPlaying"];
    objc_opt_class();
    v129 = v69;
    if (objc_opt_isKindOfClass())
    {
      [v69 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setIsRawLastNowPlaying:?];
    }

    v70 = [v4 objectForKeyedSubscript:@"rawNowPlaying2Minutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlaying2Minutes:](v5, "setRawNowPlaying2Minutes:", [v70 intValue]);
    }

    v71 = [v4 objectForKeyedSubscript:@"rawNowPlaying10Minutes"];
    objc_opt_class();
    v128 = v71;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlaying10Minutes:](v5, "setRawNowPlaying10Minutes:", [v71 intValue]);
    }

    v72 = [v4 objectForKeyedSubscript:@"rawNowPlaying1Hour"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlaying1Hour:](v5, "setRawNowPlaying1Hour:", [v72 intValue]);
    }

    v73 = [v4 objectForKeyedSubscript:@"rawNowPlaying6Hours"];
    objc_opt_class();
    v127 = v73;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlaying6Hours:](v5, "setRawNowPlaying6Hours:", [v73 intValue]);
    }

    v74 = [v4 objectForKeyedSubscript:@"rawNowPlaying1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlaying1Day:](v5, "setRawNowPlaying1Day:", [v74 intValue]);
    }

    v75 = [v4 objectForKeyedSubscript:@"rawNowPlaying7Days"];
    objc_opt_class();
    v126 = v75;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlaying7Days:](v5, "setRawNowPlaying7Days:", [v75 intValue]);
    }

    v76 = [v4 objectForKeyedSubscript:@"rawNowPlaying28Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawNowPlaying28Days:](v5, "setRawNowPlaying28Days:", [v76 intValue]);
    }

    v77 = [v4 objectForKeyedSubscript:@"rawLastNowPlayingRecency"];
    objc_opt_class();
    v125 = v77;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setRawLastNowPlayingRecency:](v5, "setRawLastNowPlayingRecency:", [v77 intValue]);
    }

    v78 = [v4 objectForKeyedSubscript:@"commonForegroundBundleApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setCommonForegroundBundleApp:](v5, "setCommonForegroundBundleApp:", [v78 intValue]);
    }

    v79 = [v4 objectForKeyedSubscript:@"isRawLastNowPlayingBoolean"];
    objc_opt_class();
    v124 = v79;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsRawLastNowPlayingBoolean:](v5, "setIsRawLastNowPlayingBoolean:", [v79 BOOLValue]);
    }

    v96 = v70;
    v80 = [v4 objectForKeyedSubscript:@"isCommonForegroundApp"];
    objc_opt_class();
    v81 = v68;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsCommonForegroundApp:](v5, "setIsCommonForegroundApp:", [v80 BOOLValue]);
    }

    v91 = v80;
    v95 = v72;
    v82 = [v4 objectForKeyedSubscript:@"isBoltEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingDependentSignals setIsBoltEnabled:](v5, "setIsBoltEnabled:", [v82 BOOLValue]);
    }

    v94 = v74;
    v83 = [v4 objectForKeyedSubscript:@"usageScoreMusicWithoutRadioRemote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v83 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setUsageScoreMusicWithoutRadioRemote:?];
    }

    v84 = [v4 objectForKeyedSubscript:@"usageScoreBooksRemote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v84 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setUsageScoreBooksRemote:?];
    }

    v93 = v76;
    v85 = [v4 objectForKeyedSubscript:@"usageScoreRadioRemote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v85 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setUsageScoreRadioRemote:?];
    }

    v92 = v78;
    v86 = [v4 objectForKeyedSubscript:@"usageScorePodcastsRemote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v86 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setUsageScorePodcastsRemote:?];
    }

    v97 = v81;
    v87 = [v4 objectForKeyedSubscript:@"entitySearchBundleScoreRemote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v87 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setEntitySearchBundleScoreRemote:?];
    }

    v88 = [v4 objectForKeyedSubscript:@"usageScoreMusicRemote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v88 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)v5 setUsageScoreMusicRemote:?];
    }

    v89 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEMusicTrainingDependentSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  p_has = &self->_has;
  has = self->_has;
  if (has < 0)
  {
    v98 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals commonForegroundBundleApp](self, "commonForegroundBundleApp")}];
    [v3 setObject:v98 forKeyedSubscript:@"commonForegroundBundleApp"];

    has = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_153;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v99 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self compoundActiveBundleScore];
  v100 = [v99 numberWithDouble:?];
  [v3 setObject:v100 forKeyedSubscript:@"compoundActiveBundleScore"];

  has = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_154;
  }

LABEL_153:
  v101 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self compoundMediaTypeBundleScore];
  v102 = [v101 numberWithDouble:?];
  [v3 setObject:v102 forKeyedSubscript:@"compoundMediaTypeBundleScore"];

  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_154:
  v103 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self entitySearchBundleRecencyS];
  v104 = [v103 numberWithDouble:?];
  [v3 setObject:v104 forKeyedSubscript:@"entitySearchBundleRecencyS"];

  if ((*p_has & 0x10) != 0)
  {
LABEL_6:
    v6 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self entitySearchBundleScore];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"entitySearchBundleScore"];
  }

LABEL_7:
  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self entitySearchBundleScoreRemote];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"entitySearchBundleScoreRemote"];
  }

  if ((*(&self->_has + 4) & 0x10) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isAppFirstParty](self, "isAppFirstParty")}];
    [v3 setObject:v10 forKeyedSubscript:@"isAppFirstParty"];
  }

  if ((*(&self->_has + 4) & 4) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isBoltEnabled](self, "isBoltEnabled")}];
    [v3 setObject:v11 forKeyedSubscript:@"isBoltEnabled"];
  }

  if (*p_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isClientForegroundActiveBundle](self, "isClientForegroundActiveBundle")}];
    [v3 setObject:v12 forKeyedSubscript:@"isClientForegroundActiveBundle"];
  }

  if ((*(&self->_has + 4) & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isCommonForegroundApp](self, "isCommonForegroundApp")}];
    [v3 setObject:v13 forKeyedSubscript:@"isCommonForegroundApp"];
  }

  v14 = *p_has;
  if ((*p_has & 0x100000000000) != 0)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isDisambiguationSelectedApp](self, "isDisambiguationSelectedApp")}];
    [v3 setObject:v43 forKeyedSubscript:@"isDisambiguationSelectedApp"];

    v14 = *p_has;
    if ((*p_has & 0x20) == 0)
    {
LABEL_19:
      if ((v14 & 0x200000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_96;
    }
  }

  else if ((v14 & 0x20) == 0)
  {
    goto LABEL_19;
  }

  v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isForegroundBundle](self, "isForegroundBundle")}];
  [v3 setObject:v44 forKeyedSubscript:@"isForegroundBundle"];

  v14 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_20:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_97;
  }

LABEL_96:
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isModelPredictedApp](self, "isModelPredictedApp")}];
  [v3 setObject:v45 forKeyedSubscript:@"isModelPredictedApp"];

  v14 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_21:
    if ((v14 & 0x4000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_98;
  }

LABEL_97:
  v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isNowPlayingBundle](self, "isNowPlayingBundle")}];
  [v3 setObject:v46 forKeyedSubscript:@"isNowPlayingBundle"];

  v14 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_22:
    if ((v14 & 0x8000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_99;
  }

LABEL_98:
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isNowPlayingBundlePSE1](self, "isNowPlayingBundlePSE1")}];
  [v3 setObject:v47 forKeyedSubscript:@"isNowPlayingBundlePSE1"];

  v14 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_23:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_100;
  }

LABEL_99:
  v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isNowPlayingBundlePSE2](self, "isNowPlayingBundlePSE2")}];
  [v3 setObject:v48 forKeyedSubscript:@"isNowPlayingBundlePSE2"];

  v14 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_24:
    if ((v14 & 0x40000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_100:
  v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isNowPlayingLastBundle](self, "isNowPlayingLastBundle")}];
  [v3 setObject:v49 forKeyedSubscript:@"isNowPlayingLastBundle"];

  if ((*p_has & 0x40000000000000) != 0)
  {
LABEL_25:
    v15 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self isRawLastNowPlaying];
    v16 = [v15 numberWithDouble:?];
    [v3 setObject:v16 forKeyedSubscript:@"isRawLastNowPlaying"];
  }

LABEL_26:
  if (*(&self->_has + 4))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isRawLastNowPlayingBoolean](self, "isRawLastNowPlayingBoolean")}];
    [v3 setObject:v17 forKeyedSubscript:@"isRawLastNowPlayingBoolean"];
  }

  v18 = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isRawLastNowPlayingCoreDuet](self, "isRawLastNowPlayingCoreDuet")}];
    [v3 setObject:v50 forKeyedSubscript:@"isRawLastNowPlayingCoreDuet"];

    v18 = *p_has;
    if ((*p_has & 0x8000) == 0)
    {
LABEL_30:
      if ((v18 & 0x10000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_104;
    }
  }

  else if ((v18 & 0x8000) == 0)
  {
    goto LABEL_30;
  }

  v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isRawMediaCategoryAudiobookSignal](self, "isRawMediaCategoryAudiobookSignal")}];
  [v3 setObject:v51 forKeyedSubscript:@"isRawMediaCategoryAudiobookSignal"];

  v18 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_31:
    if ((v18 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_105;
  }

LABEL_104:
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isRawMediaCategoryMusicSignal](self, "isRawMediaCategoryMusicSignal")}];
  [v3 setObject:v52 forKeyedSubscript:@"isRawMediaCategoryMusicSignal"];

  v18 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_32:
    if ((v18 & 0x40000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_106;
  }

LABEL_105:
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isRawMediaCategoryPodcastSignal](self, "isRawMediaCategoryPodcastSignal")}];
  [v3 setObject:v53 forKeyedSubscript:@"isRawMediaCategoryPodcastSignal"];

  v18 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_33:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_107;
  }

LABEL_106:
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isRawMediaCategoryRadioSignal](self, "isRawMediaCategoryRadioSignal")}];
  [v3 setObject:v54 forKeyedSubscript:@"isRawMediaCategoryRadioSignal"];

  v18 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_34:
    if ((v18 & 0x8000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_108;
  }

LABEL_107:
  v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isRawMediaCategoryVideoSignal](self, "isRawMediaCategoryVideoSignal")}];
  [v3 setObject:v55 forKeyedSubscript:@"isRawMediaCategoryVideoSignal"];

  v18 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_35:
    if ((v18 & 0x2000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_109;
  }

LABEL_108:
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isRawNowPlayingBundle](self, "isRawNowPlayingBundle")}];
  [v3 setObject:v56 forKeyedSubscript:@"isRawNowPlayingBundle"];

  v18 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_36:
    if ((v18 & 0x20000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_110;
  }

LABEL_109:
  v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isRequestedApp](self, "isRequestedApp")}];
  [v3 setObject:v57 forKeyedSubscript:@"isRequestedApp"];

  v18 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_37:
    if ((v18 & 0x80000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_111;
  }

LABEL_110:
  v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isSupportedFlag](self, "isSupportedFlag")}];
  [v3 setObject:v58 forKeyedSubscript:@"isSupportedFlag"];

  v18 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_38:
    if ((v18 & 0x40000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_112;
  }

LABEL_111:
  v59 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isSupportedUnicornMatchFlag](self, "isSupportedUnicornMatchFlag")}];
  [v3 setObject:v59 forKeyedSubscript:@"isSupportedUnicornMatchFlag"];

  v18 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_39:
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_113;
  }

LABEL_112:
  v60 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals isUnicornFlag](self, "isUnicornFlag")}];
  [v3 setObject:v60 forKeyedSubscript:@"isUnicornFlag"];

  v18 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_40:
    if ((v18 & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_114;
  }

LABEL_113:
  v61 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals nowPlayingBundleCount](self, "nowPlayingBundleCount")}];
  [v3 setObject:v61 forKeyedSubscript:@"nowPlayingBundleCount"];

  v18 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_41:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_115;
  }

LABEL_114:
  v62 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self nowPlayingBundleRecencyS];
  v63 = [v62 numberWithDouble:?];
  [v3 setObject:v63 forKeyedSubscript:@"nowPlayingBundleRecencyS"];

  v18 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_42:
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_116;
  }

LABEL_115:
  v64 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self nowPlayingBundleScore];
  v65 = [v64 numberWithDouble:?];
  [v3 setObject:v65 forKeyedSubscript:@"nowPlayingBundleScore"];

  v18 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_43:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_117;
  }

LABEL_116:
  v66 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals nowPlayingUsage14Days](self, "nowPlayingUsage14Days")}];
  [v3 setObject:v66 forKeyedSubscript:@"nowPlayingUsage14Days"];

  v18 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_44:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_118;
  }

LABEL_117:
  v67 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals nowPlayingUsage1Day](self, "nowPlayingUsage1Day")}];
  [v3 setObject:v67 forKeyedSubscript:@"nowPlayingUsage1Day"];

  v18 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_45:
    if ((v18 & 0x100000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_119;
  }

LABEL_118:
  v68 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals nowPlayingUsage7Days](self, "nowPlayingUsage7Days")}];
  [v3 setObject:v68 forKeyedSubscript:@"nowPlayingUsage7Days"];

  v18 = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_46:
    if ((v18 & 0x4000000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_120;
  }

LABEL_119:
  v69 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawEntitySearchRecency](self, "rawEntitySearchRecency")}];
  [v3 setObject:v69 forKeyedSubscript:@"rawEntitySearchRecency"];

  v18 = *p_has;
  if ((*p_has & 0x4000000000000000) == 0)
  {
LABEL_47:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_121;
  }

LABEL_120:
  v70 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawLastNowPlayingRecency](self, "rawLastNowPlayingRecency")}];
  [v3 setObject:v70 forKeyedSubscript:@"rawLastNowPlayingRecency"];

  v18 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_48:
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_122;
  }

LABEL_121:
  v71 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawMediaTypeUsageSignalBook](self, "rawMediaTypeUsageSignalBook")}];
  [v3 setObject:v71 forKeyedSubscript:@"rawMediaTypeUsageSignalBook"];

  v18 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_49:
    if ((v18 & 0x2000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_123;
  }

LABEL_122:
  v72 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawMediaTypeUsageSignalMusic](self, "rawMediaTypeUsageSignalMusic")}];
  [v3 setObject:v72 forKeyedSubscript:@"rawMediaTypeUsageSignalMusic"];

  v18 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_50:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_124;
  }

LABEL_123:
  v73 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawMediaTypeUsageSignalMusicWithoutRadio](self, "rawMediaTypeUsageSignalMusicWithoutRadio")}];
  [v3 setObject:v73 forKeyedSubscript:@"rawMediaTypeUsageSignalMusicWithoutRadio"];

  v18 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_51:
    if ((v18 & 0x1000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_125;
  }

LABEL_124:
  v74 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawMediaTypeUsageSignalPodcast](self, "rawMediaTypeUsageSignalPodcast")}];
  [v3 setObject:v74 forKeyedSubscript:@"rawMediaTypeUsageSignalPodcast"];

  v18 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_52:
    if ((v18 & 0x800000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_126;
  }

LABEL_125:
  v75 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawMediaTypeUsageSignalRadio](self, "rawMediaTypeUsageSignalRadio")}];
  [v3 setObject:v75 forKeyedSubscript:@"rawMediaTypeUsageSignalRadio"];

  v18 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_53:
    if ((v18 & 0x100000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_127;
  }

LABEL_126:
  v76 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawMediaTypeUsageSignalVideo](self, "rawMediaTypeUsageSignalVideo")}];
  [v3 setObject:v76 forKeyedSubscript:@"rawMediaTypeUsageSignalVideo"];

  v18 = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_54:
    if ((v18 & 0x800000000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_128;
  }

LABEL_127:
  v77 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlaying10Minutes](self, "rawNowPlaying10Minutes")}];
  [v3 setObject:v77 forKeyedSubscript:@"rawNowPlaying10Minutes"];

  v18 = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_55:
    if ((v18 & 0x200000000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_129;
  }

LABEL_128:
  v78 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlaying1Day](self, "rawNowPlaying1Day")}];
  [v3 setObject:v78 forKeyedSubscript:@"rawNowPlaying1Day"];

  v18 = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_56:
    if ((v18 & 0x2000000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_130;
  }

LABEL_129:
  v79 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlaying1Hour](self, "rawNowPlaying1Hour")}];
  [v3 setObject:v79 forKeyedSubscript:@"rawNowPlaying1Hour"];

  v18 = *p_has;
  if ((*p_has & 0x2000000000000000) == 0)
  {
LABEL_57:
    if ((v18 & 0x80000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_131;
  }

LABEL_130:
  v80 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlaying28Days](self, "rawNowPlaying28Days")}];
  [v3 setObject:v80 forKeyedSubscript:@"rawNowPlaying28Days"];

  v18 = *p_has;
  if ((*p_has & 0x80000000000000) == 0)
  {
LABEL_58:
    if ((v18 & 0x400000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_132;
  }

LABEL_131:
  v81 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlaying2Minutes](self, "rawNowPlaying2Minutes")}];
  [v3 setObject:v81 forKeyedSubscript:@"rawNowPlaying2Minutes"];

  v18 = *p_has;
  if ((*p_has & 0x400000000000000) == 0)
  {
LABEL_59:
    if ((v18 & 0x1000000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_133;
  }

LABEL_132:
  v82 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlaying6Hours](self, "rawNowPlaying6Hours")}];
  [v3 setObject:v82 forKeyedSubscript:@"rawNowPlaying6Hours"];

  v18 = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_60:
    if ((v18 & 0x20000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_134;
  }

LABEL_133:
  v83 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlaying7Days](self, "rawNowPlaying7Days")}];
  [v3 setObject:v83 forKeyedSubscript:@"rawNowPlaying7Days"];

  v18 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_61:
    if ((v18 & 0x1000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_135;
  }

LABEL_134:
  v84 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self rawNowPlayingBundleScore];
  v85 = [v84 numberWithDouble:?];
  [v3 setObject:v85 forKeyedSubscript:@"rawNowPlayingBundleScore"];

  v18 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_62:
    if ((v18 & 0x2000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_136;
  }

LABEL_135:
  v86 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlayingCountCoreDuet10Min](self, "rawNowPlayingCountCoreDuet10Min")}];
  [v3 setObject:v86 forKeyedSubscript:@"rawNowPlayingCountCoreDuet10Min"];

  v18 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_63:
    if ((v18 & 0x4000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_137;
  }

LABEL_136:
  v87 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlayingCountCoreDuet1Day](self, "rawNowPlayingCountCoreDuet1Day")}];
  [v3 setObject:v87 forKeyedSubscript:@"rawNowPlayingCountCoreDuet1Day"];

  v18 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_64:
    if ((v18 & 0x8000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_138;
  }

LABEL_137:
  v88 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlayingCountCoreDuet1Hr](self, "rawNowPlayingCountCoreDuet1Hr")}];
  [v3 setObject:v88 forKeyedSubscript:@"rawNowPlayingCountCoreDuet1Hr"];

  v18 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_65:
    if ((v18 & 0x10000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_139;
  }

LABEL_138:
  v89 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlayingCountCoreDuet28Day](self, "rawNowPlayingCountCoreDuet28Day")}];
  [v3 setObject:v89 forKeyedSubscript:@"rawNowPlayingCountCoreDuet28Day"];

  v18 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_66:
    if ((v18 & 0x20000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_140;
  }

LABEL_139:
  v90 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlayingCountCoreDuet2Min](self, "rawNowPlayingCountCoreDuet2Min")}];
  [v3 setObject:v90 forKeyedSubscript:@"rawNowPlayingCountCoreDuet2Min"];

  v18 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_67:
    if ((v18 & 0x40000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_141;
  }

LABEL_140:
  v91 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlayingCountCoreDuet6Hr](self, "rawNowPlayingCountCoreDuet6Hr")}];
  [v3 setObject:v91 forKeyedSubscript:@"rawNowPlayingCountCoreDuet6Hr"];

  v18 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_68:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_142;
  }

LABEL_141:
  v92 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlayingCountCoreDuet7Day](self, "rawNowPlayingCountCoreDuet7Day")}];
  [v3 setObject:v92 forKeyedSubscript:@"rawNowPlayingCountCoreDuet7Day"];

  v18 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_69:
    if ((v18 & 0x10000000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_143;
  }

LABEL_142:
  v93 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlayingRecencyCD](self, "rawNowPlayingRecencyCD")}];
  [v3 setObject:v93 forKeyedSubscript:@"rawNowPlayingRecencyCD"];

  v18 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_70:
    if ((v18 & 0x4000000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_144;
  }

LABEL_143:
  v94 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingDependentSignals rawNowPlayingTotal](self, "rawNowPlayingTotal")}];
  [v3 setObject:v94 forKeyedSubscript:@"rawNowPlayingTotal"];

  v18 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_71:
    if ((v18 & 0x200000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_144:
  v95 = [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self subscriptionStatus];
  v96 = @"INFERENCEMEDIASUBSCRIPTIONSTATUS_UNKNOWN";
  if (v95 == 1)
  {
    v96 = @"INFERENCEMEDIASUBSCRIPTIONSTATUS_NOT_SUBSCRIBED";
  }

  if (v95 == 2)
  {
    v97 = @"INFERENCEMEDIASUBSCRIPTIONSTATUS_SUBSCRIBED";
  }

  else
  {
    v97 = v96;
  }

  [v3 setObject:v97 forKeyedSubscript:@"subscriptionStatus"];
  if ((*p_has & 0x200000000) != 0)
  {
LABEL_72:
    v19 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self usageScoreBooks];
    v20 = [v19 numberWithDouble:?];
    [v3 setObject:v20 forKeyedSubscript:@"usageScoreBooks"];
  }

LABEL_73:
  if ((*(&self->_has + 4) & 0x10) != 0)
  {
    v21 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self usageScoreBooksRemote];
    v22 = [v21 numberWithDouble:?];
    [v3 setObject:v22 forKeyedSubscript:@"usageScoreBooksRemote"];
  }

  if ((*(&self->_has + 4) & 4) != 0)
  {
    v23 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self usageScoreMusic];
    v24 = [v23 numberWithDouble:?];
    [v3 setObject:v24 forKeyedSubscript:@"usageScoreMusic"];
  }

  if ((*(&self->_has + 4) & 0x100) != 0)
  {
    v25 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self usageScoreMusicRemote];
    v26 = [v25 numberWithDouble:?];
    [v3 setObject:v26 forKeyedSubscript:@"usageScoreMusicRemote"];
  }

  if ((*(&self->_has + 5) & 0x80) != 0)
  {
    v27 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self usageScoreMusicWithoutRadio];
    v28 = [v27 numberWithDouble:?];
    [v3 setObject:v28 forKeyedSubscript:@"usageScoreMusicWithoutRadio"];
  }

  if ((*(&self->_has + 4) & 8) != 0)
  {
    v29 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self usageScoreMusicWithoutRadioRemote];
    v30 = [v29 numberWithDouble:?];
    [v3 setObject:v30 forKeyedSubscript:@"usageScoreMusicWithoutRadioRemote"];
  }

  if ((*(&self->_has + 4) & 8) != 0)
  {
    v31 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self usageScorePodcasts];
    v32 = [v31 numberWithDouble:?];
    [v3 setObject:v32 forKeyedSubscript:@"usageScorePodcasts"];
  }

  if ((*(&self->_has + 4) & 0x40) != 0)
  {
    v33 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self usageScorePodcastsRemote];
    v34 = [v33 numberWithDouble:?];
    [v3 setObject:v34 forKeyedSubscript:@"usageScorePodcastsRemote"];
  }

  if ((*(&self->_has + 5) & 0x40) != 0)
  {
    v35 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self usageScoreRadio];
    v36 = [v35 numberWithDouble:?];
    [v3 setObject:v36 forKeyedSubscript:@"usageScoreRadio"];
  }

  if ((*(&self->_has + 4) & 0x20) != 0)
  {
    v37 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self usageScoreRadioRemote];
    v38 = [v37 numberWithDouble:?];
    [v3 setObject:v38 forKeyedSubscript:@"usageScoreRadioRemote"];
  }

  if (*(&self->_has + 5))
  {
    v39 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEMusicTrainingDependentSignals *)self vq21Score];
    v40 = [v39 numberWithDouble:?];
    [v3 setObject:v40 forKeyedSubscript:@"vq21Score"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v41 = v3;

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v144 = 2654435761 * self->_isClientForegroundActiveBundle;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v144 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  compoundActiveBundleScore = self->_compoundActiveBundleScore;
  if (compoundActiveBundleScore < 0.0)
  {
    compoundActiveBundleScore = -compoundActiveBundleScore;
  }

  *v2.i64 = floor(compoundActiveBundleScore + 0.5);
  v6 = (compoundActiveBundleScore - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
  v8 = 2654435761u * *v2.i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  if ((has & 4) != 0)
  {
    compoundMediaTypeBundleScore = self->_compoundMediaTypeBundleScore;
    if (compoundMediaTypeBundleScore < 0.0)
    {
      compoundMediaTypeBundleScore = -compoundMediaTypeBundleScore;
    }

    *v2.i64 = floor(compoundMediaTypeBundleScore + 0.5);
    v11 = (compoundMediaTypeBundleScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((has & 8) != 0)
  {
    entitySearchBundleRecencyS = self->_entitySearchBundleRecencyS;
    if (entitySearchBundleRecencyS < 0.0)
    {
      entitySearchBundleRecencyS = -entitySearchBundleRecencyS;
    }

    *v2.i64 = floor(entitySearchBundleRecencyS + 0.5);
    v15 = (entitySearchBundleRecencyS - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v16), v3, v2);
    v13 = 2654435761u * *v2.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((has & 0x10) != 0)
  {
    entitySearchBundleScore = self->_entitySearchBundleScore;
    if (entitySearchBundleScore < 0.0)
    {
      entitySearchBundleScore = -entitySearchBundleScore;
    }

    *v2.i64 = floor(entitySearchBundleScore + 0.5);
    v19 = (entitySearchBundleScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
    v17 = 2654435761u * *v2.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((has & 0x20) != 0)
  {
    v141 = 2654435761 * self->_isForegroundBundle;
    if ((has & 0x40) != 0)
    {
LABEL_37:
      v140 = 2654435761 * self->_isNowPlayingBundle;
      if ((has & 0x80) != 0)
      {
        goto LABEL_38;
      }

LABEL_45:
      v139 = 0;
      if ((has & 0x100) != 0)
      {
        goto LABEL_39;
      }

LABEL_46:
      v24 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v141 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_37;
    }
  }

  v140 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_45;
  }

LABEL_38:
  v139 = 2654435761 * self->_nowPlayingBundleCount;
  if ((has & 0x100) == 0)
  {
    goto LABEL_46;
  }

LABEL_39:
  nowPlayingBundleRecencyS = self->_nowPlayingBundleRecencyS;
  if (nowPlayingBundleRecencyS < 0.0)
  {
    nowPlayingBundleRecencyS = -nowPlayingBundleRecencyS;
  }

  *v2.i64 = floor(nowPlayingBundleRecencyS + 0.5);
  v22 = (nowPlayingBundleRecencyS - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v23), v3, v2);
  v24 = 2654435761u * *v2.i64;
  if (v22 >= 0.0)
  {
    if (v22 > 0.0)
    {
      v24 += v22;
    }
  }

  else
  {
    v24 -= fabs(v22);
  }

LABEL_47:
  if ((has & 0x200) != 0)
  {
    nowPlayingBundleScore = self->_nowPlayingBundleScore;
    if (nowPlayingBundleScore < 0.0)
    {
      nowPlayingBundleScore = -nowPlayingBundleScore;
    }

    *v2.i64 = floor(nowPlayingBundleScore + 0.5);
    v27 = (nowPlayingBundleScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v28), v3, v2);
    v25 = 2654435761u * *v2.i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((has & 0x400) != 0)
  {
    v138 = 2654435761 * self->_isNowPlayingLastBundle;
    if ((has & 0x800) != 0)
    {
LABEL_59:
      v137 = 2654435761 * self->_nowPlayingUsage1Day;
      if ((has & 0x1000) != 0)
      {
        goto LABEL_60;
      }

      goto LABEL_87;
    }
  }

  else
  {
    v138 = 0;
    if ((has & 0x800) != 0)
    {
      goto LABEL_59;
    }
  }

  v137 = 0;
  if ((has & 0x1000) != 0)
  {
LABEL_60:
    v136 = 2654435761 * self->_nowPlayingUsage7Days;
    if ((has & 0x2000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_88;
  }

LABEL_87:
  v136 = 0;
  if ((has & 0x2000) != 0)
  {
LABEL_61:
    v135 = 2654435761 * self->_nowPlayingUsage14Days;
    if ((has & 0x4000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_89;
  }

LABEL_88:
  v135 = 0;
  if ((has & 0x4000) != 0)
  {
LABEL_62:
    v134 = 2654435761 * self->_isRawLastNowPlayingCoreDuet;
    if ((has & 0x8000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_90;
  }

LABEL_89:
  v134 = 0;
  if ((has & 0x8000) != 0)
  {
LABEL_63:
    v133 = 2654435761 * self->_isRawMediaCategoryAudiobookSignal;
    if ((has & 0x10000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_91;
  }

LABEL_90:
  v133 = 0;
  if ((has & 0x10000) != 0)
  {
LABEL_64:
    v132 = 2654435761 * self->_isRawMediaCategoryMusicSignal;
    if ((has & 0x20000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_92;
  }

LABEL_91:
  v132 = 0;
  if ((has & 0x20000) != 0)
  {
LABEL_65:
    v131 = 2654435761 * self->_isRawMediaCategoryPodcastSignal;
    if ((has & 0x40000) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_93;
  }

LABEL_92:
  v131 = 0;
  if ((has & 0x40000) != 0)
  {
LABEL_66:
    v130 = 2654435761 * self->_isRawMediaCategoryRadioSignal;
    if ((has & 0x80000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_94;
  }

LABEL_93:
  v130 = 0;
  if ((has & 0x80000) != 0)
  {
LABEL_67:
    v129 = 2654435761 * self->_isRawMediaCategoryVideoSignal;
    if ((has & 0x100000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_95;
  }

LABEL_94:
  v129 = 0;
  if ((has & 0x100000) != 0)
  {
LABEL_68:
    v128 = 2654435761 * self->_rawMediaTypeUsageSignalBook;
    if ((has & 0x200000) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_96;
  }

LABEL_95:
  v128 = 0;
  if ((has & 0x200000) != 0)
  {
LABEL_69:
    v127 = 2654435761 * self->_rawMediaTypeUsageSignalMusic;
    if ((has & 0x400000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_97;
  }

LABEL_96:
  v127 = 0;
  if ((has & 0x400000) != 0)
  {
LABEL_70:
    v126 = 2654435761 * self->_rawMediaTypeUsageSignalPodcast;
    if ((has & 0x800000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_98;
  }

LABEL_97:
  v126 = 0;
  if ((has & 0x800000) != 0)
  {
LABEL_71:
    v125 = 2654435761 * self->_rawMediaTypeUsageSignalVideo;
    if ((has & 0x1000000) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_99;
  }

LABEL_98:
  v125 = 0;
  if ((has & 0x1000000) != 0)
  {
LABEL_72:
    v124 = 2654435761 * self->_rawNowPlayingCountCoreDuet10Min;
    if ((has & 0x2000000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_100;
  }

LABEL_99:
  v124 = 0;
  if ((has & 0x2000000) != 0)
  {
LABEL_73:
    v123 = 2654435761 * self->_rawNowPlayingCountCoreDuet1Day;
    if ((has & 0x4000000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_101;
  }

LABEL_100:
  v123 = 0;
  if ((has & 0x4000000) != 0)
  {
LABEL_74:
    v122 = 2654435761 * self->_rawNowPlayingCountCoreDuet1Hr;
    if ((has & 0x8000000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_102;
  }

LABEL_101:
  v122 = 0;
  if ((has & 0x8000000) != 0)
  {
LABEL_75:
    v121 = 2654435761 * self->_rawNowPlayingCountCoreDuet28Day;
    if ((has & 0x10000000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_103;
  }

LABEL_102:
  v121 = 0;
  if ((has & 0x10000000) != 0)
  {
LABEL_76:
    v120 = 2654435761 * self->_rawNowPlayingCountCoreDuet2Min;
    if ((has & 0x20000000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_104;
  }

LABEL_103:
  v120 = 0;
  if ((has & 0x20000000) != 0)
  {
LABEL_77:
    v119 = 2654435761 * self->_rawNowPlayingCountCoreDuet6Hr;
    if ((has & 0x40000000) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_105;
  }

LABEL_104:
  v119 = 0;
  if ((has & 0x40000000) != 0)
  {
LABEL_78:
    v118 = 2654435761 * self->_rawNowPlayingCountCoreDuet7Day;
    if ((has & 0x80000000) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_106;
  }

LABEL_105:
  v118 = 0;
  if ((has & 0x80000000) != 0)
  {
LABEL_79:
    v117 = 2654435761 * self->_rawNowPlayingRecencyCD;
    if ((has & 0x100000000) != 0)
    {
      goto LABEL_80;
    }

LABEL_107:
    v116 = 0;
    if ((has & 0x200000000) != 0)
    {
      goto LABEL_81;
    }

LABEL_108:
    v32 = 0;
    goto LABEL_109;
  }

LABEL_106:
  v117 = 0;
  if ((has & 0x100000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_80:
  v116 = 2654435761 * self->_rawEntitySearchRecency;
  if ((has & 0x200000000) == 0)
  {
    goto LABEL_108;
  }

LABEL_81:
  usageScoreBooks = self->_usageScoreBooks;
  if (usageScoreBooks < 0.0)
  {
    usageScoreBooks = -usageScoreBooks;
  }

  *v2.i64 = floor(usageScoreBooks + 0.5);
  v30 = (usageScoreBooks - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v31.f64[0] = NAN;
  v31.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v31), v3, v2);
  v32 = 2654435761u * *v2.i64;
  if (v30 >= 0.0)
  {
    if (v30 > 0.0)
    {
      v32 += v30;
    }
  }

  else
  {
    v32 -= fabs(v30);
  }

LABEL_109:
  if ((has & 0x400000000) != 0)
  {
    usageScoreMusic = self->_usageScoreMusic;
    if (usageScoreMusic < 0.0)
    {
      usageScoreMusic = -usageScoreMusic;
    }

    *v2.i64 = floor(usageScoreMusic + 0.5);
    v35 = (usageScoreMusic - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v36), v3, v2);
    v33 = 2654435761u * *v2.i64;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v33 += v35;
      }
    }

    else
    {
      v33 -= fabs(v35);
    }
  }

  else
  {
    v33 = 0;
  }

  if ((has & 0x800000000) != 0)
  {
    usageScorePodcasts = self->_usageScorePodcasts;
    if (usageScorePodcasts < 0.0)
    {
      usageScorePodcasts = -usageScorePodcasts;
    }

    *v2.i64 = floor(usageScorePodcasts + 0.5);
    v39 = (usageScorePodcasts - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v40), v3, v2);
    v37 = 2654435761u * *v2.i64;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabs(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  if ((has & 0x1000000000) != 0)
  {
    v114 = 2654435761 * self->_isAppFirstParty;
    if ((has & 0x2000000000) != 0)
    {
LABEL_129:
      v113 = 2654435761 * self->_isRequestedApp;
      if ((has & 0x4000000000) != 0)
      {
        goto LABEL_130;
      }

LABEL_134:
      v112 = 0;
      if ((has & 0x8000000000) != 0)
      {
        goto LABEL_131;
      }

      goto LABEL_135;
    }
  }

  else
  {
    v114 = 0;
    if ((has & 0x2000000000) != 0)
    {
      goto LABEL_129;
    }
  }

  v113 = 0;
  if ((has & 0x4000000000) == 0)
  {
    goto LABEL_134;
  }

LABEL_130:
  v112 = 2654435761 * self->_isNowPlayingBundlePSE1;
  if ((has & 0x8000000000) != 0)
  {
LABEL_131:
    v111 = 2654435761 * self->_isNowPlayingBundlePSE2;
    goto LABEL_136;
  }

LABEL_135:
  v111 = 0;
LABEL_136:
  v143 = v8;
  if ((has & 0x10000000000) != 0)
  {
    vq21Score = self->_vq21Score;
    if (vq21Score < 0.0)
    {
      vq21Score = -vq21Score;
    }

    *v2.i64 = floor(vq21Score + 0.5);
    v43 = (vq21Score - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v44.f64[0] = NAN;
    v44.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v44), v3, v2);
    v41 = 2654435761u * *v2.i64;
    if (v43 >= 0.0)
    {
      if (v43 > 0.0)
      {
        v41 += v43;
      }
    }

    else
    {
      v41 -= fabs(v43);
    }
  }

  else
  {
    v41 = 0;
  }

  if ((has & 0x20000000000) != 0)
  {
    v109 = 2654435761 * self->_isSupportedFlag;
    if ((has & 0x40000000000) != 0)
    {
LABEL_146:
      v108 = 2654435761 * self->_isUnicornFlag;
      if ((has & 0x80000000000) != 0)
      {
        goto LABEL_147;
      }

      goto LABEL_156;
    }
  }

  else
  {
    v109 = 0;
    if ((has & 0x40000000000) != 0)
    {
      goto LABEL_146;
    }
  }

  v108 = 0;
  if ((has & 0x80000000000) != 0)
  {
LABEL_147:
    v107 = 2654435761 * self->_isSupportedUnicornMatchFlag;
    if ((has & 0x100000000000) != 0)
    {
      goto LABEL_148;
    }

    goto LABEL_157;
  }

LABEL_156:
  v107 = 0;
  if ((has & 0x100000000000) != 0)
  {
LABEL_148:
    v106 = 2654435761 * self->_isDisambiguationSelectedApp;
    if ((has & 0x200000000000) != 0)
    {
      goto LABEL_149;
    }

LABEL_158:
    v105 = 0;
    if ((has & 0x400000000000) != 0)
    {
      goto LABEL_150;
    }

LABEL_159:
    v48 = 0;
    goto LABEL_160;
  }

LABEL_157:
  v106 = 0;
  if ((has & 0x200000000000) == 0)
  {
    goto LABEL_158;
  }

LABEL_149:
  v105 = 2654435761 * self->_isModelPredictedApp;
  if ((has & 0x400000000000) == 0)
  {
    goto LABEL_159;
  }

LABEL_150:
  usageScoreRadio = self->_usageScoreRadio;
  if (usageScoreRadio < 0.0)
  {
    usageScoreRadio = -usageScoreRadio;
  }

  *v2.i64 = floor(usageScoreRadio + 0.5);
  v46 = (usageScoreRadio - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v47.f64[0] = NAN;
  v47.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v47), v3, v2);
  v48 = 2654435761u * *v2.i64;
  if (v46 >= 0.0)
  {
    if (v46 > 0.0)
    {
      v48 += v46;
    }
  }

  else
  {
    v48 -= fabs(v46);
  }

LABEL_160:
  v142 = v9;
  if ((has & 0x800000000000) != 0)
  {
    usageScoreMusicWithoutRadio = self->_usageScoreMusicWithoutRadio;
    if (usageScoreMusicWithoutRadio < 0.0)
    {
      usageScoreMusicWithoutRadio = -usageScoreMusicWithoutRadio;
    }

    *v2.i64 = floor(usageScoreMusicWithoutRadio + 0.5);
    v51 = (usageScoreMusicWithoutRadio - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v52.f64[0] = NAN;
    v52.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v52), v3, v2);
    v49 = 2654435761u * *v2.i64;
    if (v51 >= 0.0)
    {
      if (v51 > 0.0)
      {
        v49 += v51;
      }
    }

    else
    {
      v49 -= fabs(v51);
    }
  }

  else
  {
    v49 = 0;
  }

  if ((has & 0x1000000000000) != 0)
  {
    v104 = 2654435761 * self->_rawMediaTypeUsageSignalRadio;
    if ((has & 0x2000000000000) != 0)
    {
      goto LABEL_172;
    }
  }

  else
  {
    v104 = 0;
    if ((has & 0x2000000000000) != 0)
    {
LABEL_172:
      v103 = 2654435761 * self->_rawMediaTypeUsageSignalMusicWithoutRadio;
      goto LABEL_175;
    }
  }

  v103 = 0;
LABEL_175:
  v115 = v25;
  v110 = v41;
  if ((has & 0x4000000000000) != 0)
  {
    v102 = 2654435761 * self->_subscriptionStatus;
  }

  else
  {
    v102 = 0;
  }

  v53 = v17;
  if ((has & 0x8000000000000) == 0)
  {
    v101 = 0;
    if ((has & 0x10000000000000) != 0)
    {
      goto LABEL_180;
    }

LABEL_186:
    v100 = 0;
    if ((has & 0x20000000000000) != 0)
    {
      goto LABEL_181;
    }

LABEL_187:
    v57 = 0;
    goto LABEL_188;
  }

  v101 = 2654435761 * self->_isRawNowPlayingBundle;
  if ((has & 0x10000000000000) == 0)
  {
    goto LABEL_186;
  }

LABEL_180:
  v100 = 2654435761 * self->_rawNowPlayingTotal;
  if ((has & 0x20000000000000) == 0)
  {
    goto LABEL_187;
  }

LABEL_181:
  rawNowPlayingBundleScore = self->_rawNowPlayingBundleScore;
  if (rawNowPlayingBundleScore < 0.0)
  {
    rawNowPlayingBundleScore = -rawNowPlayingBundleScore;
  }

  *v2.i64 = floor(rawNowPlayingBundleScore + 0.5);
  v55 = (rawNowPlayingBundleScore - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v56.f64[0] = NAN;
  v56.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v56), v3, v2);
  v57 = 2654435761u * *v2.i64;
  if (v55 >= 0.0)
  {
    if (v55 > 0.0)
    {
      v57 += v55;
    }
  }

  else
  {
    v57 -= fabs(v55);
  }

LABEL_188:
  if ((has & 0x40000000000000) != 0)
  {
    isRawLastNowPlaying = self->_isRawLastNowPlaying;
    if (isRawLastNowPlaying < 0.0)
    {
      isRawLastNowPlaying = -isRawLastNowPlaying;
    }

    *v2.i64 = floor(isRawLastNowPlaying + 0.5);
    v60 = (isRawLastNowPlaying - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v61.f64[0] = NAN;
    v61.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v61), v3, v2);
    v58 = 2654435761u * *v2.i64;
    if (v60 >= 0.0)
    {
      if (v60 > 0.0)
      {
        v58 += v60;
      }
    }

    else
    {
      v58 -= fabs(v60);
    }
  }

  else
  {
    v58 = 0;
  }

  if ((has & 0x80000000000000) != 0)
  {
    v99 = 2654435761 * self->_rawNowPlaying2Minutes;
    if ((has & 0x100000000000000) != 0)
    {
LABEL_200:
      v62 = 2654435761 * self->_rawNowPlaying10Minutes;
      if ((has & 0x200000000000000) != 0)
      {
        goto LABEL_201;
      }

      goto LABEL_210;
    }
  }

  else
  {
    v99 = 0;
    if ((has & 0x100000000000000) != 0)
    {
      goto LABEL_200;
    }
  }

  v62 = 0;
  if ((has & 0x200000000000000) != 0)
  {
LABEL_201:
    v63 = 2654435761 * self->_rawNowPlaying1Hour;
    if ((has & 0x400000000000000) != 0)
    {
      goto LABEL_202;
    }

    goto LABEL_211;
  }

LABEL_210:
  v63 = 0;
  if ((has & 0x400000000000000) != 0)
  {
LABEL_202:
    v64 = 2654435761 * self->_rawNowPlaying6Hours;
    if ((has & 0x800000000000000) != 0)
    {
      goto LABEL_203;
    }

    goto LABEL_212;
  }

LABEL_211:
  v64 = 0;
  if ((has & 0x800000000000000) != 0)
  {
LABEL_203:
    v65 = 2654435761 * self->_rawNowPlaying1Day;
    if ((has & 0x1000000000000000) != 0)
    {
      goto LABEL_204;
    }

    goto LABEL_213;
  }

LABEL_212:
  v65 = 0;
  if ((has & 0x1000000000000000) != 0)
  {
LABEL_204:
    v66 = 2654435761 * self->_rawNowPlaying7Days;
    if ((has & 0x2000000000000000) != 0)
    {
      goto LABEL_205;
    }

    goto LABEL_214;
  }

LABEL_213:
  v66 = 0;
  if ((has & 0x2000000000000000) != 0)
  {
LABEL_205:
    v67 = 2654435761 * self->_rawNowPlaying28Days;
    if ((has & 0x4000000000000000) != 0)
    {
      goto LABEL_206;
    }

LABEL_215:
    v68 = 0;
    if (has < 0)
    {
      goto LABEL_207;
    }

    goto LABEL_216;
  }

LABEL_214:
  v67 = 0;
  if ((has & 0x4000000000000000) == 0)
  {
    goto LABEL_215;
  }

LABEL_206:
  v68 = 2654435761 * self->_rawLastNowPlayingRecency;
  if (has < 0)
  {
LABEL_207:
    v69 = 2654435761 * self->_commonForegroundBundleApp;
    goto LABEL_217;
  }

LABEL_216:
  v69 = 0;
LABEL_217:
  v70 = *(&self->_has + 4);
  if (v70)
  {
    v71 = 2654435761 * self->_isRawLastNowPlayingBoolean;
    if ((v70 & 2) != 0)
    {
LABEL_219:
      v72 = 2654435761 * self->_isCommonForegroundApp;
      if ((v70 & 4) != 0)
      {
        goto LABEL_220;
      }

LABEL_227:
      v73 = 0;
      if ((v70 & 8) != 0)
      {
        goto LABEL_221;
      }

LABEL_228:
      v77 = 0;
      goto LABEL_229;
    }
  }

  else
  {
    v71 = 0;
    if ((v70 & 2) != 0)
    {
      goto LABEL_219;
    }
  }

  v72 = 0;
  if ((v70 & 4) == 0)
  {
    goto LABEL_227;
  }

LABEL_220:
  v73 = 2654435761 * self->_isBoltEnabled;
  if ((v70 & 8) == 0)
  {
    goto LABEL_228;
  }

LABEL_221:
  usageScoreMusicWithoutRadioRemote = self->_usageScoreMusicWithoutRadioRemote;
  if (usageScoreMusicWithoutRadioRemote < 0.0)
  {
    usageScoreMusicWithoutRadioRemote = -usageScoreMusicWithoutRadioRemote;
  }

  *v2.i64 = floor(usageScoreMusicWithoutRadioRemote + 0.5);
  v75 = (usageScoreMusicWithoutRadioRemote - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v76.f64[0] = NAN;
  v76.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v76), v3, v2);
  v77 = 2654435761u * *v2.i64;
  if (v75 >= 0.0)
  {
    if (v75 > 0.0)
    {
      v77 += v75;
    }
  }

  else
  {
    v77 -= fabs(v75);
  }

LABEL_229:
  if ((v70 & 0x10) != 0)
  {
    usageScoreBooksRemote = self->_usageScoreBooksRemote;
    if (usageScoreBooksRemote < 0.0)
    {
      usageScoreBooksRemote = -usageScoreBooksRemote;
    }

    *v2.i64 = floor(usageScoreBooksRemote + 0.5);
    v80 = (usageScoreBooksRemote - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v81.f64[0] = NAN;
    v81.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v81), v3, v2);
    v78 = 2654435761u * *v2.i64;
    if (v80 >= 0.0)
    {
      if (v80 > 0.0)
      {
        v78 += v80;
      }
    }

    else
    {
      v78 -= fabs(v80);
    }
  }

  else
  {
    v78 = 0;
  }

  if ((v70 & 0x20) != 0)
  {
    usageScoreRadioRemote = self->_usageScoreRadioRemote;
    if (usageScoreRadioRemote < 0.0)
    {
      usageScoreRadioRemote = -usageScoreRadioRemote;
    }

    *v2.i64 = floor(usageScoreRadioRemote + 0.5);
    v84 = (usageScoreRadioRemote - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v85.f64[0] = NAN;
    v85.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v85), v3, v2);
    v82 = 2654435761u * *v2.i64;
    if (v84 >= 0.0)
    {
      if (v84 > 0.0)
      {
        v82 += v84;
      }
    }

    else
    {
      v82 -= fabs(v84);
    }
  }

  else
  {
    v82 = 0;
  }

  if ((v70 & 0x40) != 0)
  {
    usageScorePodcastsRemote = self->_usageScorePodcastsRemote;
    if (usageScorePodcastsRemote < 0.0)
    {
      usageScorePodcastsRemote = -usageScorePodcastsRemote;
    }

    *v2.i64 = floor(usageScorePodcastsRemote + 0.5);
    v88 = (usageScorePodcastsRemote - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v89.f64[0] = NAN;
    v89.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v89), v3, v2);
    v86 = 2654435761u * *v2.i64;
    if (v88 >= 0.0)
    {
      if (v88 > 0.0)
      {
        v86 += v88;
      }
    }

    else
    {
      v86 -= fabs(v88);
    }
  }

  else
  {
    v86 = 0;
  }

  if ((v70 & 0x80) != 0)
  {
    entitySearchBundleScoreRemote = self->_entitySearchBundleScoreRemote;
    if (entitySearchBundleScoreRemote < 0.0)
    {
      entitySearchBundleScoreRemote = -entitySearchBundleScoreRemote;
    }

    *v2.i64 = floor(entitySearchBundleScoreRemote + 0.5);
    v92 = (entitySearchBundleScoreRemote - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v93.f64[0] = NAN;
    v93.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v93), v3, v2);
    v90 = 2654435761u * *v2.i64;
    if (v92 >= 0.0)
    {
      if (v92 > 0.0)
      {
        v90 += v92;
      }
    }

    else
    {
      v90 -= fabs(v92);
    }
  }

  else
  {
    v90 = 0;
  }

  if ((*(&self->_has + 4) & 0x100) != 0)
  {
    usageScoreMusicRemote = self->_usageScoreMusicRemote;
    if (usageScoreMusicRemote < 0.0)
    {
      usageScoreMusicRemote = -usageScoreMusicRemote;
    }

    *v2.i64 = floor(usageScoreMusicRemote + 0.5);
    v96 = (usageScoreMusicRemote - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v97.f64[0] = NAN;
    v97.f64[1] = NAN;
    v94 = 2654435761u * *vbslq_s8(vnegq_f64(v97), v3, v2).i64;
    if (v96 >= 0.0)
    {
      if (v96 > 0.0)
      {
        v94 += v96;
      }
    }

    else
    {
      v94 -= fabs(v96);
    }
  }

  else
  {
    v94 = 0;
  }

  return v143 ^ v144 ^ v142 ^ v13 ^ v53 ^ v141 ^ v140 ^ v139 ^ v24 ^ v115 ^ v138 ^ v137 ^ v136 ^ v135 ^ v134 ^ v133 ^ v132 ^ v131 ^ v130 ^ v129 ^ v128 ^ v127 ^ v126 ^ v125 ^ v124 ^ v123 ^ v122 ^ v121 ^ v120 ^ v119 ^ v118 ^ v117 ^ v116 ^ v32 ^ v33 ^ v37 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v48 ^ v49 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v57 ^ v58 ^ v99 ^ v62 ^ v63 ^ v64 ^ v65 ^ v66 ^ v67 ^ v68 ^ v69 ^ v71 ^ v72 ^ v73 ^ v77 ^ v78 ^ v82 ^ v86 ^ v90 ^ v94;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_292;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = v4 + 43;
  v8 = v4[43];
  if ((has & 1) != (v4[43] & 1))
  {
    goto LABEL_292;
  }

  if (has)
  {
    isClientForegroundActiveBundle = self->_isClientForegroundActiveBundle;
    if (isClientForegroundActiveBundle != [v4 isClientForegroundActiveBundle])
    {
      goto LABEL_292;
    }

    has = *p_has;
    v8 = *v7;
  }

  v10 = (has >> 1) & 1;
  if (v10 == ((v8 >> 1) & 1))
  {
    if (v10)
    {
      compoundActiveBundleScore = self->_compoundActiveBundleScore;
      [v4 compoundActiveBundleScore];
      if (compoundActiveBundleScore != v12)
      {
        goto LABEL_292;
      }

      has = *p_has;
      v8 = *v7;
    }

    v13 = (has >> 2) & 1;
    if (v13 == ((v8 >> 2) & 1))
    {
      if (v13)
      {
        compoundMediaTypeBundleScore = self->_compoundMediaTypeBundleScore;
        [v4 compoundMediaTypeBundleScore];
        if (compoundMediaTypeBundleScore != v15)
        {
          goto LABEL_292;
        }

        has = *p_has;
        v8 = *v7;
      }

      v16 = (has >> 3) & 1;
      if (v16 == ((v8 >> 3) & 1))
      {
        if (v16)
        {
          entitySearchBundleRecencyS = self->_entitySearchBundleRecencyS;
          [v4 entitySearchBundleRecencyS];
          if (entitySearchBundleRecencyS != v18)
          {
            goto LABEL_292;
          }

          has = *p_has;
          v8 = *v7;
        }

        v19 = (has >> 4) & 1;
        if (v19 == ((v8 >> 4) & 1))
        {
          if (v19)
          {
            entitySearchBundleScore = self->_entitySearchBundleScore;
            [v4 entitySearchBundleScore];
            if (entitySearchBundleScore != v21)
            {
              goto LABEL_292;
            }

            has = *p_has;
            v8 = *v7;
          }

          v22 = (has >> 5) & 1;
          if (v22 == ((v8 >> 5) & 1))
          {
            if (v22)
            {
              isForegroundBundle = self->_isForegroundBundle;
              if (isForegroundBundle != [v4 isForegroundBundle])
              {
                goto LABEL_292;
              }

              has = *p_has;
              v8 = *v7;
            }

            v24 = (has >> 6) & 1;
            if (v24 == ((v8 >> 6) & 1))
            {
              if (v24)
              {
                isNowPlayingBundle = self->_isNowPlayingBundle;
                if (isNowPlayingBundle != [v4 isNowPlayingBundle])
                {
                  goto LABEL_292;
                }

                has = *p_has;
                v8 = *v7;
              }

              v26 = (has >> 7) & 1;
              if (v26 == ((v8 >> 7) & 1))
              {
                if (v26)
                {
                  nowPlayingBundleCount = self->_nowPlayingBundleCount;
                  if (nowPlayingBundleCount != [v4 nowPlayingBundleCount])
                  {
                    goto LABEL_292;
                  }

                  has = *p_has;
                  v8 = *v7;
                }

                v28 = (has >> 8) & 1;
                if (v28 == ((v8 >> 8) & 1))
                {
                  if (v28)
                  {
                    nowPlayingBundleRecencyS = self->_nowPlayingBundleRecencyS;
                    [v4 nowPlayingBundleRecencyS];
                    if (nowPlayingBundleRecencyS != v30)
                    {
                      goto LABEL_292;
                    }

                    has = *p_has;
                    v8 = *v7;
                  }

                  v31 = (has >> 9) & 1;
                  if (v31 == ((v8 >> 9) & 1))
                  {
                    if (v31)
                    {
                      nowPlayingBundleScore = self->_nowPlayingBundleScore;
                      [v4 nowPlayingBundleScore];
                      if (nowPlayingBundleScore != v33)
                      {
                        goto LABEL_292;
                      }

                      has = *p_has;
                      v8 = *v7;
                    }

                    v34 = (has >> 10) & 1;
                    if (v34 == ((v8 >> 10) & 1))
                    {
                      if (v34)
                      {
                        isNowPlayingLastBundle = self->_isNowPlayingLastBundle;
                        if (isNowPlayingLastBundle != [v4 isNowPlayingLastBundle])
                        {
                          goto LABEL_292;
                        }

                        has = *p_has;
                        v8 = *v7;
                      }

                      v36 = (has >> 11) & 1;
                      if (v36 == ((v8 >> 11) & 1))
                      {
                        if (v36)
                        {
                          nowPlayingUsage1Day = self->_nowPlayingUsage1Day;
                          if (nowPlayingUsage1Day != [v4 nowPlayingUsage1Day])
                          {
                            goto LABEL_292;
                          }

                          has = *p_has;
                          v8 = *v7;
                        }

                        v38 = (has >> 12) & 1;
                        if (v38 == ((v8 >> 12) & 1))
                        {
                          if (v38)
                          {
                            nowPlayingUsage7Days = self->_nowPlayingUsage7Days;
                            if (nowPlayingUsage7Days != [v4 nowPlayingUsage7Days])
                            {
                              goto LABEL_292;
                            }

                            has = *p_has;
                            v8 = *v7;
                          }

                          v40 = (has >> 13) & 1;
                          if (v40 == ((v8 >> 13) & 1))
                          {
                            if (v40)
                            {
                              nowPlayingUsage14Days = self->_nowPlayingUsage14Days;
                              if (nowPlayingUsage14Days != [v4 nowPlayingUsage14Days])
                              {
                                goto LABEL_292;
                              }

                              has = *p_has;
                              v8 = *v7;
                            }

                            v42 = (has >> 14) & 1;
                            if (v42 == ((v8 >> 14) & 1))
                            {
                              if (v42)
                              {
                                isRawLastNowPlayingCoreDuet = self->_isRawLastNowPlayingCoreDuet;
                                if (isRawLastNowPlayingCoreDuet != [v4 isRawLastNowPlayingCoreDuet])
                                {
                                  goto LABEL_292;
                                }

                                has = *p_has;
                                v8 = *v7;
                              }

                              v44 = (has >> 15) & 1;
                              if (v44 == ((v8 >> 15) & 1))
                              {
                                if (v44)
                                {
                                  isRawMediaCategoryAudiobookSignal = self->_isRawMediaCategoryAudiobookSignal;
                                  if (isRawMediaCategoryAudiobookSignal != [v4 isRawMediaCategoryAudiobookSignal])
                                  {
                                    goto LABEL_292;
                                  }

                                  has = *p_has;
                                  v8 = *v7;
                                }

                                v46 = WORD1(has) & 1;
                                if (v46 == (WORD1(v8) & 1))
                                {
                                  if (v46)
                                  {
                                    isRawMediaCategoryMusicSignal = self->_isRawMediaCategoryMusicSignal;
                                    if (isRawMediaCategoryMusicSignal != [v4 isRawMediaCategoryMusicSignal])
                                    {
                                      goto LABEL_292;
                                    }

                                    has = *p_has;
                                    v8 = *v7;
                                  }

                                  v48 = (has >> 17) & 1;
                                  if (v48 == ((v8 >> 17) & 1))
                                  {
                                    if (v48)
                                    {
                                      isRawMediaCategoryPodcastSignal = self->_isRawMediaCategoryPodcastSignal;
                                      if (isRawMediaCategoryPodcastSignal != [v4 isRawMediaCategoryPodcastSignal])
                                      {
                                        goto LABEL_292;
                                      }

                                      has = *p_has;
                                      v8 = *v7;
                                    }

                                    v50 = (has >> 18) & 1;
                                    if (v50 == ((v8 >> 18) & 1))
                                    {
                                      if (v50)
                                      {
                                        isRawMediaCategoryRadioSignal = self->_isRawMediaCategoryRadioSignal;
                                        if (isRawMediaCategoryRadioSignal != [v4 isRawMediaCategoryRadioSignal])
                                        {
                                          goto LABEL_292;
                                        }

                                        has = *p_has;
                                        v8 = *v7;
                                      }

                                      v52 = (has >> 19) & 1;
                                      if (v52 == ((v8 >> 19) & 1))
                                      {
                                        if (v52)
                                        {
                                          isRawMediaCategoryVideoSignal = self->_isRawMediaCategoryVideoSignal;
                                          if (isRawMediaCategoryVideoSignal != [v4 isRawMediaCategoryVideoSignal])
                                          {
                                            goto LABEL_292;
                                          }

                                          has = *p_has;
                                          v8 = *v7;
                                        }

                                        v54 = (has >> 20) & 1;
                                        if (v54 == ((v8 >> 20) & 1))
                                        {
                                          if (v54)
                                          {
                                            rawMediaTypeUsageSignalBook = self->_rawMediaTypeUsageSignalBook;
                                            if (rawMediaTypeUsageSignalBook != [v4 rawMediaTypeUsageSignalBook])
                                            {
                                              goto LABEL_292;
                                            }

                                            has = *p_has;
                                            v8 = *v7;
                                          }

                                          v56 = (has >> 21) & 1;
                                          if (v56 == ((v8 >> 21) & 1))
                                          {
                                            if (v56)
                                            {
                                              rawMediaTypeUsageSignalMusic = self->_rawMediaTypeUsageSignalMusic;
                                              if (rawMediaTypeUsageSignalMusic != [v4 rawMediaTypeUsageSignalMusic])
                                              {
                                                goto LABEL_292;
                                              }

                                              has = *p_has;
                                              v8 = *v7;
                                            }

                                            v58 = (has >> 22) & 1;
                                            if (v58 == ((v8 >> 22) & 1))
                                            {
                                              if (v58)
                                              {
                                                rawMediaTypeUsageSignalPodcast = self->_rawMediaTypeUsageSignalPodcast;
                                                if (rawMediaTypeUsageSignalPodcast != [v4 rawMediaTypeUsageSignalPodcast])
                                                {
                                                  goto LABEL_292;
                                                }

                                                has = *p_has;
                                                v8 = *v7;
                                              }

                                              v60 = (has >> 23) & 1;
                                              if (v60 == ((v8 >> 23) & 1))
                                              {
                                                if (v60)
                                                {
                                                  rawMediaTypeUsageSignalVideo = self->_rawMediaTypeUsageSignalVideo;
                                                  if (rawMediaTypeUsageSignalVideo != [v4 rawMediaTypeUsageSignalVideo])
                                                  {
                                                    goto LABEL_292;
                                                  }

                                                  has = *p_has;
                                                  v8 = *v7;
                                                }

                                                v62 = BYTE3(has) & 1;
                                                if (v62 == (BYTE3(v8) & 1))
                                                {
                                                  if (v62)
                                                  {
                                                    rawNowPlayingCountCoreDuet10Min = self->_rawNowPlayingCountCoreDuet10Min;
                                                    if (rawNowPlayingCountCoreDuet10Min != [v4 rawNowPlayingCountCoreDuet10Min])
                                                    {
                                                      goto LABEL_292;
                                                    }

                                                    has = *p_has;
                                                    v8 = *v7;
                                                  }

                                                  v64 = (has >> 25) & 1;
                                                  if (v64 == ((v8 >> 25) & 1))
                                                  {
                                                    if (v64)
                                                    {
                                                      rawNowPlayingCountCoreDuet1Day = self->_rawNowPlayingCountCoreDuet1Day;
                                                      if (rawNowPlayingCountCoreDuet1Day != [v4 rawNowPlayingCountCoreDuet1Day])
                                                      {
                                                        goto LABEL_292;
                                                      }

                                                      has = *p_has;
                                                      v8 = *v7;
                                                    }

                                                    v66 = (has >> 26) & 1;
                                                    if (v66 == ((v8 >> 26) & 1))
                                                    {
                                                      if (v66)
                                                      {
                                                        rawNowPlayingCountCoreDuet1Hr = self->_rawNowPlayingCountCoreDuet1Hr;
                                                        if (rawNowPlayingCountCoreDuet1Hr != [v4 rawNowPlayingCountCoreDuet1Hr])
                                                        {
                                                          goto LABEL_292;
                                                        }

                                                        has = *p_has;
                                                        v8 = *v7;
                                                      }

                                                      v68 = (has >> 27) & 1;
                                                      if (v68 == ((v8 >> 27) & 1))
                                                      {
                                                        if (v68)
                                                        {
                                                          rawNowPlayingCountCoreDuet28Day = self->_rawNowPlayingCountCoreDuet28Day;
                                                          if (rawNowPlayingCountCoreDuet28Day != [v4 rawNowPlayingCountCoreDuet28Day])
                                                          {
                                                            goto LABEL_292;
                                                          }

                                                          has = *p_has;
                                                          v8 = *v7;
                                                        }

                                                        v70 = (has >> 28) & 1;
                                                        if (v70 == ((v8 >> 28) & 1))
                                                        {
                                                          if (v70)
                                                          {
                                                            rawNowPlayingCountCoreDuet2Min = self->_rawNowPlayingCountCoreDuet2Min;
                                                            if (rawNowPlayingCountCoreDuet2Min != [v4 rawNowPlayingCountCoreDuet2Min])
                                                            {
                                                              goto LABEL_292;
                                                            }

                                                            has = *p_has;
                                                            v8 = *v7;
                                                          }

                                                          v72 = (has >> 29) & 1;
                                                          if (v72 == ((v8 >> 29) & 1))
                                                          {
                                                            if (v72)
                                                            {
                                                              rawNowPlayingCountCoreDuet6Hr = self->_rawNowPlayingCountCoreDuet6Hr;
                                                              if (rawNowPlayingCountCoreDuet6Hr != [v4 rawNowPlayingCountCoreDuet6Hr])
                                                              {
                                                                goto LABEL_292;
                                                              }

                                                              has = *p_has;
                                                              v8 = *v7;
                                                            }

                                                            v74 = (has >> 30) & 1;
                                                            if (v74 == ((v8 >> 30) & 1))
                                                            {
                                                              if (v74)
                                                              {
                                                                rawNowPlayingCountCoreDuet7Day = self->_rawNowPlayingCountCoreDuet7Day;
                                                                if (rawNowPlayingCountCoreDuet7Day != [v4 rawNowPlayingCountCoreDuet7Day])
                                                                {
                                                                  goto LABEL_292;
                                                                }

                                                                has = *p_has;
                                                                v8 = *v7;
                                                              }

                                                              if (((v8 ^ has) & 0x80000000) == 0)
                                                              {
                                                                if ((has & 0x80000000) != 0)
                                                                {
                                                                  rawNowPlayingRecencyCD = self->_rawNowPlayingRecencyCD;
                                                                  if (rawNowPlayingRecencyCD != [v4 rawNowPlayingRecencyCD])
                                                                  {
                                                                    goto LABEL_292;
                                                                  }

                                                                  has = *p_has;
                                                                  v8 = *v7;
                                                                }

                                                                v77 = HIDWORD(has) & 1;
                                                                if (v77 == (BYTE4(v8) & 1))
                                                                {
                                                                  if (v77)
                                                                  {
                                                                    rawEntitySearchRecency = self->_rawEntitySearchRecency;
                                                                    if (rawEntitySearchRecency != [v4 rawEntitySearchRecency])
                                                                    {
                                                                      goto LABEL_292;
                                                                    }

                                                                    has = *p_has;
                                                                    v8 = *v7;
                                                                  }

                                                                  v79 = (has >> 33) & 1;
                                                                  if (v79 == ((v8 >> 33) & 1))
                                                                  {
                                                                    if (v79)
                                                                    {
                                                                      usageScoreBooks = self->_usageScoreBooks;
                                                                      [v4 usageScoreBooks];
                                                                      if (usageScoreBooks != v81)
                                                                      {
                                                                        goto LABEL_292;
                                                                      }

                                                                      has = *p_has;
                                                                      v8 = *v7;
                                                                    }

                                                                    v82 = (has >> 34) & 1;
                                                                    if (v82 == ((v8 >> 34) & 1))
                                                                    {
                                                                      if (v82)
                                                                      {
                                                                        usageScoreMusic = self->_usageScoreMusic;
                                                                        [v4 usageScoreMusic];
                                                                        if (usageScoreMusic != v84)
                                                                        {
                                                                          goto LABEL_292;
                                                                        }

                                                                        has = *p_has;
                                                                        v8 = *v7;
                                                                      }

                                                                      v85 = (has >> 35) & 1;
                                                                      if (v85 == ((v8 >> 35) & 1))
                                                                      {
                                                                        if (v85)
                                                                        {
                                                                          usageScorePodcasts = self->_usageScorePodcasts;
                                                                          [v4 usageScorePodcasts];
                                                                          if (usageScorePodcasts != v87)
                                                                          {
                                                                            goto LABEL_292;
                                                                          }

                                                                          has = *p_has;
                                                                          v8 = *v7;
                                                                        }

                                                                        v88 = (has >> 36) & 1;
                                                                        if (v88 == ((v8 >> 36) & 1))
                                                                        {
                                                                          if (v88)
                                                                          {
                                                                            isAppFirstParty = self->_isAppFirstParty;
                                                                            if (isAppFirstParty != [v4 isAppFirstParty])
                                                                            {
                                                                              goto LABEL_292;
                                                                            }

                                                                            has = *p_has;
                                                                            v8 = *v7;
                                                                          }

                                                                          v90 = (has >> 37) & 1;
                                                                          if (v90 == ((v8 >> 37) & 1))
                                                                          {
                                                                            if (v90)
                                                                            {
                                                                              isRequestedApp = self->_isRequestedApp;
                                                                              if (isRequestedApp != [v4 isRequestedApp])
                                                                              {
                                                                                goto LABEL_292;
                                                                              }

                                                                              has = *p_has;
                                                                              v8 = *v7;
                                                                            }

                                                                            v92 = (has >> 38) & 1;
                                                                            if (v92 == ((v8 >> 38) & 1))
                                                                            {
                                                                              if (v92)
                                                                              {
                                                                                isNowPlayingBundlePSE1 = self->_isNowPlayingBundlePSE1;
                                                                                if (isNowPlayingBundlePSE1 != [v4 isNowPlayingBundlePSE1])
                                                                                {
                                                                                  goto LABEL_292;
                                                                                }

                                                                                has = *p_has;
                                                                                v8 = *v7;
                                                                              }

                                                                              v94 = (has >> 39) & 1;
                                                                              if (v94 == ((v8 >> 39) & 1))
                                                                              {
                                                                                if (v94)
                                                                                {
                                                                                  isNowPlayingBundlePSE2 = self->_isNowPlayingBundlePSE2;
                                                                                  if (isNowPlayingBundlePSE2 != [v4 isNowPlayingBundlePSE2])
                                                                                  {
                                                                                    goto LABEL_292;
                                                                                  }

                                                                                  has = *p_has;
                                                                                  v8 = *v7;
                                                                                }

                                                                                v96 = (has >> 40) & 1;
                                                                                if (v96 == ((v8 >> 40) & 1))
                                                                                {
                                                                                  if (v96)
                                                                                  {
                                                                                    vq21Score = self->_vq21Score;
                                                                                    [v4 vq21Score];
                                                                                    if (vq21Score != v98)
                                                                                    {
                                                                                      goto LABEL_292;
                                                                                    }

                                                                                    has = *p_has;
                                                                                    v8 = *v7;
                                                                                  }

                                                                                  v99 = (has >> 41) & 1;
                                                                                  if (v99 == ((v8 >> 41) & 1))
                                                                                  {
                                                                                    if (v99)
                                                                                    {
                                                                                      isSupportedFlag = self->_isSupportedFlag;
                                                                                      if (isSupportedFlag != [v4 isSupportedFlag])
                                                                                      {
                                                                                        goto LABEL_292;
                                                                                      }

                                                                                      has = *p_has;
                                                                                      v8 = *v7;
                                                                                    }

                                                                                    v101 = (has >> 42) & 1;
                                                                                    if (v101 == ((v8 >> 42) & 1))
                                                                                    {
                                                                                      if (v101)
                                                                                      {
                                                                                        isUnicornFlag = self->_isUnicornFlag;
                                                                                        if (isUnicornFlag != [v4 isUnicornFlag])
                                                                                        {
                                                                                          goto LABEL_292;
                                                                                        }

                                                                                        has = *p_has;
                                                                                        v8 = *v7;
                                                                                      }

                                                                                      v103 = (has >> 43) & 1;
                                                                                      if (v103 == ((v8 >> 43) & 1))
                                                                                      {
                                                                                        if (v103)
                                                                                        {
                                                                                          isSupportedUnicornMatchFlag = self->_isSupportedUnicornMatchFlag;
                                                                                          if (isSupportedUnicornMatchFlag != [v4 isSupportedUnicornMatchFlag])
                                                                                          {
                                                                                            goto LABEL_292;
                                                                                          }

                                                                                          has = *p_has;
                                                                                          v8 = *v7;
                                                                                        }

                                                                                        v105 = (has >> 44) & 1;
                                                                                        if (v105 == ((v8 >> 44) & 1))
                                                                                        {
                                                                                          if (v105)
                                                                                          {
                                                                                            isDisambiguationSelectedApp = self->_isDisambiguationSelectedApp;
                                                                                            if (isDisambiguationSelectedApp != [v4 isDisambiguationSelectedApp])
                                                                                            {
                                                                                              goto LABEL_292;
                                                                                            }

                                                                                            has = *p_has;
                                                                                            v8 = *v7;
                                                                                          }

                                                                                          v107 = (has >> 45) & 1;
                                                                                          if (v107 == ((v8 >> 45) & 1))
                                                                                          {
                                                                                            if (v107)
                                                                                            {
                                                                                              isModelPredictedApp = self->_isModelPredictedApp;
                                                                                              if (isModelPredictedApp != [v4 isModelPredictedApp])
                                                                                              {
                                                                                                goto LABEL_292;
                                                                                              }

                                                                                              has = *p_has;
                                                                                              v8 = *v7;
                                                                                            }

                                                                                            v109 = (has >> 46) & 1;
                                                                                            if (v109 == ((v8 >> 46) & 1))
                                                                                            {
                                                                                              if (v109)
                                                                                              {
                                                                                                usageScoreRadio = self->_usageScoreRadio;
                                                                                                [v4 usageScoreRadio];
                                                                                                if (usageScoreRadio != v111)
                                                                                                {
                                                                                                  goto LABEL_292;
                                                                                                }

                                                                                                has = *p_has;
                                                                                                v8 = *v7;
                                                                                              }

                                                                                              v112 = (has >> 47) & 1;
                                                                                              if (v112 == ((v8 >> 47) & 1))
                                                                                              {
                                                                                                if (v112)
                                                                                                {
                                                                                                  usageScoreMusicWithoutRadio = self->_usageScoreMusicWithoutRadio;
                                                                                                  [v4 usageScoreMusicWithoutRadio];
                                                                                                  if (usageScoreMusicWithoutRadio != v114)
                                                                                                  {
                                                                                                    goto LABEL_292;
                                                                                                  }

                                                                                                  has = *p_has;
                                                                                                  v8 = *v7;
                                                                                                }

                                                                                                v115 = HIWORD(has) & 1;
                                                                                                if (v115 == (HIWORD(v8) & 1))
                                                                                                {
                                                                                                  if (v115)
                                                                                                  {
                                                                                                    rawMediaTypeUsageSignalRadio = self->_rawMediaTypeUsageSignalRadio;
                                                                                                    if (rawMediaTypeUsageSignalRadio != [v4 rawMediaTypeUsageSignalRadio])
                                                                                                    {
                                                                                                      goto LABEL_292;
                                                                                                    }

                                                                                                    has = *p_has;
                                                                                                    v8 = *v7;
                                                                                                  }

                                                                                                  v117 = (has >> 49) & 1;
                                                                                                  if (v117 == ((v8 >> 49) & 1))
                                                                                                  {
                                                                                                    if (v117)
                                                                                                    {
                                                                                                      rawMediaTypeUsageSignalMusicWithoutRadio = self->_rawMediaTypeUsageSignalMusicWithoutRadio;
                                                                                                      if (rawMediaTypeUsageSignalMusicWithoutRadio != [v4 rawMediaTypeUsageSignalMusicWithoutRadio])
                                                                                                      {
                                                                                                        goto LABEL_292;
                                                                                                      }

                                                                                                      has = *p_has;
                                                                                                      v8 = *v7;
                                                                                                    }

                                                                                                    v119 = (has >> 50) & 1;
                                                                                                    if (v119 == ((v8 >> 50) & 1))
                                                                                                    {
                                                                                                      if (v119)
                                                                                                      {
                                                                                                        subscriptionStatus = self->_subscriptionStatus;
                                                                                                        if (subscriptionStatus != [v4 subscriptionStatus])
                                                                                                        {
                                                                                                          goto LABEL_292;
                                                                                                        }

                                                                                                        has = *p_has;
                                                                                                        v8 = *v7;
                                                                                                      }

                                                                                                      v121 = (has >> 51) & 1;
                                                                                                      if (v121 == ((v8 >> 51) & 1))
                                                                                                      {
                                                                                                        if (v121)
                                                                                                        {
                                                                                                          isRawNowPlayingBundle = self->_isRawNowPlayingBundle;
                                                                                                          if (isRawNowPlayingBundle != [v4 isRawNowPlayingBundle])
                                                                                                          {
                                                                                                            goto LABEL_292;
                                                                                                          }

                                                                                                          has = *p_has;
                                                                                                          v8 = *v7;
                                                                                                        }

                                                                                                        v123 = (has >> 52) & 1;
                                                                                                        if (v123 == ((v8 >> 52) & 1))
                                                                                                        {
                                                                                                          if (v123)
                                                                                                          {
                                                                                                            rawNowPlayingTotal = self->_rawNowPlayingTotal;
                                                                                                            if (rawNowPlayingTotal != [v4 rawNowPlayingTotal])
                                                                                                            {
                                                                                                              goto LABEL_292;
                                                                                                            }

                                                                                                            has = *p_has;
                                                                                                            v8 = *v7;
                                                                                                          }

                                                                                                          v125 = (has >> 53) & 1;
                                                                                                          if (v125 == ((v8 >> 53) & 1))
                                                                                                          {
                                                                                                            if (v125)
                                                                                                            {
                                                                                                              rawNowPlayingBundleScore = self->_rawNowPlayingBundleScore;
                                                                                                              [v4 rawNowPlayingBundleScore];
                                                                                                              if (rawNowPlayingBundleScore != v127)
                                                                                                              {
                                                                                                                goto LABEL_292;
                                                                                                              }

                                                                                                              has = *p_has;
                                                                                                              v8 = *v7;
                                                                                                            }

                                                                                                            v128 = (has >> 54) & 1;
                                                                                                            if (v128 == ((v8 >> 54) & 1))
                                                                                                            {
                                                                                                              if (v128)
                                                                                                              {
                                                                                                                isRawLastNowPlaying = self->_isRawLastNowPlaying;
                                                                                                                [v4 isRawLastNowPlaying];
                                                                                                                if (isRawLastNowPlaying != v130)
                                                                                                                {
                                                                                                                  goto LABEL_292;
                                                                                                                }

                                                                                                                has = *p_has;
                                                                                                                v8 = *v7;
                                                                                                              }

                                                                                                              v131 = (has >> 55) & 1;
                                                                                                              if (v131 == ((v8 >> 55) & 1))
                                                                                                              {
                                                                                                                if (v131)
                                                                                                                {
                                                                                                                  rawNowPlaying2Minutes = self->_rawNowPlaying2Minutes;
                                                                                                                  if (rawNowPlaying2Minutes != [v4 rawNowPlaying2Minutes])
                                                                                                                  {
                                                                                                                    goto LABEL_292;
                                                                                                                  }

                                                                                                                  has = *p_has;
                                                                                                                  v8 = *v7;
                                                                                                                }

                                                                                                                v133 = HIBYTE(has) & 1;
                                                                                                                if (v133 == (HIBYTE(v8) & 1))
                                                                                                                {
                                                                                                                  if (v133)
                                                                                                                  {
                                                                                                                    rawNowPlaying10Minutes = self->_rawNowPlaying10Minutes;
                                                                                                                    if (rawNowPlaying10Minutes != [v4 rawNowPlaying10Minutes])
                                                                                                                    {
                                                                                                                      goto LABEL_292;
                                                                                                                    }

                                                                                                                    has = *p_has;
                                                                                                                    v8 = *v7;
                                                                                                                  }

                                                                                                                  v135 = (has >> 57) & 1;
                                                                                                                  if (v135 == ((v8 & 0x200000000000000) != 0))
                                                                                                                  {
                                                                                                                    if (v135)
                                                                                                                    {
                                                                                                                      rawNowPlaying1Hour = self->_rawNowPlaying1Hour;
                                                                                                                      if (rawNowPlaying1Hour != [v4 rawNowPlaying1Hour])
                                                                                                                      {
                                                                                                                        goto LABEL_292;
                                                                                                                      }

                                                                                                                      has = *p_has;
                                                                                                                      v8 = *v7;
                                                                                                                    }

                                                                                                                    v137 = (has >> 58) & 1;
                                                                                                                    if (v137 == ((v8 & 0x400000000000000) != 0))
                                                                                                                    {
                                                                                                                      if (v137)
                                                                                                                      {
                                                                                                                        rawNowPlaying6Hours = self->_rawNowPlaying6Hours;
                                                                                                                        if (rawNowPlaying6Hours != [v4 rawNowPlaying6Hours])
                                                                                                                        {
                                                                                                                          goto LABEL_292;
                                                                                                                        }

                                                                                                                        has = *p_has;
                                                                                                                        v8 = *v7;
                                                                                                                      }

                                                                                                                      v139 = (has >> 59) & 1;
                                                                                                                      if (v139 == ((v8 & 0x800000000000000) != 0))
                                                                                                                      {
                                                                                                                        if (v139)
                                                                                                                        {
                                                                                                                          rawNowPlaying1Day = self->_rawNowPlaying1Day;
                                                                                                                          if (rawNowPlaying1Day != [v4 rawNowPlaying1Day])
                                                                                                                          {
                                                                                                                            goto LABEL_292;
                                                                                                                          }

                                                                                                                          has = *p_has;
                                                                                                                          v8 = *v7;
                                                                                                                        }

                                                                                                                        v141 = (has >> 60) & 1;
                                                                                                                        if (v141 == ((v8 & 0x1000000000000000) != 0))
                                                                                                                        {
                                                                                                                          if (v141)
                                                                                                                          {
                                                                                                                            rawNowPlaying7Days = self->_rawNowPlaying7Days;
                                                                                                                            if (rawNowPlaying7Days != [v4 rawNowPlaying7Days])
                                                                                                                            {
                                                                                                                              goto LABEL_292;
                                                                                                                            }

                                                                                                                            has = *p_has;
                                                                                                                            v8 = *v7;
                                                                                                                          }

                                                                                                                          v143 = (has >> 61) & 1;
                                                                                                                          if (v143 == ((v8 & 0x2000000000000000) != 0))
                                                                                                                          {
                                                                                                                            if (v143)
                                                                                                                            {
                                                                                                                              rawNowPlaying28Days = self->_rawNowPlaying28Days;
                                                                                                                              if (rawNowPlaying28Days != [v4 rawNowPlaying28Days])
                                                                                                                              {
                                                                                                                                goto LABEL_292;
                                                                                                                              }

                                                                                                                              has = *p_has;
                                                                                                                              v8 = *v7;
                                                                                                                            }

                                                                                                                            v145 = (has >> 62) & 1;
                                                                                                                            if (v145 == ((v8 & 0x4000000000000000) != 0))
                                                                                                                            {
                                                                                                                              if (v145)
                                                                                                                              {
                                                                                                                                rawLastNowPlayingRecency = self->_rawLastNowPlayingRecency;
                                                                                                                                if (rawLastNowPlayingRecency != [v4 rawLastNowPlayingRecency])
                                                                                                                                {
                                                                                                                                  goto LABEL_292;
                                                                                                                                }

                                                                                                                                has = *p_has;
                                                                                                                                v8 = *v7;
                                                                                                                              }

                                                                                                                              if (((v8 ^ has) & 0x8000000000000000) != 0)
                                                                                                                              {
                                                                                                                                goto LABEL_292;
                                                                                                                              }

                                                                                                                              if ((has & 0x8000000000000000) != 0)
                                                                                                                              {
                                                                                                                                commonForegroundBundleApp = self->_commonForegroundBundleApp;
                                                                                                                                if (commonForegroundBundleApp != [v4 commonForegroundBundleApp])
                                                                                                                                {
                                                                                                                                  goto LABEL_292;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              v148 = *(&self->_has + 4);
                                                                                                                              v149 = *(v4 + 176);
                                                                                                                              if ((v148 & 1) != (v149 & 1))
                                                                                                                              {
                                                                                                                                goto LABEL_292;
                                                                                                                              }

                                                                                                                              if (v148)
                                                                                                                              {
                                                                                                                                isRawLastNowPlayingBoolean = self->_isRawLastNowPlayingBoolean;
                                                                                                                                if (isRawLastNowPlayingBoolean != [v4 isRawLastNowPlayingBoolean])
                                                                                                                                {
                                                                                                                                  goto LABEL_292;
                                                                                                                                }

                                                                                                                                v148 = *(&self->_has + 4);
                                                                                                                                v149 = *(v4 + 176);
                                                                                                                              }

                                                                                                                              v151 = (v148 >> 1) & 1;
                                                                                                                              if (v151 == ((v149 >> 1) & 1))
                                                                                                                              {
                                                                                                                                if (v151)
                                                                                                                                {
                                                                                                                                  isCommonForegroundApp = self->_isCommonForegroundApp;
                                                                                                                                  if (isCommonForegroundApp != [v4 isCommonForegroundApp])
                                                                                                                                  {
                                                                                                                                    goto LABEL_292;
                                                                                                                                  }

                                                                                                                                  v148 = *(&self->_has + 4);
                                                                                                                                  v149 = *(v4 + 176);
                                                                                                                                }

                                                                                                                                v153 = (v148 >> 2) & 1;
                                                                                                                                if (v153 == ((v149 >> 2) & 1))
                                                                                                                                {
                                                                                                                                  if (v153)
                                                                                                                                  {
                                                                                                                                    isBoltEnabled = self->_isBoltEnabled;
                                                                                                                                    if (isBoltEnabled != [v4 isBoltEnabled])
                                                                                                                                    {
                                                                                                                                      goto LABEL_292;
                                                                                                                                    }

                                                                                                                                    v148 = *(&self->_has + 4);
                                                                                                                                    v149 = *(v4 + 176);
                                                                                                                                  }

                                                                                                                                  v155 = (v148 >> 3) & 1;
                                                                                                                                  if (v155 == ((v149 >> 3) & 1))
                                                                                                                                  {
                                                                                                                                    if (v155)
                                                                                                                                    {
                                                                                                                                      usageScoreMusicWithoutRadioRemote = self->_usageScoreMusicWithoutRadioRemote;
                                                                                                                                      [v4 usageScoreMusicWithoutRadioRemote];
                                                                                                                                      if (usageScoreMusicWithoutRadioRemote != v157)
                                                                                                                                      {
                                                                                                                                        goto LABEL_292;
                                                                                                                                      }

                                                                                                                                      v148 = *(&self->_has + 4);
                                                                                                                                      v149 = *(v4 + 176);
                                                                                                                                    }

                                                                                                                                    v158 = (v148 >> 4) & 1;
                                                                                                                                    if (v158 == ((v149 >> 4) & 1))
                                                                                                                                    {
                                                                                                                                      if (v158)
                                                                                                                                      {
                                                                                                                                        usageScoreBooksRemote = self->_usageScoreBooksRemote;
                                                                                                                                        [v4 usageScoreBooksRemote];
                                                                                                                                        if (usageScoreBooksRemote != v160)
                                                                                                                                        {
                                                                                                                                          goto LABEL_292;
                                                                                                                                        }

                                                                                                                                        v148 = *(&self->_has + 4);
                                                                                                                                        v149 = *(v4 + 176);
                                                                                                                                      }

                                                                                                                                      v161 = (v148 >> 5) & 1;
                                                                                                                                      if (v161 == ((v149 >> 5) & 1))
                                                                                                                                      {
                                                                                                                                        if (v161)
                                                                                                                                        {
                                                                                                                                          usageScoreRadioRemote = self->_usageScoreRadioRemote;
                                                                                                                                          [v4 usageScoreRadioRemote];
                                                                                                                                          if (usageScoreRadioRemote != v163)
                                                                                                                                          {
                                                                                                                                            goto LABEL_292;
                                                                                                                                          }

                                                                                                                                          v148 = *(&self->_has + 4);
                                                                                                                                          v149 = *(v4 + 176);
                                                                                                                                        }

                                                                                                                                        v164 = (v148 >> 6) & 1;
                                                                                                                                        if (v164 == ((v149 >> 6) & 1))
                                                                                                                                        {
                                                                                                                                          if (v164)
                                                                                                                                          {
                                                                                                                                            usageScorePodcastsRemote = self->_usageScorePodcastsRemote;
                                                                                                                                            [v4 usageScorePodcastsRemote];
                                                                                                                                            if (usageScorePodcastsRemote != v166)
                                                                                                                                            {
                                                                                                                                              goto LABEL_292;
                                                                                                                                            }

                                                                                                                                            v148 = *(&self->_has + 4);
                                                                                                                                            v149 = *(v4 + 176);
                                                                                                                                          }

                                                                                                                                          v167 = (v148 >> 7) & 1;
                                                                                                                                          if (v167 == ((v149 >> 7) & 1))
                                                                                                                                          {
                                                                                                                                            if (v167)
                                                                                                                                            {
                                                                                                                                              entitySearchBundleScoreRemote = self->_entitySearchBundleScoreRemote;
                                                                                                                                              [v4 entitySearchBundleScoreRemote];
                                                                                                                                              if (entitySearchBundleScoreRemote != v169)
                                                                                                                                              {
                                                                                                                                                goto LABEL_292;
                                                                                                                                              }

                                                                                                                                              v148 = *(&self->_has + 4);
                                                                                                                                              v149 = *(v4 + 176);
                                                                                                                                            }

                                                                                                                                            v170 = (v148 >> 8) & 1;
                                                                                                                                            if (v170 == ((v149 >> 8) & 1))
                                                                                                                                            {
                                                                                                                                              if (!v170 || (usageScoreMusicRemote = self->_usageScoreMusicRemote, [v4 usageScoreMusicRemote], usageScoreMusicRemote == v172))
                                                                                                                                              {
                                                                                                                                                v173 = 1;
                                                                                                                                                goto LABEL_293;
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_292:
  v173 = 0;
LABEL_293:

  return v173;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_80;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_81;
  }

LABEL_80:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_82;
  }

LABEL_81:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_83;
  }

LABEL_82:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_84;
  }

LABEL_83:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_85;
  }

LABEL_84:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_86;
  }

LABEL_85:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_87;
  }

LABEL_86:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_88;
  }

LABEL_87:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_89;
  }

LABEL_88:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_90;
  }

LABEL_89:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_91;
  }

LABEL_90:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_92;
  }

LABEL_91:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_16:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_93;
  }

LABEL_92:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_17:
    if ((has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_94;
  }

LABEL_93:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_18:
    if ((has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_95;
  }

LABEL_94:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_19:
    if ((has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_96;
  }

LABEL_95:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_20:
    if ((has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_97;
  }

LABEL_96:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_21:
    if ((has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_98;
  }

LABEL_97:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_22:
    if ((has & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_99;
  }

LABEL_98:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_23:
    if ((has & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_100;
  }

LABEL_99:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_24:
    if ((has & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_101;
  }

LABEL_100:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_25:
    if ((has & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_102;
  }

LABEL_101:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_26:
    if ((has & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_103;
  }

LABEL_102:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_27:
    if ((has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_104;
  }

LABEL_103:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_28:
    if ((has & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_105;
  }

LABEL_104:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_29:
    if ((has & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_106;
  }

LABEL_105:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_30:
    if ((has & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_107;
  }

LABEL_106:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_31:
    if ((has & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_108;
  }

LABEL_107:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_32:
    if ((has & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_109;
  }

LABEL_108:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_33:
    if ((has & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_110;
  }

LABEL_109:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_34:
    if ((has & 0x200000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_111;
  }

LABEL_110:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_35:
    if ((has & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_112;
  }

LABEL_111:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_36:
    if ((has & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_113;
  }

LABEL_112:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_37:
    if ((has & 0x1000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_114;
  }

LABEL_113:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_38:
    if ((has & 0x2000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_115;
  }

LABEL_114:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_39:
    if ((has & 0x4000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_116;
  }

LABEL_115:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_40:
    if ((has & 0x8000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_117;
  }

LABEL_116:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_41:
    if ((has & 0x10000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_118;
  }

LABEL_117:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_42:
    if ((has & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_119;
  }

LABEL_118:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_43:
    if ((has & 0x40000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_120;
  }

LABEL_119:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_44:
    if ((has & 0x80000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_121;
  }

LABEL_120:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_45:
    if ((has & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_122;
  }

LABEL_121:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_46:
    if ((has & 0x200000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_123;
  }

LABEL_122:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_47:
    if ((has & 0x400000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_124;
  }

LABEL_123:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_48:
    if ((has & 0x800000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_125;
  }

LABEL_124:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_49:
    if ((has & 0x1000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_126;
  }

LABEL_125:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_50:
    if ((has & 0x2000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_127;
  }

LABEL_126:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_51:
    if ((has & 0x4000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_128;
  }

LABEL_127:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_52:
    if ((has & 0x8000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_129;
  }

LABEL_128:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_53:
    if ((has & 0x10000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_130;
  }

LABEL_129:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_54:
    if ((has & 0x20000000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_131;
  }

LABEL_130:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_55:
    if ((has & 0x40000000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_132;
  }

LABEL_131:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x40000000000000) == 0)
  {
LABEL_56:
    if ((has & 0x80000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_133;
  }

LABEL_132:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x80000000000000) == 0)
  {
LABEL_57:
    if ((has & 0x100000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_134;
  }

LABEL_133:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_58:
    if ((has & 0x200000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_135;
  }

LABEL_134:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_59:
    if ((has & 0x400000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_136;
  }

LABEL_135:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x400000000000000) == 0)
  {
LABEL_60:
    if ((has & 0x800000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_137;
  }

LABEL_136:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_61:
    if ((has & 0x1000000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_138;
  }

LABEL_137:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_62:
    if ((has & 0x2000000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_139;
  }

LABEL_138:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x2000000000000000) == 0)
  {
LABEL_63:
    if ((has & 0x4000000000000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_140:
    PBDataWriterWriteInt32Field();
    if ((*p_has & 0x8000000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_141;
  }

LABEL_139:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    goto LABEL_140;
  }

LABEL_64:
  if ((has & 0x8000000000000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_141:
  PBDataWriterWriteInt32Field();
LABEL_65:
  v6 = *(&self->_has + 4);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_has + 4);
    if ((v6 & 2) == 0)
    {
LABEL_67:
      if ((v6 & 4) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_144;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_67;
  }

  PBDataWriterWriteBOOLField();
  v6 = *(&self->_has + 4);
  if ((v6 & 4) == 0)
  {
LABEL_68:
    if ((v6 & 8) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_145;
  }

LABEL_144:
  PBDataWriterWriteBOOLField();
  v6 = *(&self->_has + 4);
  if ((v6 & 8) == 0)
  {
LABEL_69:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_146;
  }

LABEL_145:
  PBDataWriterWriteDoubleField();
  v6 = *(&self->_has + 4);
  if ((v6 & 0x10) == 0)
  {
LABEL_70:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_147;
  }

LABEL_146:
  PBDataWriterWriteDoubleField();
  v6 = *(&self->_has + 4);
  if ((v6 & 0x20) == 0)
  {
LABEL_71:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_148;
  }

LABEL_147:
  PBDataWriterWriteDoubleField();
  v6 = *(&self->_has + 4);
  if ((v6 & 0x40) == 0)
  {
LABEL_72:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_149;
  }

LABEL_148:
  PBDataWriterWriteDoubleField();
  v6 = *(&self->_has + 4);
  if ((v6 & 0x80) == 0)
  {
LABEL_73:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_149:
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 4) & 0x100) != 0)
  {
LABEL_74:
    PBDataWriterWriteDoubleField();
  }

LABEL_75:
}

- (void)setHasUsageScoreMusicRemote:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFEFF | v3;
}

- (void)setHasEntitySearchBundleScoreRemote:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFF7F | v3;
}

- (void)setHasUsageScorePodcastsRemote:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFBF | v3;
}

- (void)setHasUsageScoreRadioRemote:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFDF | v3;
}

- (void)setHasUsageScoreBooksRemote:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFEF | v3;
}

- (void)setHasUsageScoreMusicWithoutRadioRemote:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFF7 | v3;
}

- (void)setHasIsBoltEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFB | v3;
}

- (void)setHasIsCommonForegroundApp:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFD | v3;
}

- (void)setHasCommonForegroundBundleApp:(BOOL)a3
{
  v3 = 0x8000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasRawLastNowPlayingRecency:(BOOL)a3
{
  v3 = 0x4000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawNowPlaying28Days:(BOOL)a3
{
  v3 = 0x2000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawNowPlaying7Days:(BOOL)a3
{
  v3 = 0x1000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawNowPlaying1Day:(BOOL)a3
{
  v3 = 0x800000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawNowPlaying6Hours:(BOOL)a3
{
  v3 = 0x400000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawNowPlaying1Hour:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawNowPlaying10Minutes:(BOOL)a3
{
  v3 = 0x100000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawNowPlaying2Minutes:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasIsRawLastNowPlaying:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawNowPlayingBundleScore:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawNowPlayingTotal:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasIsRawNowPlayingBundle:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasSubscriptionStatus:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawMediaTypeUsageSignalMusicWithoutRadio:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasRawMediaTypeUsageSignalRadio:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasUsageScoreMusicWithoutRadio:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasUsageScoreRadio:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasIsModelPredictedApp:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasIsDisambiguationSelectedApp:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasIsSupportedUnicornMatchFlag:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasIsUnicornFlag:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasIsSupportedFlag:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasVq21Score:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasIsNowPlayingBundlePSE2:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasIsNowPlayingBundlePSE1:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasIsRequestedApp:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasIsAppFirstParty:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasUsageScorePodcasts:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasUsageScoreMusic:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasUsageScoreBooks:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasRawEntitySearchRecency:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasRawNowPlayingRecencyCD:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasRawNowPlayingCountCoreDuet7Day:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasRawNowPlayingCountCoreDuet6Hr:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasRawNowPlayingCountCoreDuet2Min:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasRawNowPlayingCountCoreDuet28Day:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasRawNowPlayingCountCoreDuet1Hr:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasRawNowPlayingCountCoreDuet1Day:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasRawNowPlayingCountCoreDuet10Min:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasRawMediaTypeUsageSignalVideo:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasRawMediaTypeUsageSignalPodcast:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasRawMediaTypeUsageSignalMusic:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasRawMediaTypeUsageSignalBook:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasIsRawMediaCategoryVideoSignal:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasIsRawMediaCategoryRadioSignal:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasIsRawMediaCategoryPodcastSignal:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasIsRawMediaCategoryMusicSignal:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasIsRawMediaCategoryAudiobookSignal:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasIsRawLastNowPlayingCoreDuet:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasNowPlayingUsage14Days:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasNowPlayingUsage7Days:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasNowPlayingUsage1Day:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasIsNowPlayingLastBundle:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasNowPlayingBundleScore:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasNowPlayingBundleRecencyS:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasNowPlayingBundleCount:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasIsNowPlayingBundle:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasIsForegroundBundle:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasEntitySearchBundleScore:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasEntitySearchBundleRecencyS:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasCompoundMediaTypeBundleScore:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasCompoundActiveBundleScore:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end