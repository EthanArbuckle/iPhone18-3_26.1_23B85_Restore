@interface IASchemaIAClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (IASchemaIAClientEventMetadata)initWithDictionary:(id)dictionary;
- (IASchemaIAClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IASchemaIAClientEventMetadata

- (IASchemaIAClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IASchemaIAClientEventMetadata;
  v5 = [(IASchemaIAClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"iaId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IASchemaIAClientEventMetadata *)v5 setIaId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IASchemaIAClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IASchemaIAClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IASchemaIAClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_iaId)
  {
    iaId = [(IASchemaIAClientEventMetadata *)self iaId];
    dictionaryRepresentation = [iaId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"iaId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"iaId"];
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
    iaId = [(IASchemaIAClientEventMetadata *)self iaId];
    iaId2 = [equalCopy iaId];
    v7 = iaId2;
    if ((iaId != 0) != (iaId2 == 0))
    {
      iaId3 = [(IASchemaIAClientEventMetadata *)self iaId];
      if (!iaId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = iaId3;
      iaId4 = [(IASchemaIAClientEventMetadata *)self iaId];
      iaId5 = [equalCopy iaId];
      v12 = [iaId4 isEqual:iaId5];

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
  iaId = [(IASchemaIAClientEventMetadata *)self iaId];

  if (iaId)
  {
    iaId2 = [(IASchemaIAClientEventMetadata *)self iaId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IASchemaIAClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IASchemaIAClientEventMetadata *)self iaId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IASchemaIAClientEventMetadata *)self deleteIaId];
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