@interface GRRSchemaGRRFeatureFlag
- (BOOL)isEqual:(id)equal;
- (GRRSchemaGRRFeatureFlag)initWithDictionary:(id)dictionary;
- (GRRSchemaGRRFeatureFlag)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation GRRSchemaGRRFeatureFlag

- (GRRSchemaGRRFeatureFlag)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = GRRSchemaGRRFeatureFlag;
  v5 = [(GRRSchemaGRRFeatureFlag *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"featureFlagKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(GRRSchemaGRRFeatureFlag *)v5 setFeatureFlagKey:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeatureFlag setIsEnabled:](v5, "setIsEnabled:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (GRRSchemaGRRFeatureFlag)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRRSchemaGRRFeatureFlag *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRRSchemaGRRFeatureFlag *)self dictionaryRepresentation];
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
  if (self->_featureFlagKey)
  {
    featureFlagKey = [(GRRSchemaGRRFeatureFlag *)self featureFlagKey];
    v5 = [featureFlagKey copy];
    [dictionary setObject:v5 forKeyedSubscript:@"featureFlagKey"];
  }

  if (*(&self->_isEnabled + 1))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeatureFlag isEnabled](self, "isEnabled")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  featureFlagKey = [(GRRSchemaGRRFeatureFlag *)self featureFlagKey];
  featureFlagKey2 = [equalCopy featureFlagKey];
  v7 = featureFlagKey2;
  if ((featureFlagKey != 0) == (featureFlagKey2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  featureFlagKey3 = [(GRRSchemaGRRFeatureFlag *)self featureFlagKey];
  if (featureFlagKey3)
  {
    v9 = featureFlagKey3;
    featureFlagKey4 = [(GRRSchemaGRRFeatureFlag *)self featureFlagKey];
    featureFlagKey5 = [equalCopy featureFlagKey];
    v12 = [featureFlagKey4 isEqual:featureFlagKey5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isEnabled + 1) != (equalCopy[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_isEnabled + 1))
  {
    isEnabled = self->_isEnabled;
    if (isEnabled != [equalCopy isEnabled])
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
  featureFlagKey = [(GRRSchemaGRRFeatureFlag *)self featureFlagKey];

  if (featureFlagKey)
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