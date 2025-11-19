@interface SUGSchemaSUGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (SUGSchemaSUGClientEvent)initWithDictionary:(id)a3;
- (SUGSchemaSUGClientEvent)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setEngagementMetricReported:(id)a3;
- (void)setEngagementReported:(id)a3;
- (void)setFilteringStepContext:(id)a3;
- (void)setGenerationStepContext:(id)a3;
- (void)setRankingStepContext:(id)a3;
- (void)setRequestContext:(id)a3;
- (void)setResolutionStepContext:(id)a3;
- (void)setSugGeneratedTier1:(id)a3;
- (void)setSuggestionsGenerated:(id)a3;
- (void)setTypingWindowEnded:(id)a3;
- (void)setUiActivity:(id)a3;
- (void)setUiActivityTier1:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SUGSchemaSUGClientEvent

- (SUGSchemaSUGClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = SUGSchemaSUGClientEvent;
  v5 = [(SUGSchemaSUGClientEvent *)&v41 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SUGSchemaSUGClientEventMetadata alloc] initWithDictionary:v6];
      [(SUGSchemaSUGClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"suggestionsGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SUGSchemaSUGSuggestionsGenerated alloc] initWithDictionary:v8];
      [(SUGSchemaSUGClientEvent *)v5 setSuggestionsGenerated:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"engagementReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SUGSchemaSUGEngagementReported alloc] initWithDictionary:v10];
      [(SUGSchemaSUGClientEvent *)v5 setEngagementReported:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SUGSchemaSUGRequestContext alloc] initWithDictionary:v12];
      [(SUGSchemaSUGClientEvent *)v5 setRequestContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"generationStepContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SUGSchemaSUGGenerationStepContext alloc] initWithDictionary:v14];
      [(SUGSchemaSUGClientEvent *)v5 setGenerationStepContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"resolutionStepContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SUGSchemaSUGResolutionStepContext alloc] initWithDictionary:v16];
      [(SUGSchemaSUGClientEvent *)v5 setResolutionStepContext:v17];
    }

    v36 = v16;
    v18 = [v4 objectForKeyedSubscript:@"filteringStepContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SUGSchemaSUGFilteringStepContext alloc] initWithDictionary:v18];
      [(SUGSchemaSUGClientEvent *)v5 setFilteringStepContext:v19];
    }

    v40 = v6;
    v20 = [v4 objectForKeyedSubscript:{@"rankingStepContext", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SUGSchemaSUGRankingStepContext alloc] initWithDictionary:v20];
      [(SUGSchemaSUGClientEvent *)v5 setRankingStepContext:v21];
    }

    v39 = v8;
    v22 = [v4 objectForKeyedSubscript:@"engagementMetricReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SUGSchemaSUGEngagementMetricReported alloc] initWithDictionary:v22];
      [(SUGSchemaSUGClientEvent *)v5 setEngagementMetricReported:v23];
    }

    v37 = v14;
    v38 = v10;
    v24 = [v4 objectForKeyedSubscript:@"uiActivity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[SUGSchemaSUGSuggestionsUIActivity alloc] initWithDictionary:v24];
      [(SUGSchemaSUGClientEvent *)v5 setUiActivity:v25];
    }

    v26 = v12;
    v27 = [v4 objectForKeyedSubscript:@"typingWindowEnded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[SUGSchemaSUGTypingWindowEnded alloc] initWithDictionary:v27];
      [(SUGSchemaSUGClientEvent *)v5 setTypingWindowEnded:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"sugGeneratedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[SUGSchemaSUGSuggestionsGeneratedTier1 alloc] initWithDictionary:v29];
      [(SUGSchemaSUGClientEvent *)v5 setSugGeneratedTier1:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"uiActivityTier1"];
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

- (SUGSchemaSUGClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUGSchemaSUGClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUGSchemaSUGClientEvent *)self dictionaryRepresentation];
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
  if (self->_engagementMetricReported)
  {
    v4 = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"engagementMetricReported"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"engagementMetricReported"];
    }
  }

  if (self->_engagementReported)
  {
    v7 = [(SUGSchemaSUGClientEvent *)self engagementReported];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"engagementReported"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"engagementReported"];
    }
  }

  if (self->_eventMetadata)
  {
    v10 = [(SUGSchemaSUGClientEvent *)self eventMetadata];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_filteringStepContext)
  {
    v13 = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"filteringStepContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"filteringStepContext"];
    }
  }

  if (self->_generationStepContext)
  {
    v16 = [(SUGSchemaSUGClientEvent *)self generationStepContext];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"generationStepContext"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"generationStepContext"];
    }
  }

  if (self->_rankingStepContext)
  {
    v19 = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"rankingStepContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"rankingStepContext"];
    }
  }

  if (self->_requestContext)
  {
    v22 = [(SUGSchemaSUGClientEvent *)self requestContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_resolutionStepContext)
  {
    v25 = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"resolutionStepContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"resolutionStepContext"];
    }
  }

  if (self->_sugGeneratedTier1)
  {
    v28 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"sugGeneratedTier1"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"sugGeneratedTier1"];
    }
  }

  if (self->_suggestionsGenerated)
  {
    v31 = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"suggestionsGenerated"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"suggestionsGenerated"];
    }
  }

  if (self->_typingWindowEnded)
  {
    v34 = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"typingWindowEnded"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"typingWindowEnded"];
    }
  }

  if (self->_uiActivity)
  {
    v37 = [(SUGSchemaSUGClientEvent *)self uiActivity];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"uiActivity"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"uiActivity"];
    }
  }

  if (self->_uiActivityTier1)
  {
    v40 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"uiActivityTier1"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"uiActivityTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_68;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_68;
  }

  v6 = [(SUGSchemaSUGClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v8 = [(SUGSchemaSUGClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(SUGSchemaSUGClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
  v7 = [v4 suggestionsGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v13 = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
  if (v13)
  {
    v14 = v13;
    v15 = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
    v16 = [v4 suggestionsGenerated];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self engagementReported];
  v7 = [v4 engagementReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v18 = [(SUGSchemaSUGClientEvent *)self engagementReported];
  if (v18)
  {
    v19 = v18;
    v20 = [(SUGSchemaSUGClientEvent *)self engagementReported];
    v21 = [v4 engagementReported];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self requestContext];
  v7 = [v4 requestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v23 = [(SUGSchemaSUGClientEvent *)self requestContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(SUGSchemaSUGClientEvent *)self requestContext];
    v26 = [v4 requestContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self generationStepContext];
  v7 = [v4 generationStepContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v28 = [(SUGSchemaSUGClientEvent *)self generationStepContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(SUGSchemaSUGClientEvent *)self generationStepContext];
    v31 = [v4 generationStepContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
  v7 = [v4 resolutionStepContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v33 = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
    v36 = [v4 resolutionStepContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
  v7 = [v4 filteringStepContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v38 = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
    v41 = [v4 filteringStepContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
  v7 = [v4 rankingStepContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v43 = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
  if (v43)
  {
    v44 = v43;
    v45 = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
    v46 = [v4 rankingStepContext];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
  v7 = [v4 engagementMetricReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v48 = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
  if (v48)
  {
    v49 = v48;
    v50 = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
    v51 = [v4 engagementMetricReported];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self uiActivity];
  v7 = [v4 uiActivity];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v53 = [(SUGSchemaSUGClientEvent *)self uiActivity];
  if (v53)
  {
    v54 = v53;
    v55 = [(SUGSchemaSUGClientEvent *)self uiActivity];
    v56 = [v4 uiActivity];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
  v7 = [v4 typingWindowEnded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v58 = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
  if (v58)
  {
    v59 = v58;
    v60 = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
    v61 = [v4 typingWindowEnded];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
  v7 = [v4 sugGeneratedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_67;
  }

  v63 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
  if (v63)
  {
    v64 = v63;
    v65 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
    v66 = [v4 sugGeneratedTier1];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
  v7 = [v4 uiActivityTier1];
  if ((v6 != 0) != (v7 == 0))
  {
    v68 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
    if (!v68)
    {

LABEL_71:
      v73 = 1;
      goto LABEL_69;
    }

    v69 = v68;
    v70 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
    v71 = [v4 uiActivityTier1];
    v72 = [v70 isEqual:v71];

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

- (void)writeTo:(id)a3
{
  v31 = a3;
  v4 = [(SUGSchemaSUGClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(SUGSchemaSUGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];

  if (v6)
  {
    v7 = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SUGSchemaSUGClientEvent *)self engagementReported];

  if (v8)
  {
    v9 = [(SUGSchemaSUGClientEvent *)self engagementReported];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(SUGSchemaSUGClientEvent *)self requestContext];

  if (v10)
  {
    v11 = [(SUGSchemaSUGClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(SUGSchemaSUGClientEvent *)self generationStepContext];

  if (v12)
  {
    v13 = [(SUGSchemaSUGClientEvent *)self generationStepContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];

  if (v14)
  {
    v15 = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(SUGSchemaSUGClientEvent *)self filteringStepContext];

  if (v16)
  {
    v17 = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(SUGSchemaSUGClientEvent *)self rankingStepContext];

  if (v18)
  {
    v19 = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];

  if (v20)
  {
    v21 = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(SUGSchemaSUGClientEvent *)self uiActivity];

  if (v22)
  {
    v23 = [(SUGSchemaSUGClientEvent *)self uiActivity];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];

  if (v24)
  {
    v25 = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];

  if (v26)
  {
    v27 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];

  v29 = v31;
  if (v28)
  {
    v30 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
    PBDataWriterWriteSubmessage();

    v29 = v31;
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

- (void)setUiActivityTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  uiActivityTier1 = self->_uiActivityTier1;
  self->_uiActivityTier1 = v4;
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

- (void)setSugGeneratedTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  sugGeneratedTier1 = self->_sugGeneratedTier1;
  self->_sugGeneratedTier1 = v4;
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

- (void)setTypingWindowEnded:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  typingWindowEnded = self->_typingWindowEnded;
  self->_typingWindowEnded = v4;
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

- (void)setUiActivity:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  uiActivity = self->_uiActivity;
  self->_uiActivity = v4;
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

- (void)setEngagementMetricReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  engagementMetricReported = self->_engagementMetricReported;
  self->_engagementMetricReported = v4;
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

- (void)setRankingStepContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  rankingStepContext = self->_rankingStepContext;
  self->_rankingStepContext = v4;
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

- (void)setFilteringStepContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  filteringStepContext = self->_filteringStepContext;
  self->_filteringStepContext = v4;
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

- (void)setResolutionStepContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  resolutionStepContext = self->_resolutionStepContext;
  self->_resolutionStepContext = v4;
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

- (void)setGenerationStepContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  generationStepContext = self->_generationStepContext;
  self->_generationStepContext = v4;
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

- (void)setRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  requestContext = self->_requestContext;
  self->_requestContext = v4;
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

- (void)setEngagementReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  engagementReported = self->_engagementReported;
  self->_engagementReported = v4;
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

- (void)setSuggestionsGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v16 = 0;
  }

  self->_whichEvent_Type = v16;
  suggestionsGenerated = self->_suggestionsGenerated;
  self->_suggestionsGenerated = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(SUGSchemaSUGClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 0xB)
  {
    return @"com.apple.aiml.siri.sug.SUGClientEvent";
  }

  else
  {
    return off_1E78E7B38[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = SUGSchemaSUGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v46 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
    [(SUGSchemaSUGClientEvent *)self deleteUiActivityTier1];
  }

  v6 = [(SUGSchemaSUGClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SUGSchemaSUGClientEvent *)self deleteEventMetadata];
  }

  v9 = [(SUGSchemaSUGClientEvent *)self suggestionsGenerated];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SUGSchemaSUGClientEvent *)self deleteSuggestionsGenerated];
  }

  v12 = [(SUGSchemaSUGClientEvent *)self engagementReported];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SUGSchemaSUGClientEvent *)self deleteEngagementReported];
  }

  v15 = [(SUGSchemaSUGClientEvent *)self requestContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(SUGSchemaSUGClientEvent *)self deleteRequestContext];
  }

  v18 = [(SUGSchemaSUGClientEvent *)self generationStepContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(SUGSchemaSUGClientEvent *)self deleteGenerationStepContext];
  }

  v21 = [(SUGSchemaSUGClientEvent *)self resolutionStepContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(SUGSchemaSUGClientEvent *)self deleteResolutionStepContext];
  }

  v24 = [(SUGSchemaSUGClientEvent *)self filteringStepContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(SUGSchemaSUGClientEvent *)self deleteFilteringStepContext];
  }

  v27 = [(SUGSchemaSUGClientEvent *)self rankingStepContext];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(SUGSchemaSUGClientEvent *)self deleteRankingStepContext];
  }

  v30 = [(SUGSchemaSUGClientEvent *)self engagementMetricReported];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(SUGSchemaSUGClientEvent *)self deleteEngagementMetricReported];
  }

  v33 = [(SUGSchemaSUGClientEvent *)self uiActivity];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(SUGSchemaSUGClientEvent *)self deleteUiActivity];
  }

  v36 = [(SUGSchemaSUGClientEvent *)self typingWindowEnded];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(SUGSchemaSUGClientEvent *)self deleteTypingWindowEnded];
  }

  v39 = [(SUGSchemaSUGClientEvent *)self sugGeneratedTier1];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(SUGSchemaSUGClientEvent *)self deleteSugGeneratedTier1];
  }

  v42 = [(SUGSchemaSUGClientEvent *)self uiActivityTier1];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
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
  v2 = [(SUGSchemaSUGClientEvent *)self eventMetadata];
  v3 = [v2 sugId];

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
  v3 = [(SUGSchemaSUGClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 0xB)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB208[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E78EB268[a3 - 101];
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