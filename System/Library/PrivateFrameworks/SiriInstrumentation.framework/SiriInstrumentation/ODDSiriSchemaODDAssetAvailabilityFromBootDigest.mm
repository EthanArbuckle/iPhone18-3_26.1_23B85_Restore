@interface ODDSiriSchemaODDAssetAvailabilityFromBootDigest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssetAvailabilityFromBootDigest)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssetAvailabilityFromBootDigest)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssetAvailabilityFromBootDigest

- (ODDSiriSchemaODDAssetAvailabilityFromBootDigest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDAssetAvailabilityFromBootDigest;
  v5 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssetAvailabilityFromBootDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)v5 setDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"tuples"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAssetAvailabilityFromBootTuples alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)v5 setTuples:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssetAvailabilityFromBootDigest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self dictionaryRepresentation];
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
    dimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self dimensions];
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

  if (self->_tuples)
  {
    tuples = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self tuples];
    dictionaryRepresentation2 = [tuples dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"tuples"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"tuples"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  dimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self dimensions];
  dimensions2 = [equalCopy dimensions];
  if ((dimensions != 0) == (dimensions2 == 0))
  {
    goto LABEL_11;
  }

  dimensions3 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self dimensions];
  if (dimensions3)
  {
    v8 = dimensions3;
    dimensions4 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self dimensions];
    dimensions5 = [equalCopy dimensions];
    v11 = [dimensions4 isEqual:dimensions5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  dimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self tuples];
  dimensions2 = [equalCopy tuples];
  if ((dimensions != 0) != (dimensions2 == 0))
  {
    tuples = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self tuples];
    if (!tuples)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = tuples;
    tuples2 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self tuples];
    tuples3 = [equalCopy tuples];
    v16 = [tuples2 isEqual:tuples3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self dimensions];

  if (dimensions)
  {
    dimensions2 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  tuples = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self tuples];

  if (tuples)
  {
    tuples2 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self tuples];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDAssetAvailabilityFromBootDigest;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  dimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self dimensions];
  v7 = [dimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self deleteDimensions];
  }

  tuples = [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self tuples];
  v10 = [tuples applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDAssetAvailabilityFromBootDigest *)self deleteTuples];
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