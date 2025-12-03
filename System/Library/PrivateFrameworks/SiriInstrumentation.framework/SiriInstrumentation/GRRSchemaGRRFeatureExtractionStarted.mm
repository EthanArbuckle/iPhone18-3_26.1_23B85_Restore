@interface GRRSchemaGRRFeatureExtractionStarted
- (BOOL)isEqual:(id)equal;
- (GRRSchemaGRRFeatureExtractionStarted)initWithDictionary:(id)dictionary;
- (GRRSchemaGRRFeatureExtractionStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation GRRSchemaGRRFeatureExtractionStarted

- (GRRSchemaGRRFeatureExtractionStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = GRRSchemaGRRFeatureExtractionStarted;
  v5 = [(GRRSchemaGRRFeatureExtractionStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GRRSchemaGRRSource alloc] initWithDictionary:v6];
      [(GRRSchemaGRRFeatureExtractionStarted *)v5 setSource:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (GRRSchemaGRRFeatureExtractionStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRRSchemaGRRFeatureExtractionStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRRSchemaGRRFeatureExtractionStarted *)self dictionaryRepresentation];
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
  if (self->_source)
  {
    source = [(GRRSchemaGRRFeatureExtractionStarted *)self source];
    dictionaryRepresentation = [source dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"source"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"source"];
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
    source = [(GRRSchemaGRRFeatureExtractionStarted *)self source];
    source2 = [equalCopy source];
    v7 = source2;
    if ((source != 0) != (source2 == 0))
    {
      source3 = [(GRRSchemaGRRFeatureExtractionStarted *)self source];
      if (!source3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = source3;
      source4 = [(GRRSchemaGRRFeatureExtractionStarted *)self source];
      source5 = [equalCopy source];
      v12 = [source4 isEqual:source5];

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
  source = [(GRRSchemaGRRFeatureExtractionStarted *)self source];

  if (source)
  {
    source2 = [(GRRSchemaGRRFeatureExtractionStarted *)self source];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GRRSchemaGRRFeatureExtractionStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GRRSchemaGRRFeatureExtractionStarted *)self source:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(GRRSchemaGRRFeatureExtractionStarted *)self deleteSource];
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