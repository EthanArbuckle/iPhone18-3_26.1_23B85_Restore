@interface IDENTITYSchemaIDENTITYScoreCardsGenerated
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYScoreCardsGenerated)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYScoreCardsGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYScoreCardsGenerated

- (IDENTITYSchemaIDENTITYScoreCardsGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IDENTITYSchemaIDENTITYScoreCardsGenerated;
  v5 = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceScoreCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IDENTITYSchemaIDENTITYVoiceScoreCard alloc] initWithDictionary:v6];
      [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)v5 setVoiceScoreCard:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"identityScoreCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IDENTITYSchemaIDENTITYIDScoreCard alloc] initWithDictionary:v8];
      [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)v5 setIdentityScoreCard:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYScoreCardsGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self dictionaryRepresentation];
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
  if (self->_identityScoreCard)
  {
    identityScoreCard = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self identityScoreCard];
    dictionaryRepresentation = [identityScoreCard dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"identityScoreCard"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"identityScoreCard"];
    }
  }

  if (self->_voiceScoreCard)
  {
    voiceScoreCard = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self voiceScoreCard];
    dictionaryRepresentation2 = [voiceScoreCard dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"voiceScoreCard"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"voiceScoreCard"];
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
    goto LABEL_12;
  }

  voiceScoreCard = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self voiceScoreCard];
  voiceScoreCard2 = [equalCopy voiceScoreCard];
  if ((voiceScoreCard != 0) == (voiceScoreCard2 == 0))
  {
    goto LABEL_11;
  }

  voiceScoreCard3 = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self voiceScoreCard];
  if (voiceScoreCard3)
  {
    v8 = voiceScoreCard3;
    voiceScoreCard4 = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self voiceScoreCard];
    voiceScoreCard5 = [equalCopy voiceScoreCard];
    v11 = [voiceScoreCard4 isEqual:voiceScoreCard5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  voiceScoreCard = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self identityScoreCard];
  voiceScoreCard2 = [equalCopy identityScoreCard];
  if ((voiceScoreCard != 0) != (voiceScoreCard2 == 0))
  {
    identityScoreCard = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self identityScoreCard];
    if (!identityScoreCard)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = identityScoreCard;
    identityScoreCard2 = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self identityScoreCard];
    identityScoreCard3 = [equalCopy identityScoreCard];
    v16 = [identityScoreCard2 isEqual:identityScoreCard3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceScoreCard = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self voiceScoreCard];

  if (voiceScoreCard)
  {
    voiceScoreCard2 = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self voiceScoreCard];
    PBDataWriterWriteSubmessage();
  }

  identityScoreCard = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self identityScoreCard];

  if (identityScoreCard)
  {
    identityScoreCard2 = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self identityScoreCard];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IDENTITYSchemaIDENTITYScoreCardsGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  voiceScoreCard = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self voiceScoreCard];
  v7 = [voiceScoreCard applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self deleteVoiceScoreCard];
  }

  identityScoreCard = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self identityScoreCard];
  v10 = [identityScoreCard applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self deleteIdentityScoreCard];
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