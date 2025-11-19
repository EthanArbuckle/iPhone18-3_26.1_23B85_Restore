@interface POMMESSchemaPOMMESClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESCacheInvalidationContext)cacheInvalidationContext;
- (POMMESSchemaPOMMESCacheLookupContext)cacheLookupContext;
- (POMMESSchemaPOMMESCacheMaintenanceContext)cacheMaintenanceContext;
- (POMMESSchemaPOMMESCacheStoringContext)cacheStoringContext;
- (POMMESSchemaPOMMESClientEvent)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESClientEvent)initWithJSON:(id)a3;
- (POMMESSchemaPOMMESDebugPerformanceReported)performanceReported;
- (POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived)pommesKnowledgeFallbackConfirmationOutcomeReceived;
- (POMMESSchemaPOMMESKnowledgeFallbackContext)pommesKnowledgeFallbackContext;
- (POMMESSchemaPOMMESKnowledgeFallbackOffered)pommesKnowledgeFallbackOffered;
- (POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown)pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
- (POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived)pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
- (POMMESSchemaPOMMESOnDeviceIndexSearchContext)onDeviceIndexSearchContext;
- (POMMESSchemaPOMMESPegasusKitPegasusRequestContext)pegasusKitRequestContext;
- (POMMESSchemaPOMMESPegasusRequestContext)pegasusRequestContext;
- (POMMESSchemaPOMMESPegasusRequestGeoAppResolutionReported)pommesPegasusRequestGeoAppResolutionReported;
- (POMMESSchemaPOMMESProfileSliceResolutionRequestContext)profileResolutionRequestContext;
- (POMMESSchemaPOMMESRequestContext)pommesRequestContext;
- (POMMESSchemaPOMMESResourceDownloadContext)resourceDownloadContext;
- (POMMESSchemaPOMMESSearchRequestClassifierExecuted)pommesSearchRequestClassifierExecuted;
- (POMMESSchemaPOMMESServiceClassifierScoreReported)pommesServiceClassifierScoreReported;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCacheInvalidationContext;
- (void)deleteCacheLookupContext;
- (void)deleteCacheMaintenanceContext;
- (void)deleteCacheStoringContext;
- (void)deleteOnDeviceIndexSearchContext;
- (void)deletePegasusKitRequestContext;
- (void)deletePegasusRequestContext;
- (void)deletePerformanceReported;
- (void)deletePommesKnowledgeFallbackConfirmationOutcomeReceived;
- (void)deletePommesKnowledgeFallbackContext;
- (void)deletePommesKnowledgeFallbackOffered;
- (void)deletePommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
- (void)deletePommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
- (void)deletePommesPegasusRequestGeoAppResolutionReported;
- (void)deletePommesRequestContext;
- (void)deletePommesSearchRequestClassifierExecuted;
- (void)deletePommesServiceClassifierScoreReported;
- (void)deleteProfileResolutionRequestContext;
- (void)deleteResourceDownloadContext;
- (void)setCacheInvalidationContext:(id)a3;
- (void)setCacheLookupContext:(id)a3;
- (void)setCacheMaintenanceContext:(id)a3;
- (void)setCacheStoringContext:(id)a3;
- (void)setOnDeviceIndexSearchContext:(id)a3;
- (void)setPegasusKitRequestContext:(id)a3;
- (void)setPegasusRequestContext:(id)a3;
- (void)setPerformanceReported:(id)a3;
- (void)setPommesKnowledgeFallbackConfirmationOutcomeReceived:(id)a3;
- (void)setPommesKnowledgeFallbackContext:(id)a3;
- (void)setPommesKnowledgeFallbackOffered:(id)a3;
- (void)setPommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown:(id)a3;
- (void)setPommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived:(id)a3;
- (void)setPommesPegasusRequestGeoAppResolutionReported:(id)a3;
- (void)setPommesRequestContext:(id)a3;
- (void)setPommesSearchRequestClassifierExecuted:(id)a3;
- (void)setPommesServiceClassifierScoreReported:(id)a3;
- (void)setProfileResolutionRequestContext:(id)a3;
- (void)setResourceDownloadContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESClientEvent

- (POMMESSchemaPOMMESClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = POMMESSchemaPOMMESClientEvent;
  v5 = [(POMMESSchemaPOMMESClientEvent *)&v61 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[POMMESSchemaPOMMESClientEventMetadata alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"pegasusRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[POMMESSchemaPOMMESPegasusRequestContext alloc] initWithDictionary:v8];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPegasusRequestContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"onDeviceIndexSearchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[POMMESSchemaPOMMESOnDeviceIndexSearchContext alloc] initWithDictionary:v10];
      [(POMMESSchemaPOMMESClientEvent *)v5 setOnDeviceIndexSearchContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"pommesServiceClassifierScoreReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[POMMESSchemaPOMMESServiceClassifierScoreReported alloc] initWithDictionary:v12];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesServiceClassifierScoreReported:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"pommesRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[POMMESSchemaPOMMESRequestContext alloc] initWithDictionary:v14];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesRequestContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"performanceReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[POMMESSchemaPOMMESDebugPerformanceReported alloc] initWithDictionary:v16];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPerformanceReported:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"profileResolutionRequestContext"];
    objc_opt_class();
    v60 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[POMMESSchemaPOMMESProfileSliceResolutionRequestContext alloc] initWithDictionary:v18];
      [(POMMESSchemaPOMMESClientEvent *)v5 setProfileResolutionRequestContext:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"pegasusKitRequestContext"];
    objc_opt_class();
    v59 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[POMMESSchemaPOMMESPegasusKitPegasusRequestContext alloc] initWithDictionary:v20];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPegasusKitRequestContext:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"resourceDownloadContext"];
    objc_opt_class();
    v58 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[POMMESSchemaPOMMESResourceDownloadContext alloc] initWithDictionary:v22];
      [(POMMESSchemaPOMMESClientEvent *)v5 setResourceDownloadContext:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"cacheLookupContext"];
    objc_opt_class();
    v57 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[POMMESSchemaPOMMESCacheLookupContext alloc] initWithDictionary:v24];
      [(POMMESSchemaPOMMESClientEvent *)v5 setCacheLookupContext:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"cacheStoringContext"];
    objc_opt_class();
    v56 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[POMMESSchemaPOMMESCacheStoringContext alloc] initWithDictionary:v26];
      [(POMMESSchemaPOMMESClientEvent *)v5 setCacheStoringContext:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"cacheInvalidationContext"];
    objc_opt_class();
    v55 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[POMMESSchemaPOMMESCacheInvalidationContext alloc] initWithDictionary:v28];
      [(POMMESSchemaPOMMESClientEvent *)v5 setCacheInvalidationContext:v29];
    }

    v51 = v12;
    v30 = [v4 objectForKeyedSubscript:@"cacheMaintenanceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[POMMESSchemaPOMMESCacheMaintenanceContext alloc] initWithDictionary:v30];
      [(POMMESSchemaPOMMESClientEvent *)v5 setCacheMaintenanceContext:v31];
    }

    v48 = v30;
    v50 = v14;
    v32 = [v4 objectForKeyedSubscript:@"pommesPegasusRequestGeoAppResolutionReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[POMMESSchemaPOMMESPegasusRequestGeoAppResolutionReported alloc] initWithDictionary:v32];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesPegasusRequestGeoAppResolutionReported:v33];
    }

    v49 = v16;
    v34 = [v4 objectForKeyedSubscript:@"pommesSearchRequestClassifierExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[POMMESSchemaPOMMESSearchRequestClassifierExecuted alloc] initWithDictionary:v34];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesSearchRequestClassifierExecuted:v35];
    }

    v54 = v6;
    v36 = [v4 objectForKeyedSubscript:@"pommesKnowledgeFallbackContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[POMMESSchemaPOMMESKnowledgeFallbackContext alloc] initWithDictionary:v36];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesKnowledgeFallbackContext:v37];
    }

    v53 = v8;
    v38 = [v4 objectForKeyedSubscript:@"pommesKnowledgeFallbackOffered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[POMMESSchemaPOMMESKnowledgeFallbackOffered alloc] initWithDictionary:v38];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesKnowledgeFallbackOffered:v39];
    }

    v52 = v10;
    v40 = [v4 objectForKeyedSubscript:@"pommesKnowledgeFallbackConfirmationOutcomeReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived alloc] initWithDictionary:v40];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesKnowledgeFallbackConfirmationOutcomeReceived:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown alloc] initWithDictionary:v42];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived alloc] initWithDictionary:v44];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived:v45];
    }

    v46 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESClientEvent *)self dictionaryRepresentation];
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
  if (self->_cacheInvalidationContext)
  {
    v4 = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"cacheInvalidationContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"cacheInvalidationContext"];
    }
  }

  if (self->_cacheLookupContext)
  {
    v7 = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"cacheLookupContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"cacheLookupContext"];
    }
  }

  if (self->_cacheMaintenanceContext)
  {
    v10 = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"cacheMaintenanceContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"cacheMaintenanceContext"];
    }
  }

  if (self->_cacheStoringContext)
  {
    v13 = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"cacheStoringContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"cacheStoringContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v16 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_onDeviceIndexSearchContext)
  {
    v19 = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"onDeviceIndexSearchContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"onDeviceIndexSearchContext"];
    }
  }

  if (self->_pegasusKitRequestContext)
  {
    v22 = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"pegasusKitRequestContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"pegasusKitRequestContext"];
    }
  }

  if (self->_pegasusRequestContext)
  {
    v25 = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"pegasusRequestContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"pegasusRequestContext"];
    }
  }

  if (self->_performanceReported)
  {
    v28 = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"performanceReported"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"performanceReported"];
    }
  }

  if (self->_pommesKnowledgeFallbackConfirmationOutcomeReceived)
  {
    v31 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"pommesKnowledgeFallbackConfirmationOutcomeReceived"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"pommesKnowledgeFallbackConfirmationOutcomeReceived"];
    }
  }

  if (self->_pommesKnowledgeFallbackContext)
  {
    v34 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"pommesKnowledgeFallbackContext"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"pommesKnowledgeFallbackContext"];
    }
  }

  if (self->_pommesKnowledgeFallbackOffered)
  {
    v37 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"pommesKnowledgeFallbackOffered"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"pommesKnowledgeFallbackOffered"];
    }
  }

  if (self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown)
  {
    v40 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown"];
    }
  }

  if (self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived)
  {
    v43 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived"];
    }
  }

  if (self->_pommesPegasusRequestGeoAppResolutionReported)
  {
    v46 = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"pommesPegasusRequestGeoAppResolutionReported"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"pommesPegasusRequestGeoAppResolutionReported"];
    }
  }

  if (self->_pommesRequestContext)
  {
    v49 = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"pommesRequestContext"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"pommesRequestContext"];
    }
  }

  if (self->_pommesSearchRequestClassifierExecuted)
  {
    v52 = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"pommesSearchRequestClassifierExecuted"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"pommesSearchRequestClassifierExecuted"];
    }
  }

  if (self->_pommesServiceClassifierScoreReported)
  {
    v55 = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"pommesServiceClassifierScoreReported"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"pommesServiceClassifierScoreReported"];
    }
  }

  if (self->_profileResolutionRequestContext)
  {
    v58 = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"profileResolutionRequestContext"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"profileResolutionRequestContext"];
    }
  }

  if (self->_resourceDownloadContext)
  {
    v61 = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"resourceDownloadContext"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"resourceDownloadContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(POMMESSchemaPOMMESClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(POMMESSchemaPOMMESPegasusRequestContext *)self->_pegasusRequestContext hash]^ v3;
  v5 = [(POMMESSchemaPOMMESOnDeviceIndexSearchContext *)self->_onDeviceIndexSearchContext hash];
  v6 = v4 ^ v5 ^ [(POMMESSchemaPOMMESServiceClassifierScoreReported *)self->_pommesServiceClassifierScoreReported hash];
  v7 = [(POMMESSchemaPOMMESRequestContext *)self->_pommesRequestContext hash];
  v8 = v7 ^ [(POMMESSchemaPOMMESDebugPerformanceReported *)self->_performanceReported hash];
  v9 = v6 ^ v8 ^ [(POMMESSchemaPOMMESProfileSliceResolutionRequestContext *)self->_profileResolutionRequestContext hash];
  v10 = [(POMMESSchemaPOMMESPegasusKitPegasusRequestContext *)self->_pegasusKitRequestContext hash];
  v11 = v10 ^ [(POMMESSchemaPOMMESResourceDownloadContext *)self->_resourceDownloadContext hash];
  v12 = v11 ^ [(POMMESSchemaPOMMESCacheLookupContext *)self->_cacheLookupContext hash];
  v13 = v9 ^ v12 ^ [(POMMESSchemaPOMMESCacheStoringContext *)self->_cacheStoringContext hash];
  v14 = [(POMMESSchemaPOMMESCacheInvalidationContext *)self->_cacheInvalidationContext hash];
  v15 = v14 ^ [(POMMESSchemaPOMMESCacheMaintenanceContext *)self->_cacheMaintenanceContext hash];
  v16 = v15 ^ [(POMMESSchemaPOMMESPegasusRequestGeoAppResolutionReported *)self->_pommesPegasusRequestGeoAppResolutionReported hash];
  v17 = v16 ^ [(POMMESSchemaPOMMESSearchRequestClassifierExecuted *)self->_pommesSearchRequestClassifierExecuted hash];
  v18 = v13 ^ v17 ^ [(POMMESSchemaPOMMESKnowledgeFallbackContext *)self->_pommesKnowledgeFallbackContext hash];
  v19 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self->_pommesKnowledgeFallbackOffered hash];
  v20 = v19 ^ [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self->_pommesKnowledgeFallbackConfirmationOutcomeReceived hash];
  v21 = v20 ^ [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown *)self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown hash];
  return v18 ^ v21 ^ [(POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived *)self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_103;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_103;
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v8 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
  v7 = [v4 pegasusRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v13 = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
    v16 = [v4 pegasusRequestContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
  v7 = [v4 onDeviceIndexSearchContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v18 = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
    v21 = [v4 onDeviceIndexSearchContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
  v7 = [v4 pommesServiceClassifierScoreReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v23 = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
  if (v23)
  {
    v24 = v23;
    v25 = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
    v26 = [v4 pommesServiceClassifierScoreReported];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
  v7 = [v4 pommesRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v28 = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
    v31 = [v4 pommesRequestContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
  v7 = [v4 performanceReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v33 = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
  if (v33)
  {
    v34 = v33;
    v35 = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
    v36 = [v4 performanceReported];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
  v7 = [v4 profileResolutionRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v38 = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
    v41 = [v4 profileResolutionRequestContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
  v7 = [v4 pegasusKitRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v43 = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
  if (v43)
  {
    v44 = v43;
    v45 = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
    v46 = [v4 pegasusKitRequestContext];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
  v7 = [v4 resourceDownloadContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v48 = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
  if (v48)
  {
    v49 = v48;
    v50 = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
    v51 = [v4 resourceDownloadContext];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
  v7 = [v4 cacheLookupContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v53 = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
  if (v53)
  {
    v54 = v53;
    v55 = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
    v56 = [v4 cacheLookupContext];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
  v7 = [v4 cacheStoringContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v58 = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
  if (v58)
  {
    v59 = v58;
    v60 = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
    v61 = [v4 cacheStoringContext];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
  v7 = [v4 cacheInvalidationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v63 = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
  if (v63)
  {
    v64 = v63;
    v65 = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
    v66 = [v4 cacheInvalidationContext];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
  v7 = [v4 cacheMaintenanceContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v68 = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
  if (v68)
  {
    v69 = v68;
    v70 = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
    v71 = [v4 cacheMaintenanceContext];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
  v7 = [v4 pommesPegasusRequestGeoAppResolutionReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v73 = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
  if (v73)
  {
    v74 = v73;
    v75 = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
    v76 = [v4 pommesPegasusRequestGeoAppResolutionReported];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
  v7 = [v4 pommesSearchRequestClassifierExecuted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v78 = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
  if (v78)
  {
    v79 = v78;
    v80 = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
    v81 = [v4 pommesSearchRequestClassifierExecuted];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
  v7 = [v4 pommesKnowledgeFallbackContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v83 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
  if (v83)
  {
    v84 = v83;
    v85 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
    v86 = [v4 pommesKnowledgeFallbackContext];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
  v7 = [v4 pommesKnowledgeFallbackOffered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v88 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
  if (v88)
  {
    v89 = v88;
    v90 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
    v91 = [v4 pommesKnowledgeFallbackOffered];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
  v7 = [v4 pommesKnowledgeFallbackConfirmationOutcomeReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v93 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
  if (v93)
  {
    v94 = v93;
    v95 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
    v96 = [v4 pommesKnowledgeFallbackConfirmationOutcomeReceived];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
  v7 = [v4 pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_102;
  }

  v98 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
  if (v98)
  {
    v99 = v98;
    v100 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
    v101 = [v4 pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
  v7 = [v4 pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
  if ((v6 != 0) != (v7 == 0))
  {
    v103 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
    if (!v103)
    {

LABEL_106:
      v108 = 1;
      goto LABEL_104;
    }

    v104 = v103;
    v105 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
    v106 = [v4 pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
    v107 = [v105 isEqual:v106];

    if (v107)
    {
      goto LABEL_106;
    }
  }

  else
  {
LABEL_102:
  }

LABEL_103:
  v108 = 0;
LABEL_104:

  return v108;
}

- (void)writeTo:(id)a3
{
  v45 = a3;
  v4 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];

  if (v6)
  {
    v7 = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];

  if (v8)
  {
    v9 = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];

  if (v10)
  {
    v11 = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];

  if (v12)
  {
    v13 = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];

  if (v14)
  {
    v15 = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];

  if (v16)
  {
    v17 = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];

  if (v18)
  {
    v19 = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];

  if (v20)
  {
    v21 = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];

  if (v22)
  {
    v23 = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];

  if (v24)
  {
    v25 = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];

  if (v26)
  {
    v27 = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];

  if (v28)
  {
    v29 = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];

  if (v30)
  {
    v31 = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];

  if (v32)
  {
    v33 = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];

  if (v34)
  {
    v35 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];

  if (v36)
  {
    v37 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];

  if (v38)
  {
    v39 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];

  if (v40)
  {
    v41 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];

  v43 = v45;
  if (v42)
  {
    v44 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
    PBDataWriterWriteSubmessage();

    v43 = v45;
  }
}

- (void)deletePommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived
{
  if (self->_whichEvent_Type == 119)
  {
    self->_whichEvent_Type = 0;
    self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived)pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived
{
  if (self->_whichEvent_Type == 119)
  {
    v3 = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  v23 = 119;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = v4;
}

- (void)deletePommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown
{
  if (self->_whichEvent_Type == 118)
  {
    self->_whichEvent_Type = 0;
    self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown)pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown
{
  if (self->_whichEvent_Type == 118)
  {
    v3 = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 118;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = v4;
}

- (void)deletePommesKnowledgeFallbackConfirmationOutcomeReceived
{
  if (self->_whichEvent_Type == 117)
  {
    self->_whichEvent_Type = 0;
    self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived)pommesKnowledgeFallbackConfirmationOutcomeReceived
{
  if (self->_whichEvent_Type == 117)
  {
    v3 = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommesKnowledgeFallbackConfirmationOutcomeReceived:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 117;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = v4;
}

- (void)deletePommesKnowledgeFallbackOffered
{
  if (self->_whichEvent_Type == 116)
  {
    self->_whichEvent_Type = 0;
    self->_pommesKnowledgeFallbackOffered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESKnowledgeFallbackOffered)pommesKnowledgeFallbackOffered
{
  if (self->_whichEvent_Type == 116)
  {
    v3 = self->_pommesKnowledgeFallbackOffered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommesKnowledgeFallbackOffered:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 116;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = v4;
}

- (void)deletePommesKnowledgeFallbackContext
{
  if (self->_whichEvent_Type == 115)
  {
    self->_whichEvent_Type = 0;
    self->_pommesKnowledgeFallbackContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESKnowledgeFallbackContext)pommesKnowledgeFallbackContext
{
  if (self->_whichEvent_Type == 115)
  {
    v3 = self->_pommesKnowledgeFallbackContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommesKnowledgeFallbackContext:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 115;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = v4;
}

- (void)deletePommesSearchRequestClassifierExecuted
{
  if (self->_whichEvent_Type == 114)
  {
    self->_whichEvent_Type = 0;
    self->_pommesSearchRequestClassifierExecuted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESSearchRequestClassifierExecuted)pommesSearchRequestClassifierExecuted
{
  if (self->_whichEvent_Type == 114)
  {
    v3 = self->_pommesSearchRequestClassifierExecuted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommesSearchRequestClassifierExecuted:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 114;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = v4;
}

- (void)deletePommesPegasusRequestGeoAppResolutionReported
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_pommesPegasusRequestGeoAppResolutionReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESPegasusRequestGeoAppResolutionReported)pommesPegasusRequestGeoAppResolutionReported
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_pommesPegasusRequestGeoAppResolutionReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommesPegasusRequestGeoAppResolutionReported:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 113;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = v4;
}

- (void)deleteCacheMaintenanceContext
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_cacheMaintenanceContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESCacheMaintenanceContext)cacheMaintenanceContext
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_cacheMaintenanceContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCacheMaintenanceContext:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 112;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = v4;
}

- (void)deleteCacheInvalidationContext
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_cacheInvalidationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESCacheInvalidationContext)cacheInvalidationContext
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_cacheInvalidationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCacheInvalidationContext:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 111;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = v4;
}

- (void)deleteCacheStoringContext
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_cacheStoringContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESCacheStoringContext)cacheStoringContext
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_cacheStoringContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCacheStoringContext:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 110;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = v4;
}

- (void)deleteCacheLookupContext
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_cacheLookupContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESCacheLookupContext)cacheLookupContext
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_cacheLookupContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCacheLookupContext:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 109;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = v4;
}

- (void)deleteResourceDownloadContext
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_resourceDownloadContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESResourceDownloadContext)resourceDownloadContext
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_resourceDownloadContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setResourceDownloadContext:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 108;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = v4;
}

- (void)deletePegasusKitRequestContext
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusKitRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESPegasusKitPegasusRequestContext)pegasusKitRequestContext
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_pegasusKitRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusKitRequestContext:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 107;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = v4;
}

- (void)deleteProfileResolutionRequestContext
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_profileResolutionRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESProfileSliceResolutionRequestContext)profileResolutionRequestContext
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_profileResolutionRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setProfileResolutionRequestContext:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 106;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = v4;
}

- (void)deletePerformanceReported
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_performanceReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESDebugPerformanceReported)performanceReported
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_performanceReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPerformanceReported:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 105;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  performanceReported = self->_performanceReported;
  self->_performanceReported = v4;
}

- (void)deletePommesRequestContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_pommesRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESRequestContext)pommesRequestContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_pommesRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommesRequestContext:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 104;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = v4;
}

- (void)deletePommesServiceClassifierScoreReported
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_pommesServiceClassifierScoreReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESServiceClassifierScoreReported)pommesServiceClassifierScoreReported
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_pommesServiceClassifierScoreReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommesServiceClassifierScoreReported:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 103;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = v4;
}

- (void)deleteOnDeviceIndexSearchContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_onDeviceIndexSearchContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESOnDeviceIndexSearchContext)onDeviceIndexSearchContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_onDeviceIndexSearchContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOnDeviceIndexSearchContext:(id)a3
{
  v4 = a3;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 102;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = v4;
}

- (void)deletePegasusRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESPegasusRequestContext)pegasusRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_pegasusRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusRequestContext:(id)a3
{
  v4 = a3;
  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = 0;

  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = 0;

  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = 0;

  performanceReported = self->_performanceReported;
  self->_performanceReported = 0;

  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = 0;

  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = 0;

  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = 0;

  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = 0;

  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = 0;

  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = 0;

  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = 0;

  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = 0;

  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = 0;

  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = 0;

  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = 0;

  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = 0;

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = 0;

  v23 = 101;
  if (!v4)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(POMMESSchemaPOMMESClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 0x12)
  {
    return @"com.apple.aiml.siri.pommes.POMMESClientEvent";
  }

  else
  {
    return off_1E78E0DD0[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v67.receiver = self;
  v67.super_class = POMMESSchemaPOMMESClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v67 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteEventMetadata];
  }

  v9 = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePegasusRequestContext];
  }

  v12 = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteOnDeviceIndexSearchContext];
  }

  v15 = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesServiceClassifierScoreReported];
  }

  v18 = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesRequestContext];
  }

  v21 = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePerformanceReported];
  }

  v24 = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteProfileResolutionRequestContext];
  }

  v27 = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePegasusKitRequestContext];
  }

  v30 = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteResourceDownloadContext];
  }

  v33 = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteCacheLookupContext];
  }

  v36 = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteCacheStoringContext];
  }

  v39 = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteCacheInvalidationContext];
  }

  v42 = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteCacheMaintenanceContext];
  }

  v45 = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesPegasusRequestGeoAppResolutionReported];
  }

  v48 = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesSearchRequestClassifierExecuted];
  }

  v51 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesKnowledgeFallbackContext];
  }

  v54 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesKnowledgeFallbackOffered];
  }

  v57 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesKnowledgeFallbackConfirmationOutcomeReceived];
  }

  v60 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
  }

  v63 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  v3 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  v4 = [v3 pommesId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 21;
  }

  else
  {
    v10 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11 && ([v11 value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      v9 = 1;
      v4 = v11;
    }

    else
    {
      v16 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
      v4 = [v16 subRequestId];

      if (v4 && ([v4 value], (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, objc_msgSend(v4, "value"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length"), v19, v18, v20))
      {
        v9 = 43;
      }

      else
      {
        v21 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
        v22 = [v21 searchToolId];

        if (v22)
        {
          v23 = [v22 value];
          if (v23)
          {
            v24 = v23;
            v25 = [v22 value];
            v26 = [v25 length];

            if (v26)
            {
              v9 = 55;
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }

          v4 = v22;
        }

        else
        {
          v9 = 0;
          v4 = 0;
        }
      }
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  v4 = [v3 pommesId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 value];
      v14 = [v13 length];

      if (v14)
      {
        v4 = v10;
LABEL_15:
        v22 = v4;
        v21 = v22;
        goto LABEL_17;
      }
    }
  }

  v15 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  v4 = [v15 subRequestId];

  if (v4)
  {
    v16 = [v4 value];
    if (v16)
    {
      v17 = v16;
      v18 = [v4 value];
      v19 = [v18 length];

      if (v19)
      {
        goto LABEL_15;
      }
    }
  }

  v20 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  v21 = [v20 searchToolId];

  if (v21)
  {
    v22 = [v21 value];
    if (!v22)
    {
      goto LABEL_17;
    }

    v23 = [v21 value];
    v24 = [v23 length];

    if (v24)
    {
      v4 = v21;
      goto LABEL_15;
    }
  }

  v22 = 0;
LABEL_17:

  return v22;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(POMMESSchemaPOMMESClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 0x12)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EABD8[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 0x12)
  {
    return 0;
  }

  else
  {
    return off_1E78EAC70[a3 - 101];
  }
}

- (int)clockIsolationLevel
{
  if ([(POMMESSchemaPOMMESClientEvent *)self whichEvent_Type]== 112)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end