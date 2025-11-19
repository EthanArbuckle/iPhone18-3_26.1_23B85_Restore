@interface ACTVSchemaACTVClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (ACTVSchemaACTVButtonInteractionDetected)buttonInteractionDetected;
- (ACTVSchemaACTVClientEvent)initWithDictionary:(id)a3;
- (ACTVSchemaACTVClientEvent)initWithJSON:(id)a3;
- (ACTVSchemaACTVTurnActivated)turnActivated;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteButtonInteractionDetected;
- (void)deleteTurnActivated;
- (void)setButtonInteractionDetected:(id)a3;
- (void)setTurnActivated:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ACTVSchemaACTVClientEvent

- (ACTVSchemaACTVButtonInteractionDetected)buttonInteractionDetected
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_buttonInteractionDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)qualifiedMessageName
{
  v2 = [(ACTVSchemaACTVClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.activation.ACTVClientEvent";
  if (v2 == 102)
  {
    v3 = @"com.apple.aiml.siri.activation.ACTVClientEvent.ACTVTurnActivated";
  }

  if (v2 == 101)
  {
    return @"com.apple.aiml.siri.activation.ACTVClientEvent.ACTVButtonInteractionDetected";
  }

  else
  {
    return v3;
  }
}

- (ACTVSchemaACTVTurnActivated)turnActivated
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_turnActivated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ACTVSchemaACTVClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ACTVSchemaACTVClientEvent;
  v5 = [(ACTVSchemaACTVClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ACTVSchemaACTVClientEventMetadata alloc] initWithDictionary:v6];
      [(ACTVSchemaACTVClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"buttonInteractionDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ACTVSchemaACTVButtonInteractionDetected alloc] initWithDictionary:v8];
      [(ACTVSchemaACTVClientEvent *)v5 setButtonInteractionDetected:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"turnActivated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ACTVSchemaACTVTurnActivated alloc] initWithDictionary:v10];
      [(ACTVSchemaACTVClientEvent *)v5 setTurnActivated:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ACTVSchemaACTVClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ACTVSchemaACTVClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ACTVSchemaACTVClientEvent *)self dictionaryRepresentation];
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
  if (self->_buttonInteractionDetected)
  {
    v4 = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"buttonInteractionDetected"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"buttonInteractionDetected"];
    }
  }

  if (self->_eventMetadata)
  {
    v7 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
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

  if (self->_turnActivated)
  {
    v10 = [(ACTVSchemaACTVClientEvent *)self turnActivated];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"turnActivated"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"turnActivated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ACTVSchemaACTVClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ACTVSchemaACTVButtonInteractionDetected *)self->_buttonInteractionDetected hash]^ v3;
  return v4 ^ [(ACTVSchemaACTVTurnActivated *)self->_turnActivated hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_18;
  }

  v6 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
  v7 = [v4 buttonInteractionDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
  if (v13)
  {
    v14 = v13;
    v15 = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
    v16 = [v4 buttonInteractionDetected];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(ACTVSchemaACTVClientEvent *)self turnActivated];
  v7 = [v4 turnActivated];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(ACTVSchemaACTVClientEvent *)self turnActivated];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(ACTVSchemaACTVClientEvent *)self turnActivated];
    v21 = [v4 turnActivated];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];

  if (v6)
  {
    v7 = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ACTVSchemaACTVClientEvent *)self turnActivated];

  v9 = v11;
  if (v8)
  {
    v10 = [(ACTVSchemaACTVClientEvent *)self turnActivated];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteTurnActivated
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_turnActivated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTurnActivated:(id)a3
{
  v4 = a3;
  buttonInteractionDetected = self->_buttonInteractionDetected;
  self->_buttonInteractionDetected = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  turnActivated = self->_turnActivated;
  self->_turnActivated = v4;
}

- (void)deleteButtonInteractionDetected
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_buttonInteractionDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setButtonInteractionDetected:(id)a3
{
  v4 = a3;
  turnActivated = self->_turnActivated;
  self->_turnActivated = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  buttonInteractionDetected = self->_buttonInteractionDetected;
  self->_buttonInteractionDetected = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ACTVSchemaACTVClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ACTVSchemaACTVClientEvent *)self deleteEventMetadata];
  }

  v9 = [(ACTVSchemaACTVClientEvent *)self buttonInteractionDetected];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ACTVSchemaACTVClientEvent *)self deleteButtonInteractionDetected];
  }

  v12 = [(ACTVSchemaACTVClientEvent *)self turnActivated];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ACTVSchemaACTVClientEvent *)self deleteTurnActivated];
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
  v2 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
  v3 = [v2 activationEventId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 34;
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
  v2 = [(ACTVSchemaACTVClientEvent *)self eventMetadata];
  v3 = [v2 activationEventId];

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
  v3 = [(ACTVSchemaACTVClientEvent *)self whichEvent_Type];
  if (v3 == 101)
  {
    v4 = &OBJC_IVAR___ACTVSchemaACTVClientEvent__buttonInteractionDetected;
    goto LABEL_5;
  }

  if (v3 == 102)
  {
    v4 = &OBJC_IVAR___ACTVSchemaACTVClientEvent__turnActivated;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  v3 = @"turnActivated";
  if (a3 != 102)
  {
    v3 = 0;
  }

  if (a3 == 101)
  {
    return @"buttonInteractionDetected";
  }

  else
  {
    return v3;
  }
}

@end