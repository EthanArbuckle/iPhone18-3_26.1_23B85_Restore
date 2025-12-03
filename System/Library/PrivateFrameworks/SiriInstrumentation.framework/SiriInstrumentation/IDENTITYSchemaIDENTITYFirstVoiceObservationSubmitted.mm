@interface IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted

- (IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted;
  v5 = [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceScoreCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IDENTITYSchemaIDENTITYVoiceScoreCard alloc] initWithDictionary:v6];
      [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)v5 setVoiceScoreCard:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self dictionaryRepresentation];
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
  if (self->_voiceScoreCard)
  {
    voiceScoreCard = [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self voiceScoreCard];
    dictionaryRepresentation = [voiceScoreCard dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"voiceScoreCard"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"voiceScoreCard"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    voiceScoreCard = [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self voiceScoreCard];
    voiceScoreCard2 = [equalCopy voiceScoreCard];
    v7 = voiceScoreCard2;
    if ((voiceScoreCard != 0) != (voiceScoreCard2 == 0))
    {
      voiceScoreCard3 = [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self voiceScoreCard];
      if (!voiceScoreCard3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = voiceScoreCard3;
      voiceScoreCard4 = [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self voiceScoreCard];
      voiceScoreCard5 = [equalCopy voiceScoreCard];
      v12 = [voiceScoreCard4 isEqual:voiceScoreCard5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceScoreCard = [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self voiceScoreCard];

  if (voiceScoreCard)
  {
    voiceScoreCard2 = [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self voiceScoreCard];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self voiceScoreCard:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self deleteVoiceScoreCard];
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