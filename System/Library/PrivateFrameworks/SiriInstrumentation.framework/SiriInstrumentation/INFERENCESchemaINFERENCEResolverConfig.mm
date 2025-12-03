@interface INFERENCESchemaINFERENCEResolverConfig
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEContactResolverConfig)contactConfig;
- (INFERENCESchemaINFERENCEResolverConfig)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEResolverConfig)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteContactConfig;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEResolverConfig

- (INFERENCESchemaINFERENCEResolverConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = INFERENCESchemaINFERENCEResolverConfig;
  v5 = [(INFERENCESchemaINFERENCEResolverConfig *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contactConfig"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCEContactResolverConfig alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEResolverConfig *)v5 setContactConfig:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEResolverConfig)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEResolverConfig *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEResolverConfig *)self dictionaryRepresentation];
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
  if (self->_contactConfig)
  {
    contactConfig = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];
    dictionaryRepresentation = [contactConfig dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contactConfig"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contactConfig"];
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
    whichConfigurationtype = self->_whichConfigurationtype;
    if (whichConfigurationtype == [equalCopy whichConfigurationtype])
    {
      contactConfig = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];
      contactConfig2 = [equalCopy contactConfig];
      v8 = contactConfig2;
      if ((contactConfig != 0) != (contactConfig2 == 0))
      {
        contactConfig3 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];
        if (!contactConfig3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = contactConfig3;
        contactConfig4 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];
        contactConfig5 = [equalCopy contactConfig];
        v13 = [contactConfig4 isEqual:contactConfig5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  contactConfig = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];

  if (contactConfig)
  {
    contactConfig2 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteContactConfig
{
  if (self->_whichConfigurationtype == 2)
  {
    self->_whichConfigurationtype = 0;
    self->_contactConfig = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEContactResolverConfig)contactConfig
{
  if (self->_whichConfigurationtype == 2)
  {
    v3 = self->_contactConfig;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEResolverConfig;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(INFERENCESchemaINFERENCEResolverConfig *)self deleteContactConfig];
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