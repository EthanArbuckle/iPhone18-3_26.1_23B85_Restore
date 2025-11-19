@interface GRRSchemaGRRFeatureFlag
- (BOOL)isEqual:(id)a3;
- (GRRSchemaGRRFeatureFlag)initWithDictionary:(id)a3;
- (GRRSchemaGRRFeatureFlag)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation GRRSchemaGRRFeatureFlag

- (GRRSchemaGRRFeatureFlag)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GRRSchemaGRRFeatureFlag;
  v5 = [(GRRSchemaGRRFeatureFlag *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"featureFlagKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(GRRSchemaGRRFeatureFlag *)v5 setFeatureFlagKey:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeatureFlag setIsEnabled:](v5, "setIsEnabled:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (GRRSchemaGRRFeatureFlag)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRRSchemaGRRFeatureFlag *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRRSchemaGRRFeatureFlag *)self dictionaryRepresentation];
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
  if (self->_featureFlagKey)
  {
    v4 = [(GRRSchemaGRRFeatureFlag *)self featureFlagKey];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"featureFlagKey"];
  }

  if (*(&self->_isEnabled + 1))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeatureFlag isEnabled](self, "isEnabled")}];
    [v3 setObject:v6 forKeyedSubscript:@"isEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_featureFlagKey hash];
  if (*(&self->_isEnabled + 1))
  {
    v4 = 2654435761 * self->_isEnabled;
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

  v5 = [(GRRSchemaGRRFeatureFlag *)self featureFlagKey];
  v6 = [v4 featureFlagKey];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(GRRSchemaGRRFeatureFlag *)self featureFlagKey];
  if (v8)
  {
    v9 = v8;
    v10 = [(GRRSchemaGRRFeatureFlag *)self featureFlagKey];
    v11 = [v4 featureFlagKey];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isEnabled + 1) != (v4[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_isEnabled + 1))
  {
    isEnabled = self->_isEnabled;
    if (isEnabled != [v4 isEnabled])
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
  v5 = a3;
  v4 = [(GRRSchemaGRRFeatureFlag *)self featureFlagKey];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_isEnabled + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end