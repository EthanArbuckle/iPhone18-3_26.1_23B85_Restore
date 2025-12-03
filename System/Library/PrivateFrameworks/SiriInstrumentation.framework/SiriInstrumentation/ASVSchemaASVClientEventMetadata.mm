@interface ASVSchemaASVClientEventMetadata
- (ASVSchemaASVClientEventMetadata)initWithDictionary:(id)dictionary;
- (ASVSchemaASVClientEventMetadata)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ASVSchemaASVClientEventMetadata

- (ASVSchemaASVClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ASVSchemaASVClientEventMetadata;
  v5 = [(ASVSchemaASVClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"asvId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASVSchemaASVClientEventMetadata *)v5 setAsvId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ASVSchemaASVClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASVSchemaASVClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASVSchemaASVClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_asvId)
  {
    asvId = [(ASVSchemaASVClientEventMetadata *)self asvId];
    dictionaryRepresentation = [asvId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asvId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asvId"];
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
    asvId = [(ASVSchemaASVClientEventMetadata *)self asvId];
    asvId2 = [equalCopy asvId];
    v7 = asvId2;
    if ((asvId != 0) != (asvId2 == 0))
    {
      asvId3 = [(ASVSchemaASVClientEventMetadata *)self asvId];
      if (!asvId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = asvId3;
      asvId4 = [(ASVSchemaASVClientEventMetadata *)self asvId];
      asvId5 = [equalCopy asvId];
      v12 = [asvId4 isEqual:asvId5];

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
  asvId = [(ASVSchemaASVClientEventMetadata *)self asvId];

  if (asvId)
  {
    asvId2 = [(ASVSchemaASVClientEventMetadata *)self asvId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ASVSchemaASVClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASVSchemaASVClientEventMetadata *)self asvId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASVSchemaASVClientEventMetadata *)self deleteAsvId];
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