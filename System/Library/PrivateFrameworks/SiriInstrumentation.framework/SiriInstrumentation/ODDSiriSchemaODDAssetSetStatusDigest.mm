@interface ODDSiriSchemaODDAssetSetStatusDigest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssetSetStatusDigest)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssetSetStatusDigest)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssetSetStatusDigest

- (ODDSiriSchemaODDAssetSetStatusDigest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ODDSiriSchemaODDAssetSetStatusDigest;
  v5 = [(ODDSiriSchemaODDAssetSetStatusDigest *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssetSetStatusDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssetSetStatusDigest *)v5 setDimensions:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssetSetStatusDigest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssetSetStatusDigest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssetSetStatusDigest *)self dictionaryRepresentation];
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
  if (self->_dimensions)
  {
    dimensions = [(ODDSiriSchemaODDAssetSetStatusDigest *)self dimensions];
    dictionaryRepresentation = [dimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dimensions"];
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
    dimensions = [(ODDSiriSchemaODDAssetSetStatusDigest *)self dimensions];
    dimensions2 = [equalCopy dimensions];
    v7 = dimensions2;
    if ((dimensions != 0) != (dimensions2 == 0))
    {
      dimensions3 = [(ODDSiriSchemaODDAssetSetStatusDigest *)self dimensions];
      if (!dimensions3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = dimensions3;
      dimensions4 = [(ODDSiriSchemaODDAssetSetStatusDigest *)self dimensions];
      dimensions5 = [equalCopy dimensions];
      v12 = [dimensions4 isEqual:dimensions5];

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
  dimensions = [(ODDSiriSchemaODDAssetSetStatusDigest *)self dimensions];

  if (dimensions)
  {
    dimensions2 = [(ODDSiriSchemaODDAssetSetStatusDigest *)self dimensions];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDAssetSetStatusDigest;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDAssetSetStatusDigest *)self dimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDAssetSetStatusDigest *)self deleteDimensions];
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