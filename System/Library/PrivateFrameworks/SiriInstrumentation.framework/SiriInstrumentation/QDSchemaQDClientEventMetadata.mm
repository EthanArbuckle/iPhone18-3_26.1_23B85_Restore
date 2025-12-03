@interface QDSchemaQDClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDClientEventMetadata)initWithDictionary:(id)dictionary;
- (QDSchemaQDClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDClientEventMetadata

- (QDSchemaQDClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = QDSchemaQDClientEventMetadata;
  v5 = [(QDSchemaQDClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"qdId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(QDSchemaQDClientEventMetadata *)v5 setQdId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (QDSchemaQDClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_qdId)
  {
    qdId = [(QDSchemaQDClientEventMetadata *)self qdId];
    dictionaryRepresentation = [qdId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"qdId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"qdId"];
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
    qdId = [(QDSchemaQDClientEventMetadata *)self qdId];
    qdId2 = [equalCopy qdId];
    v7 = qdId2;
    if ((qdId != 0) != (qdId2 == 0))
    {
      qdId3 = [(QDSchemaQDClientEventMetadata *)self qdId];
      if (!qdId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = qdId3;
      qdId4 = [(QDSchemaQDClientEventMetadata *)self qdId];
      qdId5 = [equalCopy qdId];
      v12 = [qdId4 isEqual:qdId5];

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
  qdId = [(QDSchemaQDClientEventMetadata *)self qdId];

  if (qdId)
  {
    qdId2 = [(QDSchemaQDClientEventMetadata *)self qdId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = QDSchemaQDClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(QDSchemaQDClientEventMetadata *)self qdId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(QDSchemaQDClientEventMetadata *)self deleteQdId];
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