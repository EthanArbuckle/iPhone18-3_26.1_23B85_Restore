@interface GATSchemaGATRequestEnded
- (BOOL)isEqual:(id)equal;
- (GATSchemaGATRequestEnded)initWithDictionary:(id)dictionary;
- (GATSchemaGATRequestEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation GATSchemaGATRequestEnded

- (GATSchemaGATRequestEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = GATSchemaGATRequestEnded;
  v5 = [(GATSchemaGATRequestEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"perfMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GATSchemaGATPnRMetrics alloc] initWithDictionary:v6];
      [(GATSchemaGATRequestEnded *)v5 setPerfMetrics:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (GATSchemaGATRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GATSchemaGATRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GATSchemaGATRequestEnded *)self dictionaryRepresentation];
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
  if (self->_perfMetrics)
  {
    perfMetrics = [(GATSchemaGATRequestEnded *)self perfMetrics];
    dictionaryRepresentation = [perfMetrics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"perfMetrics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"perfMetrics"];
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
    perfMetrics = [(GATSchemaGATRequestEnded *)self perfMetrics];
    perfMetrics2 = [equalCopy perfMetrics];
    v7 = perfMetrics2;
    if ((perfMetrics != 0) != (perfMetrics2 == 0))
    {
      perfMetrics3 = [(GATSchemaGATRequestEnded *)self perfMetrics];
      if (!perfMetrics3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = perfMetrics3;
      perfMetrics4 = [(GATSchemaGATRequestEnded *)self perfMetrics];
      perfMetrics5 = [equalCopy perfMetrics];
      v12 = [perfMetrics4 isEqual:perfMetrics5];

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
  perfMetrics = [(GATSchemaGATRequestEnded *)self perfMetrics];

  if (perfMetrics)
  {
    perfMetrics2 = [(GATSchemaGATRequestEnded *)self perfMetrics];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GATSchemaGATRequestEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GATSchemaGATRequestEnded *)self perfMetrics:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(GATSchemaGATRequestEnded *)self deletePerfMetrics];
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