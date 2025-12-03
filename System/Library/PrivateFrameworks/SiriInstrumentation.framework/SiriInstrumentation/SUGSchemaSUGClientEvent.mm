@interface SUGSchemaSUGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (SUGSchemaSUGClientEvent)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGClientEvent)initWithJSON:(id)n;
- (SUGSchemaSUGEngagementMetricReported)engagementMetricReported;
- (SUGSchemaSUGEngagementReported)engagementReported;
- (SUGSchemaSUGFilteringStepContext)filteringStepContext;
- (SUGSchemaSUGGenerationStepContext)generationStepContext;
- (SUGSchemaSUGRankingStepContext)rankingStepContext;
- (SUGSchemaSUGRequestContext)requestContext;
- (SUGSchemaSUGResolutionStepContext)resolutionStepContext;
- (SUGSchemaSUGSuggestionsGenerated)suggestionsGenerated;
- (SUGSchemaSUGSuggestionsGeneratedTier1)sugGeneratedTier1;
- (SUGSchemaSUGSuggestionsUIActivity)uiActivity;
- (SUGSchemaSUGSuggestionsUIActivityTier1)uiActivityTier1;
- (SUGSchemaSUGTypingWindowEnded)typingWindowEnded;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deleteEngagementMetricReported;
- (void)deleteEngagementReported;
- (void)deleteFilteringStepContext;
- (void)deleteGenerationStepContext;
- (void)deleteRankingStepContext;
- (void)deleteRequestContext;
- (void)deleteResolutionStepContext;
- (void)deleteSugGeneratedTier1;
- (void)deleteSuggestionsGenerated;
- (void)deleteTypingWindowEnded;
- (void)deleteUiActivity;
- (void)deleteUiActivityTier1;
- (void)setEngagementMetricReported:(id)reported;
- (void)setEngagementReported:(id)reported;
- (void)setFilteringStepContext:(id)context;
- (void)setGenerationStepContext:(id)context;
- (void)setRankingStepContext:(id)context;
- (void)setRequestContext:(id)context;
- (void)setResolutionStepContext:(id)context;
- (void)setSugGeneratedTier1:(id)tier1;
- (void)setSuggestionsGenerated:(id)generated;
- (void)setTypingWindowEnded:(id)ended;
- (void)setUiActivity:(id)activity;
- (void)setUiActivityTier1:(id)tier1;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGClientEvent

- (SUGSchemaSUGClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v41.receiver = self;
  v41.super_class = SUGSchemaSUGClientEvent;
  v5 = [(SUGSchemaSUGClientEvent *)&v41 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SUGSchemaSUGClientEventMetadata alloc] initWithDictionary:v6];
      [(SUGSchemaSUGClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"suggestionsGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SUGSchemaSUGSuggestionsGenerated alloc] initWithDictionary:v8];
      [(SUGSchemaSUGClientEvent *)v5 setSuggestionsGenerated:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"engagementReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SUGSchemaSUGEngagementReported alloc] initWithDictionary:v10];
      [(SUGSchemaSUGClientEvent *)v5 setEngagementReported:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SUGSchemaSUGRequestContext alloc] initWithDictionary:v12];
      [(SUGSchemaSUGClientEvent *)v5 setRequestContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"generationStepContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SUGSchemaSUGGenerationStepContext alloc] initWithDictionary:v14];
      [(SUGSchemaSUGClientEvent *)v5 setGenerationStepContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"resolutionStepContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SUGSchemaSUGResolutionStepContext alloc] initWithDictionary:v16];
      [(SUGSchemaSUGClientEvent *)v5 setResolutionStepContext:v17];
    }

    v36 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"filteringStepContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SUGSchemaSUGFilteringStepContext alloc] initWithDictionary:v18];
      [(SUGSchemaSUGClientEvent *)v5 setFilteringStepContext:v19];
    }

    v40 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:{@"rankingStepContext", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SUGSchemaSUGRankingStepContext alloc] initWithDictionary:v20];
      [(SUGSchemaSUGClientEvent *)v5 setRankingStepContext:v21];
    }

    v39 = v8;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"engagementMetricReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SUGSchemaSUGEngagementMetricReported alloc] initWithDictionary:v22];
      [(SUGSchemaSUGClientEvent *)v5 setEngagementMetricReported:v23];
    }

    v37 = v14;
    v38 = v10;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"uiActivity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[SUGSchemaSUGSuggestionsUIActivity alloc] initWithDictionary:v24];
      [(SUGSchemaSUGClientEvent *)v5 setUiActivity:v25];
    }

    v26 = v12;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"typingWindowEnded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[SUGSchemaSUGTypingWindowEnded alloc] initWithDictionary:v27];
      [(SUGSchemaSUGClientEvent *)v5 setTypingWindowEnded:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"sugGeneratedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[SUGSchemaSUGSuggestionsGeneratedTier1 alloc] initWithDictionary:v29];
      [(SUGSchemaSUGClientEvent *)v5 setSugGeneratedTier1:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"uiActivityTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[SUGSchemaSUGSuggestionsUIActivityTier1 alloc] initWithDictionary:v31];
      [(SUGSchemaSUGClientEvent *)v5 setUiActivityTier1:v32];
    }

    v33 = v5;
  }

  return v5;
}

- (SUGSchemaSUGClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGClientEvent *)self dictionaryRepresentation];
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
  if (self->_engagementMetricReported)
  {
    engagementMetricReported = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
    dictionaryRepresentation = [engagementMetricReported dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"engagementMetricReported"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"engagementMetricReported"];
    }
  }

  if (self->_engagementReported)
  {
    engagementReported = [(SUGSchemaSUGClientEvent *)self engagementReported];
    dictionaryRepresentation2 = [engagementReported dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"engagementReported"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"engagementReported"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(SUGSchemaSUGClientEvent *)self eventMetadata];
    dictionaryRepresentation3 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_filteringStepContext)
  {
    filteringStepContext = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
    dictionaryRepresentation4 = [filteringStepContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"filteringStepContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"filteringStepContext"];
    }
  }

  if (self->_generationStepContext)
  {
    generationStepContext = [(SUGSchemaSUGClientEvent *)self generationStepContext];
    dictionaryRepresentation5 = [generationStepContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"generationStepContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"generationStepContext"];
    }
  }

  if (self->_rankingStepContext)
  {
    rankingStepContext = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
    dictionaryRepresentation6 = [rankingStepContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"rankingStepContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"rankingStepContext"];
    }
  }

  if (self->_requestContext)
  {
    requestContext = [(SUGSchemaSUGClientEvent *)self requestContext];
    dictionaryRepresentation7 = [requestContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_resolutionStepContext)
  {
    resolutionStepContext = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
    dictionaryRepresentation8 = [resolutionStepContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"resolutionStepContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"resolutionStepContext"];
    }
  }

  if (self->_sugGeneratedTier1)
  {
    sugGeneratedTier1 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
    dictionaryRepresentation9 = [sugGeneratedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"sugGeneratedTier1"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"sugGeneratedTier1"];
    }
  }

  if (self->_suggestionsGenerated)
  {
    suggestionsGenerated = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
    dictionaryRepresentation10 = [suggestionsGenerated dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"suggestionsGenerated"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"suggestionsGenerated"];
    }
  }

  if (self->_typingWindowEnded)
  {
    typingWindowEnded = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
    dictionaryRepresentation11 = [typingWindowEnded dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"typingWindowEnded"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"typingWindowEnded"];
    }
  }

  if (self->_uiActivity)
  {
    uiActivity = [(SUGSchemaSUGClientEvent *)self uiActivity];
    dictionaryRepresentation12 = [uiActivity dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"uiActivity"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"uiActivity"];
    }
  }

  if (self->_uiActivityTier1)
  {
    uiActivityTier1 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
    dictionaryRepresentation13 = [uiActivityTier1 dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"uiActivityTier1"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"uiActivityTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SUGSchemaSUGClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(SUGSchemaSUGSuggestionsGenerated *)self->_suggestionsGenerated hash]^ v3;
  v5 = [(SUGSchemaSUGEngagementReported *)self->_engagementReported hash];
  v6 = v4 ^ v5 ^ [(SUGSchemaSUGRequestContext *)self->_requestContext hash];
  v7 = [(SUGSchemaSUGGenerationStepContext *)self->_generationStepContext hash];
  v8 = v7 ^ [(SUGSchemaSUGResolutionStepContext *)self->_resolutionStepContext hash];
  v9 = v6 ^ v8 ^ [(SUGSchemaSUGFilteringStepContext *)self->_filteringStepContext hash];
  v10 = [(SUGSchemaSUGRankingStepContext *)self->_rankingStepContext hash];
  v11 = v10 ^ [(SUGSchemaSUGEngagementMetricReported *)self->_engagementMetricReported hash];
  v12 = v11 ^ [(SUGSchemaSUGSuggestionsUIActivity *)self->_uiActivity hash];
  v13 = v9 ^ v12 ^ [(SUGSchemaSUGTypingWindowEnded *)self->_typingWindowEnded hash];
  v14 = [(SUGSchemaSUGSuggestionsGeneratedTier1 *)self->_sugGeneratedTier1 hash];
  return v13 ^ v14 ^ [(SUGSchemaSUGSuggestionsUIActivityTier1 *)self->_uiActivityTier1 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_68;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_68;
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  eventMetadata3 = [(SUGSchemaSUGClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SUGSchemaSUGClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
  eventMetadata2 = [equalCopy suggestionsGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  suggestionsGenerated = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
  if (suggestionsGenerated)
  {
    v14 = suggestionsGenerated;
    suggestionsGenerated2 = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
    suggestionsGenerated3 = [equalCopy suggestionsGenerated];
    v17 = [suggestionsGenerated2 isEqual:suggestionsGenerated3];

    if (!v17)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self engagementReported];
  eventMetadata2 = [equalCopy engagementReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  engagementReported = [(SUGSchemaSUGClientEvent *)self engagementReported];
  if (engagementReported)
  {
    v19 = engagementReported;
    engagementReported2 = [(SUGSchemaSUGClientEvent *)self engagementReported];
    engagementReported3 = [equalCopy engagementReported];
    v22 = [engagementReported2 isEqual:engagementReported3];

    if (!v22)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self requestContext];
  eventMetadata2 = [equalCopy requestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  requestContext = [(SUGSchemaSUGClientEvent *)self requestContext];
  if (requestContext)
  {
    v24 = requestContext;
    requestContext2 = [(SUGSchemaSUGClientEvent *)self requestContext];
    requestContext3 = [equalCopy requestContext];
    v27 = [requestContext2 isEqual:requestContext3];

    if (!v27)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self generationStepContext];
  eventMetadata2 = [equalCopy generationStepContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  generationStepContext = [(SUGSchemaSUGClientEvent *)self generationStepContext];
  if (generationStepContext)
  {
    v29 = generationStepContext;
    generationStepContext2 = [(SUGSchemaSUGClientEvent *)self generationStepContext];
    generationStepContext3 = [equalCopy generationStepContext];
    v32 = [generationStepContext2 isEqual:generationStepContext3];

    if (!v32)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
  eventMetadata2 = [equalCopy resolutionStepContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  resolutionStepContext = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
  if (resolutionStepContext)
  {
    v34 = resolutionStepContext;
    resolutionStepContext2 = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
    resolutionStepContext3 = [equalCopy resolutionStepContext];
    v37 = [resolutionStepContext2 isEqual:resolutionStepContext3];

    if (!v37)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
  eventMetadata2 = [equalCopy filteringStepContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  filteringStepContext = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
  if (filteringStepContext)
  {
    v39 = filteringStepContext;
    filteringStepContext2 = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
    filteringStepContext3 = [equalCopy filteringStepContext];
    v42 = [filteringStepContext2 isEqual:filteringStepContext3];

    if (!v42)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
  eventMetadata2 = [equalCopy rankingStepContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  rankingStepContext = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
  if (rankingStepContext)
  {
    v44 = rankingStepContext;
    rankingStepContext2 = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
    rankingStepContext3 = [equalCopy rankingStepContext];
    v47 = [rankingStepContext2 isEqual:rankingStepContext3];

    if (!v47)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
  eventMetadata2 = [equalCopy engagementMetricReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  engagementMetricReported = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
  if (engagementMetricReported)
  {
    v49 = engagementMetricReported;
    engagementMetricReported2 = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
    engagementMetricReported3 = [equalCopy engagementMetricReported];
    v52 = [engagementMetricReported2 isEqual:engagementMetricReported3];

    if (!v52)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self uiActivity];
  eventMetadata2 = [equalCopy uiActivity];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  uiActivity = [(SUGSchemaSUGClientEvent *)self uiActivity];
  if (uiActivity)
  {
    v54 = uiActivity;
    uiActivity2 = [(SUGSchemaSUGClientEvent *)self uiActivity];
    uiActivity3 = [equalCopy uiActivity];
    v57 = [uiActivity2 isEqual:uiActivity3];

    if (!v57)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
  eventMetadata2 = [equalCopy typingWindowEnded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  typingWindowEnded = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
  if (typingWindowEnded)
  {
    v59 = typingWindowEnded;
    typingWindowEnded2 = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
    typingWindowEnded3 = [equalCopy typingWindowEnded];
    v62 = [typingWindowEnded2 isEqual:typingWindowEnded3];

    if (!v62)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
  eventMetadata2 = [equalCopy sugGeneratedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_67;
  }

  sugGeneratedTier1 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
  if (sugGeneratedTier1)
  {
    v64 = sugGeneratedTier1;
    sugGeneratedTier12 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
    sugGeneratedTier13 = [equalCopy sugGeneratedTier1];
    v67 = [sugGeneratedTier12 isEqual:sugGeneratedTier13];

    if (!v67)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
  eventMetadata2 = [equalCopy uiActivityTier1];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    uiActivityTier1 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
    if (!uiActivityTier1)
    {

LABEL_71:
      v73 = 1;
      goto LABEL_69;
    }

    v69 = uiActivityTier1;
    uiActivityTier12 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
    uiActivityTier13 = [equalCopy uiActivityTier1];
    v72 = [uiActivityTier12 isEqual:uiActivityTier13];

    if (v72)
    {
      goto LABEL_71;
    }
  }

  else
  {
LABEL_67:
  }

LABEL_68:
  v73 = 0;
LABEL_69:

  return v73;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(SUGSchemaSUGClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SUGSchemaSUGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  suggestionsGenerated = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];

  if (suggestionsGenerated)
  {
    suggestionsGenerated2 = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
    PBDataWriterWriteSubmessage();
  }

  engagementReported = [(SUGSchemaSUGClientEvent *)self engagementReported];

  if (engagementReported)
  {
    engagementReported2 = [(SUGSchemaSUGClientEvent *)self engagementReported];
    PBDataWriterWriteSubmessage();
  }

  requestContext = [(SUGSchemaSUGClientEvent *)self requestContext];

  if (requestContext)
  {
    requestContext2 = [(SUGSchemaSUGClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  generationStepContext = [(SUGSchemaSUGClientEvent *)self generationStepContext];

  if (generationStepContext)
  {
    generationStepContext2 = [(SUGSchemaSUGClientEvent *)self generationStepContext];
    PBDataWriterWriteSubmessage();
  }

  resolutionStepContext = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];

  if (resolutionStepContext)
  {
    resolutionStepContext2 = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
    PBDataWriterWriteSubmessage();
  }

  filteringStepContext = [(SUGSchemaSUGClientEvent *)self filteringStepContext];

  if (filteringStepContext)
  {
    filteringStepContext2 = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
    PBDataWriterWriteSubmessage();
  }

  rankingStepContext = [(SUGSchemaSUGClientEvent *)self rankingStepContext];

  if (rankingStepContext)
  {
    rankingStepContext2 = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
    PBDataWriterWriteSubmessage();
  }

  engagementMetricReported = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];

  if (engagementMetricReported)
  {
    engagementMetricReported2 = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
    PBDataWriterWriteSubmessage();
  }

  uiActivity = [(SUGSchemaSUGClientEvent *)self uiActivity];

  if (uiActivity)
  {
    uiActivity2 = [(SUGSchemaSUGClientEvent *)self uiActivity];
    PBDataWriterWriteSubmessage();
  }

  typingWindowEnded = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];

  if (typingWindowEnded)
  {
    typingWindowEnded2 = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
    PBDataWriterWriteSubmessage();
  }

  sugGeneratedTier1 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];

  if (sugGeneratedTier1)
  {
    sugGeneratedTier12 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
    PBDataWriterWriteSubmessage();
  }

  uiActivityTier1 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];

  v29 = toCopy;
  if (uiActivityTier1)
  {
    uiActivityTier12 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
    PBDataWriterWriteSubmessage();

    v29 = toCopy;
  }
}

- (void)deleteUiActivityTier1
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_uiActivityTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGSuggestionsUIActivityTier1)uiActivityTier1
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_uiActivityTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUiActivityTier1:(id)tier1
{
  tier1Copy = tier1;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  v16 = 112;
  if (!tier1Copy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = tier1Copy;
}

- (void)deleteSugGeneratedTier1
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_sugGeneratedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGSuggestionsGeneratedTier1)sugGeneratedTier1
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_sugGeneratedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSugGeneratedTier1:(id)tier1
{
  tier1Copy = tier1;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 111;
  if (!tier1Copy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = tier1Copy;
}

- (void)deleteTypingWindowEnded
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_typingWindowEnded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGTypingWindowEnded)typingWindowEnded
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_typingWindowEnded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTypingWindowEnded:(id)ended
{
  endedCopy = ended;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 110;
  if (!endedCopy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = endedCopy;
}

- (void)deleteUiActivity
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_uiActivity = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGSuggestionsUIActivity)uiActivity
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_uiActivity;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUiActivity:(id)activity
{
  activityCopy = activity;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 109;
  if (!activityCopy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  uiActivity = self->_uiActivity;
  self->_uiActivity = activityCopy;
}

- (void)deleteEngagementMetricReported
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_engagementMetricReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGEngagementMetricReported)engagementMetricReported
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_engagementMetricReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEngagementMetricReported:(id)reported
{
  reportedCopy = reported;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 108;
  if (!reportedCopy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = reportedCopy;
}

- (void)deleteRankingStepContext
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_rankingStepContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGRankingStepContext)rankingStepContext
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_rankingStepContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRankingStepContext:(id)context
{
  contextCopy = context;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 107;
  if (!contextCopy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = contextCopy;
}

- (void)deleteFilteringStepContext
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_filteringStepContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGFilteringStepContext)filteringStepContext
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_filteringStepContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFilteringStepContext:(id)context
{
  contextCopy = context;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 106;
  if (!contextCopy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = contextCopy;
}

- (void)deleteResolutionStepContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_resolutionStepContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGResolutionStepContext)resolutionStepContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_resolutionStepContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setResolutionStepContext:(id)context
{
  contextCopy = context;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 105;
  if (!contextCopy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = contextCopy;
}

- (void)deleteGenerationStepContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_generationStepContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGGenerationStepContext)generationStepContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_generationStepContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGenerationStepContext:(id)context
{
  contextCopy = context;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 104;
  if (!contextCopy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = contextCopy;
}

- (void)deleteRequestContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_requestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGRequestContext)requestContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_requestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestContext:(id)context
{
  contextCopy = context;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 103;
  if (!contextCopy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  requestContext = self->_requestContext;
  self->_requestContext = contextCopy;
}

- (void)deleteEngagementReported
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_engagementReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGEngagementReported)engagementReported
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_engagementReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEngagementReported:(id)reported
{
  reportedCopy = reported;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 102;
  if (!reportedCopy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  engagementReported = self->_engagementReported;
  self->_engagementReported = reportedCopy;
}

- (void)deleteSuggestionsGenerated
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_suggestionsGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUGSchemaSUGSuggestionsGenerated)suggestionsGenerated
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_suggestionsGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSuggestionsGenerated:(id)generated
{
  generatedCopy = generated;
  engagementReported = self->_engagementReported;
  self->_engagementReported = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = 0;

  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = 0;

  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = 0;

  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = 0;

  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = 0;

  uiActivity = self->_uiActivity;
  self->_uiActivity = 0;

  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = 0;

  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = 0;

  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = 0;

  v16 = 101;
  if (!generatedCopy)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = generatedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(SUGSchemaSUGClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0xB)
  {
    return @"com.apple.aiml.siri.sug.SUGClientEvent";
  }

  else
  {
    return off_1E78E7B38[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v46.receiver = self;
  v46.super_class = SUGSchemaSUGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v46 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
  }

  eventMetadata = [(SUGSchemaSUGClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SUGSchemaSUGClientEvent *)self deleteEventMetadata];
  }

  suggestionsGenerated = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
  v10 = [suggestionsGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SUGSchemaSUGClientEvent *)self deleteSuggestionsGenerated];
  }

  engagementReported = [(SUGSchemaSUGClientEvent *)self engagementReported];
  v13 = [engagementReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SUGSchemaSUGClientEvent *)self deleteEngagementReported];
  }

  requestContext = [(SUGSchemaSUGClientEvent *)self requestContext];
  v16 = [requestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SUGSchemaSUGClientEvent *)self deleteRequestContext];
  }

  generationStepContext = [(SUGSchemaSUGClientEvent *)self generationStepContext];
  v19 = [generationStepContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(SUGSchemaSUGClientEvent *)self deleteGenerationStepContext];
  }

  resolutionStepContext = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
  v22 = [resolutionStepContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(SUGSchemaSUGClientEvent *)self deleteResolutionStepContext];
  }

  filteringStepContext = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
  v25 = [filteringStepContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(SUGSchemaSUGClientEvent *)self deleteFilteringStepContext];
  }

  rankingStepContext = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
  v28 = [rankingStepContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(SUGSchemaSUGClientEvent *)self deleteRankingStepContext];
  }

  engagementMetricReported = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
  v31 = [engagementMetricReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(SUGSchemaSUGClientEvent *)self deleteEngagementMetricReported];
  }

  uiActivity = [(SUGSchemaSUGClientEvent *)self uiActivity];
  v34 = [uiActivity applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(SUGSchemaSUGClientEvent *)self deleteUiActivity];
  }

  typingWindowEnded = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
  v37 = [typingWindowEnded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(SUGSchemaSUGClientEvent *)self deleteTypingWindowEnded];
  }

  sugGeneratedTier1 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
  v40 = [sugGeneratedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
  }

  uiActivityTier1 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
  v43 = [uiActivityTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
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
  eventMetadata = [(SUGSchemaSUGClientEvent *)self eventMetadata];
  sugId = [eventMetadata sugId];

  if (!sugId)
  {
    goto LABEL_5;
  }

  value = [sugId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [sugId value];
  v6 = [value2 length];

  if (v6)
  {
    value = sugId;
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
  whichEvent_Type = [(SUGSchemaSUGClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0xB)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB208[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E78EB268[tag - 101];
  }
}

- (int)clockIsolationLevel
{
  if ([(SUGSchemaSUGClientEvent *)self whichEvent_Type]== 102)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end