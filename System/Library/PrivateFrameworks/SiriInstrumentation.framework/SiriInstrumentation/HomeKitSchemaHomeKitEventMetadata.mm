@interface HomeKitSchemaHomeKitEventMetadata
- (BOOL)isEqual:(id)equal;
- (HomeKitSchemaHomeKitEventMetadata)initWithDictionary:(id)dictionary;
- (HomeKitSchemaHomeKitEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation HomeKitSchemaHomeKitEventMetadata

- (HomeKitSchemaHomeKitEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = HomeKitSchemaHomeKitEventMetadata;
  v5 = [(HomeKitSchemaHomeKitEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(HomeKitSchemaHomeKitEventMetadata *)v5 setHkId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (HomeKitSchemaHomeKitEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HomeKitSchemaHomeKitEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HomeKitSchemaHomeKitEventMetadata *)self dictionaryRepresentation];
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
  if (self->_hkId)
  {
    hkId = [(HomeKitSchemaHomeKitEventMetadata *)self hkId];
    dictionaryRepresentation = [hkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"hkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"hkId"];
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
    hkId = [(HomeKitSchemaHomeKitEventMetadata *)self hkId];
    hkId2 = [equalCopy hkId];
    v7 = hkId2;
    if ((hkId != 0) != (hkId2 == 0))
    {
      hkId3 = [(HomeKitSchemaHomeKitEventMetadata *)self hkId];
      if (!hkId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = hkId3;
      hkId4 = [(HomeKitSchemaHomeKitEventMetadata *)self hkId];
      hkId5 = [equalCopy hkId];
      v12 = [hkId4 isEqual:hkId5];

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
  hkId = [(HomeKitSchemaHomeKitEventMetadata *)self hkId];

  if (hkId)
  {
    hkId2 = [(HomeKitSchemaHomeKitEventMetadata *)self hkId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = HomeKitSchemaHomeKitEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(HomeKitSchemaHomeKitEventMetadata *)self hkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(HomeKitSchemaHomeKitEventMetadata *)self deleteHkId];
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