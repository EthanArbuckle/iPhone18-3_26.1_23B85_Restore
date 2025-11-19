@interface SISchemaABServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaABExperimentServerFeatureTriggered)serverFeatureTriggered;
- (SISchemaABServerEvent)initWithDictionary:(id)a3;
- (SISchemaABServerEvent)initWithJSON:(id)a3;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (void)deleteServerFeatureTriggered;
- (void)setServerFeatureTriggered:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaABServerEvent

- (SISchemaABServerEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SISchemaABServerEvent;
  v5 = [(SISchemaABServerEvent *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaABSeverEventMetadata alloc] initWithDictionary:v6];
      [(SISchemaABServerEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"serverFeatureTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaABExperimentServerFeatureTriggered alloc] initWithDictionary:v8];
      [(SISchemaABServerEvent *)v5 setServerFeatureTriggered:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaABServerEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaABServerEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaABServerEvent *)self dictionaryRepresentation];
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
    v4 = [(SISchemaABServerEvent *)self eventMetadata];
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

  if (self->_serverFeatureTriggered)
  {
    v7 = [(SISchemaABServerEvent *)self serverFeatureTriggered];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"serverFeatureTriggered"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"serverFeatureTriggered"];
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

  v6 = [(SISchemaABServerEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(SISchemaABServerEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaABServerEvent *)self eventMetadata];
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

  v6 = [(SISchemaABServerEvent *)self serverFeatureTriggered];
  v7 = [v4 serverFeatureTriggered];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(SISchemaABServerEvent *)self serverFeatureTriggered];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(SISchemaABServerEvent *)self serverFeatureTriggered];
    v16 = [v4 serverFeatureTriggered];
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
  v4 = [(SISchemaABServerEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(SISchemaABServerEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaABServerEvent *)self serverFeatureTriggered];

  if (v6)
  {
    v7 = [(SISchemaABServerEvent *)self serverFeatureTriggered];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteServerFeatureTriggered
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_serverFeatureTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaABExperimentServerFeatureTriggered)serverFeatureTriggered
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_serverFeatureTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setServerFeatureTriggered:(id)a3
{
  v3 = 101;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_serverFeatureTriggered, a3);
}

- (id)qualifiedMessageName
{
  if ([(SISchemaABServerEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.abe.ABServerEvent.ABExperimentServerFeatureTriggered";
  }

  else
  {
    return @"com.apple.aiml.siri.abe.ABServerEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaABServerEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaABServerEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaABServerEvent *)self deleteEventMetadata];
  }

  v9 = [(SISchemaABServerEvent *)self serverFeatureTriggered];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaABServerEvent *)self deleteServerFeatureTriggered];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  if ([(SISchemaABServerEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_serverFeatureTriggered;
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
    return @"serverFeatureTriggered";
  }

  else
  {
    return 0;
  }
}

@end