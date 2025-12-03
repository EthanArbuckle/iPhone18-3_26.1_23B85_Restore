@interface PLUSSchemaPLUSClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSClientEvent)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSClientEvent)initWithJSON:(id)n;
- (PLUSSchemaPLUSContactGroundTruthGenerated)contactGroundTruthGenerated;
- (PLUSSchemaPLUSContactSuggesterQueryContext)contactSuggesterQueryContext;
- (PLUSSchemaPLUSContactSuggesterRequestMetadataReported)contactSuggesterRequestMetadataReported;
- (PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported)contactSuggesterSuggestionMetadataReported;
- (PLUSSchemaPLUSContactSuggestionAccuracySignalReported)contactSuggestionAccuracySignalReported;
- (PLUSSchemaPLUSContactSuggestionGenerated)contactSuggestionGenerated;
- (PLUSSchemaPLUSContactSuggestionHeartbeatReported)contactSuggestionHeartbeatReported;
- (PLUSSchemaPLUSContactSuggestionOutcomeReported)contactSuggestionOutcomeReported;
- (PLUSSchemaPLUSContactSuggestionRemoved)contactSuggestionRemoved;
- (PLUSSchemaPLUSInferencePluginInvocationContext)inferencePluginInvocationContext;
- (PLUSSchemaPLUSMediaEvaluationSummaryReported)mediaEvaluationSummaryReported;
- (PLUSSchemaPLUSMediaGroundTruthGenerated)mediaGroundTruthGenerated;
- (PLUSSchemaPLUSPhoneCallMetadataExtracted)phoneCallMetadataExtracted;
- (PLUSSchemaPLUSRECTIFIPatternSequenceGenerated)patternSequenceGenerated;
- (PLUSSchemaPLUSSendMessageMetadataExtracted)sendMessageMetadataExtracted;
- (PLUSSchemaPLUSSuggesterMetadataReported)plusSuggesterMetadataReported;
- (PLUSSchemaPLUSSuggesterQueried)plusSuggesterQueried;
- (PLUSSchemaPLUSSuggesterSuggestionMetadataReported)plusSuggesterSuggestionMetadataReported;
- (PLUSSchemaPLUSSuggesterSuggestionRedundancyReported)plusSuggesterSuggestionRedundancyReported;
- (PLUSSchemaPLUSSuggestionGenerated)suggestionGenerated;
- (PLUSSchemaPLUSSuggestionOutcomeReported)suggestionOutcomeReported;
- (PLUSSchemaPLUSTMDCGroundTruthGenerated)tmdcGroundTruthGenerated;
- (PLUSSchemaPLUSUSOGraphTier1)usoGraphTier1;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteContactGroundTruthGenerated;
- (void)deleteContactSuggesterQueryContext;
- (void)deleteContactSuggesterRequestMetadataReported;
- (void)deleteContactSuggesterSuggestionMetadataReported;
- (void)deleteContactSuggestionAccuracySignalReported;
- (void)deleteContactSuggestionGenerated;
- (void)deleteContactSuggestionHeartbeatReported;
- (void)deleteContactSuggestionOutcomeReported;
- (void)deleteContactSuggestionRemoved;
- (void)deleteInferencePluginInvocationContext;
- (void)deleteMediaEvaluationSummaryReported;
- (void)deleteMediaGroundTruthGenerated;
- (void)deletePatternSequenceGenerated;
- (void)deletePhoneCallMetadataExtracted;
- (void)deletePlusSuggesterMetadataReported;
- (void)deletePlusSuggesterQueried;
- (void)deletePlusSuggesterSuggestionMetadataReported;
- (void)deletePlusSuggesterSuggestionRedundancyReported;
- (void)deleteSendMessageMetadataExtracted;
- (void)deleteSuggestionGenerated;
- (void)deleteSuggestionOutcomeReported;
- (void)deleteTmdcGroundTruthGenerated;
- (void)deleteUsoGraphTier1;
- (void)setContactGroundTruthGenerated:(id)generated;
- (void)setContactSuggesterQueryContext:(id)context;
- (void)setContactSuggesterRequestMetadataReported:(id)reported;
- (void)setContactSuggesterSuggestionMetadataReported:(id)reported;
- (void)setContactSuggestionAccuracySignalReported:(id)reported;
- (void)setContactSuggestionGenerated:(id)generated;
- (void)setContactSuggestionHeartbeatReported:(id)reported;
- (void)setContactSuggestionOutcomeReported:(id)reported;
- (void)setContactSuggestionRemoved:(id)removed;
- (void)setInferencePluginInvocationContext:(id)context;
- (void)setMediaEvaluationSummaryReported:(id)reported;
- (void)setMediaGroundTruthGenerated:(id)generated;
- (void)setPatternSequenceGenerated:(id)generated;
- (void)setPhoneCallMetadataExtracted:(id)extracted;
- (void)setPlusSuggesterMetadataReported:(id)reported;
- (void)setPlusSuggesterQueried:(id)queried;
- (void)setPlusSuggesterSuggestionMetadataReported:(id)reported;
- (void)setPlusSuggesterSuggestionRedundancyReported:(id)reported;
- (void)setSendMessageMetadataExtracted:(id)extracted;
- (void)setSuggestionGenerated:(id)generated;
- (void)setSuggestionOutcomeReported:(id)reported;
- (void)setTmdcGroundTruthGenerated:(id)generated;
- (void)setUsoGraphTier1:(id)tier1;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSClientEvent

- (PLUSSchemaPLUSClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v74.receiver = self;
  v74.super_class = PLUSSchemaPLUSClientEvent;
  v5 = [(PLUSSchemaPLUSClientEvent *)&v74 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSClientEventMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggesterQueryContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PLUSSchemaPLUSContactSuggesterQueryContext alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSClientEvent *)v5 setContactSuggesterQueryContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggestionOutcomeReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PLUSSchemaPLUSContactSuggestionOutcomeReported alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSClientEvent *)v5 setContactSuggestionOutcomeReported:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggesterRequestMetadataReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PLUSSchemaPLUSContactSuggesterRequestMetadataReported alloc] initWithDictionary:v12];
      [(PLUSSchemaPLUSClientEvent *)v5 setContactSuggesterRequestMetadataReported:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggesterSuggestionMetadataReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported alloc] initWithDictionary:v14];
      [(PLUSSchemaPLUSClientEvent *)v5 setContactSuggesterSuggestionMetadataReported:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"usoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PLUSSchemaPLUSUSOGraphTier1 alloc] initWithDictionary:v16];
      [(PLUSSchemaPLUSClientEvent *)v5 setUsoGraphTier1:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"inferencePluginInvocationContext"];
    objc_opt_class();
    v73 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PLUSSchemaPLUSInferencePluginInvocationContext alloc] initWithDictionary:v18];
      [(PLUSSchemaPLUSClientEvent *)v5 setInferencePluginInvocationContext:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"contactGroundTruthGenerated"];
    objc_opt_class();
    v72 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PLUSSchemaPLUSContactGroundTruthGenerated alloc] initWithDictionary:v20];
      [(PLUSSchemaPLUSClientEvent *)v5 setContactGroundTruthGenerated:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggestionGenerated"];
    objc_opt_class();
    v71 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PLUSSchemaPLUSContactSuggestionGenerated alloc] initWithDictionary:v22];
      [(PLUSSchemaPLUSClientEvent *)v5 setContactSuggestionGenerated:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"phoneCallMetadataExtracted"];
    objc_opt_class();
    v70 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[PLUSSchemaPLUSPhoneCallMetadataExtracted alloc] initWithDictionary:v24];
      [(PLUSSchemaPLUSClientEvent *)v5 setPhoneCallMetadataExtracted:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"tmdcGroundTruthGenerated"];
    objc_opt_class();
    v69 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[PLUSSchemaPLUSTMDCGroundTruthGenerated alloc] initWithDictionary:v26];
      [(PLUSSchemaPLUSClientEvent *)v5 setTmdcGroundTruthGenerated:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"patternSequenceGenerated"];
    objc_opt_class();
    v68 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[PLUSSchemaPLUSRECTIFIPatternSequenceGenerated alloc] initWithDictionary:v28];
      [(PLUSSchemaPLUSClientEvent *)v5 setPatternSequenceGenerated:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"sendMessageMetadataExtracted"];
    objc_opt_class();
    v67 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[PLUSSchemaPLUSSendMessageMetadataExtracted alloc] initWithDictionary:v30];
      [(PLUSSchemaPLUSClientEvent *)v5 setSendMessageMetadataExtracted:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggestionHeartbeatReported"];
    objc_opt_class();
    v66 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[PLUSSchemaPLUSContactSuggestionHeartbeatReported alloc] initWithDictionary:v32];
      [(PLUSSchemaPLUSClientEvent *)v5 setContactSuggestionHeartbeatReported:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggestionRemoved"];
    objc_opt_class();
    v65 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[PLUSSchemaPLUSContactSuggestionRemoved alloc] initWithDictionary:v34];
      [(PLUSSchemaPLUSClientEvent *)v5 setContactSuggestionRemoved:v35];
    }

    v64 = v6;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggestionAccuracySignalReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[PLUSSchemaPLUSContactSuggestionAccuracySignalReported alloc] initWithDictionary:v36];
      [(PLUSSchemaPLUSClientEvent *)v5 setContactSuggestionAccuracySignalReported:v37];
    }

    v58 = v36;
    v63 = v8;
    v38 = [dictionaryCopy objectForKeyedSubscript:@"mediaGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[PLUSSchemaPLUSMediaGroundTruthGenerated alloc] initWithDictionary:v38];
      [(PLUSSchemaPLUSClientEvent *)v5 setMediaGroundTruthGenerated:v39];
    }

    v62 = v10;
    v40 = [dictionaryCopy objectForKeyedSubscript:@"mediaEvaluationSummaryReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[PLUSSchemaPLUSMediaEvaluationSummaryReported alloc] initWithDictionary:v40];
      [(PLUSSchemaPLUSClientEvent *)v5 setMediaEvaluationSummaryReported:v41];
    }

    v61 = v12;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"plusSuggesterQueried"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[PLUSSchemaPLUSSuggesterQueried alloc] initWithDictionary:v42];
      [(PLUSSchemaPLUSClientEvent *)v5 setPlusSuggesterQueried:v43];
    }

    v60 = v14;
    v44 = [dictionaryCopy objectForKeyedSubscript:@"plusSuggesterMetadataReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[PLUSSchemaPLUSSuggesterMetadataReported alloc] initWithDictionary:v44];
      [(PLUSSchemaPLUSClientEvent *)v5 setPlusSuggesterMetadataReported:v45];
    }

    v59 = v16;
    v46 = [dictionaryCopy objectForKeyedSubscript:{@"plusSuggesterSuggestionMetadataReported", v40}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[PLUSSchemaPLUSSuggesterSuggestionMetadataReported alloc] initWithDictionary:v46];
      [(PLUSSchemaPLUSClientEvent *)v5 setPlusSuggesterSuggestionMetadataReported:v47];
    }

    v48 = v38;
    v49 = [dictionaryCopy objectForKeyedSubscript:@"plusSuggesterSuggestionRedundancyReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [[PLUSSchemaPLUSSuggesterSuggestionRedundancyReported alloc] initWithDictionary:v49];
      [(PLUSSchemaPLUSClientEvent *)v5 setPlusSuggesterSuggestionRedundancyReported:v50];
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"suggestionGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = [[PLUSSchemaPLUSSuggestionGenerated alloc] initWithDictionary:v51];
      [(PLUSSchemaPLUSClientEvent *)v5 setSuggestionGenerated:v52];
    }

    v53 = [dictionaryCopy objectForKeyedSubscript:@"suggestionOutcomeReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = [[PLUSSchemaPLUSSuggestionOutcomeReported alloc] initWithDictionary:v53];
      [(PLUSSchemaPLUSClientEvent *)v5 setSuggestionOutcomeReported:v54];
    }

    v55 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSClientEvent *)self dictionaryRepresentation];
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
  if (self->_contactGroundTruthGenerated)
  {
    contactGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self contactGroundTruthGenerated];
    dictionaryRepresentation = [contactGroundTruthGenerated dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contactGroundTruthGenerated"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contactGroundTruthGenerated"];
    }
  }

  if (self->_contactSuggesterQueryContext)
  {
    contactSuggesterQueryContext = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterQueryContext];
    dictionaryRepresentation2 = [contactSuggesterQueryContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"contactSuggesterQueryContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"contactSuggesterQueryContext"];
    }
  }

  if (self->_contactSuggesterRequestMetadataReported)
  {
    contactSuggesterRequestMetadataReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterRequestMetadataReported];
    dictionaryRepresentation3 = [contactSuggesterRequestMetadataReported dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"contactSuggesterRequestMetadataReported"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"contactSuggesterRequestMetadataReported"];
    }
  }

  if (self->_contactSuggesterSuggestionMetadataReported)
  {
    contactSuggesterSuggestionMetadataReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterSuggestionMetadataReported];
    dictionaryRepresentation4 = [contactSuggesterSuggestionMetadataReported dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"contactSuggesterSuggestionMetadataReported"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"contactSuggesterSuggestionMetadataReported"];
    }
  }

  if (self->_contactSuggestionAccuracySignalReported)
  {
    contactSuggestionAccuracySignalReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionAccuracySignalReported];
    dictionaryRepresentation5 = [contactSuggestionAccuracySignalReported dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"contactSuggestionAccuracySignalReported"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"contactSuggestionAccuracySignalReported"];
    }
  }

  if (self->_contactSuggestionGenerated)
  {
    contactSuggestionGenerated = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionGenerated];
    dictionaryRepresentation6 = [contactSuggestionGenerated dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"contactSuggestionGenerated"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"contactSuggestionGenerated"];
    }
  }

  if (self->_contactSuggestionHeartbeatReported)
  {
    contactSuggestionHeartbeatReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionHeartbeatReported];
    dictionaryRepresentation7 = [contactSuggestionHeartbeatReported dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"contactSuggestionHeartbeatReported"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"contactSuggestionHeartbeatReported"];
    }
  }

  if (self->_contactSuggestionOutcomeReported)
  {
    contactSuggestionOutcomeReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionOutcomeReported];
    dictionaryRepresentation8 = [contactSuggestionOutcomeReported dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"contactSuggestionOutcomeReported"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"contactSuggestionOutcomeReported"];
    }
  }

  if (self->_contactSuggestionRemoved)
  {
    contactSuggestionRemoved = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionRemoved];
    dictionaryRepresentation9 = [contactSuggestionRemoved dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"contactSuggestionRemoved"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"contactSuggestionRemoved"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(PLUSSchemaPLUSClientEvent *)self eventMetadata];
    dictionaryRepresentation10 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_inferencePluginInvocationContext)
  {
    inferencePluginInvocationContext = [(PLUSSchemaPLUSClientEvent *)self inferencePluginInvocationContext];
    dictionaryRepresentation11 = [inferencePluginInvocationContext dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"inferencePluginInvocationContext"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"inferencePluginInvocationContext"];
    }
  }

  if (self->_mediaEvaluationSummaryReported)
  {
    mediaEvaluationSummaryReported = [(PLUSSchemaPLUSClientEvent *)self mediaEvaluationSummaryReported];
    dictionaryRepresentation12 = [mediaEvaluationSummaryReported dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"mediaEvaluationSummaryReported"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"mediaEvaluationSummaryReported"];
    }
  }

  if (self->_mediaGroundTruthGenerated)
  {
    mediaGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self mediaGroundTruthGenerated];
    dictionaryRepresentation13 = [mediaGroundTruthGenerated dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"mediaGroundTruthGenerated"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"mediaGroundTruthGenerated"];
    }
  }

  if (self->_patternSequenceGenerated)
  {
    patternSequenceGenerated = [(PLUSSchemaPLUSClientEvent *)self patternSequenceGenerated];
    dictionaryRepresentation14 = [patternSequenceGenerated dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"patternSequenceGenerated"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"patternSequenceGenerated"];
    }
  }

  if (self->_phoneCallMetadataExtracted)
  {
    phoneCallMetadataExtracted = [(PLUSSchemaPLUSClientEvent *)self phoneCallMetadataExtracted];
    dictionaryRepresentation15 = [phoneCallMetadataExtracted dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"phoneCallMetadataExtracted"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"phoneCallMetadataExtracted"];
    }
  }

  if (self->_plusSuggesterMetadataReported)
  {
    plusSuggesterMetadataReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterMetadataReported];
    dictionaryRepresentation16 = [plusSuggesterMetadataReported dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"plusSuggesterMetadataReported"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"plusSuggesterMetadataReported"];
    }
  }

  if (self->_plusSuggesterQueried)
  {
    plusSuggesterQueried = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterQueried];
    dictionaryRepresentation17 = [plusSuggesterQueried dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"plusSuggesterQueried"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"plusSuggesterQueried"];
    }
  }

  if (self->_plusSuggesterSuggestionMetadataReported)
  {
    plusSuggesterSuggestionMetadataReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionMetadataReported];
    dictionaryRepresentation18 = [plusSuggesterSuggestionMetadataReported dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"plusSuggesterSuggestionMetadataReported"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"plusSuggesterSuggestionMetadataReported"];
    }
  }

  if (self->_plusSuggesterSuggestionRedundancyReported)
  {
    plusSuggesterSuggestionRedundancyReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionRedundancyReported];
    dictionaryRepresentation19 = [plusSuggesterSuggestionRedundancyReported dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"plusSuggesterSuggestionRedundancyReported"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"plusSuggesterSuggestionRedundancyReported"];
    }
  }

  if (self->_sendMessageMetadataExtracted)
  {
    sendMessageMetadataExtracted = [(PLUSSchemaPLUSClientEvent *)self sendMessageMetadataExtracted];
    dictionaryRepresentation20 = [sendMessageMetadataExtracted dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"sendMessageMetadataExtracted"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"sendMessageMetadataExtracted"];
    }
  }

  if (self->_suggestionGenerated)
  {
    suggestionGenerated = [(PLUSSchemaPLUSClientEvent *)self suggestionGenerated];
    dictionaryRepresentation21 = [suggestionGenerated dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"suggestionGenerated"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"suggestionGenerated"];
    }
  }

  if (self->_suggestionOutcomeReported)
  {
    suggestionOutcomeReported = [(PLUSSchemaPLUSClientEvent *)self suggestionOutcomeReported];
    dictionaryRepresentation22 = [suggestionOutcomeReported dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"suggestionOutcomeReported"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"suggestionOutcomeReported"];
    }
  }

  if (self->_tmdcGroundTruthGenerated)
  {
    tmdcGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self tmdcGroundTruthGenerated];
    dictionaryRepresentation23 = [tmdcGroundTruthGenerated dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"tmdcGroundTruthGenerated"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"tmdcGroundTruthGenerated"];
    }
  }

  if (self->_usoGraphTier1)
  {
    usoGraphTier1 = [(PLUSSchemaPLUSClientEvent *)self usoGraphTier1];
    dictionaryRepresentation24 = [usoGraphTier1 dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"usoGraphTier1"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"usoGraphTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v76 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PLUSSchemaPLUSClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(PLUSSchemaPLUSContactSuggesterQueryContext *)self->_contactSuggesterQueryContext hash]^ v3;
  v5 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self->_contactSuggestionOutcomeReported hash];
  v6 = v4 ^ v5 ^ [(PLUSSchemaPLUSContactSuggesterRequestMetadataReported *)self->_contactSuggesterRequestMetadataReported hash];
  v7 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self->_contactSuggesterSuggestionMetadataReported hash];
  v8 = v7 ^ [(PLUSSchemaPLUSUSOGraphTier1 *)self->_usoGraphTier1 hash];
  v9 = v6 ^ v8 ^ [(PLUSSchemaPLUSInferencePluginInvocationContext *)self->_inferencePluginInvocationContext hash];
  v10 = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self->_contactGroundTruthGenerated hash];
  v11 = v10 ^ [(PLUSSchemaPLUSContactSuggestionGenerated *)self->_contactSuggestionGenerated hash];
  v12 = v11 ^ [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self->_phoneCallMetadataExtracted hash];
  v13 = v9 ^ v12 ^ [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self->_tmdcGroundTruthGenerated hash];
  v14 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self->_patternSequenceGenerated hash];
  v15 = v14 ^ [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self->_sendMessageMetadataExtracted hash];
  v16 = v15 ^ [(PLUSSchemaPLUSContactSuggestionHeartbeatReported *)self->_contactSuggestionHeartbeatReported hash];
  v17 = v16 ^ [(PLUSSchemaPLUSContactSuggestionRemoved *)self->_contactSuggestionRemoved hash];
  v18 = v13 ^ v17 ^ [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self->_contactSuggestionAccuracySignalReported hash];
  v19 = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self->_mediaGroundTruthGenerated hash];
  v20 = v19 ^ [(PLUSSchemaPLUSMediaEvaluationSummaryReported *)self->_mediaEvaluationSummaryReported hash];
  v21 = v20 ^ [(PLUSSchemaPLUSSuggesterQueried *)self->_plusSuggesterQueried hash];
  v22 = v21 ^ [(PLUSSchemaPLUSSuggesterMetadataReported *)self->_plusSuggesterMetadataReported hash];
  v23 = v22 ^ [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self->_plusSuggesterSuggestionMetadataReported hash];
  v24 = v18 ^ v23 ^ [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self->_plusSuggesterSuggestionRedundancyReported hash];
  v25 = [(PLUSSchemaPLUSSuggestionGenerated *)self->_suggestionGenerated hash];
  return v24 ^ v25 ^ [(PLUSSchemaPLUSSuggestionOutcomeReported *)self->_suggestionOutcomeReported hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_123;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_123;
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  eventMetadata3 = [(PLUSSchemaPLUSClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(PLUSSchemaPLUSClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterQueryContext];
  eventMetadata2 = [equalCopy contactSuggesterQueryContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  contactSuggesterQueryContext = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterQueryContext];
  if (contactSuggesterQueryContext)
  {
    v14 = contactSuggesterQueryContext;
    contactSuggesterQueryContext2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterQueryContext];
    contactSuggesterQueryContext3 = [equalCopy contactSuggesterQueryContext];
    v17 = [contactSuggesterQueryContext2 isEqual:contactSuggesterQueryContext3];

    if (!v17)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionOutcomeReported];
  eventMetadata2 = [equalCopy contactSuggestionOutcomeReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  contactSuggestionOutcomeReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionOutcomeReported];
  if (contactSuggestionOutcomeReported)
  {
    v19 = contactSuggestionOutcomeReported;
    contactSuggestionOutcomeReported2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionOutcomeReported];
    contactSuggestionOutcomeReported3 = [equalCopy contactSuggestionOutcomeReported];
    v22 = [contactSuggestionOutcomeReported2 isEqual:contactSuggestionOutcomeReported3];

    if (!v22)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterRequestMetadataReported];
  eventMetadata2 = [equalCopy contactSuggesterRequestMetadataReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  contactSuggesterRequestMetadataReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterRequestMetadataReported];
  if (contactSuggesterRequestMetadataReported)
  {
    v24 = contactSuggesterRequestMetadataReported;
    contactSuggesterRequestMetadataReported2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterRequestMetadataReported];
    contactSuggesterRequestMetadataReported3 = [equalCopy contactSuggesterRequestMetadataReported];
    v27 = [contactSuggesterRequestMetadataReported2 isEqual:contactSuggesterRequestMetadataReported3];

    if (!v27)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterSuggestionMetadataReported];
  eventMetadata2 = [equalCopy contactSuggesterSuggestionMetadataReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  contactSuggesterSuggestionMetadataReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterSuggestionMetadataReported];
  if (contactSuggesterSuggestionMetadataReported)
  {
    v29 = contactSuggesterSuggestionMetadataReported;
    contactSuggesterSuggestionMetadataReported2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterSuggestionMetadataReported];
    contactSuggesterSuggestionMetadataReported3 = [equalCopy contactSuggesterSuggestionMetadataReported];
    v32 = [contactSuggesterSuggestionMetadataReported2 isEqual:contactSuggesterSuggestionMetadataReported3];

    if (!v32)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self usoGraphTier1];
  eventMetadata2 = [equalCopy usoGraphTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  usoGraphTier1 = [(PLUSSchemaPLUSClientEvent *)self usoGraphTier1];
  if (usoGraphTier1)
  {
    v34 = usoGraphTier1;
    usoGraphTier12 = [(PLUSSchemaPLUSClientEvent *)self usoGraphTier1];
    usoGraphTier13 = [equalCopy usoGraphTier1];
    v37 = [usoGraphTier12 isEqual:usoGraphTier13];

    if (!v37)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self inferencePluginInvocationContext];
  eventMetadata2 = [equalCopy inferencePluginInvocationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  inferencePluginInvocationContext = [(PLUSSchemaPLUSClientEvent *)self inferencePluginInvocationContext];
  if (inferencePluginInvocationContext)
  {
    v39 = inferencePluginInvocationContext;
    inferencePluginInvocationContext2 = [(PLUSSchemaPLUSClientEvent *)self inferencePluginInvocationContext];
    inferencePluginInvocationContext3 = [equalCopy inferencePluginInvocationContext];
    v42 = [inferencePluginInvocationContext2 isEqual:inferencePluginInvocationContext3];

    if (!v42)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self contactGroundTruthGenerated];
  eventMetadata2 = [equalCopy contactGroundTruthGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  contactGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self contactGroundTruthGenerated];
  if (contactGroundTruthGenerated)
  {
    v44 = contactGroundTruthGenerated;
    contactGroundTruthGenerated2 = [(PLUSSchemaPLUSClientEvent *)self contactGroundTruthGenerated];
    contactGroundTruthGenerated3 = [equalCopy contactGroundTruthGenerated];
    v47 = [contactGroundTruthGenerated2 isEqual:contactGroundTruthGenerated3];

    if (!v47)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionGenerated];
  eventMetadata2 = [equalCopy contactSuggestionGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  contactSuggestionGenerated = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionGenerated];
  if (contactSuggestionGenerated)
  {
    v49 = contactSuggestionGenerated;
    contactSuggestionGenerated2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionGenerated];
    contactSuggestionGenerated3 = [equalCopy contactSuggestionGenerated];
    v52 = [contactSuggestionGenerated2 isEqual:contactSuggestionGenerated3];

    if (!v52)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self phoneCallMetadataExtracted];
  eventMetadata2 = [equalCopy phoneCallMetadataExtracted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  phoneCallMetadataExtracted = [(PLUSSchemaPLUSClientEvent *)self phoneCallMetadataExtracted];
  if (phoneCallMetadataExtracted)
  {
    v54 = phoneCallMetadataExtracted;
    phoneCallMetadataExtracted2 = [(PLUSSchemaPLUSClientEvent *)self phoneCallMetadataExtracted];
    phoneCallMetadataExtracted3 = [equalCopy phoneCallMetadataExtracted];
    v57 = [phoneCallMetadataExtracted2 isEqual:phoneCallMetadataExtracted3];

    if (!v57)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self tmdcGroundTruthGenerated];
  eventMetadata2 = [equalCopy tmdcGroundTruthGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  tmdcGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self tmdcGroundTruthGenerated];
  if (tmdcGroundTruthGenerated)
  {
    v59 = tmdcGroundTruthGenerated;
    tmdcGroundTruthGenerated2 = [(PLUSSchemaPLUSClientEvent *)self tmdcGroundTruthGenerated];
    tmdcGroundTruthGenerated3 = [equalCopy tmdcGroundTruthGenerated];
    v62 = [tmdcGroundTruthGenerated2 isEqual:tmdcGroundTruthGenerated3];

    if (!v62)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self patternSequenceGenerated];
  eventMetadata2 = [equalCopy patternSequenceGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  patternSequenceGenerated = [(PLUSSchemaPLUSClientEvent *)self patternSequenceGenerated];
  if (patternSequenceGenerated)
  {
    v64 = patternSequenceGenerated;
    patternSequenceGenerated2 = [(PLUSSchemaPLUSClientEvent *)self patternSequenceGenerated];
    patternSequenceGenerated3 = [equalCopy patternSequenceGenerated];
    v67 = [patternSequenceGenerated2 isEqual:patternSequenceGenerated3];

    if (!v67)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self sendMessageMetadataExtracted];
  eventMetadata2 = [equalCopy sendMessageMetadataExtracted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  sendMessageMetadataExtracted = [(PLUSSchemaPLUSClientEvent *)self sendMessageMetadataExtracted];
  if (sendMessageMetadataExtracted)
  {
    v69 = sendMessageMetadataExtracted;
    sendMessageMetadataExtracted2 = [(PLUSSchemaPLUSClientEvent *)self sendMessageMetadataExtracted];
    sendMessageMetadataExtracted3 = [equalCopy sendMessageMetadataExtracted];
    v72 = [sendMessageMetadataExtracted2 isEqual:sendMessageMetadataExtracted3];

    if (!v72)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionHeartbeatReported];
  eventMetadata2 = [equalCopy contactSuggestionHeartbeatReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  contactSuggestionHeartbeatReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionHeartbeatReported];
  if (contactSuggestionHeartbeatReported)
  {
    v74 = contactSuggestionHeartbeatReported;
    contactSuggestionHeartbeatReported2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionHeartbeatReported];
    contactSuggestionHeartbeatReported3 = [equalCopy contactSuggestionHeartbeatReported];
    v77 = [contactSuggestionHeartbeatReported2 isEqual:contactSuggestionHeartbeatReported3];

    if (!v77)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionRemoved];
  eventMetadata2 = [equalCopy contactSuggestionRemoved];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  contactSuggestionRemoved = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionRemoved];
  if (contactSuggestionRemoved)
  {
    v79 = contactSuggestionRemoved;
    contactSuggestionRemoved2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionRemoved];
    contactSuggestionRemoved3 = [equalCopy contactSuggestionRemoved];
    v82 = [contactSuggestionRemoved2 isEqual:contactSuggestionRemoved3];

    if (!v82)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionAccuracySignalReported];
  eventMetadata2 = [equalCopy contactSuggestionAccuracySignalReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  contactSuggestionAccuracySignalReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionAccuracySignalReported];
  if (contactSuggestionAccuracySignalReported)
  {
    v84 = contactSuggestionAccuracySignalReported;
    contactSuggestionAccuracySignalReported2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionAccuracySignalReported];
    contactSuggestionAccuracySignalReported3 = [equalCopy contactSuggestionAccuracySignalReported];
    v87 = [contactSuggestionAccuracySignalReported2 isEqual:contactSuggestionAccuracySignalReported3];

    if (!v87)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self mediaGroundTruthGenerated];
  eventMetadata2 = [equalCopy mediaGroundTruthGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  mediaGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self mediaGroundTruthGenerated];
  if (mediaGroundTruthGenerated)
  {
    v89 = mediaGroundTruthGenerated;
    mediaGroundTruthGenerated2 = [(PLUSSchemaPLUSClientEvent *)self mediaGroundTruthGenerated];
    mediaGroundTruthGenerated3 = [equalCopy mediaGroundTruthGenerated];
    v92 = [mediaGroundTruthGenerated2 isEqual:mediaGroundTruthGenerated3];

    if (!v92)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self mediaEvaluationSummaryReported];
  eventMetadata2 = [equalCopy mediaEvaluationSummaryReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  mediaEvaluationSummaryReported = [(PLUSSchemaPLUSClientEvent *)self mediaEvaluationSummaryReported];
  if (mediaEvaluationSummaryReported)
  {
    v94 = mediaEvaluationSummaryReported;
    mediaEvaluationSummaryReported2 = [(PLUSSchemaPLUSClientEvent *)self mediaEvaluationSummaryReported];
    mediaEvaluationSummaryReported3 = [equalCopy mediaEvaluationSummaryReported];
    v97 = [mediaEvaluationSummaryReported2 isEqual:mediaEvaluationSummaryReported3];

    if (!v97)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterQueried];
  eventMetadata2 = [equalCopy plusSuggesterQueried];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  plusSuggesterQueried = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterQueried];
  if (plusSuggesterQueried)
  {
    v99 = plusSuggesterQueried;
    plusSuggesterQueried2 = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterQueried];
    plusSuggesterQueried3 = [equalCopy plusSuggesterQueried];
    v102 = [plusSuggesterQueried2 isEqual:plusSuggesterQueried3];

    if (!v102)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterMetadataReported];
  eventMetadata2 = [equalCopy plusSuggesterMetadataReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  plusSuggesterMetadataReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterMetadataReported];
  if (plusSuggesterMetadataReported)
  {
    v104 = plusSuggesterMetadataReported;
    plusSuggesterMetadataReported2 = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterMetadataReported];
    plusSuggesterMetadataReported3 = [equalCopy plusSuggesterMetadataReported];
    v107 = [plusSuggesterMetadataReported2 isEqual:plusSuggesterMetadataReported3];

    if (!v107)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionMetadataReported];
  eventMetadata2 = [equalCopy plusSuggesterSuggestionMetadataReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  plusSuggesterSuggestionMetadataReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionMetadataReported];
  if (plusSuggesterSuggestionMetadataReported)
  {
    v109 = plusSuggesterSuggestionMetadataReported;
    plusSuggesterSuggestionMetadataReported2 = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionMetadataReported];
    plusSuggesterSuggestionMetadataReported3 = [equalCopy plusSuggesterSuggestionMetadataReported];
    v112 = [plusSuggesterSuggestionMetadataReported2 isEqual:plusSuggesterSuggestionMetadataReported3];

    if (!v112)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionRedundancyReported];
  eventMetadata2 = [equalCopy plusSuggesterSuggestionRedundancyReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  plusSuggesterSuggestionRedundancyReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionRedundancyReported];
  if (plusSuggesterSuggestionRedundancyReported)
  {
    v114 = plusSuggesterSuggestionRedundancyReported;
    plusSuggesterSuggestionRedundancyReported2 = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionRedundancyReported];
    plusSuggesterSuggestionRedundancyReported3 = [equalCopy plusSuggesterSuggestionRedundancyReported];
    v117 = [plusSuggesterSuggestionRedundancyReported2 isEqual:plusSuggesterSuggestionRedundancyReported3];

    if (!v117)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self suggestionGenerated];
  eventMetadata2 = [equalCopy suggestionGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_122;
  }

  suggestionGenerated = [(PLUSSchemaPLUSClientEvent *)self suggestionGenerated];
  if (suggestionGenerated)
  {
    v119 = suggestionGenerated;
    suggestionGenerated2 = [(PLUSSchemaPLUSClientEvent *)self suggestionGenerated];
    suggestionGenerated3 = [equalCopy suggestionGenerated];
    v122 = [suggestionGenerated2 isEqual:suggestionGenerated3];

    if (!v122)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self suggestionOutcomeReported];
  eventMetadata2 = [equalCopy suggestionOutcomeReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    suggestionOutcomeReported = [(PLUSSchemaPLUSClientEvent *)self suggestionOutcomeReported];
    if (!suggestionOutcomeReported)
    {

LABEL_126:
      v128 = 1;
      goto LABEL_124;
    }

    v124 = suggestionOutcomeReported;
    suggestionOutcomeReported2 = [(PLUSSchemaPLUSClientEvent *)self suggestionOutcomeReported];
    suggestionOutcomeReported3 = [equalCopy suggestionOutcomeReported];
    v127 = [suggestionOutcomeReported2 isEqual:suggestionOutcomeReported3];

    if (v127)
    {
      goto LABEL_126;
    }
  }

  else
  {
LABEL_122:
  }

LABEL_123:
  v128 = 0;
LABEL_124:

  return v128;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(PLUSSchemaPLUSClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  contactSuggesterQueryContext = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterQueryContext];

  if (contactSuggesterQueryContext)
  {
    contactSuggesterQueryContext2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterQueryContext];
    PBDataWriterWriteSubmessage();
  }

  contactSuggestionOutcomeReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionOutcomeReported];

  if (contactSuggestionOutcomeReported)
  {
    contactSuggestionOutcomeReported2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionOutcomeReported];
    PBDataWriterWriteSubmessage();
  }

  contactSuggesterRequestMetadataReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterRequestMetadataReported];

  if (contactSuggesterRequestMetadataReported)
  {
    contactSuggesterRequestMetadataReported2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterRequestMetadataReported];
    PBDataWriterWriteSubmessage();
  }

  contactSuggesterSuggestionMetadataReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterSuggestionMetadataReported];

  if (contactSuggesterSuggestionMetadataReported)
  {
    contactSuggesterSuggestionMetadataReported2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterSuggestionMetadataReported];
    PBDataWriterWriteSubmessage();
  }

  usoGraphTier1 = [(PLUSSchemaPLUSClientEvent *)self usoGraphTier1];

  if (usoGraphTier1)
  {
    usoGraphTier12 = [(PLUSSchemaPLUSClientEvent *)self usoGraphTier1];
    PBDataWriterWriteSubmessage();
  }

  inferencePluginInvocationContext = [(PLUSSchemaPLUSClientEvent *)self inferencePluginInvocationContext];

  if (inferencePluginInvocationContext)
  {
    inferencePluginInvocationContext2 = [(PLUSSchemaPLUSClientEvent *)self inferencePluginInvocationContext];
    PBDataWriterWriteSubmessage();
  }

  contactGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self contactGroundTruthGenerated];

  if (contactGroundTruthGenerated)
  {
    contactGroundTruthGenerated2 = [(PLUSSchemaPLUSClientEvent *)self contactGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  contactSuggestionGenerated = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionGenerated];

  if (contactSuggestionGenerated)
  {
    contactSuggestionGenerated2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionGenerated];
    PBDataWriterWriteSubmessage();
  }

  phoneCallMetadataExtracted = [(PLUSSchemaPLUSClientEvent *)self phoneCallMetadataExtracted];

  if (phoneCallMetadataExtracted)
  {
    phoneCallMetadataExtracted2 = [(PLUSSchemaPLUSClientEvent *)self phoneCallMetadataExtracted];
    PBDataWriterWriteSubmessage();
  }

  tmdcGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self tmdcGroundTruthGenerated];

  if (tmdcGroundTruthGenerated)
  {
    tmdcGroundTruthGenerated2 = [(PLUSSchemaPLUSClientEvent *)self tmdcGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  patternSequenceGenerated = [(PLUSSchemaPLUSClientEvent *)self patternSequenceGenerated];

  if (patternSequenceGenerated)
  {
    patternSequenceGenerated2 = [(PLUSSchemaPLUSClientEvent *)self patternSequenceGenerated];
    PBDataWriterWriteSubmessage();
  }

  sendMessageMetadataExtracted = [(PLUSSchemaPLUSClientEvent *)self sendMessageMetadataExtracted];

  if (sendMessageMetadataExtracted)
  {
    sendMessageMetadataExtracted2 = [(PLUSSchemaPLUSClientEvent *)self sendMessageMetadataExtracted];
    PBDataWriterWriteSubmessage();
  }

  contactSuggestionHeartbeatReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionHeartbeatReported];

  if (contactSuggestionHeartbeatReported)
  {
    contactSuggestionHeartbeatReported2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionHeartbeatReported];
    PBDataWriterWriteSubmessage();
  }

  contactSuggestionRemoved = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionRemoved];

  if (contactSuggestionRemoved)
  {
    contactSuggestionRemoved2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionRemoved];
    PBDataWriterWriteSubmessage();
  }

  contactSuggestionAccuracySignalReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionAccuracySignalReported];

  if (contactSuggestionAccuracySignalReported)
  {
    contactSuggestionAccuracySignalReported2 = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionAccuracySignalReported];
    PBDataWriterWriteSubmessage();
  }

  mediaGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self mediaGroundTruthGenerated];

  if (mediaGroundTruthGenerated)
  {
    mediaGroundTruthGenerated2 = [(PLUSSchemaPLUSClientEvent *)self mediaGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  mediaEvaluationSummaryReported = [(PLUSSchemaPLUSClientEvent *)self mediaEvaluationSummaryReported];

  if (mediaEvaluationSummaryReported)
  {
    mediaEvaluationSummaryReported2 = [(PLUSSchemaPLUSClientEvent *)self mediaEvaluationSummaryReported];
    PBDataWriterWriteSubmessage();
  }

  plusSuggesterQueried = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterQueried];

  if (plusSuggesterQueried)
  {
    plusSuggesterQueried2 = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterQueried];
    PBDataWriterWriteSubmessage();
  }

  plusSuggesterMetadataReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterMetadataReported];

  if (plusSuggesterMetadataReported)
  {
    plusSuggesterMetadataReported2 = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterMetadataReported];
    PBDataWriterWriteSubmessage();
  }

  plusSuggesterSuggestionMetadataReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionMetadataReported];

  if (plusSuggesterSuggestionMetadataReported)
  {
    plusSuggesterSuggestionMetadataReported2 = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionMetadataReported];
    PBDataWriterWriteSubmessage();
  }

  plusSuggesterSuggestionRedundancyReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionRedundancyReported];

  if (plusSuggesterSuggestionRedundancyReported)
  {
    plusSuggesterSuggestionRedundancyReported2 = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionRedundancyReported];
    PBDataWriterWriteSubmessage();
  }

  suggestionGenerated = [(PLUSSchemaPLUSClientEvent *)self suggestionGenerated];

  if (suggestionGenerated)
  {
    suggestionGenerated2 = [(PLUSSchemaPLUSClientEvent *)self suggestionGenerated];
    PBDataWriterWriteSubmessage();
  }

  suggestionOutcomeReported = [(PLUSSchemaPLUSClientEvent *)self suggestionOutcomeReported];

  v51 = toCopy;
  if (suggestionOutcomeReported)
  {
    suggestionOutcomeReported2 = [(PLUSSchemaPLUSClientEvent *)self suggestionOutcomeReported];
    PBDataWriterWriteSubmessage();

    v51 = toCopy;
  }
}

- (void)deleteSuggestionOutcomeReported
{
  if (self->_whichEvent_Type == 123)
  {
    self->_whichEvent_Type = 0;
    self->_suggestionOutcomeReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSSuggestionOutcomeReported)suggestionOutcomeReported
{
  if (self->_whichEvent_Type == 123)
  {
    v3 = self->_suggestionOutcomeReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSuggestionOutcomeReported:(id)reported
{
  reportedCopy = reported;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  v27 = 123;
  if (!reportedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = reportedCopy;
}

- (void)deleteSuggestionGenerated
{
  if (self->_whichEvent_Type == 122)
  {
    self->_whichEvent_Type = 0;
    self->_suggestionGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSSuggestionGenerated)suggestionGenerated
{
  if (self->_whichEvent_Type == 122)
  {
    v3 = self->_suggestionGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSuggestionGenerated:(id)generated
{
  generatedCopy = generated;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 122;
  if (!generatedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = generatedCopy;
}

- (void)deletePlusSuggesterSuggestionRedundancyReported
{
  if (self->_whichEvent_Type == 121)
  {
    self->_whichEvent_Type = 0;
    self->_plusSuggesterSuggestionRedundancyReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSSuggesterSuggestionRedundancyReported)plusSuggesterSuggestionRedundancyReported
{
  if (self->_whichEvent_Type == 121)
  {
    v3 = self->_plusSuggesterSuggestionRedundancyReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlusSuggesterSuggestionRedundancyReported:(id)reported
{
  reportedCopy = reported;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 121;
  if (!reportedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = reportedCopy;
}

- (void)deletePlusSuggesterSuggestionMetadataReported
{
  if (self->_whichEvent_Type == 120)
  {
    self->_whichEvent_Type = 0;
    self->_plusSuggesterSuggestionMetadataReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSSuggesterSuggestionMetadataReported)plusSuggesterSuggestionMetadataReported
{
  if (self->_whichEvent_Type == 120)
  {
    v3 = self->_plusSuggesterSuggestionMetadataReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlusSuggesterSuggestionMetadataReported:(id)reported
{
  reportedCopy = reported;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 120;
  if (!reportedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = reportedCopy;
}

- (void)deletePlusSuggesterMetadataReported
{
  if (self->_whichEvent_Type == 119)
  {
    self->_whichEvent_Type = 0;
    self->_plusSuggesterMetadataReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSSuggesterMetadataReported)plusSuggesterMetadataReported
{
  if (self->_whichEvent_Type == 119)
  {
    v3 = self->_plusSuggesterMetadataReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlusSuggesterMetadataReported:(id)reported
{
  reportedCopy = reported;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 119;
  if (!reportedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = reportedCopy;
}

- (void)deletePlusSuggesterQueried
{
  if (self->_whichEvent_Type == 118)
  {
    self->_whichEvent_Type = 0;
    self->_plusSuggesterQueried = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSSuggesterQueried)plusSuggesterQueried
{
  if (self->_whichEvent_Type == 118)
  {
    v3 = self->_plusSuggesterQueried;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlusSuggesterQueried:(id)queried
{
  queriedCopy = queried;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 118;
  if (!queriedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = queriedCopy;
}

- (void)deleteMediaEvaluationSummaryReported
{
  if (self->_whichEvent_Type == 117)
  {
    self->_whichEvent_Type = 0;
    self->_mediaEvaluationSummaryReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSMediaEvaluationSummaryReported)mediaEvaluationSummaryReported
{
  if (self->_whichEvent_Type == 117)
  {
    v3 = self->_mediaEvaluationSummaryReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMediaEvaluationSummaryReported:(id)reported
{
  reportedCopy = reported;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 117;
  if (!reportedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = reportedCopy;
}

- (void)deleteMediaGroundTruthGenerated
{
  if (self->_whichEvent_Type == 116)
  {
    self->_whichEvent_Type = 0;
    self->_mediaGroundTruthGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSMediaGroundTruthGenerated)mediaGroundTruthGenerated
{
  if (self->_whichEvent_Type == 116)
  {
    v3 = self->_mediaGroundTruthGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMediaGroundTruthGenerated:(id)generated
{
  generatedCopy = generated;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 116;
  if (!generatedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = generatedCopy;
}

- (void)deleteContactSuggestionAccuracySignalReported
{
  if (self->_whichEvent_Type == 115)
  {
    self->_whichEvent_Type = 0;
    self->_contactSuggestionAccuracySignalReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSContactSuggestionAccuracySignalReported)contactSuggestionAccuracySignalReported
{
  if (self->_whichEvent_Type == 115)
  {
    v3 = self->_contactSuggestionAccuracySignalReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactSuggestionAccuracySignalReported:(id)reported
{
  reportedCopy = reported;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 115;
  if (!reportedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = reportedCopy;
}

- (void)deleteContactSuggestionRemoved
{
  if (self->_whichEvent_Type == 114)
  {
    self->_whichEvent_Type = 0;
    self->_contactSuggestionRemoved = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSContactSuggestionRemoved)contactSuggestionRemoved
{
  if (self->_whichEvent_Type == 114)
  {
    v3 = self->_contactSuggestionRemoved;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactSuggestionRemoved:(id)removed
{
  removedCopy = removed;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 114;
  if (!removedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = removedCopy;
}

- (void)deleteContactSuggestionHeartbeatReported
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_contactSuggestionHeartbeatReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSContactSuggestionHeartbeatReported)contactSuggestionHeartbeatReported
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_contactSuggestionHeartbeatReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactSuggestionHeartbeatReported:(id)reported
{
  reportedCopy = reported;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 113;
  if (!reportedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = reportedCopy;
}

- (void)deleteSendMessageMetadataExtracted
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_sendMessageMetadataExtracted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSSendMessageMetadataExtracted)sendMessageMetadataExtracted
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_sendMessageMetadataExtracted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSendMessageMetadataExtracted:(id)extracted
{
  extractedCopy = extracted;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 112;
  if (!extractedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = extractedCopy;
}

- (void)deletePatternSequenceGenerated
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_patternSequenceGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSRECTIFIPatternSequenceGenerated)patternSequenceGenerated
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_patternSequenceGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPatternSequenceGenerated:(id)generated
{
  generatedCopy = generated;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 111;
  if (!generatedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = generatedCopy;
}

- (void)deleteTmdcGroundTruthGenerated
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_tmdcGroundTruthGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSTMDCGroundTruthGenerated)tmdcGroundTruthGenerated
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_tmdcGroundTruthGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTmdcGroundTruthGenerated:(id)generated
{
  generatedCopy = generated;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 110;
  if (!generatedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = generatedCopy;
}

- (void)deletePhoneCallMetadataExtracted
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_phoneCallMetadataExtracted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSPhoneCallMetadataExtracted)phoneCallMetadataExtracted
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_phoneCallMetadataExtracted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPhoneCallMetadataExtracted:(id)extracted
{
  extractedCopy = extracted;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 109;
  if (!extractedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = extractedCopy;
}

- (void)deleteContactSuggestionGenerated
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_contactSuggestionGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSContactSuggestionGenerated)contactSuggestionGenerated
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_contactSuggestionGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactSuggestionGenerated:(id)generated
{
  generatedCopy = generated;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 108;
  if (!generatedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = generatedCopy;
}

- (void)deleteContactGroundTruthGenerated
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_contactGroundTruthGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSContactGroundTruthGenerated)contactGroundTruthGenerated
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_contactGroundTruthGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactGroundTruthGenerated:(id)generated
{
  generatedCopy = generated;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 107;
  if (!generatedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = generatedCopy;
}

- (void)deleteInferencePluginInvocationContext
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_inferencePluginInvocationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSInferencePluginInvocationContext)inferencePluginInvocationContext
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_inferencePluginInvocationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInferencePluginInvocationContext:(id)context
{
  contextCopy = context;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 106;
  if (!contextCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = contextCopy;
}

- (void)deleteUsoGraphTier1
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_usoGraphTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSUSOGraphTier1)usoGraphTier1
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_usoGraphTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUsoGraphTier1:(id)tier1
{
  tier1Copy = tier1;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 105;
  if (!tier1Copy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = tier1Copy;
}

- (void)deleteContactSuggesterSuggestionMetadataReported
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_contactSuggesterSuggestionMetadataReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported)contactSuggesterSuggestionMetadataReported
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_contactSuggesterSuggestionMetadataReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactSuggesterSuggestionMetadataReported:(id)reported
{
  reportedCopy = reported;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 104;
  if (!reportedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = reportedCopy;
}

- (void)deleteContactSuggesterRequestMetadataReported
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_contactSuggesterRequestMetadataReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSContactSuggesterRequestMetadataReported)contactSuggesterRequestMetadataReported
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_contactSuggesterRequestMetadataReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactSuggesterRequestMetadataReported:(id)reported
{
  reportedCopy = reported;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 103;
  if (!reportedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = reportedCopy;
}

- (void)deleteContactSuggestionOutcomeReported
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_contactSuggestionOutcomeReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSContactSuggestionOutcomeReported)contactSuggestionOutcomeReported
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_contactSuggestionOutcomeReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactSuggestionOutcomeReported:(id)reported
{
  reportedCopy = reported;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 102;
  if (!reportedCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = reportedCopy;
}

- (void)deleteContactSuggesterQueryContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_contactSuggesterQueryContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSContactSuggesterQueryContext)contactSuggesterQueryContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_contactSuggesterQueryContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactSuggesterQueryContext:(id)context
{
  contextCopy = context;
  contactSuggestionOutcomeReported = self->_contactSuggestionOutcomeReported;
  self->_contactSuggestionOutcomeReported = 0;

  contactSuggesterRequestMetadataReported = self->_contactSuggesterRequestMetadataReported;
  self->_contactSuggesterRequestMetadataReported = 0;

  contactSuggesterSuggestionMetadataReported = self->_contactSuggesterSuggestionMetadataReported;
  self->_contactSuggesterSuggestionMetadataReported = 0;

  usoGraphTier1 = self->_usoGraphTier1;
  self->_usoGraphTier1 = 0;

  inferencePluginInvocationContext = self->_inferencePluginInvocationContext;
  self->_inferencePluginInvocationContext = 0;

  contactGroundTruthGenerated = self->_contactGroundTruthGenerated;
  self->_contactGroundTruthGenerated = 0;

  contactSuggestionGenerated = self->_contactSuggestionGenerated;
  self->_contactSuggestionGenerated = 0;

  phoneCallMetadataExtracted = self->_phoneCallMetadataExtracted;
  self->_phoneCallMetadataExtracted = 0;

  tmdcGroundTruthGenerated = self->_tmdcGroundTruthGenerated;
  self->_tmdcGroundTruthGenerated = 0;

  patternSequenceGenerated = self->_patternSequenceGenerated;
  self->_patternSequenceGenerated = 0;

  sendMessageMetadataExtracted = self->_sendMessageMetadataExtracted;
  self->_sendMessageMetadataExtracted = 0;

  contactSuggestionHeartbeatReported = self->_contactSuggestionHeartbeatReported;
  self->_contactSuggestionHeartbeatReported = 0;

  contactSuggestionRemoved = self->_contactSuggestionRemoved;
  self->_contactSuggestionRemoved = 0;

  contactSuggestionAccuracySignalReported = self->_contactSuggestionAccuracySignalReported;
  self->_contactSuggestionAccuracySignalReported = 0;

  mediaGroundTruthGenerated = self->_mediaGroundTruthGenerated;
  self->_mediaGroundTruthGenerated = 0;

  mediaEvaluationSummaryReported = self->_mediaEvaluationSummaryReported;
  self->_mediaEvaluationSummaryReported = 0;

  plusSuggesterQueried = self->_plusSuggesterQueried;
  self->_plusSuggesterQueried = 0;

  plusSuggesterMetadataReported = self->_plusSuggesterMetadataReported;
  self->_plusSuggesterMetadataReported = 0;

  plusSuggesterSuggestionMetadataReported = self->_plusSuggesterSuggestionMetadataReported;
  self->_plusSuggesterSuggestionMetadataReported = 0;

  plusSuggesterSuggestionRedundancyReported = self->_plusSuggesterSuggestionRedundancyReported;
  self->_plusSuggesterSuggestionRedundancyReported = 0;

  suggestionGenerated = self->_suggestionGenerated;
  self->_suggestionGenerated = 0;

  suggestionOutcomeReported = self->_suggestionOutcomeReported;
  self->_suggestionOutcomeReported = 0;

  v27 = 101;
  if (!contextCopy)
  {
    v27 = 0;
  }

  self->_whichEvent_Type = v27;
  contactSuggesterQueryContext = self->_contactSuggesterQueryContext;
  self->_contactSuggesterQueryContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(PLUSSchemaPLUSClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x16)
  {
    return @"com.apple.aiml.siri.plus.PLUSClientEvent";
  }

  else
  {
    return off_1E78E0410[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v79.receiver = self;
  v79.super_class = PLUSSchemaPLUSClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v79 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteUsoGraphTier1];
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaGroundTruthGenerated];
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaEvaluationSummaryReported];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteUsoGraphTier1];
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaGroundTruthGenerated];
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaEvaluationSummaryReported];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteUsoGraphTier1];
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaGroundTruthGenerated];
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaEvaluationSummaryReported];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteUsoGraphTier1];
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaGroundTruthGenerated];
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaEvaluationSummaryReported];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteUsoGraphTier1];
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaGroundTruthGenerated];
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaEvaluationSummaryReported];
  }

  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteEventMetadata];
  }

  contactSuggesterQueryContext = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterQueryContext];
  v10 = [contactSuggesterQueryContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteContactSuggesterQueryContext];
  }

  contactSuggestionOutcomeReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionOutcomeReported];
  v13 = [contactSuggestionOutcomeReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteContactSuggestionOutcomeReported];
  }

  contactSuggesterRequestMetadataReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterRequestMetadataReported];
  v16 = [contactSuggesterRequestMetadataReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteContactSuggesterRequestMetadataReported];
  }

  contactSuggesterSuggestionMetadataReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggesterSuggestionMetadataReported];
  v19 = [contactSuggesterSuggestionMetadataReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteContactSuggesterSuggestionMetadataReported];
  }

  usoGraphTier1 = [(PLUSSchemaPLUSClientEvent *)self usoGraphTier1];
  v22 = [usoGraphTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteUsoGraphTier1];
  }

  inferencePluginInvocationContext = [(PLUSSchemaPLUSClientEvent *)self inferencePluginInvocationContext];
  v25 = [inferencePluginInvocationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteInferencePluginInvocationContext];
  }

  contactGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self contactGroundTruthGenerated];
  v28 = [contactGroundTruthGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteContactGroundTruthGenerated];
  }

  contactSuggestionGenerated = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionGenerated];
  v31 = [contactSuggestionGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteContactSuggestionGenerated];
  }

  phoneCallMetadataExtracted = [(PLUSSchemaPLUSClientEvent *)self phoneCallMetadataExtracted];
  v34 = [phoneCallMetadataExtracted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PLUSSchemaPLUSClientEvent *)self deletePhoneCallMetadataExtracted];
  }

  tmdcGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self tmdcGroundTruthGenerated];
  v37 = [tmdcGroundTruthGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteTmdcGroundTruthGenerated];
  }

  patternSequenceGenerated = [(PLUSSchemaPLUSClientEvent *)self patternSequenceGenerated];
  v40 = [patternSequenceGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(PLUSSchemaPLUSClientEvent *)self deletePatternSequenceGenerated];
  }

  sendMessageMetadataExtracted = [(PLUSSchemaPLUSClientEvent *)self sendMessageMetadataExtracted];
  v43 = [sendMessageMetadataExtracted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteSendMessageMetadataExtracted];
  }

  contactSuggestionHeartbeatReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionHeartbeatReported];
  v46 = [contactSuggestionHeartbeatReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteContactSuggestionHeartbeatReported];
  }

  contactSuggestionRemoved = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionRemoved];
  v49 = [contactSuggestionRemoved applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteContactSuggestionRemoved];
  }

  contactSuggestionAccuracySignalReported = [(PLUSSchemaPLUSClientEvent *)self contactSuggestionAccuracySignalReported];
  v52 = [contactSuggestionAccuracySignalReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteContactSuggestionAccuracySignalReported];
  }

  mediaGroundTruthGenerated = [(PLUSSchemaPLUSClientEvent *)self mediaGroundTruthGenerated];
  v55 = [mediaGroundTruthGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaGroundTruthGenerated];
  }

  mediaEvaluationSummaryReported = [(PLUSSchemaPLUSClientEvent *)self mediaEvaluationSummaryReported];
  v58 = [mediaEvaluationSummaryReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteMediaEvaluationSummaryReported];
  }

  plusSuggesterQueried = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterQueried];
  v61 = [plusSuggesterQueried applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(PLUSSchemaPLUSClientEvent *)self deletePlusSuggesterQueried];
  }

  plusSuggesterMetadataReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterMetadataReported];
  v64 = [plusSuggesterMetadataReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(PLUSSchemaPLUSClientEvent *)self deletePlusSuggesterMetadataReported];
  }

  plusSuggesterSuggestionMetadataReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionMetadataReported];
  v67 = [plusSuggesterSuggestionMetadataReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage21 = [v67 suppressMessage];

  if (suppressMessage21)
  {
    [(PLUSSchemaPLUSClientEvent *)self deletePlusSuggesterSuggestionMetadataReported];
  }

  plusSuggesterSuggestionRedundancyReported = [(PLUSSchemaPLUSClientEvent *)self plusSuggesterSuggestionRedundancyReported];
  v70 = [plusSuggesterSuggestionRedundancyReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage22 = [v70 suppressMessage];

  if (suppressMessage22)
  {
    [(PLUSSchemaPLUSClientEvent *)self deletePlusSuggesterSuggestionRedundancyReported];
  }

  suggestionGenerated = [(PLUSSchemaPLUSClientEvent *)self suggestionGenerated];
  v73 = [suggestionGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage23 = [v73 suppressMessage];

  if (suppressMessage23)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteSuggestionGenerated];
  }

  suggestionOutcomeReported = [(PLUSSchemaPLUSClientEvent *)self suggestionOutcomeReported];
  v76 = [suggestionOutcomeReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage24 = [v76 suppressMessage];

  if (suppressMessage24)
  {
    [(PLUSSchemaPLUSClientEvent *)self deleteSuggestionOutcomeReported];
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
  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self eventMetadata];
  plusId = [eventMetadata plusId];

  if (plusId)
  {
    value = [plusId value];
    if (value)
    {
      value2 = [plusId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 19;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(PLUSSchemaPLUSClientEvent *)self eventMetadata];
  plusId = [eventMetadata plusId];

  if (!plusId)
  {
    goto LABEL_5;
  }

  value = [plusId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [plusId value];
  v6 = [value2 length];

  if (v6)
  {
    value = plusId;
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
  whichEvent_Type = [(PLUSSchemaPLUSClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x16)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA9D8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0x16)
  {
    return 0;
  }

  else
  {
    return off_1E78EAA90[tag - 101];
  }
}

- (int)clockIsolationLevel
{
  whichEvent_Type = [(PLUSSchemaPLUSClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 106 > 0x11)
  {
    return 1;
  }

  else
  {
    return dword_1AA738CE4[whichEvent_Type - 106];
  }
}

@end