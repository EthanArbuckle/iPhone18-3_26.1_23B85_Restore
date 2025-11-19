@interface ODDSiriSchemaODDHomePodProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDHomePodProperties)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDHomePodProperties)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDHomePodProperties

- (ODDSiriSchemaODDHomePodProperties)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDHomePodProperties;
  v5 = [(ODDSiriSchemaODDHomePodProperties *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"adaptiveVolume"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAdaptiveVolumeProperties alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDHomePodProperties *)v5 setAdaptiveVolume:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isPersonalDomainsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDHomePodProperties setIsPersonalDomainsEnabled:](v5, "setIsPersonalDomainsEnabled:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDHomePodProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDHomePodProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDHomePodProperties *)self dictionaryRepresentation];
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
  if (self->_adaptiveVolume)
  {
    v4 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"adaptiveVolume"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"adaptiveVolume"];
    }
  }

  if (*(&self->_isPersonalDomainsEnabled + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDHomePodProperties isPersonalDomainsEnabled](self, "isPersonalDomainsEnabled")}];
    [v3 setObject:v7 forKeyedSubscript:@"isPersonalDomainsEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];
  v6 = [v4 adaptiveVolume];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];
    v11 = [v4 adaptiveVolume];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isPersonalDomainsEnabled + 1) != (v4[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_isPersonalDomainsEnabled + 1))
  {
    isPersonalDomainsEnabled = self->_isPersonalDomainsEnabled;
    if (isPersonalDomainsEnabled != [v4 isPersonalDomainsEnabled])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isPersonalDomainsEnabled + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDHomePodProperties;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDHomePodProperties *)self adaptiveVolume:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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