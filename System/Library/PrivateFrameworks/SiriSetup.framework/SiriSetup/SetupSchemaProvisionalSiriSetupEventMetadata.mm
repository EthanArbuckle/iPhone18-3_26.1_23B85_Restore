@interface SetupSchemaProvisionalSiriSetupEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupEventMetadata)initWithDictionary:(id)dictionary;
- (SetupSchemaProvisionalSiriSetupEventMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation SetupSchemaProvisionalSiriSetupEventMetadata

- (void)writeTo:(id)to
{
  toCopy = to;
  setupId = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];

  if (setupId)
  {
    setupId2 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];
    PBDataWriterWriteSubmessage();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    setupId = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];
    setupId2 = [equalCopy setupId];
    v7 = setupId2;
    if ((setupId != 0) != (setupId2 == 0))
    {
      setupId3 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];
      if (!setupId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = setupId3;
      setupId4 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];
      setupId5 = [equalCopy setupId];
      v12 = [setupId4 isEqual:setupId5];

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

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_setupId)
  {
    setupId = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];
    dictionaryRepresentation = [setupId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"setupId"];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      [dictionary setObject:null forKeyedSubscript:@"setupId"];
    }
  }

  [(SetupSchemaProvisionalSiriSetupEventMetadata *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SetupSchemaProvisionalSiriSetupEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SetupSchemaProvisionalSiriSetupEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SetupSchemaProvisionalSiriSetupEventMetadata;
  v5 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"setupId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x277D5AC78]) initWithDictionary:v6];
      [(SetupSchemaProvisionalSiriSetupEventMetadata *)v5 setSetupId:v7];
    }

    v8 = v5;
  }

  return v5;
}

@end