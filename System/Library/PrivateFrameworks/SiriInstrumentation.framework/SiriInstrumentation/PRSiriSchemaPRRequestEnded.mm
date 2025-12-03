@interface PRSiriSchemaPRRequestEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PRSiriSchemaPRRequestEnded)initWithDictionary:(id)dictionary;
- (PRSiriSchemaPRRequestEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PRSiriSchemaPRRequestEnded

- (PRSiriSchemaPRRequestEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PRSiriSchemaPRRequestEnded;
  v5 = [(PRSiriSchemaPRRequestEnded *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"transcriptEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PRSiriSchemaPRRequestEnded *)v5 setTranscriptEventId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"eventName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRRequestEnded setEventName:](v5, "setEventName:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PRSiriSchemaPRRequestEnded *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(PRSiriSchemaPRRequestEnded *)self eventName]- 1;
    if (v4 > 7)
    {
      v5 = @"TRANSCRIPTEVENTTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E1060[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"eventName"];
  }

  if (self->_transcriptEventId)
  {
    transcriptEventId = [(PRSiriSchemaPRRequestEnded *)self transcriptEventId];
    dictionaryRepresentation = [transcriptEventId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"transcriptEventId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"transcriptEventId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_transcriptEventId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_eventName;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  transcriptEventId = [(PRSiriSchemaPRRequestEnded *)self transcriptEventId];
  transcriptEventId2 = [equalCopy transcriptEventId];
  v7 = transcriptEventId2;
  if ((transcriptEventId != 0) == (transcriptEventId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  transcriptEventId3 = [(PRSiriSchemaPRRequestEnded *)self transcriptEventId];
  if (transcriptEventId3)
  {
    v9 = transcriptEventId3;
    transcriptEventId4 = [(PRSiriSchemaPRRequestEnded *)self transcriptEventId];
    transcriptEventId5 = [equalCopy transcriptEventId];
    v12 = [transcriptEventId4 isEqual:transcriptEventId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    eventName = self->_eventName;
    if (eventName != [equalCopy eventName])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  transcriptEventId = [(PRSiriSchemaPRRequestEnded *)self transcriptEventId];

  if (transcriptEventId)
  {
    transcriptEventId2 = [(PRSiriSchemaPRRequestEnded *)self transcriptEventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PRSiriSchemaPRRequestEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PRSiriSchemaPRRequestEnded *)self transcriptEventId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PRSiriSchemaPRRequestEnded *)self deleteTranscriptEventId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end