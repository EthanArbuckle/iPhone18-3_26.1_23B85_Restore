@interface CloudKitSchemaCloudKitEventMetadata
- (BOOL)isEqual:(id)equal;
- (CloudKitSchemaCloudKitEventMetadata)initWithDictionary:(id)dictionary;
- (CloudKitSchemaCloudKitEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation CloudKitSchemaCloudKitEventMetadata

- (CloudKitSchemaCloudKitEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CloudKitSchemaCloudKitEventMetadata;
  v5 = [(CloudKitSchemaCloudKitEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ckId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CloudKitSchemaCloudKitEventMetadata *)v5 setCkId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (CloudKitSchemaCloudKitEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CloudKitSchemaCloudKitEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CloudKitSchemaCloudKitEventMetadata *)self dictionaryRepresentation];
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
  if (self->_ckId)
  {
    ckId = [(CloudKitSchemaCloudKitEventMetadata *)self ckId];
    dictionaryRepresentation = [ckId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ckId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ckId"];
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
    ckId = [(CloudKitSchemaCloudKitEventMetadata *)self ckId];
    ckId2 = [equalCopy ckId];
    v7 = ckId2;
    if ((ckId != 0) != (ckId2 == 0))
    {
      ckId3 = [(CloudKitSchemaCloudKitEventMetadata *)self ckId];
      if (!ckId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = ckId3;
      ckId4 = [(CloudKitSchemaCloudKitEventMetadata *)self ckId];
      ckId5 = [equalCopy ckId];
      v12 = [ckId4 isEqual:ckId5];

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
  ckId = [(CloudKitSchemaCloudKitEventMetadata *)self ckId];

  if (ckId)
  {
    ckId2 = [(CloudKitSchemaCloudKitEventMetadata *)self ckId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CloudKitSchemaCloudKitEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CloudKitSchemaCloudKitEventMetadata *)self ckId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CloudKitSchemaCloudKitEventMetadata *)self deleteCkId];
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