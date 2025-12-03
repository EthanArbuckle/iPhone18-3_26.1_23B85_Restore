@interface ODDSiriSchemaODDHomePodProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDHomePodProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDHomePodProperties)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDHomePodProperties

- (ODDSiriSchemaODDHomePodProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDHomePodProperties;
  v5 = [(ODDSiriSchemaODDHomePodProperties *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"adaptiveVolume"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAdaptiveVolumeProperties alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDHomePodProperties *)v5 setAdaptiveVolume:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isPersonalDomainsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDHomePodProperties setIsPersonalDomainsEnabled:](v5, "setIsPersonalDomainsEnabled:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDHomePodProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDHomePodProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDHomePodProperties *)self dictionaryRepresentation];
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
  if (self->_adaptiveVolume)
  {
    adaptiveVolume = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];
    dictionaryRepresentation = [adaptiveVolume dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"adaptiveVolume"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"adaptiveVolume"];
    }
  }

  if (*(&self->_isPersonalDomainsEnabled + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDHomePodProperties isPersonalDomainsEnabled](self, "isPersonalDomainsEnabled")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isPersonalDomainsEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDAdaptiveVolumeProperties *)self->_adaptiveVolume hash];
  if (*(&self->_isPersonalDomainsEnabled + 1))
  {
    v4 = 2654435761 * self->_isPersonalDomainsEnabled;
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

  adaptiveVolume = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];
  adaptiveVolume2 = [equalCopy adaptiveVolume];
  v7 = adaptiveVolume2;
  if ((adaptiveVolume != 0) == (adaptiveVolume2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  adaptiveVolume3 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];
  if (adaptiveVolume3)
  {
    v9 = adaptiveVolume3;
    adaptiveVolume4 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];
    adaptiveVolume5 = [equalCopy adaptiveVolume];
    v12 = [adaptiveVolume4 isEqual:adaptiveVolume5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isPersonalDomainsEnabled + 1) != (equalCopy[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_isPersonalDomainsEnabled + 1))
  {
    isPersonalDomainsEnabled = self->_isPersonalDomainsEnabled;
    if (isPersonalDomainsEnabled != [equalCopy isPersonalDomainsEnabled])
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
  adaptiveVolume = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];

  if (adaptiveVolume)
  {
    adaptiveVolume2 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isPersonalDomainsEnabled + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDHomePodProperties;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDHomePodProperties *)self deleteAdaptiveVolume];
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