@interface MTSchemaMTClientEventV2
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (MTSchemaMTASRStateUpdated)asrStateUpdated;
- (MTSchemaMTAppBackgroundedTier1)appBackgrounded;
- (MTSchemaMTAppNextButtonTappedTier1)appNextButtonTapped;
- (MTSchemaMTAppTextBoxDismissedTier1)appTextBoxDismissed;
- (MTSchemaMTAppTimedOutTier1)appTimedOut;
- (MTSchemaMTBatchRequestContext)batchRequestContext;
- (MTSchemaMTClientEventV2)initWithDictionary:(id)a3;
- (MTSchemaMTClientEventV2)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAppBackgrounded:(id)a3;
- (void)setAppNextButtonTapped:(id)a3;
- (void)setAppTextBoxDismissed:(id)a3;
- (void)setAppTimedOut:(id)a3;
- (void)setAsrStateUpdated:(id)a3;
- (void)setBatchRequestContext:(id)a3;
- (void)setFrameworkRequestResponseReceived:(id)a3;
- (void)setFrameworkRequestSent:(id)a3;
- (void)setInvocationContext:(id)a3;
- (void)setInvocationStartedTier1:(id)a3;
- (void)setLanguageDisambiguationUISelected:(id)a3;
- (void)setLanguageDisambiguationUIShown:(id)a3;
- (void)setLanguageIdentificationCompleted:(id)a3;
- (void)setLocalePairResolved:(id)a3;
- (void)setTranslationTTSPlayed:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTSchemaMTClientEventV2

- (MTSchemaMTClientEventV2)initWithDictionary:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = MTSchemaMTClientEventV2;
  v5 = [(MTSchemaMTClientEventV2 *)&v50 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MTSchemaMTClientEventMetadata alloc] initWithDictionary:v6];
      [(MTSchemaMTClientEventV2 *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"batchRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MTSchemaMTBatchRequestContext alloc] initWithDictionary:v8];
      [(MTSchemaMTClientEventV2 *)v5 setBatchRequestContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"invocationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MTSchemaMTInvocationContext alloc] initWithDictionary:v10];
      [(MTSchemaMTClientEventV2 *)v5 setInvocationContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"asrStateUpdated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[MTSchemaMTASRStateUpdated alloc] initWithDictionary:v12];
      [(MTSchemaMTClientEventV2 *)v5 setAsrStateUpdated:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"localePairResolved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[MTSchemaMTLocalePairResolved alloc] initWithDictionary:v14];
      [(MTSchemaMTClientEventV2 *)v5 setLocalePairResolved:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"invocationStartedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[MTSchemaMTInvocationStartedTier1 alloc] initWithDictionary:v16];
      [(MTSchemaMTClientEventV2 *)v5 setInvocationStartedTier1:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"appNextButtonTapped"];
    objc_opt_class();
    v49 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[MTSchemaMTAppNextButtonTappedTier1 alloc] initWithDictionary:v18];
      [(MTSchemaMTClientEventV2 *)v5 setAppNextButtonTapped:v19];
    }

    v48 = v6;
    v20 = [v4 objectForKeyedSubscript:@"appTextBoxDismissed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[MTSchemaMTAppTextBoxDismissedTier1 alloc] initWithDictionary:v20];
      [(MTSchemaMTClientEventV2 *)v5 setAppTextBoxDismissed:v21];
    }

    v42 = v20;
    v47 = v8;
    v22 = [v4 objectForKeyedSubscript:@"appTimedOut"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[MTSchemaMTAppTimedOutTier1 alloc] initWithDictionary:v22];
      [(MTSchemaMTClientEventV2 *)v5 setAppTimedOut:v23];
    }

    v46 = v10;
    v24 = [v4 objectForKeyedSubscript:@"frameworkRequestSent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[MTSchemaMTFrameworkRequestSent alloc] initWithDictionary:v24];
      [(MTSchemaMTClientEventV2 *)v5 setFrameworkRequestSent:v25];
    }

    v45 = v12;
    v26 = [v4 objectForKeyedSubscript:@"frameworkRequestResponseReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[MTSchemaMTFrameworkRequestResponseReceived alloc] initWithDictionary:v26];
      [(MTSchemaMTClientEventV2 *)v5 setFrameworkRequestResponseReceived:v27];
    }

    v44 = v14;
    v28 = [v4 objectForKeyedSubscript:@"appBackgrounded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[MTSchemaMTAppBackgroundedTier1 alloc] initWithDictionary:v28];
      [(MTSchemaMTClientEventV2 *)v5 setAppBackgrounded:v29];
    }

    v41 = v24;
    v43 = v16;
    v30 = [v4 objectForKeyedSubscript:@"languageIdentificationCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[MTSchemaMTLanguageIdentificationCompleted alloc] initWithDictionary:v30];
      [(MTSchemaMTClientEventV2 *)v5 setLanguageIdentificationCompleted:v31];
    }

    v32 = v22;
    v33 = [v4 objectForKeyedSubscript:@"languageDisambiguationUIShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[MTSchemaMTLanguageDisambiguationUIShown alloc] initWithDictionary:v33];
      [(MTSchemaMTClientEventV2 *)v5 setLanguageDisambiguationUIShown:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"languageDisambiguationUISelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[MTSchemaMTLanguageDisambiguationUISelected alloc] initWithDictionary:v35];
      [(MTSchemaMTClientEventV2 *)v5 setLanguageDisambiguationUISelected:v36];
    }

    v37 = [v4 objectForKeyedSubscript:@"translationTTSPlayed"];
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

- (MTSchemaMTClientEventV2)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MTSchemaMTClientEventV2 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MTSchemaMTClientEventV2 *)self dictionaryRepresentation];
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
  if (self->_appBackgrounded)
  {
    v4 = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appBackgrounded"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appBackgrounded"];
    }
  }

  if (self->_appNextButtonTapped)
  {
    v7 = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"appNextButtonTapped"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"appNextButtonTapped"];
    }
  }

  if (self->_appTextBoxDismissed)
  {
    v10 = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"appTextBoxDismissed"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"appTextBoxDismissed"];
    }
  }

  if (self->_appTimedOut)
  {
    v13 = [(MTSchemaMTClientEventV2 *)self appTimedOut];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"appTimedOut"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"appTimedOut"];
    }
  }

  if (self->_asrStateUpdated)
  {
    v16 = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"asrStateUpdated"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"asrStateUpdated"];
    }
  }

  if (self->_batchRequestContext)
  {
    v19 = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"batchRequestContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"batchRequestContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v22 = [(MTSchemaMTClientEventV2 *)self eventMetadata];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_frameworkRequestResponseReceived)
  {
    v25 = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"frameworkRequestResponseReceived"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"frameworkRequestResponseReceived"];
    }
  }

  if (self->_frameworkRequestSent)
  {
    v28 = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"frameworkRequestSent"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"frameworkRequestSent"];
    }
  }

  if (self->_invocationContext)
  {
    v31 = [(MTSchemaMTClientEventV2 *)self invocationContext];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"invocationContext"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"invocationContext"];
    }
  }

  if (self->_invocationStartedTier1)
  {
    v34 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"invocationStartedTier1"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"invocationStartedTier1"];
    }
  }

  if (self->_languageDisambiguationUISelected)
  {
    v37 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"languageDisambiguationUISelected"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"languageDisambiguationUISelected"];
    }
  }

  if (self->_languageDisambiguationUIShown)
  {
    v40 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"languageDisambiguationUIShown"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"languageDisambiguationUIShown"];
    }
  }

  if (self->_languageIdentificationCompleted)
  {
    v43 = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"languageIdentificationCompleted"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"languageIdentificationCompleted"];
    }
  }

  if (self->_localePairResolved)
  {
    v46 = [(MTSchemaMTClientEventV2 *)self localePairResolved];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"localePairResolved"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"localePairResolved"];
    }
  }

  if (self->_translationTTSPlayed)
  {
    v49 = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"translationTTSPlayed"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"translationTTSPlayed"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_83;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_83;
  }

  v6 = [(MTSchemaMTClientEventV2 *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v8 = [(MTSchemaMTClientEventV2 *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(MTSchemaMTClientEventV2 *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
  v7 = [v4 batchRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v13 = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
    v16 = [v4 batchRequestContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self invocationContext];
  v7 = [v4 invocationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v18 = [(MTSchemaMTClientEventV2 *)self invocationContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(MTSchemaMTClientEventV2 *)self invocationContext];
    v21 = [v4 invocationContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
  v7 = [v4 asrStateUpdated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v23 = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
  if (v23)
  {
    v24 = v23;
    v25 = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
    v26 = [v4 asrStateUpdated];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self localePairResolved];
  v7 = [v4 localePairResolved];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v28 = [(MTSchemaMTClientEventV2 *)self localePairResolved];
  if (v28)
  {
    v29 = v28;
    v30 = [(MTSchemaMTClientEventV2 *)self localePairResolved];
    v31 = [v4 localePairResolved];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
  v7 = [v4 invocationStartedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v33 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
  if (v33)
  {
    v34 = v33;
    v35 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
    v36 = [v4 invocationStartedTier1];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
  v7 = [v4 appNextButtonTapped];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v38 = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
  if (v38)
  {
    v39 = v38;
    v40 = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
    v41 = [v4 appNextButtonTapped];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
  v7 = [v4 appTextBoxDismissed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v43 = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
  if (v43)
  {
    v44 = v43;
    v45 = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
    v46 = [v4 appTextBoxDismissed];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self appTimedOut];
  v7 = [v4 appTimedOut];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v48 = [(MTSchemaMTClientEventV2 *)self appTimedOut];
  if (v48)
  {
    v49 = v48;
    v50 = [(MTSchemaMTClientEventV2 *)self appTimedOut];
    v51 = [v4 appTimedOut];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
  v7 = [v4 frameworkRequestSent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v53 = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
  if (v53)
  {
    v54 = v53;
    v55 = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
    v56 = [v4 frameworkRequestSent];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
  v7 = [v4 frameworkRequestResponseReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v58 = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
  if (v58)
  {
    v59 = v58;
    v60 = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
    v61 = [v4 frameworkRequestResponseReceived];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
  v7 = [v4 appBackgrounded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v63 = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
  if (v63)
  {
    v64 = v63;
    v65 = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
    v66 = [v4 appBackgrounded];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
  v7 = [v4 languageIdentificationCompleted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v68 = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
  if (v68)
  {
    v69 = v68;
    v70 = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
    v71 = [v4 languageIdentificationCompleted];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
  v7 = [v4 languageDisambiguationUIShown];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v73 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
  if (v73)
  {
    v74 = v73;
    v75 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
    v76 = [v4 languageDisambiguationUIShown];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
  v7 = [v4 languageDisambiguationUISelected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_82;
  }

  v78 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
  if (v78)
  {
    v79 = v78;
    v80 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
    v81 = [v4 languageDisambiguationUISelected];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
  v7 = [v4 translationTTSPlayed];
  if ((v6 != 0) != (v7 == 0))
  {
    v83 = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
    if (!v83)
    {

LABEL_86:
      v88 = 1;
      goto LABEL_84;
    }

    v84 = v83;
    v85 = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
    v86 = [v4 translationTTSPlayed];
    v87 = [v85 isEqual:v86];

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

- (void)writeTo:(id)a3
{
  v37 = a3;
  v4 = [(MTSchemaMTClientEventV2 *)self eventMetadata];

  if (v4)
  {
    v5 = [(MTSchemaMTClientEventV2 *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MTSchemaMTClientEventV2 *)self batchRequestContext];

  if (v6)
  {
    v7 = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(MTSchemaMTClientEventV2 *)self invocationContext];

  if (v8)
  {
    v9 = [(MTSchemaMTClientEventV2 *)self invocationContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];

  if (v10)
  {
    v11 = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(MTSchemaMTClientEventV2 *)self localePairResolved];

  if (v12)
  {
    v13 = [(MTSchemaMTClientEventV2 *)self localePairResolved];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];

  if (v14)
  {
    v15 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];

  if (v16)
  {
    v17 = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];

  if (v18)
  {
    v19 = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(MTSchemaMTClientEventV2 *)self appTimedOut];

  if (v20)
  {
    v21 = [(MTSchemaMTClientEventV2 *)self appTimedOut];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];

  if (v22)
  {
    v23 = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];

  if (v24)
  {
    v25 = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(MTSchemaMTClientEventV2 *)self appBackgrounded];

  if (v26)
  {
    v27 = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];

  if (v28)
  {
    v29 = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];

  if (v30)
  {
    v31 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];

  if (v32)
  {
    v33 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];

  v35 = v37;
  if (v34)
  {
    v36 = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
    PBDataWriterWriteSubmessage();

    v35 = v37;
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

- (void)setTranslationTTSPlayed:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  translationTTSPlayed = self->_translationTTSPlayed;
  self->_translationTTSPlayed = v4;
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

- (void)setLanguageDisambiguationUISelected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  languageDisambiguationUISelected = self->_languageDisambiguationUISelected;
  self->_languageDisambiguationUISelected = v4;
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

- (void)setLanguageDisambiguationUIShown:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  languageDisambiguationUIShown = self->_languageDisambiguationUIShown;
  self->_languageDisambiguationUIShown = v4;
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

- (void)setLanguageIdentificationCompleted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  languageIdentificationCompleted = self->_languageIdentificationCompleted;
  self->_languageIdentificationCompleted = v4;
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

- (void)setAppBackgrounded:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  appBackgrounded = self->_appBackgrounded;
  self->_appBackgrounded = v4;
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

- (void)setFrameworkRequestResponseReceived:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  frameworkRequestResponseReceived = self->_frameworkRequestResponseReceived;
  self->_frameworkRequestResponseReceived = v4;
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

- (void)setFrameworkRequestSent:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  frameworkRequestSent = self->_frameworkRequestSent;
  self->_frameworkRequestSent = v4;
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

- (void)setAppTimedOut:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  appTimedOut = self->_appTimedOut;
  self->_appTimedOut = v4;
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

- (void)setAppTextBoxDismissed:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  appTextBoxDismissed = self->_appTextBoxDismissed;
  self->_appTextBoxDismissed = v4;
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

- (void)setAppNextButtonTapped:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  appNextButtonTapped = self->_appNextButtonTapped;
  self->_appNextButtonTapped = v4;
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

- (void)setInvocationStartedTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  invocationStartedTier1 = self->_invocationStartedTier1;
  self->_invocationStartedTier1 = v4;
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

- (void)setLocalePairResolved:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  localePairResolved = self->_localePairResolved;
  self->_localePairResolved = v4;
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

- (void)setAsrStateUpdated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  asrStateUpdated = self->_asrStateUpdated;
  self->_asrStateUpdated = v4;
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

- (void)setInvocationContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  invocationContext = self->_invocationContext;
  self->_invocationContext = v4;
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

- (void)setBatchRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v19 = 0;
  }

  self->_whichEvent_Type = v19;
  batchRequestContext = self->_batchRequestContext;
  self->_batchRequestContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(MTSchemaMTClientEventV2 *)self whichEvent_Type];
  if (v2 - 101 > 0xE)
  {
    return @"com.apple.aiml.mi.mt.MTClientEventV2";
  }

  else
  {
    return off_1E78D9C40[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v55.receiver = self;
  v55.super_class = MTSchemaMTClientEventV2;
  v5 = [(SISchemaInstrumentationMessage *)&v55 applySensitiveConditionsPolicy:v4];
  v6 = [(MTSchemaMTClientEventV2 *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MTSchemaMTClientEventV2 *)self deleteEventMetadata];
  }

  v9 = [(MTSchemaMTClientEventV2 *)self batchRequestContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MTSchemaMTClientEventV2 *)self deleteBatchRequestContext];
  }

  v12 = [(MTSchemaMTClientEventV2 *)self invocationContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(MTSchemaMTClientEventV2 *)self deleteInvocationContext];
  }

  v15 = [(MTSchemaMTClientEventV2 *)self asrStateUpdated];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(MTSchemaMTClientEventV2 *)self deleteAsrStateUpdated];
  }

  v18 = [(MTSchemaMTClientEventV2 *)self localePairResolved];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(MTSchemaMTClientEventV2 *)self deleteLocalePairResolved];
  }

  v21 = [(MTSchemaMTClientEventV2 *)self invocationStartedTier1];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(MTSchemaMTClientEventV2 *)self deleteInvocationStartedTier1];
  }

  v24 = [(MTSchemaMTClientEventV2 *)self appNextButtonTapped];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(MTSchemaMTClientEventV2 *)self deleteAppNextButtonTapped];
  }

  v27 = [(MTSchemaMTClientEventV2 *)self appTextBoxDismissed];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(MTSchemaMTClientEventV2 *)self deleteAppTextBoxDismissed];
  }

  v30 = [(MTSchemaMTClientEventV2 *)self appTimedOut];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(MTSchemaMTClientEventV2 *)self deleteAppTimedOut];
  }

  v33 = [(MTSchemaMTClientEventV2 *)self frameworkRequestSent];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(MTSchemaMTClientEventV2 *)self deleteFrameworkRequestSent];
  }

  v36 = [(MTSchemaMTClientEventV2 *)self frameworkRequestResponseReceived];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(MTSchemaMTClientEventV2 *)self deleteFrameworkRequestResponseReceived];
  }

  v39 = [(MTSchemaMTClientEventV2 *)self appBackgrounded];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(MTSchemaMTClientEventV2 *)self deleteAppBackgrounded];
  }

  v42 = [(MTSchemaMTClientEventV2 *)self languageIdentificationCompleted];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(MTSchemaMTClientEventV2 *)self deleteLanguageIdentificationCompleted];
  }

  v45 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUIShown];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(MTSchemaMTClientEventV2 *)self deleteLanguageDisambiguationUIShown];
  }

  v48 = [(MTSchemaMTClientEventV2 *)self languageDisambiguationUISelected];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(MTSchemaMTClientEventV2 *)self deleteLanguageDisambiguationUISelected];
  }

  v51 = [(MTSchemaMTClientEventV2 *)self translationTTSPlayed];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
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
  v2 = [(MTSchemaMTClientEventV2 *)self eventMetadata];
  v3 = [v2 mtId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(MTSchemaMTClientEventV2 *)self whichEvent_Type];
  if (v3 - 101 > 0xE)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9FA8[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 0xE)
  {
    return 0;
  }

  else
  {
    return off_1E78EA020[a3 - 101];
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