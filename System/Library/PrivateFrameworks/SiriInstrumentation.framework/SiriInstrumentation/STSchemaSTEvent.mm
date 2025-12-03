@interface STSchemaSTEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (STSchemaSTAnswerSynthesisContext)stAnswerSynthesisContext;
- (STSchemaSTDisambiguationContext)stDisambiguationContext;
- (STSchemaSTEvent)initWithDictionary:(id)dictionary;
- (STSchemaSTEvent)initWithJSON:(id)n;
- (STSchemaSTGeneralSearchContext)stGeneralSearchContext;
- (STSchemaSTGeneralSearchEndedTier1)requestEndedTier1;
- (STSchemaSTGlobalSearchContext)stGlobalSearchContext;
- (STSchemaSTHallucinationDetectionContext)searchToolHallucinationDetectionContext;
- (STSchemaSTLLMQUQueryArgumentsTier1)stLLMQUQueryArgumentsTier1;
- (STSchemaSTLLMQueryUnderstandingContext)stLLMQueryUnderstandingContext;
- (STSchemaSTSpotlightContext)stSpotlightContext;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteRequestEndedTier1;
- (void)deleteSearchToolHallucinationDetectionContext;
- (void)deleteStAnswerSynthesisContext;
- (void)deleteStDisambiguationContext;
- (void)deleteStGeneralSearchContext;
- (void)deleteStGlobalSearchContext;
- (void)deleteStLLMQUQueryArgumentsTier1;
- (void)deleteStLLMQueryUnderstandingContext;
- (void)deleteStSpotlightContext;
- (void)setRequestEndedTier1:(id)tier1;
- (void)setSearchToolHallucinationDetectionContext:(id)context;
- (void)setStAnswerSynthesisContext:(id)context;
- (void)setStDisambiguationContext:(id)context;
- (void)setStGeneralSearchContext:(id)context;
- (void)setStGlobalSearchContext:(id)context;
- (void)setStLLMQUQueryArgumentsTier1:(id)tier1;
- (void)setStLLMQueryUnderstandingContext:(id)context;
- (void)setStSpotlightContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTEvent

- (STSchemaSTEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = STSchemaSTEvent;
  v5 = [(STSchemaSTEvent *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[STSchemaSTClientEventMetadata alloc] initWithDictionary:v6];
      [(STSchemaSTEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"stGeneralSearchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[STSchemaSTGeneralSearchContext alloc] initWithDictionary:v8];
      [(STSchemaSTEvent *)v5 setStGeneralSearchContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"stLLMQueryUnderstandingContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[STSchemaSTLLMQueryUnderstandingContext alloc] initWithDictionary:v10];
      [(STSchemaSTEvent *)v5 setStLLMQueryUnderstandingContext:v11];
    }

    v30 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"stSpotlightContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[STSchemaSTSpotlightContext alloc] initWithDictionary:v12];
      [(STSchemaSTEvent *)v5 setStSpotlightContext:v13];
    }

    v29 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"stAnswerSynthesisContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[STSchemaSTAnswerSynthesisContext alloc] initWithDictionary:v14];
      [(STSchemaSTEvent *)v5 setStAnswerSynthesisContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"stGlobalSearchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[STSchemaSTGlobalSearchContext alloc] initWithDictionary:v16];
      [(STSchemaSTEvent *)v5 setStGlobalSearchContext:v17];
    }

    v31 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"stLLMQUQueryArgumentsTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[STSchemaSTLLMQUQueryArgumentsTier1 alloc] initWithDictionary:v18];
      [(STSchemaSTEvent *)v5 setStLLMQUQueryArgumentsTier1:v19];
    }

    v20 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"stDisambiguationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[STSchemaSTDisambiguationContext alloc] initWithDictionary:v21];
      [(STSchemaSTEvent *)v5 setStDisambiguationContext:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"requestEndedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[STSchemaSTGeneralSearchEndedTier1 alloc] initWithDictionary:v23];
      [(STSchemaSTEvent *)v5 setRequestEndedTier1:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"searchToolHallucinationDetectionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[STSchemaSTHallucinationDetectionContext alloc] initWithDictionary:v25];
      [(STSchemaSTEvent *)v5 setSearchToolHallucinationDetectionContext:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (STSchemaSTEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    eventMetadata = [(STSchemaSTEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_requestEndedTier1)
  {
    requestEndedTier1 = [(STSchemaSTEvent *)self requestEndedTier1];
    dictionaryRepresentation2 = [requestEndedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"requestEndedTier1"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"requestEndedTier1"];
    }
  }

  if (self->_searchToolHallucinationDetectionContext)
  {
    searchToolHallucinationDetectionContext = [(STSchemaSTEvent *)self searchToolHallucinationDetectionContext];
    dictionaryRepresentation3 = [searchToolHallucinationDetectionContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"searchToolHallucinationDetectionContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"searchToolHallucinationDetectionContext"];
    }
  }

  if (self->_stAnswerSynthesisContext)
  {
    stAnswerSynthesisContext = [(STSchemaSTEvent *)self stAnswerSynthesisContext];
    dictionaryRepresentation4 = [stAnswerSynthesisContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"stAnswerSynthesisContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"stAnswerSynthesisContext"];
    }
  }

  if (self->_stDisambiguationContext)
  {
    stDisambiguationContext = [(STSchemaSTEvent *)self stDisambiguationContext];
    dictionaryRepresentation5 = [stDisambiguationContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"stDisambiguationContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"stDisambiguationContext"];
    }
  }

  if (self->_stGeneralSearchContext)
  {
    stGeneralSearchContext = [(STSchemaSTEvent *)self stGeneralSearchContext];
    dictionaryRepresentation6 = [stGeneralSearchContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"stGeneralSearchContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"stGeneralSearchContext"];
    }
  }

  if (self->_stGlobalSearchContext)
  {
    stGlobalSearchContext = [(STSchemaSTEvent *)self stGlobalSearchContext];
    dictionaryRepresentation7 = [stGlobalSearchContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"stGlobalSearchContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"stGlobalSearchContext"];
    }
  }

  if (self->_stLLMQUQueryArgumentsTier1)
  {
    stLLMQUQueryArgumentsTier1 = [(STSchemaSTEvent *)self stLLMQUQueryArgumentsTier1];
    dictionaryRepresentation8 = [stLLMQUQueryArgumentsTier1 dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"stLLMQUQueryArgumentsTier1"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"stLLMQUQueryArgumentsTier1"];
    }
  }

  if (self->_stLLMQueryUnderstandingContext)
  {
    stLLMQueryUnderstandingContext = [(STSchemaSTEvent *)self stLLMQueryUnderstandingContext];
    dictionaryRepresentation9 = [stLLMQueryUnderstandingContext dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"stLLMQueryUnderstandingContext"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"stLLMQueryUnderstandingContext"];
    }
  }

  if (self->_stSpotlightContext)
  {
    stSpotlightContext = [(STSchemaSTEvent *)self stSpotlightContext];
    dictionaryRepresentation10 = [stSpotlightContext dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"stSpotlightContext"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"stSpotlightContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(STSchemaSTClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(STSchemaSTGeneralSearchContext *)self->_stGeneralSearchContext hash]^ v3;
  v5 = [(STSchemaSTLLMQueryUnderstandingContext *)self->_stLLMQueryUnderstandingContext hash];
  v6 = v4 ^ v5 ^ [(STSchemaSTSpotlightContext *)self->_stSpotlightContext hash];
  v7 = [(STSchemaSTAnswerSynthesisContext *)self->_stAnswerSynthesisContext hash];
  v8 = v7 ^ [(STSchemaSTGlobalSearchContext *)self->_stGlobalSearchContext hash];
  v9 = v6 ^ v8 ^ [(STSchemaSTLLMQUQueryArgumentsTier1 *)self->_stLLMQUQueryArgumentsTier1 hash];
  v10 = [(STSchemaSTDisambiguationContext *)self->_stDisambiguationContext hash];
  v11 = v10 ^ [(STSchemaSTGeneralSearchEndedTier1 *)self->_requestEndedTier1 hash];
  return v9 ^ v11 ^ [(STSchemaSTHallucinationDetectionContext *)self->_searchToolHallucinationDetectionContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_53;
  }

  eventMetadata = [(STSchemaSTEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  eventMetadata3 = [(STSchemaSTEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(STSchemaSTEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(STSchemaSTEvent *)self stGeneralSearchContext];
  eventMetadata2 = [equalCopy stGeneralSearchContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  stGeneralSearchContext = [(STSchemaSTEvent *)self stGeneralSearchContext];
  if (stGeneralSearchContext)
  {
    v14 = stGeneralSearchContext;
    stGeneralSearchContext2 = [(STSchemaSTEvent *)self stGeneralSearchContext];
    stGeneralSearchContext3 = [equalCopy stGeneralSearchContext];
    v17 = [stGeneralSearchContext2 isEqual:stGeneralSearchContext3];

    if (!v17)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(STSchemaSTEvent *)self stLLMQueryUnderstandingContext];
  eventMetadata2 = [equalCopy stLLMQueryUnderstandingContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  stLLMQueryUnderstandingContext = [(STSchemaSTEvent *)self stLLMQueryUnderstandingContext];
  if (stLLMQueryUnderstandingContext)
  {
    v19 = stLLMQueryUnderstandingContext;
    stLLMQueryUnderstandingContext2 = [(STSchemaSTEvent *)self stLLMQueryUnderstandingContext];
    stLLMQueryUnderstandingContext3 = [equalCopy stLLMQueryUnderstandingContext];
    v22 = [stLLMQueryUnderstandingContext2 isEqual:stLLMQueryUnderstandingContext3];

    if (!v22)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(STSchemaSTEvent *)self stSpotlightContext];
  eventMetadata2 = [equalCopy stSpotlightContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  stSpotlightContext = [(STSchemaSTEvent *)self stSpotlightContext];
  if (stSpotlightContext)
  {
    v24 = stSpotlightContext;
    stSpotlightContext2 = [(STSchemaSTEvent *)self stSpotlightContext];
    stSpotlightContext3 = [equalCopy stSpotlightContext];
    v27 = [stSpotlightContext2 isEqual:stSpotlightContext3];

    if (!v27)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(STSchemaSTEvent *)self stAnswerSynthesisContext];
  eventMetadata2 = [equalCopy stAnswerSynthesisContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  stAnswerSynthesisContext = [(STSchemaSTEvent *)self stAnswerSynthesisContext];
  if (stAnswerSynthesisContext)
  {
    v29 = stAnswerSynthesisContext;
    stAnswerSynthesisContext2 = [(STSchemaSTEvent *)self stAnswerSynthesisContext];
    stAnswerSynthesisContext3 = [equalCopy stAnswerSynthesisContext];
    v32 = [stAnswerSynthesisContext2 isEqual:stAnswerSynthesisContext3];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(STSchemaSTEvent *)self stGlobalSearchContext];
  eventMetadata2 = [equalCopy stGlobalSearchContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  stGlobalSearchContext = [(STSchemaSTEvent *)self stGlobalSearchContext];
  if (stGlobalSearchContext)
  {
    v34 = stGlobalSearchContext;
    stGlobalSearchContext2 = [(STSchemaSTEvent *)self stGlobalSearchContext];
    stGlobalSearchContext3 = [equalCopy stGlobalSearchContext];
    v37 = [stGlobalSearchContext2 isEqual:stGlobalSearchContext3];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(STSchemaSTEvent *)self stLLMQUQueryArgumentsTier1];
  eventMetadata2 = [equalCopy stLLMQUQueryArgumentsTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  stLLMQUQueryArgumentsTier1 = [(STSchemaSTEvent *)self stLLMQUQueryArgumentsTier1];
  if (stLLMQUQueryArgumentsTier1)
  {
    v39 = stLLMQUQueryArgumentsTier1;
    stLLMQUQueryArgumentsTier12 = [(STSchemaSTEvent *)self stLLMQUQueryArgumentsTier1];
    stLLMQUQueryArgumentsTier13 = [equalCopy stLLMQUQueryArgumentsTier1];
    v42 = [stLLMQUQueryArgumentsTier12 isEqual:stLLMQUQueryArgumentsTier13];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(STSchemaSTEvent *)self stDisambiguationContext];
  eventMetadata2 = [equalCopy stDisambiguationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  stDisambiguationContext = [(STSchemaSTEvent *)self stDisambiguationContext];
  if (stDisambiguationContext)
  {
    v44 = stDisambiguationContext;
    stDisambiguationContext2 = [(STSchemaSTEvent *)self stDisambiguationContext];
    stDisambiguationContext3 = [equalCopy stDisambiguationContext];
    v47 = [stDisambiguationContext2 isEqual:stDisambiguationContext3];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(STSchemaSTEvent *)self requestEndedTier1];
  eventMetadata2 = [equalCopy requestEndedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  requestEndedTier1 = [(STSchemaSTEvent *)self requestEndedTier1];
  if (requestEndedTier1)
  {
    v49 = requestEndedTier1;
    requestEndedTier12 = [(STSchemaSTEvent *)self requestEndedTier1];
    requestEndedTier13 = [equalCopy requestEndedTier1];
    v52 = [requestEndedTier12 isEqual:requestEndedTier13];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(STSchemaSTEvent *)self searchToolHallucinationDetectionContext];
  eventMetadata2 = [equalCopy searchToolHallucinationDetectionContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    searchToolHallucinationDetectionContext = [(STSchemaSTEvent *)self searchToolHallucinationDetectionContext];
    if (!searchToolHallucinationDetectionContext)
    {

LABEL_56:
      v58 = 1;
      goto LABEL_54;
    }

    v54 = searchToolHallucinationDetectionContext;
    searchToolHallucinationDetectionContext2 = [(STSchemaSTEvent *)self searchToolHallucinationDetectionContext];
    searchToolHallucinationDetectionContext3 = [equalCopy searchToolHallucinationDetectionContext];
    v57 = [searchToolHallucinationDetectionContext2 isEqual:searchToolHallucinationDetectionContext3];

    if (v57)
    {
      goto LABEL_56;
    }
  }

  else
  {
LABEL_52:
  }

LABEL_53:
  v58 = 0;
LABEL_54:

  return v58;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(STSchemaSTEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(STSchemaSTEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  stGeneralSearchContext = [(STSchemaSTEvent *)self stGeneralSearchContext];

  if (stGeneralSearchContext)
  {
    stGeneralSearchContext2 = [(STSchemaSTEvent *)self stGeneralSearchContext];
    PBDataWriterWriteSubmessage();
  }

  stLLMQueryUnderstandingContext = [(STSchemaSTEvent *)self stLLMQueryUnderstandingContext];

  if (stLLMQueryUnderstandingContext)
  {
    stLLMQueryUnderstandingContext2 = [(STSchemaSTEvent *)self stLLMQueryUnderstandingContext];
    PBDataWriterWriteSubmessage();
  }

  stSpotlightContext = [(STSchemaSTEvent *)self stSpotlightContext];

  if (stSpotlightContext)
  {
    stSpotlightContext2 = [(STSchemaSTEvent *)self stSpotlightContext];
    PBDataWriterWriteSubmessage();
  }

  stAnswerSynthesisContext = [(STSchemaSTEvent *)self stAnswerSynthesisContext];

  if (stAnswerSynthesisContext)
  {
    stAnswerSynthesisContext2 = [(STSchemaSTEvent *)self stAnswerSynthesisContext];
    PBDataWriterWriteSubmessage();
  }

  stGlobalSearchContext = [(STSchemaSTEvent *)self stGlobalSearchContext];

  if (stGlobalSearchContext)
  {
    stGlobalSearchContext2 = [(STSchemaSTEvent *)self stGlobalSearchContext];
    PBDataWriterWriteSubmessage();
  }

  stLLMQUQueryArgumentsTier1 = [(STSchemaSTEvent *)self stLLMQUQueryArgumentsTier1];

  if (stLLMQUQueryArgumentsTier1)
  {
    stLLMQUQueryArgumentsTier12 = [(STSchemaSTEvent *)self stLLMQUQueryArgumentsTier1];
    PBDataWriterWriteSubmessage();
  }

  stDisambiguationContext = [(STSchemaSTEvent *)self stDisambiguationContext];

  if (stDisambiguationContext)
  {
    stDisambiguationContext2 = [(STSchemaSTEvent *)self stDisambiguationContext];
    PBDataWriterWriteSubmessage();
  }

  requestEndedTier1 = [(STSchemaSTEvent *)self requestEndedTier1];

  if (requestEndedTier1)
  {
    requestEndedTier12 = [(STSchemaSTEvent *)self requestEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  searchToolHallucinationDetectionContext = [(STSchemaSTEvent *)self searchToolHallucinationDetectionContext];

  v23 = toCopy;
  if (searchToolHallucinationDetectionContext)
  {
    searchToolHallucinationDetectionContext2 = [(STSchemaSTEvent *)self searchToolHallucinationDetectionContext];
    PBDataWriterWriteSubmessage();

    v23 = toCopy;
  }
}

- (void)deleteSearchToolHallucinationDetectionContext
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_searchToolHallucinationDetectionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTHallucinationDetectionContext)searchToolHallucinationDetectionContext
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_searchToolHallucinationDetectionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearchToolHallucinationDetectionContext:(id)context
{
  contextCopy = context;
  stGeneralSearchContext = self->_stGeneralSearchContext;
  self->_stGeneralSearchContext = 0;

  stLLMQueryUnderstandingContext = self->_stLLMQueryUnderstandingContext;
  self->_stLLMQueryUnderstandingContext = 0;

  stSpotlightContext = self->_stSpotlightContext;
  self->_stSpotlightContext = 0;

  stAnswerSynthesisContext = self->_stAnswerSynthesisContext;
  self->_stAnswerSynthesisContext = 0;

  stGlobalSearchContext = self->_stGlobalSearchContext;
  self->_stGlobalSearchContext = 0;

  stLLMQUQueryArgumentsTier1 = self->_stLLMQUQueryArgumentsTier1;
  self->_stLLMQUQueryArgumentsTier1 = 0;

  stDisambiguationContext = self->_stDisambiguationContext;
  self->_stDisambiguationContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  v13 = 109;
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  searchToolHallucinationDetectionContext = self->_searchToolHallucinationDetectionContext;
  self->_searchToolHallucinationDetectionContext = contextCopy;
}

- (void)deleteRequestEndedTier1
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_requestEndedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTGeneralSearchEndedTier1)requestEndedTier1
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_requestEndedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestEndedTier1:(id)tier1
{
  tier1Copy = tier1;
  stGeneralSearchContext = self->_stGeneralSearchContext;
  self->_stGeneralSearchContext = 0;

  stLLMQueryUnderstandingContext = self->_stLLMQueryUnderstandingContext;
  self->_stLLMQueryUnderstandingContext = 0;

  stSpotlightContext = self->_stSpotlightContext;
  self->_stSpotlightContext = 0;

  stAnswerSynthesisContext = self->_stAnswerSynthesisContext;
  self->_stAnswerSynthesisContext = 0;

  stGlobalSearchContext = self->_stGlobalSearchContext;
  self->_stGlobalSearchContext = 0;

  stLLMQUQueryArgumentsTier1 = self->_stLLMQUQueryArgumentsTier1;
  self->_stLLMQUQueryArgumentsTier1 = 0;

  stDisambiguationContext = self->_stDisambiguationContext;
  self->_stDisambiguationContext = 0;

  searchToolHallucinationDetectionContext = self->_searchToolHallucinationDetectionContext;
  self->_searchToolHallucinationDetectionContext = 0;

  v13 = 108;
  if (!tier1Copy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = tier1Copy;
}

- (void)deleteStDisambiguationContext
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_stDisambiguationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTDisambiguationContext)stDisambiguationContext
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_stDisambiguationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStDisambiguationContext:(id)context
{
  contextCopy = context;
  stGeneralSearchContext = self->_stGeneralSearchContext;
  self->_stGeneralSearchContext = 0;

  stLLMQueryUnderstandingContext = self->_stLLMQueryUnderstandingContext;
  self->_stLLMQueryUnderstandingContext = 0;

  stSpotlightContext = self->_stSpotlightContext;
  self->_stSpotlightContext = 0;

  stAnswerSynthesisContext = self->_stAnswerSynthesisContext;
  self->_stAnswerSynthesisContext = 0;

  stGlobalSearchContext = self->_stGlobalSearchContext;
  self->_stGlobalSearchContext = 0;

  stLLMQUQueryArgumentsTier1 = self->_stLLMQUQueryArgumentsTier1;
  self->_stLLMQUQueryArgumentsTier1 = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  searchToolHallucinationDetectionContext = self->_searchToolHallucinationDetectionContext;
  self->_searchToolHallucinationDetectionContext = 0;

  v13 = 107;
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  stDisambiguationContext = self->_stDisambiguationContext;
  self->_stDisambiguationContext = contextCopy;
}

- (void)deleteStLLMQUQueryArgumentsTier1
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_stLLMQUQueryArgumentsTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTLLMQUQueryArgumentsTier1)stLLMQUQueryArgumentsTier1
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_stLLMQUQueryArgumentsTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStLLMQUQueryArgumentsTier1:(id)tier1
{
  tier1Copy = tier1;
  stGeneralSearchContext = self->_stGeneralSearchContext;
  self->_stGeneralSearchContext = 0;

  stLLMQueryUnderstandingContext = self->_stLLMQueryUnderstandingContext;
  self->_stLLMQueryUnderstandingContext = 0;

  stSpotlightContext = self->_stSpotlightContext;
  self->_stSpotlightContext = 0;

  stAnswerSynthesisContext = self->_stAnswerSynthesisContext;
  self->_stAnswerSynthesisContext = 0;

  stGlobalSearchContext = self->_stGlobalSearchContext;
  self->_stGlobalSearchContext = 0;

  stDisambiguationContext = self->_stDisambiguationContext;
  self->_stDisambiguationContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  searchToolHallucinationDetectionContext = self->_searchToolHallucinationDetectionContext;
  self->_searchToolHallucinationDetectionContext = 0;

  v13 = 106;
  if (!tier1Copy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  stLLMQUQueryArgumentsTier1 = self->_stLLMQUQueryArgumentsTier1;
  self->_stLLMQUQueryArgumentsTier1 = tier1Copy;
}

- (void)deleteStGlobalSearchContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_stGlobalSearchContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTGlobalSearchContext)stGlobalSearchContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_stGlobalSearchContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStGlobalSearchContext:(id)context
{
  contextCopy = context;
  stGeneralSearchContext = self->_stGeneralSearchContext;
  self->_stGeneralSearchContext = 0;

  stLLMQueryUnderstandingContext = self->_stLLMQueryUnderstandingContext;
  self->_stLLMQueryUnderstandingContext = 0;

  stSpotlightContext = self->_stSpotlightContext;
  self->_stSpotlightContext = 0;

  stAnswerSynthesisContext = self->_stAnswerSynthesisContext;
  self->_stAnswerSynthesisContext = 0;

  stLLMQUQueryArgumentsTier1 = self->_stLLMQUQueryArgumentsTier1;
  self->_stLLMQUQueryArgumentsTier1 = 0;

  stDisambiguationContext = self->_stDisambiguationContext;
  self->_stDisambiguationContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  searchToolHallucinationDetectionContext = self->_searchToolHallucinationDetectionContext;
  self->_searchToolHallucinationDetectionContext = 0;

  v13 = 105;
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  stGlobalSearchContext = self->_stGlobalSearchContext;
  self->_stGlobalSearchContext = contextCopy;
}

- (void)deleteStAnswerSynthesisContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_stAnswerSynthesisContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTAnswerSynthesisContext)stAnswerSynthesisContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_stAnswerSynthesisContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStAnswerSynthesisContext:(id)context
{
  contextCopy = context;
  stGeneralSearchContext = self->_stGeneralSearchContext;
  self->_stGeneralSearchContext = 0;

  stLLMQueryUnderstandingContext = self->_stLLMQueryUnderstandingContext;
  self->_stLLMQueryUnderstandingContext = 0;

  stSpotlightContext = self->_stSpotlightContext;
  self->_stSpotlightContext = 0;

  stGlobalSearchContext = self->_stGlobalSearchContext;
  self->_stGlobalSearchContext = 0;

  stLLMQUQueryArgumentsTier1 = self->_stLLMQUQueryArgumentsTier1;
  self->_stLLMQUQueryArgumentsTier1 = 0;

  stDisambiguationContext = self->_stDisambiguationContext;
  self->_stDisambiguationContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  searchToolHallucinationDetectionContext = self->_searchToolHallucinationDetectionContext;
  self->_searchToolHallucinationDetectionContext = 0;

  v13 = 104;
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  stAnswerSynthesisContext = self->_stAnswerSynthesisContext;
  self->_stAnswerSynthesisContext = contextCopy;
}

- (void)deleteStSpotlightContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_stSpotlightContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTSpotlightContext)stSpotlightContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_stSpotlightContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStSpotlightContext:(id)context
{
  contextCopy = context;
  stGeneralSearchContext = self->_stGeneralSearchContext;
  self->_stGeneralSearchContext = 0;

  stLLMQueryUnderstandingContext = self->_stLLMQueryUnderstandingContext;
  self->_stLLMQueryUnderstandingContext = 0;

  stAnswerSynthesisContext = self->_stAnswerSynthesisContext;
  self->_stAnswerSynthesisContext = 0;

  stGlobalSearchContext = self->_stGlobalSearchContext;
  self->_stGlobalSearchContext = 0;

  stLLMQUQueryArgumentsTier1 = self->_stLLMQUQueryArgumentsTier1;
  self->_stLLMQUQueryArgumentsTier1 = 0;

  stDisambiguationContext = self->_stDisambiguationContext;
  self->_stDisambiguationContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  searchToolHallucinationDetectionContext = self->_searchToolHallucinationDetectionContext;
  self->_searchToolHallucinationDetectionContext = 0;

  v13 = 103;
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  stSpotlightContext = self->_stSpotlightContext;
  self->_stSpotlightContext = contextCopy;
}

- (void)deleteStLLMQueryUnderstandingContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_stLLMQueryUnderstandingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTLLMQueryUnderstandingContext)stLLMQueryUnderstandingContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_stLLMQueryUnderstandingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStLLMQueryUnderstandingContext:(id)context
{
  contextCopy = context;
  stGeneralSearchContext = self->_stGeneralSearchContext;
  self->_stGeneralSearchContext = 0;

  stSpotlightContext = self->_stSpotlightContext;
  self->_stSpotlightContext = 0;

  stAnswerSynthesisContext = self->_stAnswerSynthesisContext;
  self->_stAnswerSynthesisContext = 0;

  stGlobalSearchContext = self->_stGlobalSearchContext;
  self->_stGlobalSearchContext = 0;

  stLLMQUQueryArgumentsTier1 = self->_stLLMQUQueryArgumentsTier1;
  self->_stLLMQUQueryArgumentsTier1 = 0;

  stDisambiguationContext = self->_stDisambiguationContext;
  self->_stDisambiguationContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  searchToolHallucinationDetectionContext = self->_searchToolHallucinationDetectionContext;
  self->_searchToolHallucinationDetectionContext = 0;

  v13 = 102;
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  stLLMQueryUnderstandingContext = self->_stLLMQueryUnderstandingContext;
  self->_stLLMQueryUnderstandingContext = contextCopy;
}

- (void)deleteStGeneralSearchContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_stGeneralSearchContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (STSchemaSTGeneralSearchContext)stGeneralSearchContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_stGeneralSearchContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStGeneralSearchContext:(id)context
{
  contextCopy = context;
  stLLMQueryUnderstandingContext = self->_stLLMQueryUnderstandingContext;
  self->_stLLMQueryUnderstandingContext = 0;

  stSpotlightContext = self->_stSpotlightContext;
  self->_stSpotlightContext = 0;

  stAnswerSynthesisContext = self->_stAnswerSynthesisContext;
  self->_stAnswerSynthesisContext = 0;

  stGlobalSearchContext = self->_stGlobalSearchContext;
  self->_stGlobalSearchContext = 0;

  stLLMQUQueryArgumentsTier1 = self->_stLLMQUQueryArgumentsTier1;
  self->_stLLMQUQueryArgumentsTier1 = 0;

  stDisambiguationContext = self->_stDisambiguationContext;
  self->_stDisambiguationContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  searchToolHallucinationDetectionContext = self->_searchToolHallucinationDetectionContext;
  self->_searchToolHallucinationDetectionContext = 0;

  v13 = 101;
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  stGeneralSearchContext = self->_stGeneralSearchContext;
  self->_stGeneralSearchContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(STSchemaSTEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 8)
  {
    return @"com.apple.aiml.siri.searchtool.STEvent";
  }

  else
  {
    return off_1E78E77F0[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v37.receiver = self;
  v37.super_class = STSchemaSTEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(STSchemaSTEvent *)self deleteStLLMQUQueryArgumentsTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(STSchemaSTEvent *)self deleteStLLMQUQueryArgumentsTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(STSchemaSTEvent *)self deleteStLLMQUQueryArgumentsTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(STSchemaSTEvent *)self deleteStLLMQUQueryArgumentsTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(STSchemaSTEvent *)self deleteStLLMQUQueryArgumentsTier1];
  }

  eventMetadata = [(STSchemaSTEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(STSchemaSTEvent *)self deleteEventMetadata];
  }

  stGeneralSearchContext = [(STSchemaSTEvent *)self stGeneralSearchContext];
  v10 = [stGeneralSearchContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(STSchemaSTEvent *)self deleteStGeneralSearchContext];
  }

  stLLMQueryUnderstandingContext = [(STSchemaSTEvent *)self stLLMQueryUnderstandingContext];
  v13 = [stLLMQueryUnderstandingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(STSchemaSTEvent *)self deleteStLLMQueryUnderstandingContext];
  }

  stSpotlightContext = [(STSchemaSTEvent *)self stSpotlightContext];
  v16 = [stSpotlightContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(STSchemaSTEvent *)self deleteStSpotlightContext];
  }

  stAnswerSynthesisContext = [(STSchemaSTEvent *)self stAnswerSynthesisContext];
  v19 = [stAnswerSynthesisContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(STSchemaSTEvent *)self deleteStAnswerSynthesisContext];
  }

  stGlobalSearchContext = [(STSchemaSTEvent *)self stGlobalSearchContext];
  v22 = [stGlobalSearchContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(STSchemaSTEvent *)self deleteStGlobalSearchContext];
  }

  stLLMQUQueryArgumentsTier1 = [(STSchemaSTEvent *)self stLLMQUQueryArgumentsTier1];
  v25 = [stLLMQUQueryArgumentsTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(STSchemaSTEvent *)self deleteStLLMQUQueryArgumentsTier1];
  }

  stDisambiguationContext = [(STSchemaSTEvent *)self stDisambiguationContext];
  v28 = [stDisambiguationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(STSchemaSTEvent *)self deleteStDisambiguationContext];
  }

  requestEndedTier1 = [(STSchemaSTEvent *)self requestEndedTier1];
  v31 = [requestEndedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(STSchemaSTEvent *)self deleteRequestEndedTier1];
  }

  searchToolHallucinationDetectionContext = [(STSchemaSTEvent *)self searchToolHallucinationDetectionContext];
  v34 = [searchToolHallucinationDetectionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(STSchemaSTEvent *)self deleteSearchToolHallucinationDetectionContext];
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
  eventMetadata = [(STSchemaSTEvent *)self eventMetadata];
  searchToolId = [eventMetadata searchToolId];

  if (searchToolId)
  {
    value = [searchToolId value];
    if (value)
    {
      value2 = [searchToolId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 55;
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
  eventMetadata = [(STSchemaSTEvent *)self eventMetadata];
  searchToolId = [eventMetadata searchToolId];

  if (!searchToolId)
  {
    goto LABEL_5;
  }

  value = [searchToolId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [searchToolId value];
  v6 = [value2 length];

  if (v6)
  {
    value = searchToolId;
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
  whichEvent_Type = [(STSchemaSTEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB178[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E78EB1C0[tag - 101];
  }
}

@end