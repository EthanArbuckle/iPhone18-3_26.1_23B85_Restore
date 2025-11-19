@interface ANCSchemaANCServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (ANCSchemaANCServerEvent)initWithDictionary:(id)a3;
- (ANCSchemaANCServerEvent)initWithJSON:(id)a3;
- (ANCSchemaANCServerUserResponseEvaluated)userResponseEvaluated;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteUserResponseEvaluated;
- (void)writeTo:(id)a3;
@end

@implementation ANCSchemaANCServerEvent

- (ANCSchemaANCServerEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ANCSchemaANCServerEvent;
  v5 = [(ANCSchemaANCServerEvent *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ANCSchemaANCServerEventMetadata alloc] initWithDictionary:v6];
      [(ANCSchemaANCServerEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"userResponseEvaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ANCSchemaANCServerUserResponseEvaluated alloc] initWithDictionary:v8];
      [(ANCSchemaANCServerEvent *)v5 setUserResponseEvaluated:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ANCSchemaANCServerEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ANCSchemaANCServerEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ANCSchemaANCServerEvent *)self dictionaryRepresentation];
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
    v4 = [(ANCSchemaANCServerEvent *)self eventMetadata];
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

  if (self->_userResponseEvaluated)
  {
    v7 = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"userResponseEvaluated"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"userResponseEvaluated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_13;
  }

  v6 = [(ANCSchemaANCServerEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(ANCSchemaANCServerEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(ANCSchemaANCServerEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
  v7 = [v4 userResponseEvaluated];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
    v16 = [v4 userResponseEvaluated];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ANCSchemaANCServerEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(ANCSchemaANCServerEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];

  if (v6)
  {
    v7 = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteUserResponseEvaluated
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_userResponseEvaluated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ANCSchemaANCServerUserResponseEvaluated)userResponseEvaluated
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_userResponseEvaluated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)qualifiedMessageName
{
  if ([(ANCSchemaANCServerEvent *)self whichEvent_Type]== 2)
  {
    return @"com.apple.aiml.siri.anc.ANCServerEvent.ANCServerUserResponseEvaluated";
  }

  else
  {
    return @"com.apple.aiml.siri.anc.ANCServerEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ANCSchemaANCServerEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ANCSchemaANCServerEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ANCSchemaANCServerEvent *)self deleteEventMetadata];
  }

  v9 = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ANCSchemaANCServerEvent *)self deleteUserResponseEvaluated];
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
  v2 = [(ANCSchemaANCServerEvent *)self eventMetadata];
  v3 = [v2 ancId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 12;
      }

      else
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (id)getComponentId
{
  v2 = [(ANCSchemaANCServerEvent *)self eventMetadata];
  v3 = [v2 ancId];

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
  if ([(ANCSchemaANCServerEvent *)self whichEvent_Type]== 2)
  {
    v3 = self->_userResponseEvaluated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 == 2)
  {
    return @"userResponseEvaluated";
  }

  else
  {
    return 0;
  }
}

@end