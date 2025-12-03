@interface RGSiriSchemaRGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RGSiriSchemaRGCacheManagerCallContext)RGCacheManagerCallContext;
- (RGSiriSchemaRGCatalogContext)catalogContext;
- (RGSiriSchemaRGClientEvent)initWithDictionary:(id)dictionary;
- (RGSiriSchemaRGClientEvent)initWithJSON:(id)n;
- (RGSiriSchemaRGGMSCallContext)RGGMSCallContext;
- (RGSiriSchemaRGHallucinationDetectionContext)hallucinationDetectionContext;
- (RGSiriSchemaRGInferenceContext)inferenceContext;
- (RGSiriSchemaRGOverrideContext)overrideContext;
- (RGSiriSchemaRGRequestContext)requestContext;
- (RGSiriSchemaRGRequestEndedTier1)requestEndedTier1;
- (RGSiriSchemaRGValidationContext)validationContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setCatalogContext:(id)context;
- (void)setHallucinationDetectionContext:(id)context;
- (void)setInferenceContext:(id)context;
- (void)setOverrideContext:(id)context;
- (void)setRGCacheManagerCallContext:(id)context;
- (void)setRGGMSCallContext:(id)context;
- (void)setRequestContext:(id)context;
- (void)setRequestEndedTier1:(id)tier1;
- (void)setValidationContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation RGSiriSchemaRGClientEvent

- (RGSiriSchemaRGClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = RGSiriSchemaRGClientEvent;
  v5 = [(RGSiriSchemaRGClientEvent *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RGSiriSchemaRGClientEventMetadata alloc] initWithDictionary:v6];
      [(RGSiriSchemaRGClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RGSiriSchemaRGRequestContext alloc] initWithDictionary:v8];
      [(RGSiriSchemaRGClientEvent *)v5 setRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestEndedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RGSiriSchemaRGRequestEndedTier1 alloc] initWithDictionary:v10];
      [(RGSiriSchemaRGClientEvent *)v5 setRequestEndedTier1:v11];
    }

    v30 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"overrideContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RGSiriSchemaRGOverrideContext alloc] initWithDictionary:v12];
      [(RGSiriSchemaRGClientEvent *)v5 setOverrideContext:v13];
    }

    v29 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"validationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[RGSiriSchemaRGValidationContext alloc] initWithDictionary:v14];
      [(RGSiriSchemaRGClientEvent *)v5 setValidationContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"catalogContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[RGSiriSchemaRGCatalogContext alloc] initWithDictionary:v16];
      [(RGSiriSchemaRGClientEvent *)v5 setCatalogContext:v17];
    }

    v31 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"inferenceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[RGSiriSchemaRGInferenceContext alloc] initWithDictionary:v18];
      [(RGSiriSchemaRGClientEvent *)v5 setInferenceContext:v19];
    }

    v20 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"hallucinationDetectionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[RGSiriSchemaRGHallucinationDetectionContext alloc] initWithDictionary:v21];
      [(RGSiriSchemaRGClientEvent *)v5 setHallucinationDetectionContext:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"RGGMSCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[RGSiriSchemaRGGMSCallContext alloc] initWithDictionary:v23];
      [(RGSiriSchemaRGClientEvent *)v5 setRGGMSCallContext:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"RGCacheManagerCallContext"];
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

- (RGSiriSchemaRGClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RGSiriSchemaRGClientEvent *)self dictionaryRepresentation];
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
  if (self->_RGCacheManagerCallContext)
  {
    rGCacheManagerCallContext = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
    dictionaryRepresentation = [rGCacheManagerCallContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"RGCacheManagerCallContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"RGCacheManagerCallContext"];
    }
  }

  if (self->_RGGMSCallContext)
  {
    rGGMSCallContext = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
    dictionaryRepresentation2 = [rGGMSCallContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"RGGMSCallContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"RGGMSCallContext"];
    }
  }

  if (self->_catalogContext)
  {
    catalogContext = [(RGSiriSchemaRGClientEvent *)self catalogContext];
    dictionaryRepresentation3 = [catalogContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"catalogContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"catalogContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
    dictionaryRepresentation4 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_hallucinationDetectionContext)
  {
    hallucinationDetectionContext = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
    dictionaryRepresentation5 = [hallucinationDetectionContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"hallucinationDetectionContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"hallucinationDetectionContext"];
    }
  }

  if (self->_inferenceContext)
  {
    inferenceContext = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
    dictionaryRepresentation6 = [inferenceContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"inferenceContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"inferenceContext"];
    }
  }

  if (self->_overrideContext)
  {
    overrideContext = [(RGSiriSchemaRGClientEvent *)self overrideContext];
    dictionaryRepresentation7 = [overrideContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"overrideContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"overrideContext"];
    }
  }

  if (self->_requestContext)
  {
    requestContext = [(RGSiriSchemaRGClientEvent *)self requestContext];
    dictionaryRepresentation8 = [requestContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_requestEndedTier1)
  {
    requestEndedTier1 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
    dictionaryRepresentation9 = [requestEndedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"requestEndedTier1"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"requestEndedTier1"];
    }
  }

  if (self->_validationContext)
  {
    validationContext = [(RGSiriSchemaRGClientEvent *)self validationContext];
    dictionaryRepresentation10 = [validationContext dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"validationContext"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"validationContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

  eventMetadata = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  eventMetadata3 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
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

  eventMetadata = [(RGSiriSchemaRGClientEvent *)self requestContext];
  eventMetadata2 = [equalCopy requestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  requestContext = [(RGSiriSchemaRGClientEvent *)self requestContext];
  if (requestContext)
  {
    v14 = requestContext;
    requestContext2 = [(RGSiriSchemaRGClientEvent *)self requestContext];
    requestContext3 = [equalCopy requestContext];
    v17 = [requestContext2 isEqual:requestContext3];

    if (!v17)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
  eventMetadata2 = [equalCopy requestEndedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  requestEndedTier1 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
  if (requestEndedTier1)
  {
    v19 = requestEndedTier1;
    requestEndedTier12 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
    requestEndedTier13 = [equalCopy requestEndedTier1];
    v22 = [requestEndedTier12 isEqual:requestEndedTier13];

    if (!v22)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(RGSiriSchemaRGClientEvent *)self overrideContext];
  eventMetadata2 = [equalCopy overrideContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  overrideContext = [(RGSiriSchemaRGClientEvent *)self overrideContext];
  if (overrideContext)
  {
    v24 = overrideContext;
    overrideContext2 = [(RGSiriSchemaRGClientEvent *)self overrideContext];
    overrideContext3 = [equalCopy overrideContext];
    v27 = [overrideContext2 isEqual:overrideContext3];

    if (!v27)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(RGSiriSchemaRGClientEvent *)self validationContext];
  eventMetadata2 = [equalCopy validationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  validationContext = [(RGSiriSchemaRGClientEvent *)self validationContext];
  if (validationContext)
  {
    v29 = validationContext;
    validationContext2 = [(RGSiriSchemaRGClientEvent *)self validationContext];
    validationContext3 = [equalCopy validationContext];
    v32 = [validationContext2 isEqual:validationContext3];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(RGSiriSchemaRGClientEvent *)self catalogContext];
  eventMetadata2 = [equalCopy catalogContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  catalogContext = [(RGSiriSchemaRGClientEvent *)self catalogContext];
  if (catalogContext)
  {
    v34 = catalogContext;
    catalogContext2 = [(RGSiriSchemaRGClientEvent *)self catalogContext];
    catalogContext3 = [equalCopy catalogContext];
    v37 = [catalogContext2 isEqual:catalogContext3];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
  eventMetadata2 = [equalCopy inferenceContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  inferenceContext = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
  if (inferenceContext)
  {
    v39 = inferenceContext;
    inferenceContext2 = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
    inferenceContext3 = [equalCopy inferenceContext];
    v42 = [inferenceContext2 isEqual:inferenceContext3];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
  eventMetadata2 = [equalCopy hallucinationDetectionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  hallucinationDetectionContext = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
  if (hallucinationDetectionContext)
  {
    v44 = hallucinationDetectionContext;
    hallucinationDetectionContext2 = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
    hallucinationDetectionContext3 = [equalCopy hallucinationDetectionContext];
    v47 = [hallucinationDetectionContext2 isEqual:hallucinationDetectionContext3];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
  eventMetadata2 = [equalCopy RGGMSCallContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  rGGMSCallContext = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
  if (rGGMSCallContext)
  {
    v49 = rGGMSCallContext;
    rGGMSCallContext2 = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
    rGGMSCallContext3 = [equalCopy RGGMSCallContext];
    v52 = [rGGMSCallContext2 isEqual:rGGMSCallContext3];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
  eventMetadata2 = [equalCopy RGCacheManagerCallContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    rGCacheManagerCallContext = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
    if (!rGCacheManagerCallContext)
    {

LABEL_56:
      v58 = 1;
      goto LABEL_54;
    }

    v54 = rGCacheManagerCallContext;
    rGCacheManagerCallContext2 = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
    rGCacheManagerCallContext3 = [equalCopy RGCacheManagerCallContext];
    v57 = [rGCacheManagerCallContext2 isEqual:rGCacheManagerCallContext3];

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
  eventMetadata = [(RGSiriSchemaRGClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  requestContext = [(RGSiriSchemaRGClientEvent *)self requestContext];

  if (requestContext)
  {
    requestContext2 = [(RGSiriSchemaRGClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  requestEndedTier1 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];

  if (requestEndedTier1)
  {
    requestEndedTier12 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  overrideContext = [(RGSiriSchemaRGClientEvent *)self overrideContext];

  if (overrideContext)
  {
    overrideContext2 = [(RGSiriSchemaRGClientEvent *)self overrideContext];
    PBDataWriterWriteSubmessage();
  }

  validationContext = [(RGSiriSchemaRGClientEvent *)self validationContext];

  if (validationContext)
  {
    validationContext2 = [(RGSiriSchemaRGClientEvent *)self validationContext];
    PBDataWriterWriteSubmessage();
  }

  catalogContext = [(RGSiriSchemaRGClientEvent *)self catalogContext];

  if (catalogContext)
  {
    catalogContext2 = [(RGSiriSchemaRGClientEvent *)self catalogContext];
    PBDataWriterWriteSubmessage();
  }

  inferenceContext = [(RGSiriSchemaRGClientEvent *)self inferenceContext];

  if (inferenceContext)
  {
    inferenceContext2 = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
    PBDataWriterWriteSubmessage();
  }

  hallucinationDetectionContext = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];

  if (hallucinationDetectionContext)
  {
    hallucinationDetectionContext2 = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
    PBDataWriterWriteSubmessage();
  }

  rGGMSCallContext = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];

  if (rGGMSCallContext)
  {
    rGGMSCallContext2 = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
    PBDataWriterWriteSubmessage();
  }

  rGCacheManagerCallContext = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];

  v23 = toCopy;
  if (rGCacheManagerCallContext)
  {
    rGCacheManagerCallContext2 = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
    PBDataWriterWriteSubmessage();

    v23 = toCopy;
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

- (void)setRGCacheManagerCallContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  RGCacheManagerCallContext = self->_RGCacheManagerCallContext;
  self->_RGCacheManagerCallContext = contextCopy;
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

- (void)setRGGMSCallContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  RGGMSCallContext = self->_RGGMSCallContext;
  self->_RGGMSCallContext = contextCopy;
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

- (void)setHallucinationDetectionContext:(id)context
{
  contextCopy = context;
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

  self->_whichEvent_Type = 16 * (contextCopy != 0);
  hallucinationDetectionContext = self->_hallucinationDetectionContext;
  self->_hallucinationDetectionContext = contextCopy;
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

- (void)setInferenceContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  inferenceContext = self->_inferenceContext;
  self->_inferenceContext = contextCopy;
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

- (void)setCatalogContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  catalogContext = self->_catalogContext;
  self->_catalogContext = contextCopy;
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

- (void)setValidationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  validationContext = self->_validationContext;
  self->_validationContext = contextCopy;
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

- (void)setOverrideContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  overrideContext = self->_overrideContext;
  self->_overrideContext = contextCopy;
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

- (void)setRequestEndedTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  requestEndedTier1 = self->_requestEndedTier1;
  self->_requestEndedTier1 = tier1Copy;
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

- (void)setRequestContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  requestContext = self->_requestContext;
  self->_requestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(RGSiriSchemaRGClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 10 > 8)
  {
    return @"com.apple.aiml.siri.rg.RGClientEvent";
  }

  else
  {
    return off_1E78E1F48[whichEvent_Type - 10];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v37.receiver = self;
  v37.super_class = RGSiriSchemaRGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteEventMetadata];
  }

  requestContext = [(RGSiriSchemaRGClientEvent *)self requestContext];
  v10 = [requestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteRequestContext];
  }

  requestEndedTier1 = [(RGSiriSchemaRGClientEvent *)self requestEndedTier1];
  v13 = [requestEndedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteRequestEndedTier1];
  }

  overrideContext = [(RGSiriSchemaRGClientEvent *)self overrideContext];
  v16 = [overrideContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteOverrideContext];
  }

  validationContext = [(RGSiriSchemaRGClientEvent *)self validationContext];
  v19 = [validationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteValidationContext];
  }

  catalogContext = [(RGSiriSchemaRGClientEvent *)self catalogContext];
  v22 = [catalogContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteCatalogContext];
  }

  inferenceContext = [(RGSiriSchemaRGClientEvent *)self inferenceContext];
  v25 = [inferenceContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteInferenceContext];
  }

  hallucinationDetectionContext = [(RGSiriSchemaRGClientEvent *)self hallucinationDetectionContext];
  v28 = [hallucinationDetectionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteHallucinationDetectionContext];
  }

  rGGMSCallContext = [(RGSiriSchemaRGClientEvent *)self RGGMSCallContext];
  v31 = [rGGMSCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(RGSiriSchemaRGClientEvent *)self deleteRGGMSCallContext];
  }

  rGCacheManagerCallContext = [(RGSiriSchemaRGClientEvent *)self RGCacheManagerCallContext];
  v34 = [rGCacheManagerCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
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
  eventMetadata = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (ifRequestId && ([ifRequestId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(ifRequestId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 45;
  }

  else
  {
    eventMetadata2 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
    rgId = [eventMetadata2 rgId];

    if (rgId)
    {
      value = [rgId value];
      if (value)
      {
        v13 = value;
        value2 = [rgId value];
        v15 = [value2 length];

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

      ifRequestId = rgId;
    }

    else
    {
      v9 = 0;
      ifRequestId = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  eventMetadata = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (ifRequestId)
  {
    value = [ifRequestId value];
    if (value)
    {
      v6 = value;
      value2 = [ifRequestId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  eventMetadata2 = [(RGSiriSchemaRGClientEvent *)self eventMetadata];
  rgId = [eventMetadata2 rgId];

  if (rgId)
  {
    value3 = [rgId value];
    if (!value3)
    {
      goto LABEL_10;
    }

    value4 = [rgId value];
    v13 = [value4 length];

    if (v13)
    {
      ifRequestId = rgId;
LABEL_8:
      value3 = ifRequestId;
      rgId = value3;
      goto LABEL_10;
    }
  }

  value3 = 0;
LABEL_10:

  return value3;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(RGSiriSchemaRGClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 10 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAEB8[whichEvent_Type - 10]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 10 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E78EAF00[tag - 10];
  }
}

@end