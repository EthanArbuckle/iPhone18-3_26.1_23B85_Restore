@interface IHSchemaIHClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (IHSchemaIHClientEventMetadata)initWithDictionary:(id)dictionary;
- (IHSchemaIHClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IHSchemaIHClientEventMetadata

- (IHSchemaIHClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IHSchemaIHClientEventMetadata;
  v5 = [(IHSchemaIHClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ihId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IHSchemaIHClientEventMetadata *)v5 setIhId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IHSchemaIHClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IHSchemaIHClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IHSchemaIHClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_ihId)
  {
    ihId = [(IHSchemaIHClientEventMetadata *)self ihId];
    dictionaryRepresentation = [ihId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ihId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ihId"];
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
    ihId = [(IHSchemaIHClientEventMetadata *)self ihId];
    ihId2 = [equalCopy ihId];
    v7 = ihId2;
    if ((ihId != 0) != (ihId2 == 0))
    {
      ihId3 = [(IHSchemaIHClientEventMetadata *)self ihId];
      if (!ihId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = ihId3;
      ihId4 = [(IHSchemaIHClientEventMetadata *)self ihId];
      ihId5 = [equalCopy ihId];
      v12 = [ihId4 isEqual:ihId5];

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
  ihId = [(IHSchemaIHClientEventMetadata *)self ihId];

  if (ihId)
  {
    ihId2 = [(IHSchemaIHClientEventMetadata *)self ihId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IHSchemaIHClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IHSchemaIHClientEventMetadata *)self ihId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IHSchemaIHClientEventMetadata *)self deleteIhId];
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