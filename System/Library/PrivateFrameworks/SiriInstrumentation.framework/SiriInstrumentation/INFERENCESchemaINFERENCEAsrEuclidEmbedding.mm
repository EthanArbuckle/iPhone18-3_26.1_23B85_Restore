@interface INFERENCESchemaINFERENCEAsrEuclidEmbedding
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEAsrEuclidEmbedding)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEAsrEuclidEmbedding)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEAsrEuclidEmbedding

- (INFERENCESchemaINFERENCEAsrEuclidEmbedding)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = INFERENCESchemaINFERENCEAsrEuclidEmbedding;
  v5 = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"euclidServiceMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCEEuclidServiceMetrics alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)v5 setEuclidServiceMetrics:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"euclidDebugMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEEuclidDebugMetrics alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)v5 setEuclidDebugMetrics:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEAsrEuclidEmbedding)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self dictionaryRepresentation];
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
  if (self->_euclidDebugMetrics)
  {
    euclidDebugMetrics = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidDebugMetrics];
    dictionaryRepresentation = [euclidDebugMetrics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"euclidDebugMetrics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"euclidDebugMetrics"];
    }
  }

  if (self->_euclidServiceMetrics)
  {
    euclidServiceMetrics = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidServiceMetrics];
    dictionaryRepresentation2 = [euclidServiceMetrics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"euclidServiceMetrics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"euclidServiceMetrics"];
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

  euclidServiceMetrics = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidServiceMetrics];
  euclidServiceMetrics2 = [equalCopy euclidServiceMetrics];
  if ((euclidServiceMetrics != 0) == (euclidServiceMetrics2 == 0))
  {
    goto LABEL_11;
  }

  euclidServiceMetrics3 = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidServiceMetrics];
  if (euclidServiceMetrics3)
  {
    v8 = euclidServiceMetrics3;
    euclidServiceMetrics4 = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidServiceMetrics];
    euclidServiceMetrics5 = [equalCopy euclidServiceMetrics];
    v11 = [euclidServiceMetrics4 isEqual:euclidServiceMetrics5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  euclidServiceMetrics = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidDebugMetrics];
  euclidServiceMetrics2 = [equalCopy euclidDebugMetrics];
  if ((euclidServiceMetrics != 0) != (euclidServiceMetrics2 == 0))
  {
    euclidDebugMetrics = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidDebugMetrics];
    if (!euclidDebugMetrics)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = euclidDebugMetrics;
    euclidDebugMetrics2 = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidDebugMetrics];
    euclidDebugMetrics3 = [equalCopy euclidDebugMetrics];
    v16 = [euclidDebugMetrics2 isEqual:euclidDebugMetrics3];

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
  euclidServiceMetrics = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidServiceMetrics];

  if (euclidServiceMetrics)
  {
    euclidServiceMetrics2 = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidServiceMetrics];
    PBDataWriterWriteSubmessage();
  }

  euclidDebugMetrics = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidDebugMetrics];

  if (euclidDebugMetrics)
  {
    euclidDebugMetrics2 = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidDebugMetrics];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCEAsrEuclidEmbedding;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  euclidServiceMetrics = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidServiceMetrics];
  v7 = [euclidServiceMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self deleteEuclidServiceMetrics];
  }

  euclidDebugMetrics = [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self euclidDebugMetrics];
  v10 = [euclidDebugMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self deleteEuclidDebugMetrics];
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