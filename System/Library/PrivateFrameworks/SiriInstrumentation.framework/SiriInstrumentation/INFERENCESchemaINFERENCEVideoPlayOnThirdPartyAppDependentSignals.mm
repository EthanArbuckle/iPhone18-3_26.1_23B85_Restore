@interface INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEntityAbsoluteCount10Min:(BOOL)min;
- (void)setHasEntityAbsoluteCount14Day:(BOOL)day;
- (void)setHasEntityAbsoluteCount1Day:(BOOL)day;
- (void)setHasEntityAbsoluteCount1Hr:(BOOL)hr;
- (void)setHasEntityAbsoluteCount28Day:(BOOL)day;
- (void)setHasEntityAbsoluteCount2Min:(BOOL)min;
- (void)setHasEntityAbsoluteCount6Hr:(BOOL)hr;
- (void)setHasEntityAbsoluteCount7Day:(BOOL)day;
- (void)setHasEntityPartialAppCount10Min:(BOOL)min;
- (void)setHasEntityPartialAppCount1Day:(BOOL)day;
- (void)setHasEntityPartialAppCount1Hr:(BOOL)hr;
- (void)setHasEntityPartialAppCount28Day:(BOOL)day;
- (void)setHasEntityPartialAppCount2Min:(BOOL)min;
- (void)setHasEntityPartialAppCount6Hr:(BOOL)hr;
- (void)setHasEntityPartialAppCount7Day:(BOOL)day;
- (void)setHasEntityPartialSiriCount10Min:(BOOL)min;
- (void)setHasEntityPartialSiriCount1Day:(BOOL)day;
- (void)setHasEntityPartialSiriCount1Hr:(BOOL)hr;
- (void)setHasEntityPartialSiriCount28Day:(BOOL)day;
- (void)setHasEntityPartialSiriCount2Min:(BOOL)min;
- (void)setHasEntityPartialSiriCount6Hr:(BOOL)hr;
- (void)setHasEntityPartialSiriCount7Day:(BOOL)day;
- (void)setHasEntityRecency:(BOOL)recency;
- (void)setHasIsLastForegroundApp:(BOOL)app;
- (void)setHasIsLastNowPlayingApp:(BOOL)app;
- (void)setHasIsNowPlayingApp:(BOOL)app;
- (void)setHasIsSelectedApp:(BOOL)app;
- (void)setHasMediaUserContextNumberOfLibraryItems:(BOOL)items;
- (void)setHasMediaUserContextSubscriptionStatus:(BOOL)status;
- (void)setHasNowPlayingAbsoluteCount10Min:(BOOL)min;
- (void)setHasNowPlayingAbsoluteCount14Day:(BOOL)day;
- (void)setHasNowPlayingAbsoluteCount1Day:(BOOL)day;
- (void)setHasNowPlayingAbsoluteCount1Hr:(BOOL)hr;
- (void)setHasNowPlayingAbsoluteCount28Day:(BOOL)day;
- (void)setHasNowPlayingAbsoluteCount2Min:(BOOL)min;
- (void)setHasNowPlayingAbsoluteCount6Hr:(BOOL)hr;
- (void)setHasNowPlayingAbsoluteCount7Day:(BOOL)day;
- (void)setHasRelativeAppUsage14Day:(BOOL)day;
- (void)setHasRelativeAppUsage7Day:(BOOL)day;
- (void)setHasSpotlightRelativeCount:(BOOL)count;
- (void)setHasSupportedMediaCategories:(BOOL)categories;
- (void)setHasTimeSinceLastForegroundAppEndInSec:(BOOL)sec;
- (void)setHasTimeSinceLastForegroundAppStartInSec:(BOOL)sec;
- (void)setHasTimeSinceLastNowPlayingAppEndInSec:(BOOL)sec;
- (void)setHasTimeSinceLastNowPlayingAppStartInSec:(BOOL)sec;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals

- (INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v102.receiver = self;
  v102.super_class = INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals;
  v5 = [(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals *)&v102 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"relativeAppUsage1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setRelativeAppUsage1Day:](v5, "setRelativeAppUsage1Day:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"relativeAppUsage7Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setRelativeAppUsage7Day:](v5, "setRelativeAppUsage7Day:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"relativeAppUsage14Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setRelativeAppUsage14Day:](v5, "setRelativeAppUsage14Day:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"entityAbsoluteCount2Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityAbsoluteCount2Min:](v5, "setEntityAbsoluteCount2Min:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"entityAbsoluteCount10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityAbsoluteCount10Min:](v5, "setEntityAbsoluteCount10Min:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"entityAbsoluteCount1Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityAbsoluteCount1Hr:](v5, "setEntityAbsoluteCount1Hr:", [v11 intValue]);
    }

    v82 = v6;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"entityAbsoluteCount6Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityAbsoluteCount6Hr:](v5, "setEntityAbsoluteCount6Hr:", [v12 intValue]);
    }

    v76 = v12;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"entityAbsoluteCount1Day"];
    objc_opt_class();
    v101 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityAbsoluteCount1Day:](v5, "setEntityAbsoluteCount1Day:", [v13 intValue]);
    }

    v81 = v7;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"entityAbsoluteCount7Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityAbsoluteCount7Day:](v5, "setEntityAbsoluteCount7Day:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"entityAbsoluteCount14Day"];
    objc_opt_class();
    v100 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityAbsoluteCount14Day:](v5, "setEntityAbsoluteCount14Day:", [v15 intValue]);
    }

    v80 = v8;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"entityAbsoluteCount28Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityAbsoluteCount28Day:](v5, "setEntityAbsoluteCount28Day:", [v16 intValue]);
    }

    v17 = v10;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"entityRecency"];
    objc_opt_class();
    v99 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityRecency:](v5, "setEntityRecency:", [v18 intValue]);
    }

    v19 = v9;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"mediaUserContextNumberOfLibraryItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setMediaUserContextNumberOfLibraryItems:](v5, "setMediaUserContextNumberOfLibraryItems:", [v20 intValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"mediaUserContextSubscriptionStatus"];
    objc_opt_class();
    v98 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setMediaUserContextSubscriptionStatus:](v5, "setMediaUserContextSubscriptionStatus:", [v21 intValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"isLastForegroundApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setIsLastForegroundApp:](v5, "setIsLastForegroundApp:", [v22 BOOLValue]);
    }

    v72 = v22;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"isLastNowPlayingApp"];
    objc_opt_class();
    v97 = v23;
    v79 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setIsLastNowPlayingApp:](v5, "setIsLastNowPlayingApp:", [v23 BOOLValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingAbsoluteCount2Min"];
    objc_opt_class();
    v96 = v24;
    v78 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setNowPlayingAbsoluteCount2Min:](v5, "setNowPlayingAbsoluteCount2Min:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingAbsoluteCount10Min"];
    objc_opt_class();
    v95 = v25;
    v77 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setNowPlayingAbsoluteCount10Min:](v5, "setNowPlayingAbsoluteCount10Min:", [v25 intValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingAbsoluteCount1Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setNowPlayingAbsoluteCount1Hr:](v5, "setNowPlayingAbsoluteCount1Hr:", [v26 intValue]);
    }

    v71 = v26;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingAbsoluteCount6Hr"];
    objc_opt_class();
    v94 = v27;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setNowPlayingAbsoluteCount6Hr:](v5, "setNowPlayingAbsoluteCount6Hr:", [v27 intValue]);
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingAbsoluteCount1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setNowPlayingAbsoluteCount1Day:](v5, "setNowPlayingAbsoluteCount1Day:", [v28 intValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingAbsoluteCount7Day"];
    objc_opt_class();
    v93 = v29;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setNowPlayingAbsoluteCount7Day:](v5, "setNowPlayingAbsoluteCount7Day:", [v29 intValue]);
    }

    v30 = v20;
    v31 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingAbsoluteCount14Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setNowPlayingAbsoluteCount14Day:](v5, "setNowPlayingAbsoluteCount14Day:", [v31 intValue]);
    }

    v69 = v31;
    v32 = v16;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingAbsoluteCount28Day"];
    objc_opt_class();
    v92 = v33;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setNowPlayingAbsoluteCount28Day:](v5, "setNowPlayingAbsoluteCount28Day:", [v33 intValue]);
    }

    v34 = v14;
    v35 = [dictionaryCopy objectForKeyedSubscript:@"isNowPlayingApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setIsNowPlayingApp:](v5, "setIsNowPlayingApp:", [v35 BOOLValue]);
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"isSelectedApp"];
    objc_opt_class();
    v91 = v36;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setIsSelectedApp:](v5, "setIsSelectedApp:", [v36 BOOLValue]);
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastForegroundAppStartInSec"];
    objc_opt_class();
    v90 = v37;
    v75 = v34;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setTimeSinceLastForegroundAppStartInSec:](v5, "setTimeSinceLastForegroundAppStartInSec:", [v37 intValue]);
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastForegroundAppEndInSec"];
    objc_opt_class();
    v89 = v38;
    v74 = v32;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setTimeSinceLastForegroundAppEndInSec:](v5, "setTimeSinceLastForegroundAppEndInSec:", [v38 intValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastNowPlayingAppStartInSec"];
    objc_opt_class();
    v88 = v39;
    v73 = v30;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setTimeSinceLastNowPlayingAppStartInSec:](v5, "setTimeSinceLastNowPlayingAppStartInSec:", [v39 intValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastNowPlayingAppEndInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setTimeSinceLastNowPlayingAppEndInSec:](v5, "setTimeSinceLastNowPlayingAppEndInSec:", [v40 intValue]);
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"spotlightRelativeCount"];
    objc_opt_class();
    v87 = v41;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setSpotlightRelativeCount:](v5, "setSpotlightRelativeCount:", [v41 intValue]);
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"supportedMediaCategories"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setSupportedMediaCategories:](v5, "setSupportedMediaCategories:", [v42 unsignedLongLongValue]);
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"isForegroundApp"];
    objc_opt_class();
    v86 = v43;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setIsForegroundApp:](v5, "setIsForegroundApp:", [v43 BOOLValue]);
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialSiriCount2Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialSiriCount2Min:](v5, "setEntityPartialSiriCount2Min:", [v44 intValue]);
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialSiriCount10Min"];
    objc_opt_class();
    v85 = v45;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialSiriCount10Min:](v5, "setEntityPartialSiriCount10Min:", [v45 intValue]);
    }

    v46 = v28;
    v47 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialSiriCount1Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialSiriCount1Hr:](v5, "setEntityPartialSiriCount1Hr:", [v47 intValue]);
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialSiriCount6Hr"];
    objc_opt_class();
    v84 = v48;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialSiriCount6Hr:](v5, "setEntityPartialSiriCount6Hr:", [v48 intValue]);
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialSiriCount1Day"];
    objc_opt_class();
    v83 = v49;
    v50 = v46;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialSiriCount1Day:](v5, "setEntityPartialSiriCount1Day:", [v83 intValue]);
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialSiriCount7Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialSiriCount7Day:](v5, "setEntityPartialSiriCount7Day:", [v51 intValue]);
    }

    v66 = v42;
    v52 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialSiriCount28Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialSiriCount28Day:](v5, "setEntityPartialSiriCount28Day:", [v52 intValue]);
    }

    v62 = v52;
    v65 = v44;
    v53 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialAppCount2Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialAppCount2Min:](v5, "setEntityPartialAppCount2Min:", [v53 intValue]);
    }

    v64 = v47;
    v54 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialAppCount10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialAppCount10Min:](v5, "setEntityPartialAppCount10Min:", [v54 intValue]);
    }

    v70 = v50;
    v55 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialAppCount1Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialAppCount1Hr:](v5, "setEntityPartialAppCount1Hr:", [v55 intValue]);
    }

    v63 = v51;
    v56 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialAppCount6Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialAppCount6Hr:](v5, "setEntityPartialAppCount6Hr:", [v56 intValue]);
    }

    v68 = v35;
    v57 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialAppCount1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialAppCount1Day:](v5, "setEntityPartialAppCount1Day:", [v57 intValue]);
    }

    v67 = v40;
    v58 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialAppCount7Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialAppCount7Day:](v5, "setEntityPartialAppCount7Day:", [v58 intValue]);
    }

    v59 = [dictionaryCopy objectForKeyedSubscript:@"entityPartialAppCount28Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals setEntityPartialAppCount28Day:](v5, "setEntityPartialAppCount28Day:", [v59 intValue]);
    }

    v60 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityAbsoluteCount10Min](self, "entityAbsoluteCount10Min")}];
    [dictionary setObject:v15 forKeyedSubscript:@"entityAbsoluteCount10Min"];

    has = *p_has;
    if ((*p_has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  else if ((has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityAbsoluteCount14Day](self, "entityAbsoluteCount14Day")}];
  [dictionary setObject:v16 forKeyedSubscript:@"entityAbsoluteCount14Day"];

  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityAbsoluteCount1Day](self, "entityAbsoluteCount1Day")}];
  [dictionary setObject:v17 forKeyedSubscript:@"entityAbsoluteCount1Day"];

  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityAbsoluteCount1Hr](self, "entityAbsoluteCount1Hr")}];
  [dictionary setObject:v18 forKeyedSubscript:@"entityAbsoluteCount1Hr"];

  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityAbsoluteCount28Day](self, "entityAbsoluteCount28Day")}];
  [dictionary setObject:v19 forKeyedSubscript:@"entityAbsoluteCount28Day"];

  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityAbsoluteCount2Min](self, "entityAbsoluteCount2Min")}];
  [dictionary setObject:v20 forKeyedSubscript:@"entityAbsoluteCount2Min"];

  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_60:
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityAbsoluteCount6Hr](self, "entityAbsoluteCount6Hr")}];
  [dictionary setObject:v21 forKeyedSubscript:@"entityAbsoluteCount6Hr"];

  if ((*p_has & 0x100) != 0)
  {
LABEL_9:
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityAbsoluteCount7Day](self, "entityAbsoluteCount7Day")}];
    [dictionary setObject:v6 forKeyedSubscript:@"entityAbsoluteCount7Day"];
  }

LABEL_10:
  v7 = *(&self->_has + 2);
  if ((v7 & 0x200) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialAppCount10Min](self, "entityPartialAppCount10Min")}];
    [dictionary setObject:v22 forKeyedSubscript:@"entityPartialAppCount10Min"];

    v7 = *(&self->_has + 2);
    if ((v7 & 0x1000) == 0)
    {
LABEL_12:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_64;
    }
  }

  else if ((*(&self->_has + 2) & 0x1000) == 0)
  {
    goto LABEL_12;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialAppCount1Day](self, "entityPartialAppCount1Day")}];
  [dictionary setObject:v23 forKeyedSubscript:@"entityPartialAppCount1Day"];

  v7 = *(&self->_has + 2);
  if ((v7 & 0x400) == 0)
  {
LABEL_13:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_64:
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialAppCount1Hr](self, "entityPartialAppCount1Hr")}];
  [dictionary setObject:v24 forKeyedSubscript:@"entityPartialAppCount1Hr"];

  v7 = *(&self->_has + 2);
  if ((v7 & 0x4000) == 0)
  {
LABEL_14:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_65:
  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialAppCount28Day](self, "entityPartialAppCount28Day")}];
  [dictionary setObject:v25 forKeyedSubscript:@"entityPartialAppCount28Day"];

  v7 = *(&self->_has + 2);
  if ((v7 & 0x100) == 0)
  {
LABEL_15:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_67;
  }

LABEL_66:
  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialAppCount2Min](self, "entityPartialAppCount2Min")}];
  [dictionary setObject:v26 forKeyedSubscript:@"entityPartialAppCount2Min"];

  v7 = *(&self->_has + 2);
  if ((v7 & 0x800) == 0)
  {
LABEL_16:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

LABEL_67:
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialAppCount6Hr](self, "entityPartialAppCount6Hr")}];
  [dictionary setObject:v27 forKeyedSubscript:@"entityPartialAppCount6Hr"];

  v7 = *(&self->_has + 2);
  if ((v7 & 0x2000) == 0)
  {
LABEL_17:
    if ((v7 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_68:
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialAppCount7Day](self, "entityPartialAppCount7Day")}];
  [dictionary setObject:v28 forKeyedSubscript:@"entityPartialAppCount7Day"];

  v7 = *(&self->_has + 2);
  if ((v7 & 4) == 0)
  {
LABEL_18:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

LABEL_69:
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialSiriCount10Min](self, "entityPartialSiriCount10Min")}];
  [dictionary setObject:v29 forKeyedSubscript:@"entityPartialSiriCount10Min"];

  v7 = *(&self->_has + 2);
  if ((v7 & 0x20) == 0)
  {
LABEL_19:
    if ((v7 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_70:
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialSiriCount1Day](self, "entityPartialSiriCount1Day")}];
  [dictionary setObject:v30 forKeyedSubscript:@"entityPartialSiriCount1Day"];

  v7 = *(&self->_has + 2);
  if ((v7 & 8) == 0)
  {
LABEL_20:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

LABEL_71:
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialSiriCount1Hr](self, "entityPartialSiriCount1Hr")}];
  [dictionary setObject:v31 forKeyedSubscript:@"entityPartialSiriCount1Hr"];

  v7 = *(&self->_has + 2);
  if ((v7 & 0x80) == 0)
  {
LABEL_21:
    if ((v7 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialSiriCount28Day](self, "entityPartialSiriCount28Day")}];
  [dictionary setObject:v32 forKeyedSubscript:@"entityPartialSiriCount28Day"];

  v7 = *(&self->_has + 2);
  if ((v7 & 2) == 0)
  {
LABEL_22:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialSiriCount2Min](self, "entityPartialSiriCount2Min")}];
  [dictionary setObject:v33 forKeyedSubscript:@"entityPartialSiriCount2Min"];

  v7 = *(&self->_has + 2);
  if ((v7 & 0x10) == 0)
  {
LABEL_23:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_74:
  v34 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialSiriCount6Hr](self, "entityPartialSiriCount6Hr")}];
  [dictionary setObject:v34 forKeyedSubscript:@"entityPartialSiriCount6Hr"];

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
LABEL_24:
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityPartialSiriCount7Day](self, "entityPartialSiriCount7Day")}];
    [dictionary setObject:v8 forKeyedSubscript:@"entityPartialSiriCount7Day"];
  }

LABEL_25:
  if ((*(&self->_has + 1) & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals entityRecency](self, "entityRecency")}];
    [dictionary setObject:v9 forKeyedSubscript:@"entityRecency"];
  }

  if (*(&self->_has + 2))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals isForegroundApp](self, "isForegroundApp")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isForegroundApp"];
  }

  v11 = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals isLastForegroundApp](self, "isLastForegroundApp")}];
    [dictionary setObject:v35 forKeyedSubscript:@"isLastForegroundApp"];

    v11 = *p_has;
    if ((*p_has & 0x8000) == 0)
    {
LABEL_31:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_78;
    }
  }

  else if ((v11 & 0x8000) == 0)
  {
    goto LABEL_31;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals isLastNowPlayingApp](self, "isLastNowPlayingApp")}];
  [dictionary setObject:v36 forKeyedSubscript:@"isLastNowPlayingApp"];

  v11 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_32:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_79;
  }

LABEL_78:
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals isNowPlayingApp](self, "isNowPlayingApp")}];
  [dictionary setObject:v37 forKeyedSubscript:@"isNowPlayingApp"];

  v11 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_33:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_80;
  }

LABEL_79:
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals isSelectedApp](self, "isSelectedApp")}];
  [dictionary setObject:v38 forKeyedSubscript:@"isSelectedApp"];

  v11 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_34:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_81;
  }

LABEL_80:
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals mediaUserContextNumberOfLibraryItems](self, "mediaUserContextNumberOfLibraryItems")}];
  [dictionary setObject:v39 forKeyedSubscript:@"mediaUserContextNumberOfLibraryItems"];

  v11 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_35:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_82;
  }

LABEL_81:
  v40 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals mediaUserContextSubscriptionStatus](self, "mediaUserContextSubscriptionStatus")}];
  [dictionary setObject:v40 forKeyedSubscript:@"mediaUserContextSubscriptionStatus"];

  v11 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_36:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_83;
  }

LABEL_82:
  v41 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals nowPlayingAbsoluteCount10Min](self, "nowPlayingAbsoluteCount10Min")}];
  [dictionary setObject:v41 forKeyedSubscript:@"nowPlayingAbsoluteCount10Min"];

  v11 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_37:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_84;
  }

LABEL_83:
  v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals nowPlayingAbsoluteCount14Day](self, "nowPlayingAbsoluteCount14Day")}];
  [dictionary setObject:v42 forKeyedSubscript:@"nowPlayingAbsoluteCount14Day"];

  v11 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_38:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_85;
  }

LABEL_84:
  v43 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals nowPlayingAbsoluteCount1Day](self, "nowPlayingAbsoluteCount1Day")}];
  [dictionary setObject:v43 forKeyedSubscript:@"nowPlayingAbsoluteCount1Day"];

  v11 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_39:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_86;
  }

LABEL_85:
  v44 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals nowPlayingAbsoluteCount1Hr](self, "nowPlayingAbsoluteCount1Hr")}];
  [dictionary setObject:v44 forKeyedSubscript:@"nowPlayingAbsoluteCount1Hr"];

  v11 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_40:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_87;
  }

LABEL_86:
  v45 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals nowPlayingAbsoluteCount28Day](self, "nowPlayingAbsoluteCount28Day")}];
  [dictionary setObject:v45 forKeyedSubscript:@"nowPlayingAbsoluteCount28Day"];

  v11 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_41:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_88;
  }

LABEL_87:
  v46 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals nowPlayingAbsoluteCount2Min](self, "nowPlayingAbsoluteCount2Min")}];
  [dictionary setObject:v46 forKeyedSubscript:@"nowPlayingAbsoluteCount2Min"];

  v11 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_42:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_89;
  }

LABEL_88:
  v47 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals nowPlayingAbsoluteCount6Hr](self, "nowPlayingAbsoluteCount6Hr")}];
  [dictionary setObject:v47 forKeyedSubscript:@"nowPlayingAbsoluteCount6Hr"];

  v11 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_43:
    if ((v11 & 4) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_90;
  }

LABEL_89:
  v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals nowPlayingAbsoluteCount7Day](self, "nowPlayingAbsoluteCount7Day")}];
  [dictionary setObject:v48 forKeyedSubscript:@"nowPlayingAbsoluteCount7Day"];

  v11 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_44:
    if ((v11 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_91;
  }

LABEL_90:
  v49 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals relativeAppUsage14Day](self, "relativeAppUsage14Day")}];
  [dictionary setObject:v49 forKeyedSubscript:@"relativeAppUsage14Day"];

  v11 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_45:
    if ((v11 & 2) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_92;
  }

LABEL_91:
  v50 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals relativeAppUsage1Day](self, "relativeAppUsage1Day")}];
  [dictionary setObject:v50 forKeyedSubscript:@"relativeAppUsage1Day"];

  v11 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_46:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_93;
  }

LABEL_92:
  v51 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals relativeAppUsage7Day](self, "relativeAppUsage7Day")}];
  [dictionary setObject:v51 forKeyedSubscript:@"relativeAppUsage7Day"];

  v11 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_47:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_94;
  }

LABEL_93:
  v52 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals spotlightRelativeCount](self, "spotlightRelativeCount")}];
  [dictionary setObject:v52 forKeyedSubscript:@"spotlightRelativeCount"];

  v11 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_48:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_95;
  }

LABEL_94:
  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals supportedMediaCategories](self, "supportedMediaCategories")}];
  [dictionary setObject:v53 forKeyedSubscript:@"supportedMediaCategories"];

  v11 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_49:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_96;
  }

LABEL_95:
  v54 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals timeSinceLastForegroundAppEndInSec](self, "timeSinceLastForegroundAppEndInSec")}];
  [dictionary setObject:v54 forKeyedSubscript:@"timeSinceLastForegroundAppEndInSec"];

  v11 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_50:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_97:
    v56 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals timeSinceLastNowPlayingAppEndInSec](self, "timeSinceLastNowPlayingAppEndInSec")}];
    [dictionary setObject:v56 forKeyedSubscript:@"timeSinceLastNowPlayingAppEndInSec"];

    if ((*p_has & 0x10000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_96:
  v55 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals timeSinceLastForegroundAppStartInSec](self, "timeSinceLastForegroundAppStartInSec")}];
  [dictionary setObject:v55 forKeyedSubscript:@"timeSinceLastForegroundAppStartInSec"];

  v11 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    goto LABEL_97;
  }

LABEL_51:
  if ((v11 & 0x10000000) != 0)
  {
LABEL_52:
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals timeSinceLastNowPlayingAppStartInSec](self, "timeSinceLastNowPlayingAppStartInSec")}];
    [dictionary setObject:v12 forKeyedSubscript:@"timeSinceLastNowPlayingAppStartInSec"];
  }

LABEL_53:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v13 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v51 = 2654435761 * self->_relativeAppUsage1Day;
    if ((has & 2) != 0)
    {
LABEL_3:
      v50 = 2654435761 * self->_relativeAppUsage7Day;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v51 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v50 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v49 = 2654435761 * self->_relativeAppUsage14Day;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v49 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v48 = 2654435761 * self->_entityAbsoluteCount2Min;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v48 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v47 = 2654435761 * self->_entityAbsoluteCount10Min;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v47 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v46 = 2654435761 * self->_entityAbsoluteCount1Hr;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  v46 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v45 = 2654435761 * self->_entityAbsoluteCount6Hr;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  v45 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v44 = 2654435761 * self->_entityAbsoluteCount1Day;
    if ((has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  v44 = 0;
  if ((has & 0x100) != 0)
  {
LABEL_10:
    v43 = 2654435761 * self->_entityAbsoluteCount7Day;
    if ((has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v43 = 0;
  if ((has & 0x200) != 0)
  {
LABEL_11:
    v42 = 2654435761 * self->_entityAbsoluteCount14Day;
    if ((has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v42 = 0;
  if ((has & 0x400) != 0)
  {
LABEL_12:
    v41 = 2654435761 * self->_entityAbsoluteCount28Day;
    if ((has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v41 = 0;
  if ((has & 0x800) != 0)
  {
LABEL_13:
    v40 = 2654435761 * self->_entityRecency;
    if ((has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  v40 = 0;
  if ((has & 0x1000) != 0)
  {
LABEL_14:
    v39 = 2654435761 * self->_mediaUserContextNumberOfLibraryItems;
    if ((has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  v39 = 0;
  if ((has & 0x2000) != 0)
  {
LABEL_15:
    v38 = 2654435761 * self->_mediaUserContextSubscriptionStatus;
    if ((has & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v38 = 0;
  if ((has & 0x4000) != 0)
  {
LABEL_16:
    v37 = 2654435761 * self->_isLastForegroundApp;
    if ((has & 0x8000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v37 = 0;
  if ((has & 0x8000) != 0)
  {
LABEL_17:
    v36 = 2654435761 * self->_isLastNowPlayingApp;
    if ((has & 0x10000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v36 = 0;
  if ((has & 0x10000) != 0)
  {
LABEL_18:
    v35 = 2654435761 * self->_nowPlayingAbsoluteCount2Min;
    if ((has & 0x20000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v35 = 0;
  if ((has & 0x20000) != 0)
  {
LABEL_19:
    v34 = 2654435761 * self->_nowPlayingAbsoluteCount10Min;
    if ((has & 0x40000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  v34 = 0;
  if ((has & 0x40000) != 0)
  {
LABEL_20:
    v33 = 2654435761 * self->_nowPlayingAbsoluteCount1Hr;
    if ((has & 0x80000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v33 = 0;
  if ((has & 0x80000) != 0)
  {
LABEL_21:
    v32 = 2654435761 * self->_nowPlayingAbsoluteCount6Hr;
    if ((has & 0x100000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v32 = 0;
  if ((has & 0x100000) != 0)
  {
LABEL_22:
    v31 = 2654435761 * self->_nowPlayingAbsoluteCount1Day;
    if ((has & 0x200000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v31 = 0;
  if ((has & 0x200000) != 0)
  {
LABEL_23:
    v3 = 2654435761 * self->_nowPlayingAbsoluteCount7Day;
    if ((has & 0x400000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v3 = 0;
  if ((has & 0x400000) != 0)
  {
LABEL_24:
    v4 = 2654435761 * self->_nowPlayingAbsoluteCount14Day;
    if ((has & 0x800000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v4 = 0;
  if ((has & 0x800000) != 0)
  {
LABEL_25:
    v5 = 2654435761 * self->_nowPlayingAbsoluteCount28Day;
    if ((has & 0x1000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v5 = 0;
  if ((has & 0x1000000) != 0)
  {
LABEL_26:
    v6 = 2654435761 * self->_isNowPlayingApp;
    if ((has & 0x2000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  v6 = 0;
  if ((has & 0x2000000) != 0)
  {
LABEL_27:
    v7 = 2654435761 * self->_isSelectedApp;
    if ((has & 0x4000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v7 = 0;
  if ((has & 0x4000000) != 0)
  {
LABEL_28:
    v8 = 2654435761 * self->_timeSinceLastForegroundAppStartInSec;
    if ((has & 0x8000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v8 = 0;
  if ((has & 0x8000000) != 0)
  {
LABEL_29:
    v9 = 2654435761 * self->_timeSinceLastForegroundAppEndInSec;
    if ((has & 0x10000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v9 = 0;
  if ((has & 0x10000000) != 0)
  {
LABEL_30:
    v10 = 2654435761 * self->_timeSinceLastNowPlayingAppStartInSec;
    if ((has & 0x20000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  v10 = 0;
  if ((has & 0x20000000) != 0)
  {
LABEL_31:
    v11 = 2654435761 * self->_timeSinceLastNowPlayingAppEndInSec;
    if ((has & 0x40000000) != 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    v12 = 0;
    if (has < 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_63:
  v11 = 0;
  if ((has & 0x40000000) == 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  v12 = 2654435761 * self->_spotlightRelativeCount;
  if (has < 0)
  {
LABEL_33:
    v13 = 2654435761u * self->_supportedMediaCategories;
    goto LABEL_66;
  }

LABEL_65:
  v13 = 0;
LABEL_66:
  v14 = *(&self->_has + 2);
  if (v14)
  {
    v15 = 2654435761 * self->_isForegroundApp;
    if ((v14 & 2) != 0)
    {
LABEL_68:
      v16 = 2654435761 * self->_entityPartialSiriCount2Min;
      if ((v14 & 4) != 0)
      {
        goto LABEL_69;
      }

      goto LABEL_84;
    }
  }

  else
  {
    v15 = 0;
    if ((v14 & 2) != 0)
    {
      goto LABEL_68;
    }
  }

  v16 = 0;
  if ((v14 & 4) != 0)
  {
LABEL_69:
    v17 = 2654435761 * self->_entityPartialSiriCount10Min;
    if ((v14 & 8) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_85;
  }

LABEL_84:
  v17 = 0;
  if ((v14 & 8) != 0)
  {
LABEL_70:
    v18 = 2654435761 * self->_entityPartialSiriCount1Hr;
    if ((v14 & 0x10) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_86;
  }

LABEL_85:
  v18 = 0;
  if ((v14 & 0x10) != 0)
  {
LABEL_71:
    v19 = 2654435761 * self->_entityPartialSiriCount6Hr;
    if ((v14 & 0x20) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_87;
  }

LABEL_86:
  v19 = 0;
  if ((v14 & 0x20) != 0)
  {
LABEL_72:
    v20 = 2654435761 * self->_entityPartialSiriCount1Day;
    if ((v14 & 0x40) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_88;
  }

LABEL_87:
  v20 = 0;
  if ((v14 & 0x40) != 0)
  {
LABEL_73:
    v21 = 2654435761 * self->_entityPartialSiriCount7Day;
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_89;
  }

LABEL_88:
  v21 = 0;
  if ((v14 & 0x80) != 0)
  {
LABEL_74:
    v22 = 2654435761 * self->_entityPartialSiriCount28Day;
    if ((*(&self->_has + 2) & 0x100) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_90;
  }

LABEL_89:
  v22 = 0;
  if ((*(&self->_has + 2) & 0x100) != 0)
  {
LABEL_75:
    v23 = 2654435761 * self->_entityPartialAppCount2Min;
    if ((*(&self->_has + 2) & 0x200) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_91;
  }

LABEL_90:
  v23 = 0;
  if ((*(&self->_has + 2) & 0x200) != 0)
  {
LABEL_76:
    v24 = 2654435761 * self->_entityPartialAppCount10Min;
    if ((*(&self->_has + 2) & 0x400) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_92;
  }

LABEL_91:
  v24 = 0;
  if ((*(&self->_has + 2) & 0x400) != 0)
  {
LABEL_77:
    v25 = 2654435761 * self->_entityPartialAppCount1Hr;
    if ((*(&self->_has + 2) & 0x800) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_93;
  }

LABEL_92:
  v25 = 0;
  if ((*(&self->_has + 2) & 0x800) != 0)
  {
LABEL_78:
    v26 = 2654435761 * self->_entityPartialAppCount6Hr;
    if ((*(&self->_has + 2) & 0x1000) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_94;
  }

LABEL_93:
  v26 = 0;
  if ((*(&self->_has + 2) & 0x1000) != 0)
  {
LABEL_79:
    v27 = 2654435761 * self->_entityPartialAppCount1Day;
    if ((*(&self->_has + 2) & 0x2000) != 0)
    {
      goto LABEL_80;
    }

LABEL_95:
    v28 = 0;
    if ((*(&self->_has + 2) & 0x4000) != 0)
    {
      goto LABEL_81;
    }

LABEL_96:
    v29 = 0;
    return v50 ^ v51 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_94:
  v27 = 0;
  if ((*(&self->_has + 2) & 0x2000) == 0)
  {
    goto LABEL_95;
  }

LABEL_80:
  v28 = 2654435761 * self->_entityPartialAppCount7Day;
  if ((*(&self->_has + 2) & 0x4000) == 0)
  {
    goto LABEL_96;
  }

LABEL_81:
  v29 = 2654435761 * self->_entityPartialAppCount28Day;
  return v50 ^ v51 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_189;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = equalCopy + 49;
  v8 = equalCopy[49];
  if ((has & 1) != (v8 & 1))
  {
    goto LABEL_189;
  }

  if (has)
  {
    relativeAppUsage1Day = self->_relativeAppUsage1Day;
    if (relativeAppUsage1Day != [equalCopy relativeAppUsage1Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v10 = (has >> 1) & 1;
  if (v10 != ((v8 >> 1) & 1))
  {
    goto LABEL_189;
  }

  if (v10)
  {
    relativeAppUsage7Day = self->_relativeAppUsage7Day;
    if (relativeAppUsage7Day != [equalCopy relativeAppUsage7Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v12 = (has >> 2) & 1;
  if (v12 != ((v8 >> 2) & 1))
  {
    goto LABEL_189;
  }

  if (v12)
  {
    relativeAppUsage14Day = self->_relativeAppUsage14Day;
    if (relativeAppUsage14Day != [equalCopy relativeAppUsage14Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v14 = (has >> 3) & 1;
  if (v14 != ((v8 >> 3) & 1))
  {
    goto LABEL_189;
  }

  if (v14)
  {
    entityAbsoluteCount2Min = self->_entityAbsoluteCount2Min;
    if (entityAbsoluteCount2Min != [equalCopy entityAbsoluteCount2Min])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v16 = (has >> 4) & 1;
  if (v16 != ((v8 >> 4) & 1))
  {
    goto LABEL_189;
  }

  if (v16)
  {
    entityAbsoluteCount10Min = self->_entityAbsoluteCount10Min;
    if (entityAbsoluteCount10Min != [equalCopy entityAbsoluteCount10Min])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v18 = (has >> 5) & 1;
  if (v18 != ((v8 >> 5) & 1))
  {
    goto LABEL_189;
  }

  if (v18)
  {
    entityAbsoluteCount1Hr = self->_entityAbsoluteCount1Hr;
    if (entityAbsoluteCount1Hr != [equalCopy entityAbsoluteCount1Hr])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v20 = (has >> 6) & 1;
  if (v20 != ((v8 >> 6) & 1))
  {
    goto LABEL_189;
  }

  if (v20)
  {
    entityAbsoluteCount6Hr = self->_entityAbsoluteCount6Hr;
    if (entityAbsoluteCount6Hr != [equalCopy entityAbsoluteCount6Hr])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v22 = (has >> 7) & 1;
  if (v22 != ((v8 >> 7) & 1))
  {
    goto LABEL_189;
  }

  if (v22)
  {
    entityAbsoluteCount1Day = self->_entityAbsoluteCount1Day;
    if (entityAbsoluteCount1Day != [equalCopy entityAbsoluteCount1Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v24 = (has >> 8) & 1;
  if (v24 != ((v8 >> 8) & 1))
  {
    goto LABEL_189;
  }

  if (v24)
  {
    entityAbsoluteCount7Day = self->_entityAbsoluteCount7Day;
    if (entityAbsoluteCount7Day != [equalCopy entityAbsoluteCount7Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v26 = (has >> 9) & 1;
  if (v26 != ((v8 >> 9) & 1))
  {
    goto LABEL_189;
  }

  if (v26)
  {
    entityAbsoluteCount14Day = self->_entityAbsoluteCount14Day;
    if (entityAbsoluteCount14Day != [equalCopy entityAbsoluteCount14Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v28 = (has >> 10) & 1;
  if (v28 != ((v8 >> 10) & 1))
  {
    goto LABEL_189;
  }

  if (v28)
  {
    entityAbsoluteCount28Day = self->_entityAbsoluteCount28Day;
    if (entityAbsoluteCount28Day != [equalCopy entityAbsoluteCount28Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v30 = (has >> 11) & 1;
  if (v30 != ((v8 >> 11) & 1))
  {
    goto LABEL_189;
  }

  if (v30)
  {
    entityRecency = self->_entityRecency;
    if (entityRecency != [equalCopy entityRecency])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v32 = (has >> 12) & 1;
  if (v32 != ((v8 >> 12) & 1))
  {
    goto LABEL_189;
  }

  if (v32)
  {
    mediaUserContextNumberOfLibraryItems = self->_mediaUserContextNumberOfLibraryItems;
    if (mediaUserContextNumberOfLibraryItems != [equalCopy mediaUserContextNumberOfLibraryItems])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v34 = (has >> 13) & 1;
  if (v34 != ((v8 >> 13) & 1))
  {
    goto LABEL_189;
  }

  if (v34)
  {
    mediaUserContextSubscriptionStatus = self->_mediaUserContextSubscriptionStatus;
    if (mediaUserContextSubscriptionStatus != [equalCopy mediaUserContextSubscriptionStatus])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v36 = (has >> 14) & 1;
  if (v36 != ((v8 >> 14) & 1))
  {
    goto LABEL_189;
  }

  if (v36)
  {
    isLastForegroundApp = self->_isLastForegroundApp;
    if (isLastForegroundApp != [equalCopy isLastForegroundApp])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v38 = (has >> 15) & 1;
  if (v38 != ((v8 >> 15) & 1))
  {
    goto LABEL_189;
  }

  if (v38)
  {
    isLastNowPlayingApp = self->_isLastNowPlayingApp;
    if (isLastNowPlayingApp != [equalCopy isLastNowPlayingApp])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v40 = HIWORD(has) & 1;
  if (v40 != (HIWORD(v8) & 1))
  {
    goto LABEL_189;
  }

  if (v40)
  {
    nowPlayingAbsoluteCount2Min = self->_nowPlayingAbsoluteCount2Min;
    if (nowPlayingAbsoluteCount2Min != [equalCopy nowPlayingAbsoluteCount2Min])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v42 = (has >> 17) & 1;
  if (v42 != ((v8 >> 17) & 1))
  {
    goto LABEL_189;
  }

  if (v42)
  {
    nowPlayingAbsoluteCount10Min = self->_nowPlayingAbsoluteCount10Min;
    if (nowPlayingAbsoluteCount10Min != [equalCopy nowPlayingAbsoluteCount10Min])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v44 = (has >> 18) & 1;
  if (v44 != ((v8 >> 18) & 1))
  {
    goto LABEL_189;
  }

  if (v44)
  {
    nowPlayingAbsoluteCount1Hr = self->_nowPlayingAbsoluteCount1Hr;
    if (nowPlayingAbsoluteCount1Hr != [equalCopy nowPlayingAbsoluteCount1Hr])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v46 = (has >> 19) & 1;
  if (v46 != ((v8 >> 19) & 1))
  {
    goto LABEL_189;
  }

  if (v46)
  {
    nowPlayingAbsoluteCount6Hr = self->_nowPlayingAbsoluteCount6Hr;
    if (nowPlayingAbsoluteCount6Hr != [equalCopy nowPlayingAbsoluteCount6Hr])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v48 = (has >> 20) & 1;
  if (v48 != ((v8 >> 20) & 1))
  {
    goto LABEL_189;
  }

  if (v48)
  {
    nowPlayingAbsoluteCount1Day = self->_nowPlayingAbsoluteCount1Day;
    if (nowPlayingAbsoluteCount1Day != [equalCopy nowPlayingAbsoluteCount1Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v50 = (has >> 21) & 1;
  if (v50 != ((v8 >> 21) & 1))
  {
    goto LABEL_189;
  }

  if (v50)
  {
    nowPlayingAbsoluteCount7Day = self->_nowPlayingAbsoluteCount7Day;
    if (nowPlayingAbsoluteCount7Day != [equalCopy nowPlayingAbsoluteCount7Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v52 = (has >> 22) & 1;
  if (v52 != ((v8 >> 22) & 1))
  {
    goto LABEL_189;
  }

  if (v52)
  {
    nowPlayingAbsoluteCount14Day = self->_nowPlayingAbsoluteCount14Day;
    if (nowPlayingAbsoluteCount14Day != [equalCopy nowPlayingAbsoluteCount14Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v54 = (has >> 23) & 1;
  if (v54 != ((v8 >> 23) & 1))
  {
    goto LABEL_189;
  }

  if (v54)
  {
    nowPlayingAbsoluteCount28Day = self->_nowPlayingAbsoluteCount28Day;
    if (nowPlayingAbsoluteCount28Day != [equalCopy nowPlayingAbsoluteCount28Day])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v56 = HIBYTE(has) & 1;
  if (v56 != (HIBYTE(v8) & 1))
  {
    goto LABEL_189;
  }

  if (v56)
  {
    isNowPlayingApp = self->_isNowPlayingApp;
    if (isNowPlayingApp != [equalCopy isNowPlayingApp])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v58 = (has >> 25) & 1;
  if (v58 != ((v8 >> 25) & 1))
  {
    goto LABEL_189;
  }

  if (v58)
  {
    isSelectedApp = self->_isSelectedApp;
    if (isSelectedApp != [equalCopy isSelectedApp])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v60 = (has >> 26) & 1;
  if (v60 != ((v8 >> 26) & 1))
  {
    goto LABEL_189;
  }

  if (v60)
  {
    timeSinceLastForegroundAppStartInSec = self->_timeSinceLastForegroundAppStartInSec;
    if (timeSinceLastForegroundAppStartInSec != [equalCopy timeSinceLastForegroundAppStartInSec])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v62 = (has >> 27) & 1;
  if (v62 != ((v8 >> 27) & 1))
  {
    goto LABEL_189;
  }

  if (v62)
  {
    timeSinceLastForegroundAppEndInSec = self->_timeSinceLastForegroundAppEndInSec;
    if (timeSinceLastForegroundAppEndInSec != [equalCopy timeSinceLastForegroundAppEndInSec])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v64 = (has >> 28) & 1;
  if (v64 != ((v8 >> 28) & 1))
  {
    goto LABEL_189;
  }

  if (v64)
  {
    timeSinceLastNowPlayingAppStartInSec = self->_timeSinceLastNowPlayingAppStartInSec;
    if (timeSinceLastNowPlayingAppStartInSec != [equalCopy timeSinceLastNowPlayingAppStartInSec])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v66 = (has >> 29) & 1;
  if (v66 != ((v8 >> 29) & 1))
  {
    goto LABEL_189;
  }

  if (v66)
  {
    timeSinceLastNowPlayingAppEndInSec = self->_timeSinceLastNowPlayingAppEndInSec;
    if (timeSinceLastNowPlayingAppEndInSec != [equalCopy timeSinceLastNowPlayingAppEndInSec])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  v68 = (has >> 30) & 1;
  if (v68 != ((v8 >> 30) & 1))
  {
    goto LABEL_189;
  }

  if (v68)
  {
    spotlightRelativeCount = self->_spotlightRelativeCount;
    if (spotlightRelativeCount != [equalCopy spotlightRelativeCount])
    {
      goto LABEL_189;
    }

    has = *p_has;
    v8 = *v7;
  }

  if (((v8 ^ has) & 0x80000000) != 0)
  {
    goto LABEL_189;
  }

  if ((has & 0x80000000) != 0)
  {
    supportedMediaCategories = self->_supportedMediaCategories;
    if (supportedMediaCategories != [equalCopy supportedMediaCategories])
    {
      goto LABEL_189;
    }
  }

  v71 = *(&self->_has + 2);
  v72 = *(equalCopy + 100);
  if ((v71 & 1) != (v72 & 1))
  {
    goto LABEL_189;
  }

  if (v71)
  {
    isForegroundApp = self->_isForegroundApp;
    if (isForegroundApp != [equalCopy isForegroundApp])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v74 = (v71 >> 1) & 1;
  if (v74 != ((v72 >> 1) & 1))
  {
    goto LABEL_189;
  }

  if (v74)
  {
    entityPartialSiriCount2Min = self->_entityPartialSiriCount2Min;
    if (entityPartialSiriCount2Min != [equalCopy entityPartialSiriCount2Min])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v76 = (v71 >> 2) & 1;
  if (v76 != ((v72 >> 2) & 1))
  {
    goto LABEL_189;
  }

  if (v76)
  {
    entityPartialSiriCount10Min = self->_entityPartialSiriCount10Min;
    if (entityPartialSiriCount10Min != [equalCopy entityPartialSiriCount10Min])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v78 = (v71 >> 3) & 1;
  if (v78 != ((v72 >> 3) & 1))
  {
    goto LABEL_189;
  }

  if (v78)
  {
    entityPartialSiriCount1Hr = self->_entityPartialSiriCount1Hr;
    if (entityPartialSiriCount1Hr != [equalCopy entityPartialSiriCount1Hr])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v80 = (v71 >> 4) & 1;
  if (v80 != ((v72 >> 4) & 1))
  {
    goto LABEL_189;
  }

  if (v80)
  {
    entityPartialSiriCount6Hr = self->_entityPartialSiriCount6Hr;
    if (entityPartialSiriCount6Hr != [equalCopy entityPartialSiriCount6Hr])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v82 = (v71 >> 5) & 1;
  if (v82 != ((v72 >> 5) & 1))
  {
    goto LABEL_189;
  }

  if (v82)
  {
    entityPartialSiriCount1Day = self->_entityPartialSiriCount1Day;
    if (entityPartialSiriCount1Day != [equalCopy entityPartialSiriCount1Day])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v84 = (v71 >> 6) & 1;
  if (v84 != ((v72 >> 6) & 1))
  {
    goto LABEL_189;
  }

  if (v84)
  {
    entityPartialSiriCount7Day = self->_entityPartialSiriCount7Day;
    if (entityPartialSiriCount7Day != [equalCopy entityPartialSiriCount7Day])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v86 = (v71 >> 7) & 1;
  if (v86 != ((v72 >> 7) & 1))
  {
    goto LABEL_189;
  }

  if (v86)
  {
    entityPartialSiriCount28Day = self->_entityPartialSiriCount28Day;
    if (entityPartialSiriCount28Day != [equalCopy entityPartialSiriCount28Day])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v88 = (v71 >> 8) & 1;
  if (v88 != ((v72 >> 8) & 1))
  {
    goto LABEL_189;
  }

  if (v88)
  {
    entityPartialAppCount2Min = self->_entityPartialAppCount2Min;
    if (entityPartialAppCount2Min != [equalCopy entityPartialAppCount2Min])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v90 = (v71 >> 9) & 1;
  if (v90 != ((v72 >> 9) & 1))
  {
    goto LABEL_189;
  }

  if (v90)
  {
    entityPartialAppCount10Min = self->_entityPartialAppCount10Min;
    if (entityPartialAppCount10Min != [equalCopy entityPartialAppCount10Min])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v92 = (v71 >> 10) & 1;
  if (v92 != ((v72 >> 10) & 1))
  {
    goto LABEL_189;
  }

  if (v92)
  {
    entityPartialAppCount1Hr = self->_entityPartialAppCount1Hr;
    if (entityPartialAppCount1Hr != [equalCopy entityPartialAppCount1Hr])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v94 = (v71 >> 11) & 1;
  if (v94 != ((v72 >> 11) & 1))
  {
    goto LABEL_189;
  }

  if (v94)
  {
    entityPartialAppCount6Hr = self->_entityPartialAppCount6Hr;
    if (entityPartialAppCount6Hr != [equalCopy entityPartialAppCount6Hr])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v96 = (v71 >> 12) & 1;
  if (v96 != ((v72 >> 12) & 1))
  {
    goto LABEL_189;
  }

  if (v96)
  {
    entityPartialAppCount1Day = self->_entityPartialAppCount1Day;
    if (entityPartialAppCount1Day != [equalCopy entityPartialAppCount1Day])
    {
      goto LABEL_189;
    }

    v71 = *(&self->_has + 2);
    v72 = *(equalCopy + 100);
  }

  v98 = (v71 >> 13) & 1;
  if (v98 != ((v72 >> 13) & 1))
  {
    goto LABEL_189;
  }

  if (v98)
  {
    entityPartialAppCount7Day = self->_entityPartialAppCount7Day;
    if (entityPartialAppCount7Day == [equalCopy entityPartialAppCount7Day])
    {
      v71 = *(&self->_has + 2);
      v72 = *(equalCopy + 100);
      goto LABEL_185;
    }

LABEL_189:
    v102 = 0;
    goto LABEL_190;
  }

LABEL_185:
  v100 = (v71 >> 14) & 1;
  if (v100 != ((v72 >> 14) & 1))
  {
    goto LABEL_189;
  }

  if (v100)
  {
    entityPartialAppCount28Day = self->_entityPartialAppCount28Day;
    if (entityPartialAppCount28Day != [equalCopy entityPartialAppCount28Day])
    {
      goto LABEL_189;
    }
  }

  v102 = 1;
LABEL_190:

  return v102;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_16:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_17:
    if ((has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_18:
    if ((has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_19:
    if ((has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_20:
    if ((has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_21:
    if ((has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_22:
    if ((has & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_23:
    if ((has & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_24:
    if ((has & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_25:
    if ((has & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_26:
    if ((has & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_27:
    if ((has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_28:
    if ((has & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_29:
    if ((has & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_80;
  }

LABEL_79:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_30:
    if ((has & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_81;
  }

LABEL_80:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_31:
    if ((has & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_82:
    PBDataWriterWriteInt32Field();
    if ((*p_has & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_81:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x40000000) != 0)
  {
    goto LABEL_82;
  }

LABEL_32:
  if ((has & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_83:
  PBDataWriterWriteUint64Field();
LABEL_33:
  v6 = *(&self->_has + 2);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_has + 2);
    if ((v6 & 2) == 0)
    {
LABEL_35:
      if ((v6 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_86;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_35;
  }

  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 4) == 0)
  {
LABEL_36:
    if ((v6 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_87;
  }

LABEL_86:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 8) == 0)
  {
LABEL_37:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_88;
  }

LABEL_87:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x10) == 0)
  {
LABEL_38:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_89;
  }

LABEL_88:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x20) == 0)
  {
LABEL_39:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_90;
  }

LABEL_89:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x40) == 0)
  {
LABEL_40:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_91;
  }

LABEL_90:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x80) == 0)
  {
LABEL_41:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_92;
  }

LABEL_91:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x100) == 0)
  {
LABEL_42:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_93;
  }

LABEL_92:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x200) == 0)
  {
LABEL_43:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_94;
  }

LABEL_93:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x400) == 0)
  {
LABEL_44:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_95;
  }

LABEL_94:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x800) == 0)
  {
LABEL_45:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_96;
  }

LABEL_95:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x1000) == 0)
  {
LABEL_46:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_97;
  }

LABEL_96:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x2000) == 0)
  {
LABEL_47:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_97:
  PBDataWriterWriteInt32Field();
  if ((*(&self->_has + 2) & 0x4000) != 0)
  {
LABEL_48:
    PBDataWriterWriteInt32Field();
  }

LABEL_49:
}

- (void)setHasEntityPartialAppCount28Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xBFFF | v3;
}

- (void)setHasEntityPartialAppCount7Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xDFFF | v3;
}

- (void)setHasEntityPartialAppCount1Day:(BOOL)day
{
  if (day)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xEFFF | v3;
}

- (void)setHasEntityPartialAppCount6Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xF7FF | v3;
}

- (void)setHasEntityPartialAppCount1Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFBFF | v3;
}

- (void)setHasEntityPartialAppCount10Min:(BOOL)min
{
  if (min)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFDFF | v3;
}

- (void)setHasEntityPartialAppCount2Min:(BOOL)min
{
  if (min)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFEFF | v3;
}

- (void)setHasEntityPartialSiriCount28Day:(BOOL)day
{
  if (day)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFF7F | v3;
}

- (void)setHasEntityPartialSiriCount7Day:(BOOL)day
{
  if (day)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFBF | v3;
}

- (void)setHasEntityPartialSiriCount1Day:(BOOL)day
{
  if (day)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFDF | v3;
}

- (void)setHasEntityPartialSiriCount6Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFEF | v3;
}

- (void)setHasEntityPartialSiriCount1Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFF7 | v3;
}

- (void)setHasEntityPartialSiriCount10Min:(BOOL)min
{
  if (min)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFB | v3;
}

- (void)setHasEntityPartialSiriCount2Min:(BOOL)min
{
  if (min)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFD | v3;
}

- (void)setHasSupportedMediaCategories:(BOOL)categories
{
  if (categories)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80000000 | *&self->_has & 0x7FFFFFFF;
}

- (void)setHasSpotlightRelativeCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFF | v3;
}

- (void)setHasTimeSinceLastNowPlayingAppEndInSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFF | v3;
}

- (void)setHasTimeSinceLastNowPlayingAppStartInSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFF | v3;
}

- (void)setHasTimeSinceLastForegroundAppEndInSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFF | v3;
}

- (void)setHasTimeSinceLastForegroundAppStartInSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFF | v3;
}

- (void)setHasIsSelectedApp:(BOOL)app
{
  if (app)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFF | v3;
}

- (void)setHasIsNowPlayingApp:(BOOL)app
{
  if (app)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFF | v3;
}

- (void)setHasNowPlayingAbsoluteCount28Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFF | v3;
}

- (void)setHasNowPlayingAbsoluteCount14Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFF | v3;
}

- (void)setHasNowPlayingAbsoluteCount7Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFF | v3;
}

- (void)setHasNowPlayingAbsoluteCount1Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFF | v3;
}

- (void)setHasNowPlayingAbsoluteCount6Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFF | v3;
}

- (void)setHasNowPlayingAbsoluteCount1Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFF | v3;
}

- (void)setHasNowPlayingAbsoluteCount10Min:(BOOL)min
{
  if (min)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFF | v3;
}

- (void)setHasNowPlayingAbsoluteCount2Min:(BOOL)min
{
  if (min)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFF | v3;
}

- (void)setHasIsLastNowPlayingApp:(BOOL)app
{
  if (app)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFF | v3;
}

- (void)setHasIsLastForegroundApp:(BOOL)app
{
  if (app)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFF | v3;
}

- (void)setHasMediaUserContextSubscriptionStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFF | v3;
}

- (void)setHasMediaUserContextNumberOfLibraryItems:(BOOL)items
{
  if (items)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFF | v3;
}

- (void)setHasEntityRecency:(BOOL)recency
{
  if (recency)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FF | v3;
}

- (void)setHasEntityAbsoluteCount28Day:(BOOL)day
{
  if (day)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFF | v3;
}

- (void)setHasEntityAbsoluteCount14Day:(BOOL)day
{
  if (day)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFF | v3;
}

- (void)setHasEntityAbsoluteCount7Day:(BOOL)day
{
  if (day)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFF | v3;
}

- (void)setHasEntityAbsoluteCount1Day:(BOOL)day
{
  if (day)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7F | v3;
}

- (void)setHasEntityAbsoluteCount6Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBF | v3;
}

- (void)setHasEntityAbsoluteCount1Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDF | v3;
}

- (void)setHasEntityAbsoluteCount10Min:(BOOL)min
{
  if (min)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEF | v3;
}

- (void)setHasEntityAbsoluteCount2Min:(BOOL)min
{
  if (min)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7 | v3;
}

- (void)setHasRelativeAppUsage14Day:(BOOL)day
{
  if (day)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFB | v3;
}

- (void)setHasRelativeAppUsage7Day:(BOOL)day
{
  if (day)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end