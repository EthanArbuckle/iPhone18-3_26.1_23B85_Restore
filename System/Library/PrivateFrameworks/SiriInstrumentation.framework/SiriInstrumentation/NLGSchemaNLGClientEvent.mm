@interface NLGSchemaNLGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NLGSchemaNLGClientEvent)initWithDictionary:(id)a3;
- (NLGSchemaNLGClientEvent)initWithJSON:(id)a3;
- (NLGSchemaNLGScoredDialogSelected)scoredDialogSelected;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteScoredDialogSelected;
- (void)setScoredDialogSelected:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLGSchemaNLGClientEvent

- (NLGSchemaNLGClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NLGSchemaNLGClientEvent;
  v5 = [(NLGSchemaNLGClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLGSchemaNLGClientEventMetadata alloc] initWithDictionary:v6];
      [(NLGSchemaNLGClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"scoredDialogSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLGSchemaNLGScoredDialogSelected alloc] initWithDictionary:v8];
      [(NLGSchemaNLGClientEvent *)v5 setScoredDialogSelected:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (NLGSchemaNLGClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLGSchemaNLGClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLGSchemaNLGClientEvent *)self dictionaryRepresentation];
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
    v4 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
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

  if (self->_scoredDialogSelected)
  {
    v7 = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"scoredDialogSelected"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"scoredDialogSelected"];
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

  v6 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
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

  v6 = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
  v7 = [v4 scoredDialogSelected];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
    v16 = [v4 scoredDialogSelected];
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
  v4 = [(NLGSchemaNLGClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];

  if (v6)
  {
    v7 = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteScoredDialogSelected
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_scoredDialogSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLGSchemaNLGScoredDialogSelected)scoredDialogSelected
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_scoredDialogSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setScoredDialogSelected:(id)a3
{
  v3 = 101;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_scoredDialogSelected, a3);
}

- (id)qualifiedMessageName
{
  if ([(NLGSchemaNLGClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.nlg.NLGClientEvent.NLGScoredDialogSelected";
  }

  else
  {
    return @"com.apple.aiml.siri.nlg.NLGClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NLGSchemaNLGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLGSchemaNLGClientEvent *)self deleteEventMetadata];
  }

  v9 = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLGSchemaNLGClientEvent *)self deleteScoredDialogSelected];
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
  v2 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
  v3 = [v2 nlgId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 36;
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
  v2 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
  v3 = [v2 nlgId];

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
  if ([(NLGSchemaNLGClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_scoredDialogSelected;
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
    return @"scoredDialogSelected";
  }

  else
  {
    return 0;
  }
}

@end