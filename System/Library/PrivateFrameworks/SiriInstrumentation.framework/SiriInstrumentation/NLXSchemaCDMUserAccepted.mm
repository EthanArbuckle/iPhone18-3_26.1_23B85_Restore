@interface NLXSchemaCDMUserAccepted
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMUserAccepted)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMUserAccepted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMUserAccepted

- (NLXSchemaCDMUserAccepted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMUserAccepted;
  v5 = [(NLXSchemaCDMUserAccepted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"offerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMUserAccepted *)v5 setOfferId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaCDMUserAccepted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMUserAccepted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMUserAccepted *)self dictionaryRepresentation];
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
  if (self->_offerId)
  {
    offerId = [(NLXSchemaCDMUserAccepted *)self offerId];
    dictionaryRepresentation = [offerId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"offerId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"offerId"];
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
    offerId = [(NLXSchemaCDMUserAccepted *)self offerId];
    offerId2 = [equalCopy offerId];
    v7 = offerId2;
    if ((offerId != 0) != (offerId2 == 0))
    {
      offerId3 = [(NLXSchemaCDMUserAccepted *)self offerId];
      if (!offerId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = offerId3;
      offerId4 = [(NLXSchemaCDMUserAccepted *)self offerId];
      offerId5 = [equalCopy offerId];
      v12 = [offerId4 isEqual:offerId5];

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
  offerId = [(NLXSchemaCDMUserAccepted *)self offerId];

  if (offerId)
  {
    offerId2 = [(NLXSchemaCDMUserAccepted *)self offerId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaCDMUserAccepted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMUserAccepted *)self offerId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaCDMUserAccepted *)self deleteOfferId];
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