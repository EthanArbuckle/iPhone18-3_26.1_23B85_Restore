@interface NLGSchemaNLGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NLGSchemaNLGClientEvent)initWithDictionary:(id)dictionary;
- (NLGSchemaNLGClientEvent)initWithJSON:(id)n;
- (NLGSchemaNLGScoredDialogSelected)scoredDialogSelected;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteScoredDialogSelected;
- (void)setScoredDialogSelected:(id)selected;
- (void)writeTo:(id)to;
@end

@implementation NLGSchemaNLGClientEvent

- (NLGSchemaNLGClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLGSchemaNLGClientEvent;
  v5 = [(NLGSchemaNLGClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLGSchemaNLGClientEventMetadata alloc] initWithDictionary:v6];
      [(NLGSchemaNLGClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"scoredDialogSelected"];
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

- (NLGSchemaNLGClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLGSchemaNLGClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLGSchemaNLGClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(NLGSchemaNLGClientEvent *)self eventMetadata];
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

  if (self->_scoredDialogSelected)
  {
    scoredDialogSelected = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
    dictionaryRepresentation2 = [scoredDialogSelected dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"scoredDialogSelected"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"scoredDialogSelected"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_13;
  }

  eventMetadata = [(NLGSchemaNLGClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  eventMetadata = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
  eventMetadata2 = [equalCopy scoredDialogSelected];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    scoredDialogSelected = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
    if (!scoredDialogSelected)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = scoredDialogSelected;
    scoredDialogSelected2 = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
    scoredDialogSelected3 = [equalCopy scoredDialogSelected];
    v17 = [scoredDialogSelected2 isEqual:scoredDialogSelected3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(NLGSchemaNLGClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(NLGSchemaNLGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  scoredDialogSelected = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];

  if (scoredDialogSelected)
  {
    scoredDialogSelected2 = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
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

- (void)setScoredDialogSelected:(id)selected
{
  v3 = 101;
  if (!selected)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_scoredDialogSelected, selected);
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

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = NLGSchemaNLGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(NLGSchemaNLGClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLGSchemaNLGClientEvent *)self deleteEventMetadata];
  }

  scoredDialogSelected = [(NLGSchemaNLGClientEvent *)self scoredDialogSelected];
  v10 = [scoredDialogSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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
  eventMetadata = [(NLGSchemaNLGClientEvent *)self eventMetadata];
  nlgId = [eventMetadata nlgId];

  if (nlgId)
  {
    value = [nlgId value];
    if (value)
    {
      value2 = [nlgId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 36;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(NLGSchemaNLGClientEvent *)self eventMetadata];
  nlgId = [eventMetadata nlgId];

  if (!nlgId)
  {
    goto LABEL_5;
  }

  value = [nlgId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [nlgId value];
  v6 = [value2 length];

  if (v6)
  {
    value = nlgId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
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

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag == 101)
  {
    return @"scoredDialogSelected";
  }

  else
  {
    return 0;
  }
}

@end