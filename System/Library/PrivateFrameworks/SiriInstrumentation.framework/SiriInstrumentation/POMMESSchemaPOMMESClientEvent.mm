@interface POMMESSchemaPOMMESClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESCacheInvalidationContext)cacheInvalidationContext;
- (POMMESSchemaPOMMESCacheLookupContext)cacheLookupContext;
- (POMMESSchemaPOMMESCacheMaintenanceContext)cacheMaintenanceContext;
- (POMMESSchemaPOMMESCacheStoringContext)cacheStoringContext;
- (POMMESSchemaPOMMESClientEvent)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESClientEvent)initWithJSON:(id)n;
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
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setCacheInvalidationContext:(id)context;
- (void)setCacheLookupContext:(id)context;
- (void)setCacheMaintenanceContext:(id)context;
- (void)setCacheStoringContext:(id)context;
- (void)setOnDeviceIndexSearchContext:(id)context;
- (void)setPegasusKitRequestContext:(id)context;
- (void)setPegasusRequestContext:(id)context;
- (void)setPerformanceReported:(id)reported;
- (void)setPommesKnowledgeFallbackConfirmationOutcomeReceived:(id)received;
- (void)setPommesKnowledgeFallbackContext:(id)context;
- (void)setPommesKnowledgeFallbackOffered:(id)offered;
- (void)setPommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown:(id)shown;
- (void)setPommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived:(id)received;
- (void)setPommesPegasusRequestGeoAppResolutionReported:(id)reported;
- (void)setPommesRequestContext:(id)context;
- (void)setPommesSearchRequestClassifierExecuted:(id)executed;
- (void)setPommesServiceClassifierScoreReported:(id)reported;
- (void)setProfileResolutionRequestContext:(id)context;
- (void)setResourceDownloadContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESClientEvent

- (POMMESSchemaPOMMESClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v61.receiver = self;
  v61.super_class = POMMESSchemaPOMMESClientEvent;
  v5 = [(POMMESSchemaPOMMESClientEvent *)&v61 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[POMMESSchemaPOMMESClientEventMetadata alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pegasusRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[POMMESSchemaPOMMESPegasusRequestContext alloc] initWithDictionary:v8];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPegasusRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"onDeviceIndexSearchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[POMMESSchemaPOMMESOnDeviceIndexSearchContext alloc] initWithDictionary:v10];
      [(POMMESSchemaPOMMESClientEvent *)v5 setOnDeviceIndexSearchContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"pommesServiceClassifierScoreReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[POMMESSchemaPOMMESServiceClassifierScoreReported alloc] initWithDictionary:v12];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesServiceClassifierScoreReported:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"pommesRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[POMMESSchemaPOMMESRequestContext alloc] initWithDictionary:v14];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesRequestContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"performanceReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[POMMESSchemaPOMMESDebugPerformanceReported alloc] initWithDictionary:v16];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPerformanceReported:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"profileResolutionRequestContext"];
    objc_opt_class();
    v60 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[POMMESSchemaPOMMESProfileSliceResolutionRequestContext alloc] initWithDictionary:v18];
      [(POMMESSchemaPOMMESClientEvent *)v5 setProfileResolutionRequestContext:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"pegasusKitRequestContext"];
    objc_opt_class();
    v59 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[POMMESSchemaPOMMESPegasusKitPegasusRequestContext alloc] initWithDictionary:v20];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPegasusKitRequestContext:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"resourceDownloadContext"];
    objc_opt_class();
    v58 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[POMMESSchemaPOMMESResourceDownloadContext alloc] initWithDictionary:v22];
      [(POMMESSchemaPOMMESClientEvent *)v5 setResourceDownloadContext:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"cacheLookupContext"];
    objc_opt_class();
    v57 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[POMMESSchemaPOMMESCacheLookupContext alloc] initWithDictionary:v24];
      [(POMMESSchemaPOMMESClientEvent *)v5 setCacheLookupContext:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"cacheStoringContext"];
    objc_opt_class();
    v56 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[POMMESSchemaPOMMESCacheStoringContext alloc] initWithDictionary:v26];
      [(POMMESSchemaPOMMESClientEvent *)v5 setCacheStoringContext:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"cacheInvalidationContext"];
    objc_opt_class();
    v55 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[POMMESSchemaPOMMESCacheInvalidationContext alloc] initWithDictionary:v28];
      [(POMMESSchemaPOMMESClientEvent *)v5 setCacheInvalidationContext:v29];
    }

    v51 = v12;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"cacheMaintenanceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[POMMESSchemaPOMMESCacheMaintenanceContext alloc] initWithDictionary:v30];
      [(POMMESSchemaPOMMESClientEvent *)v5 setCacheMaintenanceContext:v31];
    }

    v48 = v30;
    v50 = v14;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"pommesPegasusRequestGeoAppResolutionReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[POMMESSchemaPOMMESPegasusRequestGeoAppResolutionReported alloc] initWithDictionary:v32];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesPegasusRequestGeoAppResolutionReported:v33];
    }

    v49 = v16;
    v34 = [dictionaryCopy objectForKeyedSubscript:@"pommesSearchRequestClassifierExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[POMMESSchemaPOMMESSearchRequestClassifierExecuted alloc] initWithDictionary:v34];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesSearchRequestClassifierExecuted:v35];
    }

    v54 = v6;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"pommesKnowledgeFallbackContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[POMMESSchemaPOMMESKnowledgeFallbackContext alloc] initWithDictionary:v36];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesKnowledgeFallbackContext:v37];
    }

    v53 = v8;
    v38 = [dictionaryCopy objectForKeyedSubscript:@"pommesKnowledgeFallbackOffered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[POMMESSchemaPOMMESKnowledgeFallbackOffered alloc] initWithDictionary:v38];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesKnowledgeFallbackOffered:v39];
    }

    v52 = v10;
    v40 = [dictionaryCopy objectForKeyedSubscript:@"pommesKnowledgeFallbackConfirmationOutcomeReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived alloc] initWithDictionary:v40];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesKnowledgeFallbackConfirmationOutcomeReceived:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown alloc] initWithDictionary:v42];
      [(POMMESSchemaPOMMESClientEvent *)v5 setPommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived"];
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

- (POMMESSchemaPOMMESClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESClientEvent *)self dictionaryRepresentation];
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
  if (self->_cacheInvalidationContext)
  {
    cacheInvalidationContext = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
    dictionaryRepresentation = [cacheInvalidationContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cacheInvalidationContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cacheInvalidationContext"];
    }
  }

  if (self->_cacheLookupContext)
  {
    cacheLookupContext = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
    dictionaryRepresentation2 = [cacheLookupContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"cacheLookupContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"cacheLookupContext"];
    }
  }

  if (self->_cacheMaintenanceContext)
  {
    cacheMaintenanceContext = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
    dictionaryRepresentation3 = [cacheMaintenanceContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"cacheMaintenanceContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"cacheMaintenanceContext"];
    }
  }

  if (self->_cacheStoringContext)
  {
    cacheStoringContext = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
    dictionaryRepresentation4 = [cacheStoringContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"cacheStoringContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"cacheStoringContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
    dictionaryRepresentation5 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_onDeviceIndexSearchContext)
  {
    onDeviceIndexSearchContext = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
    dictionaryRepresentation6 = [onDeviceIndexSearchContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"onDeviceIndexSearchContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"onDeviceIndexSearchContext"];
    }
  }

  if (self->_pegasusKitRequestContext)
  {
    pegasusKitRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
    dictionaryRepresentation7 = [pegasusKitRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"pegasusKitRequestContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"pegasusKitRequestContext"];
    }
  }

  if (self->_pegasusRequestContext)
  {
    pegasusRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
    dictionaryRepresentation8 = [pegasusRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"pegasusRequestContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"pegasusRequestContext"];
    }
  }

  if (self->_performanceReported)
  {
    performanceReported = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
    dictionaryRepresentation9 = [performanceReported dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"performanceReported"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"performanceReported"];
    }
  }

  if (self->_pommesKnowledgeFallbackConfirmationOutcomeReceived)
  {
    pommesKnowledgeFallbackConfirmationOutcomeReceived = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
    dictionaryRepresentation10 = [pommesKnowledgeFallbackConfirmationOutcomeReceived dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"pommesKnowledgeFallbackConfirmationOutcomeReceived"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"pommesKnowledgeFallbackConfirmationOutcomeReceived"];
    }
  }

  if (self->_pommesKnowledgeFallbackContext)
  {
    pommesKnowledgeFallbackContext = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
    dictionaryRepresentation11 = [pommesKnowledgeFallbackContext dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"pommesKnowledgeFallbackContext"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"pommesKnowledgeFallbackContext"];
    }
  }

  if (self->_pommesKnowledgeFallbackOffered)
  {
    pommesKnowledgeFallbackOffered = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
    dictionaryRepresentation12 = [pommesKnowledgeFallbackOffered dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"pommesKnowledgeFallbackOffered"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"pommesKnowledgeFallbackOffered"];
    }
  }

  if (self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown)
  {
    pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
    dictionaryRepresentation13 = [pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown"];
    }
  }

  if (self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived)
  {
    pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
    dictionaryRepresentation14 = [pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived"];
    }
  }

  if (self->_pommesPegasusRequestGeoAppResolutionReported)
  {
    pommesPegasusRequestGeoAppResolutionReported = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
    dictionaryRepresentation15 = [pommesPegasusRequestGeoAppResolutionReported dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"pommesPegasusRequestGeoAppResolutionReported"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"pommesPegasusRequestGeoAppResolutionReported"];
    }
  }

  if (self->_pommesRequestContext)
  {
    pommesRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
    dictionaryRepresentation16 = [pommesRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"pommesRequestContext"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"pommesRequestContext"];
    }
  }

  if (self->_pommesSearchRequestClassifierExecuted)
  {
    pommesSearchRequestClassifierExecuted = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
    dictionaryRepresentation17 = [pommesSearchRequestClassifierExecuted dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"pommesSearchRequestClassifierExecuted"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"pommesSearchRequestClassifierExecuted"];
    }
  }

  if (self->_pommesServiceClassifierScoreReported)
  {
    pommesServiceClassifierScoreReported = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
    dictionaryRepresentation18 = [pommesServiceClassifierScoreReported dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"pommesServiceClassifierScoreReported"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"pommesServiceClassifierScoreReported"];
    }
  }

  if (self->_profileResolutionRequestContext)
  {
    profileResolutionRequestContext = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
    dictionaryRepresentation19 = [profileResolutionRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"profileResolutionRequestContext"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"profileResolutionRequestContext"];
    }
  }

  if (self->_resourceDownloadContext)
  {
    resourceDownloadContext = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
    dictionaryRepresentation20 = [resourceDownloadContext dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"resourceDownloadContext"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"resourceDownloadContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_103;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_103;
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  eventMetadata3 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
  eventMetadata2 = [equalCopy pegasusRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  pegasusRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
  if (pegasusRequestContext)
  {
    v14 = pegasusRequestContext;
    pegasusRequestContext2 = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
    pegasusRequestContext3 = [equalCopy pegasusRequestContext];
    v17 = [pegasusRequestContext2 isEqual:pegasusRequestContext3];

    if (!v17)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
  eventMetadata2 = [equalCopy onDeviceIndexSearchContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  onDeviceIndexSearchContext = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
  if (onDeviceIndexSearchContext)
  {
    v19 = onDeviceIndexSearchContext;
    onDeviceIndexSearchContext2 = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
    onDeviceIndexSearchContext3 = [equalCopy onDeviceIndexSearchContext];
    v22 = [onDeviceIndexSearchContext2 isEqual:onDeviceIndexSearchContext3];

    if (!v22)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
  eventMetadata2 = [equalCopy pommesServiceClassifierScoreReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  pommesServiceClassifierScoreReported = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
  if (pommesServiceClassifierScoreReported)
  {
    v24 = pommesServiceClassifierScoreReported;
    pommesServiceClassifierScoreReported2 = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
    pommesServiceClassifierScoreReported3 = [equalCopy pommesServiceClassifierScoreReported];
    v27 = [pommesServiceClassifierScoreReported2 isEqual:pommesServiceClassifierScoreReported3];

    if (!v27)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
  eventMetadata2 = [equalCopy pommesRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  pommesRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
  if (pommesRequestContext)
  {
    v29 = pommesRequestContext;
    pommesRequestContext2 = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
    pommesRequestContext3 = [equalCopy pommesRequestContext];
    v32 = [pommesRequestContext2 isEqual:pommesRequestContext3];

    if (!v32)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
  eventMetadata2 = [equalCopy performanceReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  performanceReported = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
  if (performanceReported)
  {
    v34 = performanceReported;
    performanceReported2 = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
    performanceReported3 = [equalCopy performanceReported];
    v37 = [performanceReported2 isEqual:performanceReported3];

    if (!v37)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
  eventMetadata2 = [equalCopy profileResolutionRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  profileResolutionRequestContext = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
  if (profileResolutionRequestContext)
  {
    v39 = profileResolutionRequestContext;
    profileResolutionRequestContext2 = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
    profileResolutionRequestContext3 = [equalCopy profileResolutionRequestContext];
    v42 = [profileResolutionRequestContext2 isEqual:profileResolutionRequestContext3];

    if (!v42)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
  eventMetadata2 = [equalCopy pegasusKitRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  pegasusKitRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
  if (pegasusKitRequestContext)
  {
    v44 = pegasusKitRequestContext;
    pegasusKitRequestContext2 = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
    pegasusKitRequestContext3 = [equalCopy pegasusKitRequestContext];
    v47 = [pegasusKitRequestContext2 isEqual:pegasusKitRequestContext3];

    if (!v47)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
  eventMetadata2 = [equalCopy resourceDownloadContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  resourceDownloadContext = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
  if (resourceDownloadContext)
  {
    v49 = resourceDownloadContext;
    resourceDownloadContext2 = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
    resourceDownloadContext3 = [equalCopy resourceDownloadContext];
    v52 = [resourceDownloadContext2 isEqual:resourceDownloadContext3];

    if (!v52)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
  eventMetadata2 = [equalCopy cacheLookupContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  cacheLookupContext = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
  if (cacheLookupContext)
  {
    v54 = cacheLookupContext;
    cacheLookupContext2 = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
    cacheLookupContext3 = [equalCopy cacheLookupContext];
    v57 = [cacheLookupContext2 isEqual:cacheLookupContext3];

    if (!v57)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
  eventMetadata2 = [equalCopy cacheStoringContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  cacheStoringContext = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
  if (cacheStoringContext)
  {
    v59 = cacheStoringContext;
    cacheStoringContext2 = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
    cacheStoringContext3 = [equalCopy cacheStoringContext];
    v62 = [cacheStoringContext2 isEqual:cacheStoringContext3];

    if (!v62)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
  eventMetadata2 = [equalCopy cacheInvalidationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  cacheInvalidationContext = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
  if (cacheInvalidationContext)
  {
    v64 = cacheInvalidationContext;
    cacheInvalidationContext2 = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
    cacheInvalidationContext3 = [equalCopy cacheInvalidationContext];
    v67 = [cacheInvalidationContext2 isEqual:cacheInvalidationContext3];

    if (!v67)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
  eventMetadata2 = [equalCopy cacheMaintenanceContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  cacheMaintenanceContext = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
  if (cacheMaintenanceContext)
  {
    v69 = cacheMaintenanceContext;
    cacheMaintenanceContext2 = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
    cacheMaintenanceContext3 = [equalCopy cacheMaintenanceContext];
    v72 = [cacheMaintenanceContext2 isEqual:cacheMaintenanceContext3];

    if (!v72)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
  eventMetadata2 = [equalCopy pommesPegasusRequestGeoAppResolutionReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  pommesPegasusRequestGeoAppResolutionReported = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
  if (pommesPegasusRequestGeoAppResolutionReported)
  {
    v74 = pommesPegasusRequestGeoAppResolutionReported;
    pommesPegasusRequestGeoAppResolutionReported2 = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
    pommesPegasusRequestGeoAppResolutionReported3 = [equalCopy pommesPegasusRequestGeoAppResolutionReported];
    v77 = [pommesPegasusRequestGeoAppResolutionReported2 isEqual:pommesPegasusRequestGeoAppResolutionReported3];

    if (!v77)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
  eventMetadata2 = [equalCopy pommesSearchRequestClassifierExecuted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  pommesSearchRequestClassifierExecuted = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
  if (pommesSearchRequestClassifierExecuted)
  {
    v79 = pommesSearchRequestClassifierExecuted;
    pommesSearchRequestClassifierExecuted2 = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
    pommesSearchRequestClassifierExecuted3 = [equalCopy pommesSearchRequestClassifierExecuted];
    v82 = [pommesSearchRequestClassifierExecuted2 isEqual:pommesSearchRequestClassifierExecuted3];

    if (!v82)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
  eventMetadata2 = [equalCopy pommesKnowledgeFallbackContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  pommesKnowledgeFallbackContext = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
  if (pommesKnowledgeFallbackContext)
  {
    v84 = pommesKnowledgeFallbackContext;
    pommesKnowledgeFallbackContext2 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
    pommesKnowledgeFallbackContext3 = [equalCopy pommesKnowledgeFallbackContext];
    v87 = [pommesKnowledgeFallbackContext2 isEqual:pommesKnowledgeFallbackContext3];

    if (!v87)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
  eventMetadata2 = [equalCopy pommesKnowledgeFallbackOffered];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  pommesKnowledgeFallbackOffered = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
  if (pommesKnowledgeFallbackOffered)
  {
    v89 = pommesKnowledgeFallbackOffered;
    pommesKnowledgeFallbackOffered2 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
    pommesKnowledgeFallbackOffered3 = [equalCopy pommesKnowledgeFallbackOffered];
    v92 = [pommesKnowledgeFallbackOffered2 isEqual:pommesKnowledgeFallbackOffered3];

    if (!v92)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
  eventMetadata2 = [equalCopy pommesKnowledgeFallbackConfirmationOutcomeReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  pommesKnowledgeFallbackConfirmationOutcomeReceived = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
  if (pommesKnowledgeFallbackConfirmationOutcomeReceived)
  {
    v94 = pommesKnowledgeFallbackConfirmationOutcomeReceived;
    pommesKnowledgeFallbackConfirmationOutcomeReceived2 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
    pommesKnowledgeFallbackConfirmationOutcomeReceived3 = [equalCopy pommesKnowledgeFallbackConfirmationOutcomeReceived];
    v97 = [pommesKnowledgeFallbackConfirmationOutcomeReceived2 isEqual:pommesKnowledgeFallbackConfirmationOutcomeReceived3];

    if (!v97)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
  eventMetadata2 = [equalCopy pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_102;
  }

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
  if (pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown)
  {
    v99 = pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
    pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown2 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
    pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown3 = [equalCopy pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
    v102 = [pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown2 isEqual:pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown3];

    if (!v102)
    {
      goto LABEL_103;
    }
  }

  else
  {
  }

  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
  eventMetadata2 = [equalCopy pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
    if (!pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived)
    {

LABEL_106:
      v108 = 1;
      goto LABEL_104;
    }

    v104 = pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
    pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived2 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
    pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived3 = [equalCopy pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
    v107 = [pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived2 isEqual:pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  pegasusRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];

  if (pegasusRequestContext)
  {
    pegasusRequestContext2 = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
    PBDataWriterWriteSubmessage();
  }

  onDeviceIndexSearchContext = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];

  if (onDeviceIndexSearchContext)
  {
    onDeviceIndexSearchContext2 = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
    PBDataWriterWriteSubmessage();
  }

  pommesServiceClassifierScoreReported = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];

  if (pommesServiceClassifierScoreReported)
  {
    pommesServiceClassifierScoreReported2 = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
    PBDataWriterWriteSubmessage();
  }

  pommesRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];

  if (pommesRequestContext)
  {
    pommesRequestContext2 = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
    PBDataWriterWriteSubmessage();
  }

  performanceReported = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];

  if (performanceReported)
  {
    performanceReported2 = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
    PBDataWriterWriteSubmessage();
  }

  profileResolutionRequestContext = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];

  if (profileResolutionRequestContext)
  {
    profileResolutionRequestContext2 = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
    PBDataWriterWriteSubmessage();
  }

  pegasusKitRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];

  if (pegasusKitRequestContext)
  {
    pegasusKitRequestContext2 = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
    PBDataWriterWriteSubmessage();
  }

  resourceDownloadContext = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];

  if (resourceDownloadContext)
  {
    resourceDownloadContext2 = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
    PBDataWriterWriteSubmessage();
  }

  cacheLookupContext = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];

  if (cacheLookupContext)
  {
    cacheLookupContext2 = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
    PBDataWriterWriteSubmessage();
  }

  cacheStoringContext = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];

  if (cacheStoringContext)
  {
    cacheStoringContext2 = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
    PBDataWriterWriteSubmessage();
  }

  cacheInvalidationContext = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];

  if (cacheInvalidationContext)
  {
    cacheInvalidationContext2 = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
    PBDataWriterWriteSubmessage();
  }

  cacheMaintenanceContext = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];

  if (cacheMaintenanceContext)
  {
    cacheMaintenanceContext2 = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
    PBDataWriterWriteSubmessage();
  }

  pommesPegasusRequestGeoAppResolutionReported = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];

  if (pommesPegasusRequestGeoAppResolutionReported)
  {
    pommesPegasusRequestGeoAppResolutionReported2 = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
    PBDataWriterWriteSubmessage();
  }

  pommesSearchRequestClassifierExecuted = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];

  if (pommesSearchRequestClassifierExecuted)
  {
    pommesSearchRequestClassifierExecuted2 = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
    PBDataWriterWriteSubmessage();
  }

  pommesKnowledgeFallbackContext = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];

  if (pommesKnowledgeFallbackContext)
  {
    pommesKnowledgeFallbackContext2 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
    PBDataWriterWriteSubmessage();
  }

  pommesKnowledgeFallbackOffered = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];

  if (pommesKnowledgeFallbackOffered)
  {
    pommesKnowledgeFallbackOffered2 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
    PBDataWriterWriteSubmessage();
  }

  pommesKnowledgeFallbackConfirmationOutcomeReceived = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];

  if (pommesKnowledgeFallbackConfirmationOutcomeReceived)
  {
    pommesKnowledgeFallbackConfirmationOutcomeReceived2 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
    PBDataWriterWriteSubmessage();
  }

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];

  if (pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown)
  {
    pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown2 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
    PBDataWriterWriteSubmessage();
  }

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];

  v43 = toCopy;
  if (pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived)
  {
    pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived2 = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
    PBDataWriterWriteSubmessage();

    v43 = toCopy;
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

- (void)setPommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived:(id)received
{
  receivedCopy = received;
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
  if (!receivedCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = receivedCopy;
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

- (void)setPommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown:(id)shown
{
  shownCopy = shown;
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
  if (!shownCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown;
  self->_pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = shownCopy;
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

- (void)setPommesKnowledgeFallbackConfirmationOutcomeReceived:(id)received
{
  receivedCopy = received;
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
  if (!receivedCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesKnowledgeFallbackConfirmationOutcomeReceived = self->_pommesKnowledgeFallbackConfirmationOutcomeReceived;
  self->_pommesKnowledgeFallbackConfirmationOutcomeReceived = receivedCopy;
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

- (void)setPommesKnowledgeFallbackOffered:(id)offered
{
  offeredCopy = offered;
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
  if (!offeredCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesKnowledgeFallbackOffered = self->_pommesKnowledgeFallbackOffered;
  self->_pommesKnowledgeFallbackOffered = offeredCopy;
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

- (void)setPommesKnowledgeFallbackContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesKnowledgeFallbackContext = self->_pommesKnowledgeFallbackContext;
  self->_pommesKnowledgeFallbackContext = contextCopy;
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

- (void)setPommesSearchRequestClassifierExecuted:(id)executed
{
  executedCopy = executed;
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
  if (!executedCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesSearchRequestClassifierExecuted = self->_pommesSearchRequestClassifierExecuted;
  self->_pommesSearchRequestClassifierExecuted = executedCopy;
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

- (void)setPommesPegasusRequestGeoAppResolutionReported:(id)reported
{
  reportedCopy = reported;
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
  if (!reportedCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesPegasusRequestGeoAppResolutionReported = self->_pommesPegasusRequestGeoAppResolutionReported;
  self->_pommesPegasusRequestGeoAppResolutionReported = reportedCopy;
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

- (void)setCacheMaintenanceContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  cacheMaintenanceContext = self->_cacheMaintenanceContext;
  self->_cacheMaintenanceContext = contextCopy;
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

- (void)setCacheInvalidationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  cacheInvalidationContext = self->_cacheInvalidationContext;
  self->_cacheInvalidationContext = contextCopy;
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

- (void)setCacheStoringContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  cacheStoringContext = self->_cacheStoringContext;
  self->_cacheStoringContext = contextCopy;
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

- (void)setCacheLookupContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  cacheLookupContext = self->_cacheLookupContext;
  self->_cacheLookupContext = contextCopy;
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

- (void)setResourceDownloadContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  resourceDownloadContext = self->_resourceDownloadContext;
  self->_resourceDownloadContext = contextCopy;
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

- (void)setPegasusKitRequestContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pegasusKitRequestContext = self->_pegasusKitRequestContext;
  self->_pegasusKitRequestContext = contextCopy;
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

- (void)setProfileResolutionRequestContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  profileResolutionRequestContext = self->_profileResolutionRequestContext;
  self->_profileResolutionRequestContext = contextCopy;
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

- (void)setPerformanceReported:(id)reported
{
  reportedCopy = reported;
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
  if (!reportedCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  performanceReported = self->_performanceReported;
  self->_performanceReported = reportedCopy;
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

- (void)setPommesRequestContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesRequestContext = self->_pommesRequestContext;
  self->_pommesRequestContext = contextCopy;
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

- (void)setPommesServiceClassifierScoreReported:(id)reported
{
  reportedCopy = reported;
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
  if (!reportedCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pommesServiceClassifierScoreReported = self->_pommesServiceClassifierScoreReported;
  self->_pommesServiceClassifierScoreReported = reportedCopy;
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

- (void)setOnDeviceIndexSearchContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  onDeviceIndexSearchContext = self->_onDeviceIndexSearchContext;
  self->_onDeviceIndexSearchContext = contextCopy;
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

- (void)setPegasusRequestContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v23 = 0;
  }

  self->_whichEvent_Type = v23;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(POMMESSchemaPOMMESClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x12)
  {
    return @"com.apple.aiml.siri.pommes.POMMESClientEvent";
  }

  else
  {
    return off_1E78E0DD0[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v67.receiver = self;
  v67.super_class = POMMESSchemaPOMMESClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v67 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteEventMetadata];
  }

  pegasusRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pegasusRequestContext];
  v10 = [pegasusRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePegasusRequestContext];
  }

  onDeviceIndexSearchContext = [(POMMESSchemaPOMMESClientEvent *)self onDeviceIndexSearchContext];
  v13 = [onDeviceIndexSearchContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteOnDeviceIndexSearchContext];
  }

  pommesServiceClassifierScoreReported = [(POMMESSchemaPOMMESClientEvent *)self pommesServiceClassifierScoreReported];
  v16 = [pommesServiceClassifierScoreReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesServiceClassifierScoreReported];
  }

  pommesRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pommesRequestContext];
  v19 = [pommesRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesRequestContext];
  }

  performanceReported = [(POMMESSchemaPOMMESClientEvent *)self performanceReported];
  v22 = [performanceReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePerformanceReported];
  }

  profileResolutionRequestContext = [(POMMESSchemaPOMMESClientEvent *)self profileResolutionRequestContext];
  v25 = [profileResolutionRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteProfileResolutionRequestContext];
  }

  pegasusKitRequestContext = [(POMMESSchemaPOMMESClientEvent *)self pegasusKitRequestContext];
  v28 = [pegasusKitRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePegasusKitRequestContext];
  }

  resourceDownloadContext = [(POMMESSchemaPOMMESClientEvent *)self resourceDownloadContext];
  v31 = [resourceDownloadContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteResourceDownloadContext];
  }

  cacheLookupContext = [(POMMESSchemaPOMMESClientEvent *)self cacheLookupContext];
  v34 = [cacheLookupContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteCacheLookupContext];
  }

  cacheStoringContext = [(POMMESSchemaPOMMESClientEvent *)self cacheStoringContext];
  v37 = [cacheStoringContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteCacheStoringContext];
  }

  cacheInvalidationContext = [(POMMESSchemaPOMMESClientEvent *)self cacheInvalidationContext];
  v40 = [cacheInvalidationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteCacheInvalidationContext];
  }

  cacheMaintenanceContext = [(POMMESSchemaPOMMESClientEvent *)self cacheMaintenanceContext];
  v43 = [cacheMaintenanceContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deleteCacheMaintenanceContext];
  }

  pommesPegasusRequestGeoAppResolutionReported = [(POMMESSchemaPOMMESClientEvent *)self pommesPegasusRequestGeoAppResolutionReported];
  v46 = [pommesPegasusRequestGeoAppResolutionReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesPegasusRequestGeoAppResolutionReported];
  }

  pommesSearchRequestClassifierExecuted = [(POMMESSchemaPOMMESClientEvent *)self pommesSearchRequestClassifierExecuted];
  v49 = [pommesSearchRequestClassifierExecuted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesSearchRequestClassifierExecuted];
  }

  pommesKnowledgeFallbackContext = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackContext];
  v52 = [pommesKnowledgeFallbackContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesKnowledgeFallbackContext];
  }

  pommesKnowledgeFallbackOffered = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackOffered];
  v55 = [pommesKnowledgeFallbackOffered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesKnowledgeFallbackOffered];
  }

  pommesKnowledgeFallbackConfirmationOutcomeReceived = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackConfirmationOutcomeReceived];
  v58 = [pommesKnowledgeFallbackConfirmationOutcomeReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesKnowledgeFallbackConfirmationOutcomeReceived];
  }

  pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
  v61 = [pommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(POMMESSchemaPOMMESClientEvent *)self deletePommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown];
  }

  pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived = [(POMMESSchemaPOMMESClientEvent *)self pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived];
  v64 = [pommesKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
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
  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  pommesId = [eventMetadata pommesId];

  if (pommesId && ([pommesId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(pommesId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 21;
  }

  else
  {
    eventMetadata2 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      v9 = 1;
      pommesId = requestId;
    }

    else
    {
      eventMetadata3 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
      pommesId = [eventMetadata3 subRequestId];

      if (pommesId && ([pommesId value], (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, objc_msgSend(pommesId, "value"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length"), v19, v18, v20))
      {
        v9 = 43;
      }

      else
      {
        eventMetadata4 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
        searchToolId = [eventMetadata4 searchToolId];

        if (searchToolId)
        {
          value = [searchToolId value];
          if (value)
          {
            v24 = value;
            value2 = [searchToolId value];
            v26 = [value2 length];

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

          pommesId = searchToolId;
        }

        else
        {
          v9 = 0;
          pommesId = 0;
        }
      }
    }
  }

  return v9;
}

- (id)getComponentId
{
  eventMetadata = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  pommesId = [eventMetadata pommesId];

  if (pommesId)
  {
    value = [pommesId value];
    if (value)
    {
      v6 = value;
      value2 = [pommesId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_15;
      }
    }
  }

  eventMetadata2 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (value3)
    {
      v12 = value3;
      value4 = [requestId value];
      v14 = [value4 length];

      if (v14)
      {
        pommesId = requestId;
LABEL_15:
        value7 = pommesId;
        searchToolId = value7;
        goto LABEL_17;
      }
    }
  }

  eventMetadata3 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  pommesId = [eventMetadata3 subRequestId];

  if (pommesId)
  {
    value5 = [pommesId value];
    if (value5)
    {
      v17 = value5;
      value6 = [pommesId value];
      v19 = [value6 length];

      if (v19)
      {
        goto LABEL_15;
      }
    }
  }

  eventMetadata4 = [(POMMESSchemaPOMMESClientEvent *)self eventMetadata];
  searchToolId = [eventMetadata4 searchToolId];

  if (searchToolId)
  {
    value7 = [searchToolId value];
    if (!value7)
    {
      goto LABEL_17;
    }

    value8 = [searchToolId value];
    v24 = [value8 length];

    if (v24)
    {
      pommesId = searchToolId;
      goto LABEL_15;
    }
  }

  value7 = 0;
LABEL_17:

  return value7;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(POMMESSchemaPOMMESClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x12)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EABD8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0x12)
  {
    return 0;
  }

  else
  {
    return off_1E78EAC70[tag - 101];
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