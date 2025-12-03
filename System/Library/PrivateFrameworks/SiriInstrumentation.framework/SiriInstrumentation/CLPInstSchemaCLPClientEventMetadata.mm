@interface CLPInstSchemaCLPClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPClientEventMetadata)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPClientEventMetadata

- (CLPInstSchemaCLPClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CLPInstSchemaCLPClientEventMetadata;
  v5 = [(CLPInstSchemaCLPClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CLPInstSchemaCLPClientEventMetadata *)v5 setClpId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_clpId)
  {
    clpId = [(CLPInstSchemaCLPClientEventMetadata *)self clpId];
    dictionaryRepresentation = [clpId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clpId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clpId"];
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
    clpId = [(CLPInstSchemaCLPClientEventMetadata *)self clpId];
    clpId2 = [equalCopy clpId];
    v7 = clpId2;
    if ((clpId != 0) != (clpId2 == 0))
    {
      clpId3 = [(CLPInstSchemaCLPClientEventMetadata *)self clpId];
      if (!clpId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = clpId3;
      clpId4 = [(CLPInstSchemaCLPClientEventMetadata *)self clpId];
      clpId5 = [equalCopy clpId];
      v12 = [clpId4 isEqual:clpId5];

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
  clpId = [(CLPInstSchemaCLPClientEventMetadata *)self clpId];

  if (clpId)
  {
    clpId2 = [(CLPInstSchemaCLPClientEventMetadata *)self clpId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CLPInstSchemaCLPClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CLPInstSchemaCLPClientEventMetadata *)self clpId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CLPInstSchemaCLPClientEventMetadata *)self deleteClpId];
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