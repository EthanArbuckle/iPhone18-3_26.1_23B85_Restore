@interface IDENTITYSchemaIDENTITYFirstIdentityReceived
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYFirstIdentityReceived)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYFirstIdentityReceived)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYFirstIdentityReceived

- (IDENTITYSchemaIDENTITYFirstIdentityReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IDENTITYSchemaIDENTITYFirstIdentityReceived;
  v5 = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identityScoreCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IDENTITYSchemaIDENTITYIDScoreCard alloc] initWithDictionary:v6];
      [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)v5 setIdentityScoreCard:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYFirstIdentityReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self dictionaryRepresentation];
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
    identityScoreCard = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self identityScoreCard];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    identityScoreCard = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self identityScoreCard];
    identityScoreCard2 = [equalCopy identityScoreCard];
    v7 = identityScoreCard2;
    if ((identityScoreCard != 0) != (identityScoreCard2 == 0))
    {
      identityScoreCard3 = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self identityScoreCard];
      if (!identityScoreCard3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = identityScoreCard3;
      identityScoreCard4 = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self identityScoreCard];
      identityScoreCard5 = [equalCopy identityScoreCard];
      v12 = [identityScoreCard4 isEqual:identityScoreCard5];

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
  identityScoreCard = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self identityScoreCard];

  if (identityScoreCard)
  {
    identityScoreCard2 = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self identityScoreCard];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IDENTITYSchemaIDENTITYFirstIdentityReceived;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self identityScoreCard:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self deleteIdentityScoreCard];
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