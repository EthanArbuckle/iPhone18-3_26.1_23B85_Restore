@interface IASchemaIAClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (IASchemaIAClientEvent)initWithDictionary:(id)dictionary;
- (IASchemaIAClientEvent)initWithJSON:(id)n;
- (IASchemaIASiriMissEvaluationContext)siriMissEvaluationContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteSiriMissEvaluationContext;
- (void)writeTo:(id)to;
@end

@implementation IASchemaIAClientEvent

- (IASchemaIAClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IASchemaIAClientEvent;
  v5 = [(IASchemaIAClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IASchemaIAClientEventMetadata alloc] initWithDictionary:v6];
      [(IASchemaIAClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriMissEvaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IASchemaIASiriMissEvaluationContext alloc] initWithDictionary:v8];
      [(IASchemaIAClientEvent *)v5 setSiriMissEvaluationContext:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IASchemaIAClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IASchemaIAClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IASchemaIAClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(IASchemaIAClientEvent *)self eventMetadata];
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

  if (self->_siriMissEvaluationContext)
  {
    siriMissEvaluationContext = [(IASchemaIAClientEvent *)self siriMissEvaluationContext];
    dictionaryRepresentation2 = [siriMissEvaluationContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"siriMissEvaluationContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"siriMissEvaluationContext"];
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

  eventMetadata = [(IASchemaIAClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(IASchemaIAClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(IASchemaIAClientEvent *)self eventMetadata];
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

  eventMetadata = [(IASchemaIAClientEvent *)self siriMissEvaluationContext];
  eventMetadata2 = [equalCopy siriMissEvaluationContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    siriMissEvaluationContext = [(IASchemaIAClientEvent *)self siriMissEvaluationContext];
    if (!siriMissEvaluationContext)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = siriMissEvaluationContext;
    siriMissEvaluationContext2 = [(IASchemaIAClientEvent *)self siriMissEvaluationContext];
    siriMissEvaluationContext3 = [equalCopy siriMissEvaluationContext];
    v17 = [siriMissEvaluationContext2 isEqual:siriMissEvaluationContext3];

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
  eventMetadata = [(IASchemaIAClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(IASchemaIAClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  siriMissEvaluationContext = [(IASchemaIAClientEvent *)self siriMissEvaluationContext];

  if (siriMissEvaluationContext)
  {
    siriMissEvaluationContext2 = [(IASchemaIAClientEvent *)self siriMissEvaluationContext];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteSiriMissEvaluationContext
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_siriMissEvaluationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IASchemaIASiriMissEvaluationContext)siriMissEvaluationContext
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_siriMissEvaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)qualifiedMessageName
{
  if ([(IASchemaIAClientEvent *)self whichEvent_Type]== 2)
  {
    return @"com.apple.aiml.siri.ia.IAClientEvent.IASiriMissEvaluationContext";
  }

  else
  {
    return @"com.apple.aiml.siri.ia.IAClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IASchemaIAClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(IASchemaIAClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IASchemaIAClientEvent *)self deleteEventMetadata];
  }

  siriMissEvaluationContext = [(IASchemaIAClientEvent *)self siriMissEvaluationContext];
  v10 = [siriMissEvaluationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IASchemaIAClientEvent *)self deleteSiriMissEvaluationContext];
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
  eventMetadata = [(IASchemaIAClientEvent *)self eventMetadata];
  iaId = [eventMetadata iaId];

  if (iaId)
  {
    value = [iaId value];
    if (value)
    {
      value2 = [iaId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 35;
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
  eventMetadata = [(IASchemaIAClientEvent *)self eventMetadata];
  iaId = [eventMetadata iaId];

  if (!iaId)
  {
    goto LABEL_5;
  }

  value = [iaId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [iaId value];
  v6 = [value2 length];

  if (v6)
  {
    value = iaId;
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
  if ([(IASchemaIAClientEvent *)self whichEvent_Type]== 2)
  {
    v3 = self->_siriMissEvaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag == 2)
  {
    return @"siriMissEvaluationContext";
  }

  else
  {
    return 0;
  }
}

@end