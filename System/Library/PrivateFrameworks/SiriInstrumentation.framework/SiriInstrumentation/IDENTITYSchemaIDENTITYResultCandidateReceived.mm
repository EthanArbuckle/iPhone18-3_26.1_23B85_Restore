@interface IDENTITYSchemaIDENTITYResultCandidateReceived
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYResultCandidateReceived)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYResultCandidateReceived)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYResultCandidateReceived

- (IDENTITYSchemaIDENTITYResultCandidateReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IDENTITYSchemaIDENTITYResultCandidateReceived;
  v5 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IDENTITYSchemaIDENTITYResultCandidateReceived *)v5 setResultCandidateId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYResultCandidateReceived setIsSelected:](v5, "setIsSelected:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"identityScoreCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IDENTITYSchemaIDENTITYIDScoreCard alloc] initWithDictionary:v9];
      [(IDENTITYSchemaIDENTITYResultCandidateReceived *)v5 setIdentityScoreCard:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYResultCandidateReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self dictionaryRepresentation];
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
    identityScoreCard = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];
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

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDENTITYSchemaIDENTITYResultCandidateReceived isSelected](self, "isSelected")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isSelected"];
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self resultCandidateId];
    v9 = [resultCandidateId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_resultCandidateId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isSelected;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(IDENTITYSchemaIDENTITYIDScoreCard *)self->_identityScoreCard hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  resultCandidateId = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self resultCandidateId];
  resultCandidateId2 = [equalCopy resultCandidateId];
  if ((resultCandidateId != 0) == (resultCandidateId2 == 0))
  {
    goto LABEL_14;
  }

  resultCandidateId3 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self resultCandidateId];
  if (resultCandidateId3)
  {
    v8 = resultCandidateId3;
    resultCandidateId4 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self resultCandidateId];
    resultCandidateId5 = [equalCopy resultCandidateId];
    v11 = [resultCandidateId4 isEqual:resultCandidateId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isSelected = self->_isSelected;
    if (isSelected != [equalCopy isSelected])
    {
      goto LABEL_15;
    }
  }

  resultCandidateId = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];
  resultCandidateId2 = [equalCopy identityScoreCard];
  if ((resultCandidateId != 0) != (resultCandidateId2 == 0))
  {
    identityScoreCard = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];
    if (!identityScoreCard)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = identityScoreCard;
    identityScoreCard2 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];
    identityScoreCard3 = [equalCopy identityScoreCard];
    v17 = [identityScoreCard2 isEqual:identityScoreCard3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  resultCandidateId = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  identityScoreCard = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];

  v6 = toCopy;
  if (identityScoreCard)
  {
    identityScoreCard2 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IDENTITYSchemaIDENTITYResultCandidateReceived;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self deleteIdentityScoreCard];
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