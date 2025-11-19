@interface PGSchemaPGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PGSchemaPGClientEvent)initWithDictionary:(id)a3;
- (PGSchemaPGClientEvent)initWithJSON:(id)a3;
- (PGSchemaPGGeneratePlanContext)pgGeneratePlanContext;
- (PGSchemaPGModelInferenceContext)pgModelInferenceContext;
- (PGSchemaPGOverridesRequestContext)pgOverridesRequestContext;
- (PGSchemaPGPrescribedPlanRequestContext)pgPrescribedPlanRequestContext;
- (PGSchemaPGPromptResponseTier1)pgPromptResponseTier1;
- (PGSchemaPGPromptTier1)pgPromptTier1;
- (PGSchemaPGRequestContext)pgRequestContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setPgGeneratePlanContext:(id)a3;
- (void)setPgModelInferenceContext:(id)a3;
- (void)setPgOverridesRequestContext:(id)a3;
- (void)setPgPrescribedPlanRequestContext:(id)a3;
- (void)setPgPromptResponseTier1:(id)a3;
- (void)setPgPromptTier1:(id)a3;
- (void)setPgRequestContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PGSchemaPGClientEvent

- (PGSchemaPGClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PGSchemaPGClientEvent;
  v5 = [(PGSchemaPGClientEvent *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PGSchemaPGClientEventMetadata alloc] initWithDictionary:v6];
      [(PGSchemaPGClientEvent *)v5 setEventMetadata:v7];
    }

    v24 = v6;
    v8 = [v4 objectForKeyedSubscript:@"pgRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PGSchemaPGRequestContext alloc] initWithDictionary:v8];
      [(PGSchemaPGClientEvent *)v5 setPgRequestContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"pgPromptTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PGSchemaPGPromptTier1 alloc] initWithDictionary:v10];
      [(PGSchemaPGClientEvent *)v5 setPgPromptTier1:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"pgPromptResponseTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PGSchemaPGPromptResponseTier1 alloc] initWithDictionary:v12];
      [(PGSchemaPGClientEvent *)v5 setPgPromptResponseTier1:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"pgModelInferenceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PGSchemaPGModelInferenceContext alloc] initWithDictionary:v14];
      [(PGSchemaPGClientEvent *)v5 setPgModelInferenceContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"pgOverridesRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PGSchemaPGOverridesRequestContext alloc] initWithDictionary:v16];
      [(PGSchemaPGClientEvent *)v5 setPgOverridesRequestContext:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"pgPrescribedPlanRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PGSchemaPGPrescribedPlanRequestContext alloc] initWithDictionary:v18];
      [(PGSchemaPGClientEvent *)v5 setPgPrescribedPlanRequestContext:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"pgGeneratePlanContext"];
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

- (PGSchemaPGClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PGSchemaPGClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PGSchemaPGClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    v4 = [(PGSchemaPGClientEvent *)self eventMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_pgGeneratePlanContext)
  {
    v7 = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"pgGeneratePlanContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"pgGeneratePlanContext"];
    }
  }

  if (self->_pgModelInferenceContext)
  {
    v10 = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"pgModelInferenceContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"pgModelInferenceContext"];
    }
  }

  if (self->_pgOverridesRequestContext)
  {
    v13 = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"pgOverridesRequestContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"pgOverridesRequestContext"];
    }
  }

  if (self->_pgPrescribedPlanRequestContext)
  {
    v16 = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"pgPrescribedPlanRequestContext"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"pgPrescribedPlanRequestContext"];
    }
  }

  if (self->_pgPromptResponseTier1)
  {
    v19 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"pgPromptResponseTier1"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"pgPromptResponseTier1"];
    }
  }

  if (self->_pgPromptTier1)
  {
    v22 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"pgPromptTier1"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"pgPromptTier1"];
    }
  }

  if (self->_pgRequestContext)
  {
    v25 = [(PGSchemaPGClientEvent *)self pgRequestContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"pgRequestContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"pgRequestContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_43;
  }

  v6 = [(PGSchemaPGClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v8 = [(PGSchemaPGClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(PGSchemaPGClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(PGSchemaPGClientEvent *)self pgRequestContext];
  v7 = [v4 pgRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v13 = [(PGSchemaPGClientEvent *)self pgRequestContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(PGSchemaPGClientEvent *)self pgRequestContext];
    v16 = [v4 pgRequestContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
  v7 = [v4 pgPromptTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v18 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
  if (v18)
  {
    v19 = v18;
    v20 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
    v21 = [v4 pgPromptTier1];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
  v7 = [v4 pgPromptResponseTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v23 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
  if (v23)
  {
    v24 = v23;
    v25 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
    v26 = [v4 pgPromptResponseTier1];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
  v7 = [v4 pgModelInferenceContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v28 = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
    v31 = [v4 pgModelInferenceContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
  v7 = [v4 pgOverridesRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v33 = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
    v36 = [v4 pgOverridesRequestContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
  v7 = [v4 pgPrescribedPlanRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v38 = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
    v41 = [v4 pgPrescribedPlanRequestContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
  v7 = [v4 pgGeneratePlanContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v43 = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
    if (!v43)
    {

LABEL_46:
      v48 = 1;
      goto LABEL_44;
    }

    v44 = v43;
    v45 = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
    v46 = [v4 pgGeneratePlanContext];
    v47 = [v45 isEqual:v46];

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

- (void)writeTo:(id)a3
{
  v21 = a3;
  v4 = [(PGSchemaPGClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(PGSchemaPGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PGSchemaPGClientEvent *)self pgRequestContext];

  if (v6)
  {
    v7 = [(PGSchemaPGClientEvent *)self pgRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PGSchemaPGClientEvent *)self pgPromptTier1];

  if (v8)
  {
    v9 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];

  if (v10)
  {
    v11 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];

  if (v12)
  {
    v13 = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];

  if (v14)
  {
    v15 = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];

  if (v16)
  {
    v17 = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];

  v19 = v21;
  if (v18)
  {
    v20 = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
    PBDataWriterWriteSubmessage();

    v19 = v21;
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

- (void)setPgGeneratePlanContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgGeneratePlanContext = self->_pgGeneratePlanContext;
  self->_pgGeneratePlanContext = v4;
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

- (void)setPgPrescribedPlanRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgPrescribedPlanRequestContext = self->_pgPrescribedPlanRequestContext;
  self->_pgPrescribedPlanRequestContext = v4;
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

- (void)setPgOverridesRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgOverridesRequestContext = self->_pgOverridesRequestContext;
  self->_pgOverridesRequestContext = v4;
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

- (void)setPgModelInferenceContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgModelInferenceContext = self->_pgModelInferenceContext;
  self->_pgModelInferenceContext = v4;
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

- (void)setPgPromptResponseTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgPromptResponseTier1 = self->_pgPromptResponseTier1;
  self->_pgPromptResponseTier1 = v4;
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

- (void)setPgPromptTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgPromptTier1 = self->_pgPromptTier1;
  self->_pgPromptTier1 = v4;
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

- (void)setPgRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  pgRequestContext = self->_pgRequestContext;
  self->_pgRequestContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(PGSchemaPGClientEvent *)self whichEvent_Type];
  if (v2 <= 103)
  {
    if (v2 == 101)
    {
      return @"com.apple.aiml.siri.pg.PGClientEvent.PGRequestContext";
    }

    if (v2 != 102)
    {
      if (v2 == 103)
      {
        return @"com.apple.aiml.siri.pg.PGClientEvent.PGPromptResponseTier1";
      }

      return @"com.apple.aiml.siri.pg.PGClientEvent";
    }

    return @"com.apple.aiml.siri.pg.PGClientEvent.PGPromptTier1";
  }

  else if (v2 > 300)
  {
    if (v2 != 301)
    {
      if (v2 == 401)
      {
        return @"com.apple.aiml.siri.pg.PGClientEvent.PGGeneratePlanContext";
      }

      return @"com.apple.aiml.siri.pg.PGClientEvent";
    }

    return @"com.apple.aiml.siri.pg.PGClientEvent.PGPrescribedPlanRequestContext";
  }

  else
  {
    if (v2 != 104)
    {
      if (v2 == 201)
      {
        return @"com.apple.aiml.siri.pg.PGClientEvent.PGOverridesRequestContext";
      }

      return @"com.apple.aiml.siri.pg.PGClientEvent";
    }

    return @"com.apple.aiml.siri.pg.PGClientEvent.PGModelInferenceContext";
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = PGSchemaPGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  v6 = [(PGSchemaPGClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PGSchemaPGClientEvent *)self deleteEventMetadata];
  }

  v9 = [(PGSchemaPGClientEvent *)self pgRequestContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PGSchemaPGClientEvent *)self deletePgRequestContext];
  }

  v12 = [(PGSchemaPGClientEvent *)self pgPromptTier1];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptTier1];
  }

  v15 = [(PGSchemaPGClientEvent *)self pgPromptResponseTier1];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PGSchemaPGClientEvent *)self deletePgPromptResponseTier1];
  }

  v18 = [(PGSchemaPGClientEvent *)self pgModelInferenceContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PGSchemaPGClientEvent *)self deletePgModelInferenceContext];
  }

  v21 = [(PGSchemaPGClientEvent *)self pgOverridesRequestContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PGSchemaPGClientEvent *)self deletePgOverridesRequestContext];
  }

  v24 = [(PGSchemaPGClientEvent *)self pgPrescribedPlanRequestContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PGSchemaPGClientEvent *)self deletePgPrescribedPlanRequestContext];
  }

  v27 = [(PGSchemaPGClientEvent *)self pgGeneratePlanContext];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
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
  v3 = [(PGSchemaPGClientEvent *)self eventMetadata];
  v4 = [v3 ifRequestId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 45;
  }

  else
  {
    v10 = [(PGSchemaPGClientEvent *)self eventMetadata];
    v11 = [v10 planCycleId];

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
  v3 = [(PGSchemaPGClientEvent *)self eventMetadata];
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

  v9 = [(PGSchemaPGClientEvent *)self eventMetadata];
  v10 = [v9 planCycleId];

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
  v3 = [(PGSchemaPGClientEvent *)self whichEvent_Type];
  v4 = 0;
  if (v3 <= 103)
  {
    switch(v3)
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

  else if (v3 > 300)
  {
    if (v3 == 301)
    {
      v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgPrescribedPlanRequestContext;
    }

    else
    {
      if (v3 != 401)
      {
        goto LABEL_18;
      }

      v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgGeneratePlanContext;
    }
  }

  else if (v3 == 104)
  {
    v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgModelInferenceContext;
  }

  else
  {
    if (v3 != 201)
    {
      goto LABEL_18;
    }

    v5 = &OBJC_IVAR___PGSchemaPGClientEvent__pgOverridesRequestContext;
  }

  v4 = *(&self->super.super.super.super.isa + *v5);
LABEL_18:

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  v3 = @"pgPrescribedPlanRequestContext";
  v4 = @"pgGeneratePlanContext";
  if (a3 != 401)
  {
    v4 = 0;
  }

  if (a3 != 301)
  {
    v3 = v4;
  }

  v5 = @"pgOverridesRequestContext";
  if (a3 != 201)
  {
    v5 = 0;
  }

  if (a3 == 104)
  {
    v5 = @"pgModelInferenceContext";
  }

  if (a3 <= 300)
  {
    v3 = v5;
  }

  v6 = @"pgPromptResponseTier1";
  if (a3 != 103)
  {
    v6 = 0;
  }

  if (a3 == 102)
  {
    v6 = @"pgPromptTier1";
  }

  if (a3 == 101)
  {
    v6 = @"pgRequestContext";
  }

  if (a3 <= 103)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

@end