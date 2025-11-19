@interface PRSiriSchemaPRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PRSiriSchemaPRClientEvent)initWithDictionary:(id)a3;
- (PRSiriSchemaPRClientEvent)initWithJSON:(id)a3;
- (PRSiriSchemaPRJointResolverCallContext)jrCallContext;
- (PRSiriSchemaPRRequestContext)requestContext;
- (PRSiriSchemaPRResponseGenerationRequestContext)rgRequestContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteJrCallContext;
- (void)deleteRequestContext;
- (void)deleteRgRequestContext;
- (void)setJrCallContext:(id)a3;
- (void)setRequestContext:(id)a3;
- (void)setRgRequestContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PRSiriSchemaPRClientEvent

- (PRSiriSchemaPRClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PRSiriSchemaPRClientEvent;
  v5 = [(PRSiriSchemaPRClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PRSiriSchemaPRClientEventMetadata alloc] initWithDictionary:v6];
      [(PRSiriSchemaPRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PRSiriSchemaPRRequestContext alloc] initWithDictionary:v8];
      [(PRSiriSchemaPRClientEvent *)v5 setRequestContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"rgRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PRSiriSchemaPRResponseGenerationRequestContext alloc] initWithDictionary:v10];
      [(PRSiriSchemaPRClientEvent *)v5 setRgRequestContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"jrCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PRSiriSchemaPRJointResolverCallContext alloc] initWithDictionary:v12];
      [(PRSiriSchemaPRClientEvent *)v5 setJrCallContext:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PRSiriSchemaPRClientEvent *)self dictionaryRepresentation];
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
    v4 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
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

  if (self->_jrCallContext)
  {
    v7 = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"jrCallContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"jrCallContext"];
    }
  }

  if (self->_requestContext)
  {
    v10 = [(PRSiriSchemaPRClientEvent *)self requestContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_rgRequestContext)
  {
    v13 = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"rgRequestContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"rgRequestContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PRSiriSchemaPRClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(PRSiriSchemaPRRequestContext *)self->_requestContext hash]^ v3;
  v5 = [(PRSiriSchemaPRResponseGenerationRequestContext *)self->_rgRequestContext hash];
  return v4 ^ v5 ^ [(PRSiriSchemaPRJointResolverCallContext *)self->_jrCallContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_23;
  }

  v6 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(PRSiriSchemaPRClientEvent *)self requestContext];
  v7 = [v4 requestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(PRSiriSchemaPRClientEvent *)self requestContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(PRSiriSchemaPRClientEvent *)self requestContext];
    v16 = [v4 requestContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
  v7 = [v4 rgRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
    v21 = [v4 rgRequestContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
  v7 = [v4 jrCallContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
    v26 = [v4 jrCallContext];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PRSiriSchemaPRClientEvent *)self requestContext];

  if (v6)
  {
    v7 = [(PRSiriSchemaPRClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];

  if (v8)
  {
    v9 = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PRSiriSchemaPRClientEvent *)self jrCallContext];

  v11 = v13;
  if (v10)
  {
    v12 = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)deleteJrCallContext
{
  if (self->_whichEvent_Type == 12)
  {
    self->_whichEvent_Type = 0;
    self->_jrCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRJointResolverCallContext)jrCallContext
{
  if (self->_whichEvent_Type == 12)
  {
    v3 = self->_jrCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setJrCallContext:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  rgRequestContext = self->_rgRequestContext;
  self->_rgRequestContext = 0;

  v7 = 12;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  jrCallContext = self->_jrCallContext;
  self->_jrCallContext = v4;
}

- (void)deleteRgRequestContext
{
  if (self->_whichEvent_Type == 11)
  {
    self->_whichEvent_Type = 0;
    self->_rgRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRResponseGenerationRequestContext)rgRequestContext
{
  if (self->_whichEvent_Type == 11)
  {
    v3 = self->_rgRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRgRequestContext:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  jrCallContext = self->_jrCallContext;
  self->_jrCallContext = 0;

  v7 = 11;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  rgRequestContext = self->_rgRequestContext;
  self->_rgRequestContext = v4;
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

- (PRSiriSchemaPRRequestContext)requestContext
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
  rgRequestContext = self->_rgRequestContext;
  self->_rgRequestContext = 0;

  jrCallContext = self->_jrCallContext;
  self->_jrCallContext = 0;

  v7 = 10;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  requestContext = self->_requestContext;
  self->_requestContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(PRSiriSchemaPRClientEvent *)self whichEvent_Type];
  if (v2 - 10 > 2)
  {
    return @"com.apple.aiml.siri.pr.PRClientEvent";
  }

  else
  {
    return off_1E78E1048[v2 - 10];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PRSiriSchemaPRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PRSiriSchemaPRClientEvent *)self deleteEventMetadata];
  }

  v9 = [(PRSiriSchemaPRClientEvent *)self requestContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PRSiriSchemaPRClientEvent *)self deleteRequestContext];
  }

  v12 = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PRSiriSchemaPRClientEvent *)self deleteRgRequestContext];
  }

  v15 = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PRSiriSchemaPRClientEvent *)self deleteJrCallContext];
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
  v3 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  v4 = [v3 ifRequestId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 45;
  }

  else
  {
    v10 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
    v11 = [v10 prId];

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
          v9 = 59;
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
  v3 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
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

  v9 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  v10 = [v9 prId];

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
  v3 = [(PRSiriSchemaPRClientEvent *)self whichEvent_Type];
  if (v3 - 10 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAD08[v3 - 10]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 10 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78EAD20[a3 - 10];
  }
}

@end