@interface GRPSchemaProducerMetadata
- (BOOL)isEqual:(id)equal;
- (GRPSchemaProducerMetadata)initWithDictionary:(id)dictionary;
- (GRPSchemaProducerMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation GRPSchemaProducerMetadata

- (GRPSchemaProducerMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = GRPSchemaProducerMetadata;
  v5 = [(GRPSchemaProducerMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"trialExperiment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GRPSchemaTrialExperimentIdentifiers alloc] initWithDictionary:v6];
      [(GRPSchemaProducerMetadata *)v5 setTrialExperiment:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (GRPSchemaProducerMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRPSchemaProducerMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRPSchemaProducerMetadata *)self dictionaryRepresentation];
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
  if (self->_trialExperiment)
  {
    trialExperiment = [(GRPSchemaProducerMetadata *)self trialExperiment];
    dictionaryRepresentation = [trialExperiment dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"trialExperiment"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"trialExperiment"];
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
    trialExperiment = [(GRPSchemaProducerMetadata *)self trialExperiment];
    trialExperiment2 = [equalCopy trialExperiment];
    v7 = trialExperiment2;
    if ((trialExperiment != 0) != (trialExperiment2 == 0))
    {
      trialExperiment3 = [(GRPSchemaProducerMetadata *)self trialExperiment];
      if (!trialExperiment3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = trialExperiment3;
      trialExperiment4 = [(GRPSchemaProducerMetadata *)self trialExperiment];
      trialExperiment5 = [equalCopy trialExperiment];
      v12 = [trialExperiment4 isEqual:trialExperiment5];

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
  trialExperiment = [(GRPSchemaProducerMetadata *)self trialExperiment];

  if (trialExperiment)
  {
    trialExperiment2 = [(GRPSchemaProducerMetadata *)self trialExperiment];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GRPSchemaProducerMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GRPSchemaProducerMetadata *)self trialExperiment:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(GRPSchemaProducerMetadata *)self deleteTrialExperiment];
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