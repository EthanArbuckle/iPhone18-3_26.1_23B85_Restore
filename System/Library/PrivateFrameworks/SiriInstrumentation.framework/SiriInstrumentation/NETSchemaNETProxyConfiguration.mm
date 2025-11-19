@interface NETSchemaNETProxyConfiguration
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETProxyConfiguration)initWithDictionary:(id)a3;
- (NETSchemaNETProxyConfiguration)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUsingConfiguredProxy:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETProxyConfiguration

- (NETSchemaNETProxyConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NETSchemaNETProxyConfiguration;
  v5 = [(NETSchemaNETProxyConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isProxyConfigured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETProxyConfiguration setIsProxyConfigured:](v5, "setIsProxyConfigured:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"usingConfiguredProxy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETProxyConfiguration setUsingConfiguredProxy:](v5, "setUsingConfiguredProxy:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (NETSchemaNETProxyConfiguration)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETProxyConfiguration *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETProxyConfiguration *)self dictionaryRepresentation];
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
  v4 = *(&self->_usingConfiguredProxy + 1);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETProxyConfiguration isProxyConfigured](self, "isProxyConfigured")}];
    [v3 setObject:v5 forKeyedSubscript:@"isProxyConfigured"];

    v4 = *(&self->_usingConfiguredProxy + 1);
  }

  if ((v4 & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETProxyConfiguration usingConfiguredProxy](self, "usingConfiguredProxy")}];
    [v3 setObject:v6 forKeyedSubscript:@"usingConfiguredProxy"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_usingConfiguredProxy + 1))
  {
    v2 = 2654435761 * self->_isProxyConfigured;
    if ((*(&self->_usingConfiguredProxy + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_usingConfiguredProxy + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_usingConfiguredProxy;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_usingConfiguredProxy + 1);
  v6 = v4[10];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    isProxyConfigured = self->_isProxyConfigured;
    if (isProxyConfigured != [v4 isProxyConfigured])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_usingConfiguredProxy + 1);
    v6 = v4[10];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    usingConfiguredProxy = self->_usingConfiguredProxy;
    if (usingConfiguredProxy != [v4 usingConfiguredProxy])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = *(&self->_usingConfiguredProxy + 1);
  v6 = v4;
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    v5 = *(&self->_usingConfiguredProxy + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)setHasUsingConfiguredProxy:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_usingConfiguredProxy + 1) = *(&self->_usingConfiguredProxy + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end