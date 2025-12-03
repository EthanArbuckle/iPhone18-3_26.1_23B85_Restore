@interface READSchemaREADClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (READSchemaREADClientEventMetadata)initWithDictionary:(id)dictionary;
- (READSchemaREADClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation READSchemaREADClientEventMetadata

- (READSchemaREADClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = READSchemaREADClientEventMetadata;
  v5 = [(READSchemaREADClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"readId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(READSchemaREADClientEventMetadata *)v5 setReadId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (READSchemaREADClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(READSchemaREADClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(READSchemaREADClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_readId)
  {
    readId = [(READSchemaREADClientEventMetadata *)self readId];
    dictionaryRepresentation = [readId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"readId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"readId"];
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
    readId = [(READSchemaREADClientEventMetadata *)self readId];
    readId2 = [equalCopy readId];
    v7 = readId2;
    if ((readId != 0) != (readId2 == 0))
    {
      readId3 = [(READSchemaREADClientEventMetadata *)self readId];
      if (!readId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = readId3;
      readId4 = [(READSchemaREADClientEventMetadata *)self readId];
      readId5 = [equalCopy readId];
      v12 = [readId4 isEqual:readId5];

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
  readId = [(READSchemaREADClientEventMetadata *)self readId];

  if (readId)
  {
    readId2 = [(READSchemaREADClientEventMetadata *)self readId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = READSchemaREADClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(READSchemaREADClientEventMetadata *)self readId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(READSchemaREADClientEventMetadata *)self deleteReadId];
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