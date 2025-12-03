@interface UAFSchemaUAFClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (UAFSchemaUAFClientEventMetadata)initWithDictionary:(id)dictionary;
- (UAFSchemaUAFClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation UAFSchemaUAFClientEventMetadata

- (UAFSchemaUAFClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = UAFSchemaUAFClientEventMetadata;
  v5 = [(UAFSchemaUAFClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"uafId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(UAFSchemaUAFClientEventMetadata *)v5 setUafId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (UAFSchemaUAFClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(UAFSchemaUAFClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(UAFSchemaUAFClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_uafId)
  {
    uafId = [(UAFSchemaUAFClientEventMetadata *)self uafId];
    dictionaryRepresentation = [uafId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"uafId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"uafId"];
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
    uafId = [(UAFSchemaUAFClientEventMetadata *)self uafId];
    uafId2 = [equalCopy uafId];
    v7 = uafId2;
    if ((uafId != 0) != (uafId2 == 0))
    {
      uafId3 = [(UAFSchemaUAFClientEventMetadata *)self uafId];
      if (!uafId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = uafId3;
      uafId4 = [(UAFSchemaUAFClientEventMetadata *)self uafId];
      uafId5 = [equalCopy uafId];
      v12 = [uafId4 isEqual:uafId5];

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
  uafId = [(UAFSchemaUAFClientEventMetadata *)self uafId];

  if (uafId)
  {
    uafId2 = [(UAFSchemaUAFClientEventMetadata *)self uafId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = UAFSchemaUAFClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(UAFSchemaUAFClientEventMetadata *)self uafId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(UAFSchemaUAFClientEventMetadata *)self deleteUafId];
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