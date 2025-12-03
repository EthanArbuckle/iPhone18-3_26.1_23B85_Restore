@interface PGSchemaPGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PGSchemaPGClientEvent)initWithDictionary:(id)dictionary;
- (PGSchemaPGClientEvent)initWithJSON:(id)n;
- (PGSchemaPGGeneratePlanContext)pgGeneratePlanContext;
- (PGSchemaPGModelInferenceContext)pgModelInferenceContext;
- (PGSchemaPGOverridesRequestContext)pgOverridesRequestContext;
- (PGSchemaPGPrescribedPlanRequestContext)pgPrescribedPlanRequestContext;
- (PGSchemaPGPromptResponseTier1)pgPromptResponseTier1;
- (PGSchemaPGPromptTier1)pgPromptTier1;
- (PGSchemaPGRequestContext)pgRequestContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deletePgGeneratePlanContext;
- (void)deletePgModelInferenceContext;
- (void)deletePgOverridesRequestContext;
- (void)deletePgPrescribedPlanRequestContext;
- (void)deletePgPromptResponseTier1;
- (void)deletePgPromptTier1;
- (void)deletePgRequestContext;
- (void)setPgGeneratePlanContext:(id)context;
- (void)setPgModelInferenceContext:(id)context;
- (void)setPgOverridesRequestContext:(id)context;
- (void)setPgPrescribedPlanRequestContext:(id)context;
- (void)setPgPromptResponseTier1:(id)tier1;
- (void)setPgPromptTier1:(id)tier1;
- (void)setPgRequestContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation PGSchemaPGClientEvent

- (PGSchemaPGClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = PGSchemaPGClientEvent;
  v5 = [(PGSchemaPGClientEvent *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PGSchemaPGClientEventMetadata alloc] initWithDictionary:v6];
      [(PGSchemaPGClientEvent *)v5 setEventMetadata:v7];
    }

    v24 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"pgRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PGSchemaPGRequestContext alloc] initWithDictionary:v8];
      [(PGSchemaPGClientEvent *)v5 setPgRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"pgPromptTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PGSchemaPGPromptTier1 alloc] initWithDictionary:v10];
      [(PGSchemaPGClientEvent *)v5 setPgPromptTier1:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"pgPromptResponseTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PGSchemaPGPromptResponseTier1 alloc] initWithDictionary:v12];
      [(PGSchemaPGClientEvent *)v5 setPgPromptResponseTier1:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"pgModelInferenceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PGSchemaPGModelInferenceContext alloc] initWithDictionary:v14];
      [(PGSchemaPGClientEvent *)v5 setPgModelInferenceContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"pgOverridesRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PGSchemaPGOverridesRequestContext alloc] initWithDictionary:v16];
      [(PGSchemaPGClientEvent *)v5 setPgOverridesRequestContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"pgPrescribedPlanRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PGSchemaPGPrescribedPlanRequestContext alloc] initWithDictionary:v18];
      [(PGSchemaPGClientEvent *)v5 setPgPrescribedPlanRequestContext:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"pgGeneratePlanContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PGSchemaPGGeneratePlanContext alloc] initWithDictionary:v20];
      [(PGSchemaPGClientEvent *)v5 setPgGeneratePlanContext:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (PGSchemaPGClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PGSchemaPGClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PGSchemaPGClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(PGSchemaPGClientEvent *)self eventMetadata];
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

  if (self->_pgGeneratePlanContext)
  {
    pgGeneratePlanContext = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
    dictionaryRepresentation2 = [pgGeneratePlanContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"pgGeneratePlanContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"pgGeneratePlanContext"];
    }
  }

  if (self->_pgModelInferenceContext)
  {
    pgModelInferenceContext = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
    dictionaryRepresentation3 = [pgModelInferenceContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"pgModelInferenceContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"pgModelInferenceContext"];
    }
  }

  if (self->_pgOverridesRequestContext)
  {
    pgOverridesRequestContext = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
    dictionaryRepresentation4 = [pgOverridesRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"pgOverridesRequestContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"pgOverridesRequestContext"];
    }
  }

  if (self->_pgPrescribedPlanRequestContext)
  {
    pgPrescribedPlanRequestContext = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
    dictionaryRepresentation5 = [pgPrescribedPlanRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"pgPrescribedPlanRequestContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"pgPrescribedPlanRequestContext"];
    }
  }

  if (self->_pgPromptResponseTier1)
  {
    pgPromptResponseTier1 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
    dictionaryRepresentation6 = [pgPromptResponseTier1 dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"pgPromptResponseTier1"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"pgPromptResponseTier1"];
    }
  }

  if (self->_pgPromptTier1)
  {
    pgPromptTier1 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
    dictionaryRepresentation7 = [pgPromptTier1 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"pgPromptTier1"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"pgPromptTier1"];
    }
  }

  if (self->_pgRequestContext)
  {
    pgRequestContext = [(PGSchemaPGClientEvent *)self pgRequestContext];
    dictionaryRepresentation8 = [pgRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"pgRequestContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"pgRequestContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PGSchemaPGClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(PGSchemaPGRequestContext *)self->_pgRequestContext hash]^ v3;
  v5 = [(PGSchemaPGPromptTier1 *)self->_pgPromptTier1 hash];
  v6 = v4 ^ v5 ^ [(PGSchemaPGPromptResponseTier1 *)self->_pgPromptResponseTier1 hash];
  v7 = [(PGSchemaPGModelInferenceContext *)self->_pgModelInferenceContext hash];
  v8 = v7 ^ [(PGSchemaPGOverridesRequestContext *)self->_pgOverridesRequestContext hash];
  v9 = v6 ^ v8 ^ [(PGSchemaPGPrescribedPlanRequestContext *)self->_pgPrescribedPlanRequestContext hash];
  return v9 ^ [(PGSchemaPGGeneratePlanContext *)self->_pgGeneratePlanContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_43;
  }

  eventMetadata = [(PGSchemaPGClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  eventMetadata3 = [(PGSchemaPGClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(PGSchemaPGClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(PGSchemaPGClientEvent *)self pgRequestContext];
  eventMetadata2 = [equalCopy pgRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  pgRequestContext = [(PGSchemaPGClientEvent *)self pgRequestContext];
  if (pgRequestContext)
  {
    v14 = pgRequestContext;
    pgRequestContext2 = [(PGSchemaPGClientEvent *)self pgRequestContext];
    pgRequestContext3 = [equalCopy pgRequestContext];
    v17 = [pgRequestContext2 isEqual:pgRequestContext3];

    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(PGSchemaPGClientEvent *)self pgPromptTier1];
  eventMetadata2 = [equalCopy pgPromptTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  pgPromptTier1 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
  if (pgPromptTier1)
  {
    v19 = pgPromptTier1;
    pgPromptTier12 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
    pgPromptTier13 = [equalCopy pgPromptTier1];
    v22 = [pgPromptTier12 isEqual:pgPromptTier13];

    if (!v22)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
  eventMetadata2 = [equalCopy pgPromptResponseTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  pgPromptResponseTier1 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
  if (pgPromptResponseTier1)
  {
    v24 = pgPromptResponseTier1;
    pgPromptResponseTier12 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
    pgPromptResponseTier13 = [equalCopy pgPromptResponseTier1];
    v27 = [pgPromptResponseTier12 isEqual:pgPromptResponseTier13];

    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
  eventMetadata2 = [equalCopy pgModelInferenceContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  pgModelInferenceContext = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
  if (pgModelInferenceContext)
  {
    v29 = pgModelInferenceContext;
    pgModelInferenceContext2 = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
    pgModelInferenceContext3 = [equalCopy pgModelInferenceContext];
    v32 = [pgModelInferenceContext2 isEqual:pgModelInferenceContext3];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
  eventMetadata2 = [equalCopy pgOverridesRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  pgOverridesRequestContext = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
  if (pgOverridesRequestContext)
  {
    v34 = pgOverridesRequestContext;
    pgOverridesRequestContext2 = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
    pgOverridesRequestContext3 = [equalCopy pgOverridesRequestContext];
    v37 = [pgOverridesRequestContext2 isEqual:pgOverridesRequestContext3];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
  eventMetadata2 = [equalCopy pgPrescribedPlanRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  pgPrescribedPlanRequestContext = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
  if (pgPrescribedPlanRequestContext)
  {
    v39 = pgPrescribedPlanRequestContext;
    pgPrescribedPlanRequestContext2 = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
    pgPrescribedPlanRequestContext3 = [equalCopy pgPrescribedPlanRequestContext];
    v42 = [pgPrescribedPlanRequestContext2 isEqual:pgPrescribedPlanRequestContext3];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
  eventMetadata2 = [equalCopy pgGeneratePlanContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    pgGeneratePlanContext = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
    if (!pgGeneratePlanContext)
    {

LABEL_46:
      v48 = 1;
      goto LABEL_44;
    }

    v44 = pgGeneratePlanContext;
    pgGeneratePlanContext2 = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
    pgGeneratePlanContext3 = [equalCopy pgGeneratePlanContext];
    v47 = [pgGeneratePlanContext2 isEqual:pgGeneratePlanContext3];

    if (v47)
    {
      goto LABEL_46;
    }
  }

  else
  {
LABEL_42:
  }

LABEL_43:
  v48 = 0;
LABEL_44:

  return v48;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(PGSchemaPGClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(PGSchemaPGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  pgRequestContext = [(PGSchemaPGClientEvent *)self pgRequestContext];

  if (pgRequestContext)
  {
    pgRequestContext2 = [(PGSchemaPGClientEvent *)self pgRequestContext];
    PBDataWriterWriteSubmessage();
  }

  pgPromptTier1 = [(PGSchemaPGClientEvent *)self pgPromptTier1];

  if (pgPromptTier1)
  {
    pgPromptTier12 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
    PBDataWriterWriteSubmessage();
  }

  pgPromptResponseTier1 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];

  if (pgPromptResponseTier1)
  {
    pgPromptResponseTier12 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
    PBDataWriterWriteSubmessage();
  }

  pgModelInferenceContext = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];

  if (pgModelInferenceContext)
  {
    pgModelInferenceContext2 = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
    PBDataWriterWriteSubmessage();
  }

  pgOverridesRequestContext = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];

  if (pgOverridesRequestContext)
  {
    pgOverridesRequestContext2 = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
    PBDataWriterWriteSubmessage();
  }

  pgPrescribedPlanRequestContext = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];

  if (pgPrescribedPlanRequestContext)
  {
    pgPrescribedPlanRequestContext2 = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
    PBDataWriterWriteSubmessage();
  }

  pgGeneratePlanContext = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];

  v19 = toCopy;
  if (pgGeneratePlanContext)
  {
    pgGeneratePlanContext2 = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
    PBDataWriterWriteSubmessage();

    v19 = toCopy;
  }
}

- (void)deletePgGeneratePlanContext
{
  if (self->_whichEvent_Type == 401)
  {
    self->_whichEvent_Type = 0;
    self->_pgGeneratePlanContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PGSchemaPGGeneratePlanContext)pgGeneratePlanContext
{
  if (self->_whichEvent_Type == 401)
  {
    v3 = self->_pgGeneratePlanContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPgGeneratePlanContext:(id)context
{
  contextCopy = context;
  pgRequestContext = self->_pgRequestContext;
  self->_pgRequestContext = 0;

  pgPromptTier1 = self->_pgPromptTier1;
  self->_pgPromptTier1 = 0;

  pgPromptResponseTier1 = self->_pgPromptResponseTier1;
  self->_pgPromptResponseTier1 = 0;

  pgModelInferenceContext = self->_pgModelInferenceContext;
  self->_pgModelInferenceContext = 0;

  pgOverridesRequestContext = self->_pgOverridesRequestContext;
  self->_pgOverridesRequestContext = 0;

  pgPrescribedPlanRequestContext = self->_pgPrescribedPlanRequestContext;
  self->_pgPrescribedPlanRequestContext = 0;

  v11 = 401;
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgGeneratePlanContext = self->_pgGeneratePlanContext;
  self->_pgGeneratePlanContext = contextCopy;
}

- (void)deletePgPrescribedPlanRequestContext
{
  if (self->_whichEvent_Type == 301)
  {
    self->_whichEvent_Type = 0;
    self->_pgPrescribedPlanRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PGSchemaPGPrescribedPlanRequestContext)pgPrescribedPlanRequestContext
{
  if (self->_whichEvent_Type == 301)
  {
    v3 = self->_pgPrescribedPlanRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPgPrescribedPlanRequestContext:(id)context
{
  contextCopy = context;
  pgRequestContext = self->_pgRequestContext;
  self->_pgRequestContext = 0;

  pgPromptTier1 = self->_pgPromptTier1;
  self->_pgPromptTier1 = 0;

  pgPromptResponseTier1 = self->_pgPromptResponseTier1;
  self->_pgPromptResponseTier1 = 0;

  pgModelInferenceContext = self->_pgModelInferenceContext;
  self->_pgModelInferenceContext = 0;

  pgOverridesRequestContext = self->_pgOverridesRequestContext;
  self->_pgOverridesRequestContext = 0;

  pgGeneratePlanContext = self->_pgGeneratePlanContext;
  self->_pgGeneratePlanContext = 0;

  v11 = 301;
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgPrescribedPlanRequestContext = self->_pgPrescribedPlanRequestContext;
  self->_pgPrescribedPlanRequestContext = contextCopy;
}

- (void)deletePgOverridesRequestContext
{
  if (self->_whichEvent_Type == 201)
  {
    self->_whichEvent_Type = 0;
    self->_pgOverridesRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PGSchemaPGOverridesRequestContext)pgOverridesRequestContext
{
  if (self->_whichEvent_Type == 201)
  {
    v3 = self->_pgOverridesRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPgOverridesRequestContext:(id)context
{
  contextCopy = context;
  pgRequestContext = self->_pgRequestContext;
  self->_pgRequestContext = 0;

  pgPromptTier1 = self->_pgPromptTier1;
  self->_pgPromptTier1 = 0;

  pgPromptResponseTier1 = self->_pgPromptResponseTier1;
  self->_pgPromptResponseTier1 = 0;

  pgModelInferenceContext = self->_pgModelInferenceContext;
  self->_pgModelInferenceContext = 0;

  pgPrescribedPlanRequestContext = self->_pgPrescribedPlanRequestContext;
  self->_pgPrescribedPlanRequestContext = 0;

  pgGeneratePlanContext = self->_pgGeneratePlanContext;
  self->_pgGeneratePlanContext = 0;

  v11 = 201;
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgOverridesRequestContext = self->_pgOverridesRequestContext;
  self->_pgOverridesRequestContext = contextCopy;
}

- (void)deletePgModelInferenceContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_pgModelInferenceContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PGSchemaPGModelInferenceContext)pgModelInferenceContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_pgModelInferenceContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPgModelInferenceContext:(id)context
{
  contextCopy = context;
  pgRequestContext = self->_pgRequestContext;
  self->_pgRequestContext = 0;

  pgPromptTier1 = self->_pgPromptTier1;
  self->_pgPromptTier1 = 0;

  pgPromptResponseTier1 = self->_pgPromptResponseTier1;
  self->_pgPromptResponseTier1 = 0;

  pgOverridesRequestContext = self->_pgOverridesRequestContext;
  self->_pgOverridesRequestContext = 0;

  pgPrescribedPlanRequestContext = self->_pgPrescribedPlanRequestContext;
  self->_pgPrescribedPlanRequestContext = 0;

  pgGeneratePlanContext = self->_pgGeneratePlanContext;
  self->_pgGeneratePlanContext = 0;

  v11 = 104;
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgModelInferenceContext = self->_pgModelInferenceContext;
  self->_pgModelInferenceContext = contextCopy;
}

- (void)deletePgPromptResponseTier1
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_pgPromptResponseTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PGSchemaPGPromptResponseTier1)pgPromptResponseTier1
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_pgPromptResponseTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPgPromptResponseTier1:(id)tier1
{
  tier1Copy = tier1;
  pgRequestContext = self->_pgRequestContext;
  self->_pgRequestContext = 0;

  pgPromptTier1 = self->_pgPromptTier1;
  self->_pgPromptTier1 = 0;

  pgModelInferenceContext = self->_pgModelInferenceContext;
  self->_pgModelInferenceContext = 0;

  pgOverridesRequestContext = self->_pgOverridesRequestContext;
  self->_pgOverridesRequestContext = 0;

  pgPrescribedPlanRequestContext = self->_pgPrescribedPlanRequestContext;
  self->_pgPrescribedPlanRequestContext = 0;

  pgGeneratePlanContext = self->_pgGeneratePlanContext;
  self->_pgGeneratePlanContext = 0;

  v11 = 103;
  if (!tier1Copy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgPromptResponseTier1 = self->_pgPromptResponseTier1;
  self->_pgPromptResponseTier1 = tier1Copy;
}

- (void)deletePgPromptTier1
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_pgPromptTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PGSchemaPGPromptTier1)pgPromptTier1
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_pgPromptTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPgPromptTier1:(id)tier1
{
  tier1Copy = tier1;
  pgRequestContext = self->_pgRequestContext;
  self->_pgRequestContext = 0;

  pgPromptResponseTier1 = self->_pgPromptResponseTier1;
  self->_pgPromptResponseTier1 = 0;

  pgModelInferenceContext = self->_pgModelInferenceContext;
  self->_pgModelInferenceContext = 0;

  pgOverridesRequestContext = self->_pgOverridesRequestContext;
  self->_pgOverridesRequestContext = 0;

  pgPrescribedPlanRequestContext = self->_pgPrescribedPlanRequestContext;
  self->_pgPrescribedPlanRequestContext = 0;

  pgGeneratePlanContext = self->_pgGeneratePlanContext;
  self->_pgGeneratePlanContext = 0;

  v11 = 102;
  if (!tier1Copy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgPromptTier1 = self->_pgPromptTier1;
  self->_pgPromptTier1 = tier1Copy;
}

- (void)deletePgRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_pgRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PGSchemaPGRequestContext)pgRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_pgRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPgRequestContext:(id)context
{
  contextCopy = context;
  pgPromptTier1 = self->_pgPromptTier1;
  self->_pgPromptTier1 = 0;

  pgPromptResponseTier1 = self->_pgPromptResponseTier1;
  self->_pgPromptResponseTier1 = 0;

  pgModelInferenceContext = self->_pgModelInferenceContext;
  self->_pgModelInferenceContext = 0;

  pgOverridesRequestContext = self->_pgOverridesRequestContext;
  self->_pgOverridesRequestContext = 0;

  pgPrescribedPlanRequestContext = self->_pgPrescribedPlanRequestContext;
  self->_pgPrescribedPlanRequestContext = 0;

  pgGeneratePlanContext = self->_pgGeneratePlanContext;
  self->_pgGeneratePlanContext = 0;

  v11 = 101;
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgRequestContext = self->_pgRequestContext;
  self->_pgRequestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(PGSchemaPGClientEvent *)self whichEvent_Type];
  if (whichEvent_Type <= 103)
  {
    if (whichEvent_Type == 101)
    {
      return @"com.apple.aiml.siri.pg.PGClientEvent.PGRequestContext";
    }

    if (whichEvent_Type != 102)
    {
      if (whichEvent_Type == 103)
      {
        return @"com.apple.aiml.siri.pg.PGClientEvent.PGPromptResponseTier1";
      }

      return @"com.apple.aiml.siri.pg.PGClientEvent";
    }

    return @"com.apple.aiml.siri.pg.PGClientEvent.PGPromptTier1";
  }

  else if (whichEvent_Type > 300)
  {
    if (whichEvent_Type != 301)
    {
      if (whichEvent_Type == 401)
      {
        return @"com.apple.aiml.siri.pg.PGClientEvent.PGGeneratePlanContext";
      }

      return @"com.apple.aiml.siri.pg.PGClientEvent";
    }

    return @"com.apple.aiml.siri.pg.PGClientEvent.PGPrescribedPlanRequestContext";
  }

  else
  {
    if (whichEvent_Type != 104)
    {
      if (whichEvent_Type == 201)
      {
        return @"com.apple.aiml.siri.pg.PGClientEvent.PGOverridesRequestContext";
      }

      return @"com.apple.aiml.siri.pg.PGClientEvent";
    }

    return @"com.apple.aiml.siri.pg.PGClientEvent.PGModelInferenceContext";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v31.receiver = self;
  v31.super_class = PGSchemaPGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  eventMetadata = [(PGSchemaPGClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PGSchemaPGClientEvent *)self deleteEventMetadata];
  }

  pgRequestContext = [(PGSchemaPGClientEvent *)self pgRequestContext];
  v10 = [pgRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PGSchemaPGClientEvent *)self deletePgRequestContext];
  }

  pgPromptTier1 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
  v13 = [pgPromptTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
  }

  pgPromptResponseTier1 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
  v16 = [pgPromptResponseTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  pgModelInferenceContext = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
  v19 = [pgModelInferenceContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PGSchemaPGClientEvent *)self deletePgModelInferenceContext];
  }

  pgOverridesRequestContext = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
  v22 = [pgOverridesRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PGSchemaPGClientEvent *)self deletePgOverridesRequestContext];
  }

  pgPrescribedPlanRequestContext = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
  v25 = [pgPrescribedPlanRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PGSchemaPGClientEvent *)self deletePgPrescribedPlanRequestContext];
  }

  pgGeneratePlanContext = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
  v28 = [pgGeneratePlanContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PGSchemaPGClientEvent *)self deletePgGeneratePlanContext];
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
  eventMetadata = [(PGSchemaPGClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (ifRequestId && ([ifRequestId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(ifRequestId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 45;
  }

  else
  {
    eventMetadata2 = [(PGSchemaPGClientEvent *)self eventMetadata];
    planCycleId = [eventMetadata2 planCycleId];

    if (planCycleId)
    {
      value = [planCycleId value];
      if (value)
      {
        v13 = value;
        value2 = [planCycleId value];
        v15 = [value2 length];

        if (v15)
        {
          v9 = 61;
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

      ifRequestId = planCycleId;
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
  eventMetadata = [(PGSchemaPGClientEvent *)self eventMetadata];
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

  eventMetadata2 = [(PGSchemaPGClientEvent *)self eventMetadata];
  planCycleId = [eventMetadata2 planCycleId];

  if (planCycleId)
  {
    value3 = [planCycleId value];
    if (!value3)
    {
      goto LABEL_10;
    }

    value4 = [planCycleId value];
    v13 = [value4 length];

    if (v13)
    {
      ifRequestId = planCycleId;
LABEL_8:
      value3 = ifRequestId;
      planCycleId = value3;
      goto LABEL_10;
    }
  }

  value3 = 0;
LABEL_10:

  return value3;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(PGSchemaPGClientEvent *)self whichEvent_Type];
  v4 = 0;
  if (whichEvent_Type <= 103)
  {
    switch(whichEvent_Type)
    {
      case 'e':
        v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgRequestContext;
        break;
      case 'f':
        v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgPromptTier1;
        break;
      case 'g':
        v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgPromptResponseTier1;
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (whichEvent_Type > 300)
  {
    if (whichEvent_Type == 301)
    {
      v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgPrescribedPlanRequestContext;
    }

    else
    {
      if (whichEvent_Type != 401)
      {
        goto LABEL_18;
      }

      v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgGeneratePlanContext;
    }
  }

  else if (whichEvent_Type == 104)
  {
    v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgModelInferenceContext;
  }

  else
  {
    if (whichEvent_Type != 201)
    {
      goto LABEL_18;
    }

    v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgOverridesRequestContext;
  }

  v4 = *(&self->super.super.super.super.isa + *v5);
LABEL_18:

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  v3 = @"pgPrescribedPlanRequestContext";
  v4 = @"pgGeneratePlanContext";
  if (tag != 401)
  {
    v4 = 0;
  }

  if (tag != 301)
  {
    v3 = v4;
  }

  v5 = @"pgOverridesRequestContext";
  if (tag != 201)
  {
    v5 = 0;
  }

  if (tag == 104)
  {
    v5 = @"pgModelInferenceContext";
  }

  if (tag <= 300)
  {
    v3 = v5;
  }

  v6 = @"pgPromptResponseTier1";
  if (tag != 103)
  {
    v6 = 0;
  }

  if (tag == 102)
  {
    v6 = @"pgPromptTier1";
  }

  if (tag == 101)
  {
    v6 = @"pgRequestContext";
  }

  if (tag <= 103)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

@end