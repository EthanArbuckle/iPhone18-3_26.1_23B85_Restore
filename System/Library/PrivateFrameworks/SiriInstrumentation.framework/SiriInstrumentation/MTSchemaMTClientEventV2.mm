@interface MTSchemaMTClientEventV2
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTASRStateUpdated)asrStateUpdated;
- (MTSchemaMTAppBackgroundedTier1)appBackgrounded;
- (MTSchemaMTAppNextButtonTappedTier1)appNextButtonTapped;
- (MTSchemaMTAppTextBoxDismissedTier1)appTextBoxDismissed;
- (MTSchemaMTAppTimedOutTier1)appTimedOut;
- (MTSchemaMTBatchRequestContext)batchRequestContext;
- (MTSchemaMTClientEventV2)initWithDictionary:(id)dictionary;
- (MTSchemaMTClientEventV2)initWithJSON:(id)n;
- (MTSchemaMTFrameworkRequestResponseReceived)frameworkRequestResponseReceived;
- (MTSchemaMTFrameworkRequestSent)frameworkRequestSent;
- (MTSchemaMTInvocationContext)invocationContext;
- (MTSchemaMTInvocationStartedTier1)invocationStartedTier1;
- (MTSchemaMTLanguageDisambiguationUISelected)languageDisambiguationUISelected;
- (MTSchemaMTLanguageDisambiguationUIShown)languageDisambiguationUIShown;
- (MTSchemaMTLanguageIdentificationCompleted)languageIdentificationCompleted;
- (MTSchemaMTLocalePairResolved)localePairResolved;
- (MTSchemaMTTranslationTTSPlayed)translationTTSPlayed;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deleteAppBackgrounded;
- (void)deleteAppNextButtonTapped;
- (void)deleteAppTextBoxDismissed;
- (void)deleteAppTimedOut;
- (void)deleteAsrStateUpdated;
- (void)deleteBatchRequestContext;
- (void)deleteFrameworkRequestResponseReceived;
- (void)deleteFrameworkRequestSent;
- (void)deleteInvocationContext;
- (void)deleteInvocationStartedTier1;
- (void)deleteLanguageDisambiguationUISelected;
- (void)deleteLanguageDisambiguationUIShown;
- (void)deleteLanguageIdentificationCompleted;
- (void)deleteLocalePairResolved;
- (void)deleteTranslationTTSPlayed;
- (void)setAppBackgrounded:(id)backgrounded;
- (void)setAppNextButtonTapped:(id)tapped;
- (void)setAppTextBoxDismissed:(id)dismissed;
- (void)setAppTimedOut:(id)out;
- (void)setAsrStateUpdated:(id)updated;
- (void)setBatchRequestContext:(id)context;
- (void)setFrameworkRequestResponseReceived:(id)received;
- (void)setFrameworkRequestSent:(id)sent;
- (void)setInvocationContext:(id)context;
- (void)setInvocationStartedTier1:(id)tier1;
- (void)setLanguageDisambiguationUISelected:(id)selected;
- (void)setLanguageDisambiguationUIShown:(id)shown;
- (void)setLanguageIdentificationCompleted:(id)completed;
- (void)setLocalePairResolved:(id)resolved;
- (void)setTranslationTTSPlayed:(id)played;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTClientEventV2

- (MTSchemaMTClientEventV2)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = MTSchemaMTClientEventV2;
  v5 = [(MTSchemaMTClientEventV2 *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MTSchemaMTClientEventMetadata alloc] initWithDictionary:v6];
      [(MTSchemaMTClientEventV2 *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"batchRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MTSchemaMTBatchRequestContext alloc] initWithDictionary:v8];
      [(MTSchemaMTClientEventV2 *)v5 setBatchRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"invocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MTSchemaMTInvocationContext alloc] initWithDictionary:v10];
      [(MTSchemaMTClientEventV2 *)v5 setInvocationContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"asrStateUpdated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[MTSchemaMTASRStateUpdated alloc] initWithDictionary:v12];
      [(MTSchemaMTClientEventV2 *)v5 setAsrStateUpdated:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"localePairResolved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[MTSchemaMTLocalePairResolved alloc] initWithDictionary:v14];
      [(MTSchemaMTClientEventV2 *)v5 setLocalePairResolved:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"invocationStartedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[MTSchemaMTInvocationStartedTier1 alloc] initWithDictionary:v16];
      [(MTSchemaMTClientEventV2 *)v5 setInvocationStartedTier1:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"appNextButtonTapped"];
    objc_opt_class();
    v49 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[MTSchemaMTAppNextButtonTappedTier1 alloc] initWithDictionary:v18];
      [(MTSchemaMTClientEventV2 *)v5 setAppNextButtonTapped:v19];
    }

    v48 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"appTextBoxDismissed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[MTSchemaMTAppTextBoxDismissedTier1 alloc] initWithDictionary:v20];
      [(MTSchemaMTClientEventV2 *)v5 setAppTextBoxDismissed:v21];
    }

    v42 = v20;
    v47 = v8;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"appTimedOut"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[MTSchemaMTAppTimedOutTier1 alloc] initWithDictionary:v22];
      [(MTSchemaMTClientEventV2 *)v5 setAppTimedOut:v23];
    }

    v46 = v10;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"frameworkRequestSent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[MTSchemaMTFrameworkRequestSent alloc] initWithDictionary:v24];
      [(MTSchemaMTClientEventV2 *)v5 setFrameworkRequestSent:v25];
    }

    v45 = v12;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"frameworkRequestResponseReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[MTSchemaMTFrameworkRequestResponseReceived alloc] initWithDictionary:v26];
      [(MTSchemaMTClientEventV2 *)v5 setFrameworkRequestResponseReceived:v27];
    }

    v44 = v14;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"appBackgrounded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[MTSchemaMTAppBackgroundedTier1 alloc] initWithDictionary:v28];
      [(MTSchemaMTClientEventV2 *)v5 setAppBackgrounded:v29];
    }

    v41 = v24;
    v43 = v16;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"languageIdentificationCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[MTSchemaMTLanguageIdentificationCompleted alloc] initWithDictionary:v30];
      [(MTSchemaMTClientEventV2 *)v5 setLanguageIdentificationCompleted:v31];
    }

    v32 = v22;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"languageDisambiguationUIShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[MTSchemaMTLanguageDisambiguationUIShown alloc] initWithDictionary:v33];
      [(MTSchemaMTClientEventV2 *)v5 setLanguageDisambiguationUIShown:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"languageDisambiguationUISelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[MTSchemaMTLanguageDisambiguationUISelected alloc] initWithDictionary:v35];
      [(MTSchemaMTClientEventV2 *)v5 setLanguageDisambiguationUISelected:v36];
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"translationTTSPlayed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[MTSchemaMTTranslationTTSPlayed alloc] initWithDictionary:v37];
      [(MTSchemaMTClientEventV2 *)v5 setTranslationTTSPlayed:v38];
    }

    v39 = v5;
  }

  return v5;
}

- (MTSchemaMTClientEventV2)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTClientEventV2 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTClientEventV2 *)self dictionaryRepresentation];
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
  if (self->_appBackgrounded)
  {
    appBackgrounded = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
    dictionaryRepresentation = [appBackgrounded dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appBackgrounded"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appBackgrounded"];
    }
  }

  if (self->_appNextButtonTapped)
  {
    appNextButtonTapped = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
    dictionaryRepresentation2 = [appNextButtonTapped dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"appNextButtonTapped"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"appNextButtonTapped"];
    }
  }

  if (self->_appTextBoxDismissed)
  {
    appTextBoxDismissed = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
    dictionaryRepresentation3 = [appTextBoxDismissed dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"appTextBoxDismissed"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"appTextBoxDismissed"];
    }
  }

  if (self->_appTimedOut)
  {
    appTimedOut = [(MTSchemaMTClientEventV2 *)self appTimedOut];
    dictionaryRepresentation4 = [appTimedOut dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"appTimedOut"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"appTimedOut"];
    }
  }

  if (self->_asrStateUpdated)
  {
    asrStateUpdated = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
    dictionaryRepresentation5 = [asrStateUpdated dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"asrStateUpdated"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"asrStateUpdated"];
    }
  }

  if (self->_batchRequestContext)
  {
    batchRequestContext = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
    dictionaryRepresentation6 = [batchRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"batchRequestContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"batchRequestContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(MTSchemaMTClientEventV2 *)self eventMetadata];
    dictionaryRepresentation7 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_frameworkRequestResponseReceived)
  {
    frameworkRequestResponseReceived = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
    dictionaryRepresentation8 = [frameworkRequestResponseReceived dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"frameworkRequestResponseReceived"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"frameworkRequestResponseReceived"];
    }
  }

  if (self->_frameworkRequestSent)
  {
    frameworkRequestSent = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
    dictionaryRepresentation9 = [frameworkRequestSent dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"frameworkRequestSent"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"frameworkRequestSent"];
    }
  }

  if (self->_invocationContext)
  {
    invocationContext = [(MTSchemaMTClientEventV2 *)self invocationContext];
    dictionaryRepresentation10 = [invocationContext dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"invocationContext"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"invocationContext"];
    }
  }

  if (self->_invocationStartedTier1)
  {
    invocationStartedTier1 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
    dictionaryRepresentation11 = [invocationStartedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"invocationStartedTier1"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"invocationStartedTier1"];
    }
  }

  if (self->_languageDisambiguationUISelected)
  {
    languageDisambiguationUISelected = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
    dictionaryRepresentation12 = [languageDisambiguationUISelected dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"languageDisambiguationUISelected"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"languageDisambiguationUISelected"];
    }
  }

  if (self->_languageDisambiguationUIShown)
  {
    languageDisambiguationUIShown = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
    dictionaryRepresentation13 = [languageDisambiguationUIShown dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"languageDisambiguationUIShown"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"languageDisambiguationUIShown"];
    }
  }

  if (self->_languageIdentificationCompleted)
  {
    languageIdentificationCompleted = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
    dictionaryRepresentation14 = [languageIdentificationCompleted dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"languageIdentificationCompleted"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"languageIdentificationCompleted"];
    }
  }

  if (self->_localePairResolved)
  {
    localePairResolved = [(MTSchemaMTClientEventV2 *)self localePairResolved];
    dictionaryRepresentation15 = [localePairResolved dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"localePairResolved"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"localePairResolved"];
    }
  }

  if (self->_translationTTSPlayed)
  {
    translationTTSPlayed = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
    dictionaryRepresentation16 = [translationTTSPlayed dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"translationTTSPlayed"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"translationTTSPlayed"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(MTSchemaMTClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(MTSchemaMTBatchRequestContext *)self->_batchRequestContext hash]^ v3;
  v5 = [(MTSchemaMTInvocationContext *)self->_invocationContext hash];
  v6 = v4 ^ v5 ^ [(MTSchemaMTASRStateUpdated *)self->_asrStateUpdated hash];
  v7 = [(MTSchemaMTLocalePairResolved *)self->_localePairResolved hash];
  v8 = v7 ^ [(MTSchemaMTInvocationStartedTier1 *)self->_invocationStartedTier1 hash];
  v9 = v6 ^ v8 ^ [(MTSchemaMTAppNextButtonTappedTier1 *)self->_appNextButtonTapped hash];
  v10 = [(MTSchemaMTAppTextBoxDismissedTier1 *)self->_appTextBoxDismissed hash];
  v11 = v10 ^ [(MTSchemaMTAppTimedOutTier1 *)self->_appTimedOut hash];
  v12 = v11 ^ [(MTSchemaMTFrameworkRequestSent *)self->_frameworkRequestSent hash];
  v13 = v9 ^ v12 ^ [(MTSchemaMTFrameworkRequestResponseReceived *)self->_frameworkRequestResponseReceived hash];
  v14 = [(MTSchemaMTAppBackgroundedTier1 *)self->_appBackgrounded hash];
  v15 = v14 ^ [(MTSchemaMTLanguageIdentificationCompleted *)self->_languageIdentificationCompleted hash];
  v16 = v15 ^ [(MTSchemaMTLanguageDisambiguationUIShown *)self->_languageDisambiguationUIShown hash];
  v17 = v16 ^ [(MTSchemaMTLanguageDisambiguationUISelected *)self->_languageDisambiguationUISelected hash];
  return v13 ^ v17 ^ [(MTSchemaMTTranslationTTSPlayed *)self->_translationTTSPlayed hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_83;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_83;
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  eventMetadata3 = [(MTSchemaMTClientEventV2 *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(MTSchemaMTClientEventV2 *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
  eventMetadata2 = [equalCopy batchRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  batchRequestContext = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
  if (batchRequestContext)
  {
    v14 = batchRequestContext;
    batchRequestContext2 = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
    batchRequestContext3 = [equalCopy batchRequestContext];
    v17 = [batchRequestContext2 isEqual:batchRequestContext3];

    if (!v17)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self invocationContext];
  eventMetadata2 = [equalCopy invocationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  invocationContext = [(MTSchemaMTClientEventV2 *)self invocationContext];
  if (invocationContext)
  {
    v19 = invocationContext;
    invocationContext2 = [(MTSchemaMTClientEventV2 *)self invocationContext];
    invocationContext3 = [equalCopy invocationContext];
    v22 = [invocationContext2 isEqual:invocationContext3];

    if (!v22)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
  eventMetadata2 = [equalCopy asrStateUpdated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  asrStateUpdated = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
  if (asrStateUpdated)
  {
    v24 = asrStateUpdated;
    asrStateUpdated2 = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
    asrStateUpdated3 = [equalCopy asrStateUpdated];
    v27 = [asrStateUpdated2 isEqual:asrStateUpdated3];

    if (!v27)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self localePairResolved];
  eventMetadata2 = [equalCopy localePairResolved];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  localePairResolved = [(MTSchemaMTClientEventV2 *)self localePairResolved];
  if (localePairResolved)
  {
    v29 = localePairResolved;
    localePairResolved2 = [(MTSchemaMTClientEventV2 *)self localePairResolved];
    localePairResolved3 = [equalCopy localePairResolved];
    v32 = [localePairResolved2 isEqual:localePairResolved3];

    if (!v32)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
  eventMetadata2 = [equalCopy invocationStartedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  invocationStartedTier1 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
  if (invocationStartedTier1)
  {
    v34 = invocationStartedTier1;
    invocationStartedTier12 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
    invocationStartedTier13 = [equalCopy invocationStartedTier1];
    v37 = [invocationStartedTier12 isEqual:invocationStartedTier13];

    if (!v37)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
  eventMetadata2 = [equalCopy appNextButtonTapped];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  appNextButtonTapped = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
  if (appNextButtonTapped)
  {
    v39 = appNextButtonTapped;
    appNextButtonTapped2 = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
    appNextButtonTapped3 = [equalCopy appNextButtonTapped];
    v42 = [appNextButtonTapped2 isEqual:appNextButtonTapped3];

    if (!v42)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
  eventMetadata2 = [equalCopy appTextBoxDismissed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  appTextBoxDismissed = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
  if (appTextBoxDismissed)
  {
    v44 = appTextBoxDismissed;
    appTextBoxDismissed2 = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
    appTextBoxDismissed3 = [equalCopy appTextBoxDismissed];
    v47 = [appTextBoxDismissed2 isEqual:appTextBoxDismissed3];

    if (!v47)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self appTimedOut];
  eventMetadata2 = [equalCopy appTimedOut];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  appTimedOut = [(MTSchemaMTClientEventV2 *)self appTimedOut];
  if (appTimedOut)
  {
    v49 = appTimedOut;
    appTimedOut2 = [(MTSchemaMTClientEventV2 *)self appTimedOut];
    appTimedOut3 = [equalCopy appTimedOut];
    v52 = [appTimedOut2 isEqual:appTimedOut3];

    if (!v52)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
  eventMetadata2 = [equalCopy frameworkRequestSent];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  frameworkRequestSent = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
  if (frameworkRequestSent)
  {
    v54 = frameworkRequestSent;
    frameworkRequestSent2 = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
    frameworkRequestSent3 = [equalCopy frameworkRequestSent];
    v57 = [frameworkRequestSent2 isEqual:frameworkRequestSent3];

    if (!v57)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
  eventMetadata2 = [equalCopy frameworkRequestResponseReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  frameworkRequestResponseReceived = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
  if (frameworkRequestResponseReceived)
  {
    v59 = frameworkRequestResponseReceived;
    frameworkRequestResponseReceived2 = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
    frameworkRequestResponseReceived3 = [equalCopy frameworkRequestResponseReceived];
    v62 = [frameworkRequestResponseReceived2 isEqual:frameworkRequestResponseReceived3];

    if (!v62)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
  eventMetadata2 = [equalCopy appBackgrounded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  appBackgrounded = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
  if (appBackgrounded)
  {
    v64 = appBackgrounded;
    appBackgrounded2 = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
    appBackgrounded3 = [equalCopy appBackgrounded];
    v67 = [appBackgrounded2 isEqual:appBackgrounded3];

    if (!v67)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
  eventMetadata2 = [equalCopy languageIdentificationCompleted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  languageIdentificationCompleted = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
  if (languageIdentificationCompleted)
  {
    v69 = languageIdentificationCompleted;
    languageIdentificationCompleted2 = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
    languageIdentificationCompleted3 = [equalCopy languageIdentificationCompleted];
    v72 = [languageIdentificationCompleted2 isEqual:languageIdentificationCompleted3];

    if (!v72)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
  eventMetadata2 = [equalCopy languageDisambiguationUIShown];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  languageDisambiguationUIShown = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
  if (languageDisambiguationUIShown)
  {
    v74 = languageDisambiguationUIShown;
    languageDisambiguationUIShown2 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
    languageDisambiguationUIShown3 = [equalCopy languageDisambiguationUIShown];
    v77 = [languageDisambiguationUIShown2 isEqual:languageDisambiguationUIShown3];

    if (!v77)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
  eventMetadata2 = [equalCopy languageDisambiguationUISelected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_82;
  }

  languageDisambiguationUISelected = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
  if (languageDisambiguationUISelected)
  {
    v79 = languageDisambiguationUISelected;
    languageDisambiguationUISelected2 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
    languageDisambiguationUISelected3 = [equalCopy languageDisambiguationUISelected];
    v82 = [languageDisambiguationUISelected2 isEqual:languageDisambiguationUISelected3];

    if (!v82)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  eventMetadata = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
  eventMetadata2 = [equalCopy translationTTSPlayed];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    translationTTSPlayed = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
    if (!translationTTSPlayed)
    {

LABEL_86:
      v88 = 1;
      goto LABEL_84;
    }

    v84 = translationTTSPlayed;
    translationTTSPlayed2 = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
    translationTTSPlayed3 = [equalCopy translationTTSPlayed];
    v87 = [translationTTSPlayed2 isEqual:translationTTSPlayed3];

    if (v87)
    {
      goto LABEL_86;
    }
  }

  else
  {
LABEL_82:
  }

LABEL_83:
  v88 = 0;
LABEL_84:

  return v88;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(MTSchemaMTClientEventV2 *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(MTSchemaMTClientEventV2 *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  batchRequestContext = [(MTSchemaMTClientEventV2 *)self batchRequestContext];

  if (batchRequestContext)
  {
    batchRequestContext2 = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
    PBDataWriterWriteSubmessage();
  }

  invocationContext = [(MTSchemaMTClientEventV2 *)self invocationContext];

  if (invocationContext)
  {
    invocationContext2 = [(MTSchemaMTClientEventV2 *)self invocationContext];
    PBDataWriterWriteSubmessage();
  }

  asrStateUpdated = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];

  if (asrStateUpdated)
  {
    asrStateUpdated2 = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
    PBDataWriterWriteSubmessage();
  }

  localePairResolved = [(MTSchemaMTClientEventV2 *)self localePairResolved];

  if (localePairResolved)
  {
    localePairResolved2 = [(MTSchemaMTClientEventV2 *)self localePairResolved];
    PBDataWriterWriteSubmessage();
  }

  invocationStartedTier1 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];

  if (invocationStartedTier1)
  {
    invocationStartedTier12 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
    PBDataWriterWriteSubmessage();
  }

  appNextButtonTapped = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];

  if (appNextButtonTapped)
  {
    appNextButtonTapped2 = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
    PBDataWriterWriteSubmessage();
  }

  appTextBoxDismissed = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];

  if (appTextBoxDismissed)
  {
    appTextBoxDismissed2 = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
    PBDataWriterWriteSubmessage();
  }

  appTimedOut = [(MTSchemaMTClientEventV2 *)self appTimedOut];

  if (appTimedOut)
  {
    appTimedOut2 = [(MTSchemaMTClientEventV2 *)self appTimedOut];
    PBDataWriterWriteSubmessage();
  }

  frameworkRequestSent = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];

  if (frameworkRequestSent)
  {
    frameworkRequestSent2 = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
    PBDataWriterWriteSubmessage();
  }

  frameworkRequestResponseReceived = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];

  if (frameworkRequestResponseReceived)
  {
    frameworkRequestResponseReceived2 = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
    PBDataWriterWriteSubmessage();
  }

  appBackgrounded = [(MTSchemaMTClientEventV2 *)self appBackgrounded];

  if (appBackgrounded)
  {
    appBackgrounded2 = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
    PBDataWriterWriteSubmessage();
  }

  languageIdentificationCompleted = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];

  if (languageIdentificationCompleted)
  {
    languageIdentificationCompleted2 = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
    PBDataWriterWriteSubmessage();
  }

  languageDisambiguationUIShown = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];

  if (languageDisambiguationUIShown)
  {
    languageDisambiguationUIShown2 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
    PBDataWriterWriteSubmessage();
  }

  languageDisambiguationUISelected = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];

  if (languageDisambiguationUISelected)
  {
    languageDisambiguationUISelected2 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
    PBDataWriterWriteSubmessage();
  }

  translationTTSPlayed = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];

  v35 = toCopy;
  if (translationTTSPlayed)
  {
    translationTTSPlayed2 = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
    PBDataWriterWriteSubmessage();

    v35 = toCopy;
  }
}

- (void)deleteTranslationTTSPlayed
{
  if (self->_whichEvent_Type == 115)
  {
    self->_whichEvent_Type = 0;
    self->_translationTTSPlayed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTTranslationTTSPlayed)translationTTSPlayed
{
  if (self->_whichEvent_Type == 115)
  {
    v3 = self->_translationTTSPlayed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTranslationTTSPlayed:(id)played
{
  playedCopy = played;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  v19 = 115;
  if (!playedCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = playedCopy;
}

- (void)deleteLanguageDisambiguationUISelected
{
  if (self->_whichEvent_Type == 114)
  {
    self->_whichEvent_Type = 0;
    self->_languageDisambiguationUISelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTLanguageDisambiguationUISelected)languageDisambiguationUISelected
{
  if (self->_whichEvent_Type == 114)
  {
    v3 = self->_languageDisambiguationUISelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLanguageDisambiguationUISelected:(id)selected
{
  selectedCopy = selected;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 114;
  if (!selectedCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = selectedCopy;
}

- (void)deleteLanguageDisambiguationUIShown
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_languageDisambiguationUIShown = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTLanguageDisambiguationUIShown)languageDisambiguationUIShown
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_languageDisambiguationUIShown;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLanguageDisambiguationUIShown:(id)shown
{
  shownCopy = shown;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 113;
  if (!shownCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = shownCopy;
}

- (void)deleteLanguageIdentificationCompleted
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_languageIdentificationCompleted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTLanguageIdentificationCompleted)languageIdentificationCompleted
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_languageIdentificationCompleted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLanguageIdentificationCompleted:(id)completed
{
  completedCopy = completed;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 112;
  if (!completedCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = completedCopy;
}

- (void)deleteAppBackgrounded
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_appBackgrounded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTAppBackgroundedTier1)appBackgrounded
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_appBackgrounded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppBackgrounded:(id)backgrounded
{
  backgroundedCopy = backgrounded;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 111;
  if (!backgroundedCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = backgroundedCopy;
}

- (void)deleteFrameworkRequestResponseReceived
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_frameworkRequestResponseReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTFrameworkRequestResponseReceived)frameworkRequestResponseReceived
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_frameworkRequestResponseReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFrameworkRequestResponseReceived:(id)received
{
  receivedCopy = received;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 110;
  if (!receivedCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = receivedCopy;
}

- (void)deleteFrameworkRequestSent
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_frameworkRequestSent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTFrameworkRequestSent)frameworkRequestSent
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_frameworkRequestSent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFrameworkRequestSent:(id)sent
{
  sentCopy = sent;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 109;
  if (!sentCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = sentCopy;
}

- (void)deleteAppTimedOut
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_appTimedOut = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTAppTimedOutTier1)appTimedOut
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_appTimedOut;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppTimedOut:(id)out
{
  outCopy = out;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 108;
  if (!outCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = outCopy;
}

- (void)deleteAppTextBoxDismissed
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_appTextBoxDismissed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTAppTextBoxDismissedTier1)appTextBoxDismissed
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_appTextBoxDismissed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppTextBoxDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 107;
  if (!dismissedCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = dismissedCopy;
}

- (void)deleteAppNextButtonTapped
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_appNextButtonTapped = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTAppNextButtonTappedTier1)appNextButtonTapped
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_appNextButtonTapped;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppNextButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 106;
  if (!tappedCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = tappedCopy;
}

- (void)deleteInvocationStartedTier1
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_invocationStartedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTInvocationStartedTier1)invocationStartedTier1
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_invocationStartedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInvocationStartedTier1:(id)tier1
{
  tier1Copy = tier1;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 105;
  if (!tier1Copy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = tier1Copy;
}

- (void)deleteLocalePairResolved
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_localePairResolved = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTLocalePairResolved)localePairResolved
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_localePairResolved;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLocalePairResolved:(id)resolved
{
  resolvedCopy = resolved;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 104;
  if (!resolvedCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = resolvedCopy;
}

- (void)deleteAsrStateUpdated
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_asrStateUpdated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTASRStateUpdated)asrStateUpdated
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_asrStateUpdated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAsrStateUpdated:(id)updated
{
  updatedCopy = updated;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 103;
  if (!updatedCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = updatedCopy;
}

- (void)deleteInvocationContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_invocationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTInvocationContext)invocationContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_invocationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInvocationContext:(id)context
{
  contextCopy = context;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 102;
  if (!contextCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  invocationContext = self->_invocationContext;
  self->_invocationContext = contextCopy;
}

- (void)deleteBatchRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_batchRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MTSchemaMTBatchRequestContext)batchRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_batchRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBatchRequestContext:(id)context
{
  contextCopy = context;
  invocationContext = self->_invocationContext;
  self->_invocationContext = 0;

  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = 0;

  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = 0;

  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = 0;

  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = 0;

  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = 0;

  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = 0;

  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = 0;

  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = 0;

  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = 0;

  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = 0;

  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = 0;

  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = 0;

  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = 0;

  v19 = 101;
  if (!contextCopy)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(MTSchemaMTClientEventV2 *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0xE)
  {
    return @"com.apple.aiml.mi.mt.MTClientEventV2";
  }

  else
  {
    return off_1E78D9C40[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v55.receiver = self;
  v55.super_class = MTSchemaMTClientEventV2;
  v5 = [(SISchemaInstrumentationMessage *)&v55 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(MTSchemaMTClientEventV2 *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MTSchemaMTClientEventV2 *)self deleteEventMetadata];
  }

  batchRequestContext = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
  v10 = [batchRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MTSchemaMTClientEventV2 *)self deleteBatchRequestContext];
  }

  invocationContext = [(MTSchemaMTClientEventV2 *)self invocationContext];
  v13 = [invocationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(MTSchemaMTClientEventV2 *)self deleteInvocationContext];
  }

  asrStateUpdated = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
  v16 = [asrStateUpdated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(MTSchemaMTClientEventV2 *)self deleteAsrStateUpdated];
  }

  localePairResolved = [(MTSchemaMTClientEventV2 *)self localePairResolved];
  v19 = [localePairResolved applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(MTSchemaMTClientEventV2 *)self deleteLocalePairResolved];
  }

  invocationStartedTier1 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
  v22 = [invocationStartedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(MTSchemaMTClientEventV2 *)self deleteInvocationStartedTier1];
  }

  appNextButtonTapped = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
  v25 = [appNextButtonTapped applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(MTSchemaMTClientEventV2 *)self deleteAppNextButtonTapped];
  }

  appTextBoxDismissed = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
  v28 = [appTextBoxDismissed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(MTSchemaMTClientEventV2 *)self deleteAppTextBoxDismissed];
  }

  appTimedOut = [(MTSchemaMTClientEventV2 *)self appTimedOut];
  v31 = [appTimedOut applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(MTSchemaMTClientEventV2 *)self deleteAppTimedOut];
  }

  frameworkRequestSent = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
  v34 = [frameworkRequestSent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(MTSchemaMTClientEventV2 *)self deleteFrameworkRequestSent];
  }

  frameworkRequestResponseReceived = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
  v37 = [frameworkRequestResponseReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(MTSchemaMTClientEventV2 *)self deleteFrameworkRequestResponseReceived];
  }

  appBackgrounded = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
  v40 = [appBackgrounded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(MTSchemaMTClientEventV2 *)self deleteAppBackgrounded];
  }

  languageIdentificationCompleted = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
  v43 = [languageIdentificationCompleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(MTSchemaMTClientEventV2 *)self deleteLanguageIdentificationCompleted];
  }

  languageDisambiguationUIShown = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
  v46 = [languageDisambiguationUIShown applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(MTSchemaMTClientEventV2 *)self deleteLanguageDisambiguationUIShown];
  }

  languageDisambiguationUISelected = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
  v49 = [languageDisambiguationUISelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(MTSchemaMTClientEventV2 *)self deleteLanguageDisambiguationUISelected];
  }

  translationTTSPlayed = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
  v52 = [translationTTSPlayed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(MTSchemaMTClientEventV2 *)self deleteTranslationTTSPlayed];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (id)getComponentId
{
  eventMetadata = [(MTSchemaMTClientEventV2 *)self eventMetadata];
  mtId = [eventMetadata mtId];

  if (!mtId)
  {
    goto LABEL_5;
  }

  value = [mtId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [mtId value];
  v6 = [value2 length];

  if (v6)
  {
    value = mtId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(MTSchemaMTClientEventV2 *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0xE)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9FA8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0xE)
  {
    return 0;
  }

  else
  {
    return off_1E78EA020[tag - 101];
  }
}

- (int)clockIsolationLevel
{
  if ([(MTSchemaMTClientEventV2 *)self whichEvent_Type]- 101 >= 0xF)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end