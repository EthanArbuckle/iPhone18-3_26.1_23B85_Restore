@interface INFERENCESchemaINFERENCEResolverConfig
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEContactResolverConfig)contactConfig;
- (INFERENCESchemaINFERENCEResolverConfig)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEResolverConfig)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteContactConfig;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEResolverConfig

- (INFERENCESchemaINFERENCEResolverConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = INFERENCESchemaINFERENCEResolverConfig;
  v5 = [(INFERENCESchemaINFERENCEResolverConfig *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contactConfig"];
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

- (INFERENCESchemaINFERENCEResolverConfig)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEResolverConfig *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEResolverConfig *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contactConfig)
  {
    v4 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contactConfig"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contactConfig"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichConfigurationtype = self->_whichConfigurationtype;
    if (whichConfigurationtype == [v4 whichConfigurationtype])
    {
      v6 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];
      v7 = [v4 contactConfig];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];
        v12 = [v4 contactConfig];
        v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];

  if (v4)
  {
    v5 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig];
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEResolverConfig;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEResolverConfig *)self contactConfig:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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