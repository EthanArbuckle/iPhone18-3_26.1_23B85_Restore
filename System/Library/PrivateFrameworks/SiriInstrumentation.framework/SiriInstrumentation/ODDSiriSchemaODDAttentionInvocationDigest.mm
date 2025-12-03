@interface ODDSiriSchemaODDAttentionInvocationDigest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAttentionInvocationDigest)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAttentionInvocationDigest)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAttentionInvocationDigest

- (ODDSiriSchemaODDAttentionInvocationDigest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDAttentionInvocationDigest;
  v5 = [(ODDSiriSchemaODDAttentionInvocationDigest *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAttentionInvocationDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAttentionInvocationDigest *)v5 setDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"counts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAttentionInvocationCounts alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDAttentionInvocationDigest *)v5 setCounts:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAttentionInvocationDigest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAttentionInvocationDigest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAttentionInvocationDigest *)self dictionaryRepresentation];
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
  if (self->_counts)
  {
    counts = [(ODDSiriSchemaODDAttentionInvocationDigest *)self counts];
    dictionaryRepresentation = [counts dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"counts"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"counts"];
    }
  }

  if (self->_dimensions)
  {
    dimensions = [(ODDSiriSchemaODDAttentionInvocationDigest *)self dimensions];
    dictionaryRepresentation2 = [dimensions dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"dimensions"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"dimensions"];
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

  dimensions = [(ODDSiriSchemaODDAttentionInvocationDigest *)self dimensions];
  dimensions2 = [equalCopy dimensions];
  if ((dimensions != 0) == (dimensions2 == 0))
  {
    goto LABEL_11;
  }

  dimensions3 = [(ODDSiriSchemaODDAttentionInvocationDigest *)self dimensions];
  if (dimensions3)
  {
    v8 = dimensions3;
    dimensions4 = [(ODDSiriSchemaODDAttentionInvocationDigest *)self dimensions];
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

  dimensions = [(ODDSiriSchemaODDAttentionInvocationDigest *)self counts];
  dimensions2 = [equalCopy counts];
  if ((dimensions != 0) != (dimensions2 == 0))
  {
    counts = [(ODDSiriSchemaODDAttentionInvocationDigest *)self counts];
    if (!counts)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = counts;
    counts2 = [(ODDSiriSchemaODDAttentionInvocationDigest *)self counts];
    counts3 = [equalCopy counts];
    v16 = [counts2 isEqual:counts3];

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
  dimensions = [(ODDSiriSchemaODDAttentionInvocationDigest *)self dimensions];

  if (dimensions)
  {
    dimensions2 = [(ODDSiriSchemaODDAttentionInvocationDigest *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  counts = [(ODDSiriSchemaODDAttentionInvocationDigest *)self counts];

  if (counts)
  {
    counts2 = [(ODDSiriSchemaODDAttentionInvocationDigest *)self counts];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDAttentionInvocationDigest;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  dimensions = [(ODDSiriSchemaODDAttentionInvocationDigest *)self dimensions];
  v7 = [dimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDAttentionInvocationDigest *)self deleteDimensions];
  }

  counts = [(ODDSiriSchemaODDAttentionInvocationDigest *)self counts];
  v10 = [counts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDAttentionInvocationDigest *)self deleteCounts];
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