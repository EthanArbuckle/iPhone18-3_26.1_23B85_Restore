@interface ODMSiriSchemaODMSiriCountsAll
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriCountsAll)initWithDictionary:(id)dictionary;
- (ODMSiriSchemaODMSiriCountsAll)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODMSiriSchemaODMSiriCountsAll

- (ODMSiriSchemaODMSiriCountsAll)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODMSiriSchemaODMSiriCountsAll;
  v5 = [(ODMSiriSchemaODMSiriCountsAll *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODMSiriSchemaODMDynamicDimensionsAll alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriCountsAll *)v5 setDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODMSiriSchemaODMSiriRequestCounts alloc] initWithDictionary:v8];
      [(ODMSiriSchemaODMSiriCountsAll *)v5 setRequestCounts:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMSiriCountsAll)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriCountsAll *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODMSiriSchemaODMSiriCountsAll *)self dictionaryRepresentation];
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
    dimensions = [(ODMSiriSchemaODMSiriCountsAll *)self dimensions];
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

  if (self->_requestCounts)
  {
    requestCounts = [(ODMSiriSchemaODMSiriCountsAll *)self requestCounts];
    dictionaryRepresentation2 = [requestCounts dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"requestCounts"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"requestCounts"];
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

  dimensions = [(ODMSiriSchemaODMSiriCountsAll *)self dimensions];
  dimensions2 = [equalCopy dimensions];
  if ((dimensions != 0) == (dimensions2 == 0))
  {
    goto LABEL_11;
  }

  dimensions3 = [(ODMSiriSchemaODMSiriCountsAll *)self dimensions];
  if (dimensions3)
  {
    v8 = dimensions3;
    dimensions4 = [(ODMSiriSchemaODMSiriCountsAll *)self dimensions];
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

  dimensions = [(ODMSiriSchemaODMSiriCountsAll *)self requestCounts];
  dimensions2 = [equalCopy requestCounts];
  if ((dimensions != 0) != (dimensions2 == 0))
  {
    requestCounts = [(ODMSiriSchemaODMSiriCountsAll *)self requestCounts];
    if (!requestCounts)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = requestCounts;
    requestCounts2 = [(ODMSiriSchemaODMSiriCountsAll *)self requestCounts];
    requestCounts3 = [equalCopy requestCounts];
    v16 = [requestCounts2 isEqual:requestCounts3];

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
  dimensions = [(ODMSiriSchemaODMSiriCountsAll *)self dimensions];

  if (dimensions)
  {
    dimensions2 = [(ODMSiriSchemaODMSiriCountsAll *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  requestCounts = [(ODMSiriSchemaODMSiriCountsAll *)self requestCounts];

  if (requestCounts)
  {
    requestCounts2 = [(ODMSiriSchemaODMSiriCountsAll *)self requestCounts];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODMSiriSchemaODMSiriCountsAll;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  dimensions = [(ODMSiriSchemaODMSiriCountsAll *)self dimensions];
  v7 = [dimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODMSiriSchemaODMSiriCountsAll *)self deleteDimensions];
  }

  requestCounts = [(ODMSiriSchemaODMSiriCountsAll *)self requestCounts];
  v10 = [requestCounts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODMSiriSchemaODMSiriCountsAll *)self deleteRequestCounts];
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