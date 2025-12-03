@interface GATSchemaGATClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (GATSchemaGATClientEventMetadata)initWithDictionary:(id)dictionary;
- (GATSchemaGATClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation GATSchemaGATClientEventMetadata

- (GATSchemaGATClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = GATSchemaGATClientEventMetadata;
  v5 = [(GATSchemaGATClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"gatId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GATSchemaGATClientEventMetadata *)v5 setGatId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (GATSchemaGATClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GATSchemaGATClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GATSchemaGATClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_gatId)
  {
    gatId = [(GATSchemaGATClientEventMetadata *)self gatId];
    dictionaryRepresentation = [gatId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"gatId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"gatId"];
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
    gatId = [(GATSchemaGATClientEventMetadata *)self gatId];
    gatId2 = [equalCopy gatId];
    v7 = gatId2;
    if ((gatId != 0) != (gatId2 == 0))
    {
      gatId3 = [(GATSchemaGATClientEventMetadata *)self gatId];
      if (!gatId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = gatId3;
      gatId4 = [(GATSchemaGATClientEventMetadata *)self gatId];
      gatId5 = [equalCopy gatId];
      v12 = [gatId4 isEqual:gatId5];

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
  gatId = [(GATSchemaGATClientEventMetadata *)self gatId];

  if (gatId)
  {
    gatId2 = [(GATSchemaGATClientEventMetadata *)self gatId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GATSchemaGATClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GATSchemaGATClientEventMetadata *)self gatId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(GATSchemaGATClientEventMetadata *)self deleteGatId];
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