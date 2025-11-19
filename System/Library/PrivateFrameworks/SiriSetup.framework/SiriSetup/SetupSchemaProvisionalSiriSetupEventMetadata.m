@interface SetupSchemaProvisionalSiriSetupEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupEventMetadata)initWithDictionary:(id)a3;
- (SetupSchemaProvisionalSiriSetupEventMetadata)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation SetupSchemaProvisionalSiriSetupEventMetadata

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];

  if (v4)
  {
    v5 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];
    PBDataWriterWriteSubmessage();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];
    v6 = [v4 setupId];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];
      v11 = [v4 setupId];
      v12 = [v10 isEqual:v11];

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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (self->_setupId)
  {
    v4 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self setupId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"setupId"];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB68] null];
      [v3 setObject:v6 forKeyedSubscript:@"setupId"];
    }
  }

  [(SetupSchemaProvisionalSiriSetupEventMetadata *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SetupSchemaProvisionalSiriSetupEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SetupSchemaProvisionalSiriSetupEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SetupSchemaProvisionalSiriSetupEventMetadata;
  v5 = [(SetupSchemaProvisionalSiriSetupEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"setupId"];
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