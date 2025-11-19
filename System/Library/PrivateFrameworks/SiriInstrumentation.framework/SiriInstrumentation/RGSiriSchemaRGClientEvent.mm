@interface RGSiriSchemaRGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RGSiriSchemaRGCacheManagerCallContext)RGCacheManagerCallContext;
- (RGSiriSchemaRGCatalogContext)catalogContext;
- (RGSiriSchemaRGClientEvent)initWithDictionary:(id)a3;
- (RGSiriSchemaRGClientEvent)initWithJSON:(id)a3;
- (RGSiriSchemaRGGMSCallContext)RGGMSCallContext;
- (RGSiriSchemaRGHallucinationDetectionContext)hallucinationDetectionContext;
- (RGSiriSchemaRGInferenceContext)inferenceContext;
- (RGSiriSchemaRGOverrideContext)overrideContext;
- (RGSiriSchemaRGRequestContext)requestContext;
- (RGSiriSchemaRGRequestEndedTier1)requestEndedTier1;
- (RGSiriSchemaRGValidationContext)validationContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCatalogContext;
- (void)deleteHallucinationDetectionContext;
- (void)deleteInferenceContext;
- (void)deleteOverrideContext;
- (void)deleteRGCacheManagerCallContext;
- (void)deleteRGGMSCallContext;
- (void)deleteRequestContext;
- (void)deleteRequestEndedTier1;
- (void)deleteValidationContext;
- (void)setCatalogContext:(id)a3;
- (void)setHallucinationDetectionContext:(id)a3;
- (void)setInferenceContext:(id)a3;
- (void)setOverrideContext:(id)a3;
- (void)setRGCacheManagerCallContext:(id)a3;
- (void)setRGGMSCallContext:(id)a3;
- (void)setRequestContext:(id)a3;
- (void)setRequestEndedTier1:(id)a3;
- (void)setValidationContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RGSiriSchemaRGClientEvent

- (RGSiriSchemaRGClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = RGSiriSchemaRGClientEvent;
  v5 = [(RGSiriSchemaRGClientEvent *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RGSiriSchemaRGClientEventMetadata alloc] initWithDictionary:v6];
      [(RGSiriSchemaRGClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RGSiriSchemaRGRequestContext alloc] initWithDictionary:v8];
      [(RGSiriSchemaRGClientEvent *)v5 setRequestContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"requestEndedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RGSiriSchemaRGRequestEndedTier1 alloc] initWithDictionary:v10];
      [(RGSiriSchemaRGClientEvent *)v5 setRequestEndedTier1:v11];
    }

    v30 = v10;
    v12 = [v4 objectForKeyedSubscript:@"overrideContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RGSiriSchemaRGOverrideContext alloc] initWithDictionary:v12];
      [(RGSiriSchemaRGClientEvent *)v5 setOverrideContext:v13];
    }

    v29 = v12;
    v14 = [v4 objectForKeyedSubscript:@"validationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[RGSiriSchemaRGValidationContext alloc] initWithDictionary:v14];
      [(RGSiriSchemaRGClientEvent *)v5 setValidationContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"catalogContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[RGSiriSchemaRGCatalogContext alloc] initWithDictionary:v16];
      [(RGSiriSchemaRGClientEvent *)v5 setCatalogContext:v17];
    }

    v31 = v8;
    v18 = [v4 objectForKeyedSubscript:@"inferenceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[RGSiriSchemaRGInferenceContext alloc] initWithDictionary:v18];
      [(RGSiriSchemaRGClientEvent *)v5 setInferenceContext:v19];
    }

    v20 = v6;
    v21 = [v4 objectForKeyedSubscript:@"hallucinationDetectionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[RGSiriSchemaRGHallucinationDetectionContext alloc] initWithDictionary:v21];
      [(RGSiriSchemaRGClientEvent *)v5 setHallucinationDetectionContext:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"RGGMSCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[RGSiriSchemaRGGMSCallContext alloc] initWithDictionary:v23];
      [(RGSiriSchemaRGClientEvent *)v5 setRGGMSCallContext:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"RGCacheManagerCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[RGSiriSchemaRGCacheManagerCallContext alloc] initWithDictionary:v25];
      [(RGSiriSchemaRGClientEvent *)v5 setRGCacheManagerCallContext:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RGSiriSchemaRGClientEvent *)self dictionaryRepresentation];
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
  if (self->_RGCacheManagerCallContext)
  {
    v4 = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"RGCacheManagerCallContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"RGCacheManagerCallContext"];
    }
  }

  if (self->_RGGMSCallContext)
  {
    v7 = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"RGGMSCallContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"RGGMSCallContext"];
    }
  }

  if (self->_catalogContext)
  {
    v10 = [(RGSiriSchemaRGClientEvent *)self catalogContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"catalogContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"catalogContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v13 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_hallucinationDetectionContext)
  {
    v16 = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"hallucinationDetectionContext"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"hallucinationDetectionContext"];
    }
  }

  if (self->_inferenceContext)
  {
    v19 = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"inferenceContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"inferenceContext"];
    }
  }

  if (self->_overrideContext)
  {
    v22 = [(RGSiriSchemaRGClientEvent *)self overrideContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"overrideContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"overrideContext"];
    }
  }

  if (self->_requestContext)
  {
    v25 = [(RGSiriSchemaRGClientEvent *)self requestContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_requestEndedTier1)
  {
    v28 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"requestEndedTier1"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"requestEndedTier1"];
    }
  }

  if (self->_validationContext)
  {
    v31 = [(RGSiriSchemaRGClientEvent *)self validationContext];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"validationContext"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"validationContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(RGSiriSchemaRGClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(RGSiriSchemaRGRequestContext *)self->_requestContext hash]^ v3;
  v5 = [(RGSiriSchemaRGRequestEndedTier1 *)self->_requestEndedTier1 hash];
  v6 = v4 ^ v5 ^ [(RGSiriSchemaRGOverrideContext *)self->_overrideContext hash];
  v7 = [(RGSiriSchemaRGValidationContext *)self->_validationContext hash];
  v8 = v7 ^ [(RGSiriSchemaRGCatalogContext *)self->_catalogContext hash];
  v9 = v6 ^ v8 ^ [(RGSiriSchemaRGInferenceContext *)self->_inferenceContext hash];
  v10 = [(RGSiriSchemaRGHallucinationDetectionContext *)self->_hallucinationDetectionContext hash];
  v11 = v10 ^ [(RGSiriSchemaRGGMSCallContext *)self->_RGGMSCallContext hash];
  return v9 ^ v11 ^ [(RGSiriSchemaRGCacheManagerCallContext *)self->_RGCacheManagerCallContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_53;
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v8 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self requestContext];
  v7 = [v4 requestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v13 = [(RGSiriSchemaRGClientEvent *)self requestContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(RGSiriSchemaRGClientEvent *)self requestContext];
    v16 = [v4 requestContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
  v7 = [v4 requestEndedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v18 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
  if (v18)
  {
    v19 = v18;
    v20 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
    v21 = [v4 requestEndedTier1];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self overrideContext];
  v7 = [v4 overrideContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v23 = [(RGSiriSchemaRGClientEvent *)self overrideContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(RGSiriSchemaRGClientEvent *)self overrideContext];
    v26 = [v4 overrideContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self validationContext];
  v7 = [v4 validationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v28 = [(RGSiriSchemaRGClientEvent *)self validationContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(RGSiriSchemaRGClientEvent *)self validationContext];
    v31 = [v4 validationContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self catalogContext];
  v7 = [v4 catalogContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v33 = [(RGSiriSchemaRGClientEvent *)self catalogContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(RGSiriSchemaRGClientEvent *)self catalogContext];
    v36 = [v4 catalogContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
  v7 = [v4 inferenceContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v38 = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
    v41 = [v4 inferenceContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
  v7 = [v4 hallucinationDetectionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v43 = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
  if (v43)
  {
    v44 = v43;
    v45 = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
    v46 = [v4 hallucinationDetectionContext];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
  v7 = [v4 RGGMSCallContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v48 = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
  if (v48)
  {
    v49 = v48;
    v50 = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
    v51 = [v4 RGGMSCallContext];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
  v7 = [v4 RGCacheManagerCallContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v53 = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
    if (!v53)
    {

LABEL_56:
      v58 = 1;
      goto LABEL_54;
    }

    v54 = v53;
    v55 = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
    v56 = [v4 RGCacheManagerCallContext];
    v57 = [v55 isEqual:v56];

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

- (void)writeTo:(id)a3
{
  v25 = a3;
  v4 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(RGSiriSchemaRGClientEvent *)self requestContext];

  if (v6)
  {
    v7 = [(RGSiriSchemaRGClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];

  if (v8)
  {
    v9 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(RGSiriSchemaRGClientEvent *)self overrideContext];

  if (v10)
  {
    v11 = [(RGSiriSchemaRGClientEvent *)self overrideContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(RGSiriSchemaRGClientEvent *)self validationContext];

  if (v12)
  {
    v13 = [(RGSiriSchemaRGClientEvent *)self validationContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(RGSiriSchemaRGClientEvent *)self catalogContext];

  if (v14)
  {
    v15 = [(RGSiriSchemaRGClientEvent *)self catalogContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(RGSiriSchemaRGClientEvent *)self inferenceContext];

  if (v16)
  {
    v17 = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];

  if (v18)
  {
    v19 = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];

  if (v20)
  {
    v21 = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];

  v23 = v25;
  if (v22)
  {
    v24 = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
    PBDataWriterWriteSubmessage();

    v23 = v25;
  }
}

- (void)deleteRGCacheManagerCallContext
{
  if (self->_whichEvent_Type == 18)
  {
    self->_whichEvent_Type = 0;
    self->_RGCacheManagerCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RGSiriSchemaRGCacheManagerCallContext)RGCacheManagerCallContext
{
  if (self->_whichEvent_Type == 18)
  {
    v3 = self->_RGCacheManagerCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRGCacheManagerCallContext:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  overrideContext = self->_overrideContext;
  self->_overrideContext = 0;

  validationContext = self->_validationContext;
  self->_validationContext = 0;

  catalogContext = self->_catalogContext;
  self->_catalogContext = 0;

  inferenceContext = self->_inferenceContext;
  self->_inferenceContext = 0;

  hallucinationDetectionContext = self->_hallucinationDetectionContext;
  self->_hallucinationDetectionContext = 0;

  RGGMSCallContext = self->_RGGMSCallContext;
  self->_RGGMSCallContext = 0;

  v13 = 18;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  RGCacheManagerCallContext = self->_RGCacheManagerCallContext;
  self->_RGCacheManagerCallContext = v4;
}

- (void)deleteRGGMSCallContext
{
  if (self->_whichEvent_Type == 17)
  {
    self->_whichEvent_Type = 0;
    self->_RGGMSCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RGSiriSchemaRGGMSCallContext)RGGMSCallContext
{
  if (self->_whichEvent_Type == 17)
  {
    v3 = self->_RGGMSCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRGGMSCallContext:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  overrideContext = self->_overrideContext;
  self->_overrideContext = 0;

  validationContext = self->_validationContext;
  self->_validationContext = 0;

  catalogContext = self->_catalogContext;
  self->_catalogContext = 0;

  inferenceContext = self->_inferenceContext;
  self->_inferenceContext = 0;

  hallucinationDetectionContext = self->_hallucinationDetectionContext;
  self->_hallucinationDetectionContext = 0;

  RGCacheManagerCallContext = self->_RGCacheManagerCallContext;
  self->_RGCacheManagerCallContext = 0;

  v13 = 17;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  RGGMSCallContext = self->_RGGMSCallContext;
  self->_RGGMSCallContext = v4;
}

- (void)deleteHallucinationDetectionContext
{
  if (self->_whichEvent_Type == 16)
  {
    self->_whichEvent_Type = 0;
    self->_hallucinationDetectionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RGSiriSchemaRGHallucinationDetectionContext)hallucinationDetectionContext
{
  if (self->_whichEvent_Type == 16)
  {
    v3 = self->_hallucinationDetectionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHallucinationDetectionContext:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  overrideContext = self->_overrideContext;
  self->_overrideContext = 0;

  validationContext = self->_validationContext;
  self->_validationContext = 0;

  catalogContext = self->_catalogContext;
  self->_catalogContext = 0;

  inferenceContext = self->_inferenceContext;
  self->_inferenceContext = 0;

  RGGMSCallContext = self->_RGGMSCallContext;
  self->_RGGMSCallContext = 0;

  RGCacheManagerCallContext = self->_RGCacheManagerCallContext;
  self->_RGCacheManagerCallContext = 0;

  self->_whichEvent_Type = 16 * (v4 != 0);
  hallucinationDetectionContext = self->_hallucinationDetectionContext;
  self->_hallucinationDetectionContext = v4;
}

- (void)deleteInferenceContext
{
  if (self->_whichEvent_Type == 15)
  {
    self->_whichEvent_Type = 0;
    self->_inferenceContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RGSiriSchemaRGInferenceContext)inferenceContext
{
  if (self->_whichEvent_Type == 15)
  {
    v3 = self->_inferenceContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInferenceContext:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  overrideContext = self->_overrideContext;
  self->_overrideContext = 0;

  validationContext = self->_validationContext;
  self->_validationContext = 0;

  catalogContext = self->_catalogContext;
  self->_catalogContext = 0;

  hallucinationDetectionContext = self->_hallucinationDetectionContext;
  self->_hallucinationDetectionContext = 0;

  RGGMSCallContext = self->_RGGMSCallContext;
  self->_RGGMSCallContext = 0;

  RGCacheManagerCallContext = self->_RGCacheManagerCallContext;
  self->_RGCacheManagerCallContext = 0;

  v13 = 15;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  inferenceContext = self->_inferenceContext;
  self->_inferenceContext = v4;
}

- (void)deleteCatalogContext
{
  if (self->_whichEvent_Type == 14)
  {
    self->_whichEvent_Type = 0;
    self->_catalogContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RGSiriSchemaRGCatalogContext)catalogContext
{
  if (self->_whichEvent_Type == 14)
  {
    v3 = self->_catalogContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCatalogContext:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  overrideContext = self->_overrideContext;
  self->_overrideContext = 0;

  validationContext = self->_validationContext;
  self->_validationContext = 0;

  inferenceContext = self->_inferenceContext;
  self->_inferenceContext = 0;

  hallucinationDetectionContext = self->_hallucinationDetectionContext;
  self->_hallucinationDetectionContext = 0;

  RGGMSCallContext = self->_RGGMSCallContext;
  self->_RGGMSCallContext = 0;

  RGCacheManagerCallContext = self->_RGCacheManagerCallContext;
  self->_RGCacheManagerCallContext = 0;

  v13 = 14;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  catalogContext = self->_catalogContext;
  self->_catalogContext = v4;
}

- (void)deleteValidationContext
{
  if (self->_whichEvent_Type == 13)
  {
    self->_whichEvent_Type = 0;
    self->_validationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RGSiriSchemaRGValidationContext)validationContext
{
  if (self->_whichEvent_Type == 13)
  {
    v3 = self->_validationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setValidationContext:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  overrideContext = self->_overrideContext;
  self->_overrideContext = 0;

  catalogContext = self->_catalogContext;
  self->_catalogContext = 0;

  inferenceContext = self->_inferenceContext;
  self->_inferenceContext = 0;

  hallucinationDetectionContext = self->_hallucinationDetectionContext;
  self->_hallucinationDetectionContext = 0;

  RGGMSCallContext = self->_RGGMSCallContext;
  self->_RGGMSCallContext = 0;

  RGCacheManagerCallContext = self->_RGCacheManagerCallContext;
  self->_RGCacheManagerCallContext = 0;

  v13 = 13;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  validationContext = self->_validationContext;
  self->_validationContext = v4;
}

- (void)deleteOverrideContext
{
  if (self->_whichEvent_Type == 12)
  {
    self->_whichEvent_Type = 0;
    self->_overrideContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RGSiriSchemaRGOverrideContext)overrideContext
{
  if (self->_whichEvent_Type == 12)
  {
    v3 = self->_overrideContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOverrideContext:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  validationContext = self->_validationContext;
  self->_validationContext = 0;

  catalogContext = self->_catalogContext;
  self->_catalogContext = 0;

  inferenceContext = self->_inferenceContext;
  self->_inferenceContext = 0;

  hallucinationDetectionContext = self->_hallucinationDetectionContext;
  self->_hallucinationDetectionContext = 0;

  RGGMSCallContext = self->_RGGMSCallContext;
  self->_RGGMSCallContext = 0;

  RGCacheManagerCallContext = self->_RGCacheManagerCallContext;
  self->_RGCacheManagerCallContext = 0;

  v13 = 12;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  overrideContext = self->_overrideContext;
  self->_overrideContext = v4;
}

- (void)deleteRequestEndedTier1
{
  if (self->_whichEvent_Type == 11)
  {
    self->_whichEvent_Type = 0;
    self->_requestEndedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RGSiriSchemaRGRequestEndedTier1)requestEndedTier1
{
  if (self->_whichEvent_Type == 11)
  {
    v3 = self->_requestEndedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestEndedTier1:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  overrideContext = self->_overrideContext;
  self->_overrideContext = 0;

  validationContext = self->_validationContext;
  self->_validationContext = 0;

  catalogContext = self->_catalogContext;
  self->_catalogContext = 0;

  inferenceContext = self->_inferenceContext;
  self->_inferenceContext = 0;

  hallucinationDetectionContext = self->_hallucinationDetectionContext;
  self->_hallucinationDetectionContext = 0;

  RGGMSCallContext = self->_RGGMSCallContext;
  self->_RGGMSCallContext = 0;

  RGCacheManagerCallContext = self->_RGCacheManagerCallContext;
  self->_RGCacheManagerCallContext = 0;

  v13 = 11;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = v4;
}

- (void)deleteRequestContext
{
  if (self->_whichEvent_Type == 10)
  {
    self->_whichEvent_Type = 0;
    self->_requestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RGSiriSchemaRGRequestContext)requestContext
{
  if (self->_whichEvent_Type == 10)
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
  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = 0;

  overrideContext = self->_overrideContext;
  self->_overrideContext = 0;

  validationContext = self->_validationContext;
  self->_validationContext = 0;

  catalogContext = self->_catalogContext;
  self->_catalogContext = 0;

  inferenceContext = self->_inferenceContext;
  self->_inferenceContext = 0;

  hallucinationDetectionContext = self->_hallucinationDetectionContext;
  self->_hallucinationDetectionContext = 0;

  RGGMSCallContext = self->_RGGMSCallContext;
  self->_RGGMSCallContext = 0;

  RGCacheManagerCallContext = self->_RGCacheManagerCallContext;
  self->_RGCacheManagerCallContext = 0;

  v13 = 10;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  requestContext = self->_requestContext;
  self->_requestContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(RGSiriSchemaRGClientEvent *)self whichEvent_Type];
  if (v2 - 10 > 8)
  {
    return @"com.apple.aiml.siri.rg.RGClientEvent";
  }

  else
  {
    return off_1E78E1F48[v2 - 10];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = RGSiriSchemaRGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:v4];
  v6 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteEventMetadata];
  }

  v9 = [(RGSiriSchemaRGClientEvent *)self requestContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteRequestContext];
  }

  v12 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteRequestEndedTier1];
  }

  v15 = [(RGSiriSchemaRGClientEvent *)self overrideContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteOverrideContext];
  }

  v18 = [(RGSiriSchemaRGClientEvent *)self validationContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteValidationContext];
  }

  v21 = [(RGSiriSchemaRGClientEvent *)self catalogContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteCatalogContext];
  }

  v24 = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteInferenceContext];
  }

  v27 = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteHallucinationDetectionContext];
  }

  v30 = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteRGGMSCallContext];
  }

  v33 = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteRGCacheManagerCallContext];
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
  v3 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  v4 = [v3 ifRequestId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 45;
  }

  else
  {
    v10 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
    v11 = [v10 rgId];

    if (v11)
    {
      v12 = [v11 value];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 value];
        v15 = [v14 length];

        if (v15)
        {
          v9 = 57;
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

      v4 = v11;
    }

    else
    {
      v9 = 0;
      v4 = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  v4 = [v3 ifRequestId];

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
        goto LABEL_8;
      }
    }
  }

  v9 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  v10 = [v9 rgId];

  if (v10)
  {
    v11 = [v10 value];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [v10 value];
    v13 = [v12 length];

    if (v13)
    {
      v4 = v10;
LABEL_8:
      v11 = v4;
      v10 = v11;
      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(RGSiriSchemaRGClientEvent *)self whichEvent_Type];
  if (v3 - 10 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAEB8[v3 - 10]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 10 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E78EAF00[a3 - 10];
  }
}

@end