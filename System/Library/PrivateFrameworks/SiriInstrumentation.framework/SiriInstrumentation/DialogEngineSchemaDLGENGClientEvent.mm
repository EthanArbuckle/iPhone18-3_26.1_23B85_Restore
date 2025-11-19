@interface DialogEngineSchemaDLGENGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (DialogEngineSchemaDLGENGClientEvent)initWithDictionary:(id)a3;
- (DialogEngineSchemaDLGENGClientEvent)initWithJSON:(id)a3;
- (DialogEngineSchemaDLGENGNamedEntitiesUsed)DLGENGNamedEntitiesUsed;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteDLGENGNamedEntitiesUsed;
- (void)setDLGENGNamedEntitiesUsed:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DialogEngineSchemaDLGENGClientEvent

- (DialogEngineSchemaDLGENGClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DialogEngineSchemaDLGENGClientEvent;
  v5 = [(DialogEngineSchemaDLGENGClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DialogEngineSchemaDLGENGClientEventMetadata alloc] initWithDictionary:v6];
      [(DialogEngineSchemaDLGENGClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"DLGENGNamedEntitiesUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DialogEngineSchemaDLGENGNamedEntitiesUsed alloc] initWithDictionary:v8];
      [(DialogEngineSchemaDLGENGClientEvent *)v5 setDLGENGNamedEntitiesUsed:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (DialogEngineSchemaDLGENGClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DialogEngineSchemaDLGENGClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DialogEngineSchemaDLGENGClientEvent *)self dictionaryRepresentation];
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
  if (self->_DLGENGNamedEntitiesUsed)
  {
    v4 = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"DLGENGNamedEntitiesUsed"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"DLGENGNamedEntitiesUsed"];
    }
  }

  if (self->_eventMetadata)
  {
    v7 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"eventMetadata"];
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

  v6 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
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

  v6 = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
  v7 = [v4 DLGENGNamedEntitiesUsed];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
    v16 = [v4 DLGENGNamedEntitiesUsed];
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
  v4 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];

  if (v6)
  {
    v7 = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteDLGENGNamedEntitiesUsed
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_DLGENGNamedEntitiesUsed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DialogEngineSchemaDLGENGNamedEntitiesUsed)DLGENGNamedEntitiesUsed
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_DLGENGNamedEntitiesUsed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDLGENGNamedEntitiesUsed:(id)a3
{
  v3 = 101;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_DLGENGNamedEntitiesUsed, a3);
}

- (id)qualifiedMessageName
{
  if ([(DialogEngineSchemaDLGENGClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.dlgeng.DLGENGClientEvent.DLGENGNamedEntitiesUsed";
  }

  else
  {
    return @"com.apple.aiml.siri.dlgeng.DLGENGClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DialogEngineSchemaDLGENGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DialogEngineSchemaDLGENGClientEvent *)self deleteEventMetadata];
  }

  v9 = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DialogEngineSchemaDLGENGClientEvent *)self deleteDLGENGNamedEntitiesUsed];
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
  v3 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  v4 = [v3 dialogEngineId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(v9) = 52;
  }

  else
  {
    v10 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11 && ([v11 value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(v9) = 1;
      v4 = v11;
    }

    else
    {
      v16 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
      v4 = [v16 subRequestId];

      if (v4)
      {
        v9 = [v4 value];
        if (v9)
        {
          v17 = [v4 value];
          v18 = [v17 length];

          if (v18)
          {
            LODWORD(v9) = 43;
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  v4 = [v3 dialogEngineId];

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
        goto LABEL_11;
      }
    }
  }

  v9 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 value];
      v14 = [v13 length];

      if (v14)
      {
        v4 = v10;
LABEL_11:
        v16 = v4;
        v4 = v16;
        goto LABEL_13;
      }
    }
  }

  v15 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  v4 = [v15 subRequestId];

  if (v4)
  {
    v16 = [v4 value];
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v4 value];
    v18 = [v17 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  if ([(DialogEngineSchemaDLGENGClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_DLGENGNamedEntitiesUsed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 == 101)
  {
    return @"DLGENGNamedEntitiesUsed";
  }

  else
  {
    return 0;
  }
}

@end