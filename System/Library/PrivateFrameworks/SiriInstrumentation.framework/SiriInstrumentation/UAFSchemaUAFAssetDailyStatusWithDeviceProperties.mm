@interface UAFSchemaUAFAssetDailyStatusWithDeviceProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SADSchemaSADAvailableAssetDailyStatus)availableAssetDailyStatus;
- (UAFSchemaUAFAssetDailyStatusWithDeviceProperties)initWithDictionary:(id)dictionary;
- (UAFSchemaUAFAssetDailyStatusWithDeviceProperties)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteAvailableAssetDailyStatus;
- (void)setAvailableAssetDailyStatus:(id)status;
- (void)writeTo:(id)to;
@end

@implementation UAFSchemaUAFAssetDailyStatusWithDeviceProperties

- (UAFSchemaUAFAssetDailyStatusWithDeviceProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = UAFSchemaUAFAssetDailyStatusWithDeviceProperties;
  v5 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"deviceMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[UAFSchemaUAFDeviceMetadata alloc] initWithDictionary:v6];
      [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)v5 setDeviceMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"availableAssetDailyStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SADSchemaSADAvailableAssetDailyStatus alloc] initWithDictionary:v8];
      [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)v5 setAvailableAssetDailyStatus:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAssetDailyStatusWithDeviceProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self dictionaryRepresentation];
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
  if (self->_availableAssetDailyStatus)
  {
    availableAssetDailyStatus = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
    dictionaryRepresentation = [availableAssetDailyStatus dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"availableAssetDailyStatus"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"availableAssetDailyStatus"];
    }
  }

  if (self->_deviceMetadata)
  {
    deviceMetadata = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
    dictionaryRepresentation2 = [deviceMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"deviceMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"deviceMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichEvent = self->_whichEvent;
  if (whichEvent != [equalCopy whichEvent])
  {
    goto LABEL_13;
  }

  deviceMetadata = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
  deviceMetadata2 = [equalCopy deviceMetadata];
  if ((deviceMetadata != 0) == (deviceMetadata2 == 0))
  {
    goto LABEL_12;
  }

  deviceMetadata3 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
  if (deviceMetadata3)
  {
    v9 = deviceMetadata3;
    deviceMetadata4 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
    deviceMetadata5 = [equalCopy deviceMetadata];
    v12 = [deviceMetadata4 isEqual:deviceMetadata5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  deviceMetadata = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
  deviceMetadata2 = [equalCopy availableAssetDailyStatus];
  if ((deviceMetadata != 0) != (deviceMetadata2 == 0))
  {
    availableAssetDailyStatus = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
    if (!availableAssetDailyStatus)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = availableAssetDailyStatus;
    availableAssetDailyStatus2 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
    availableAssetDailyStatus3 = [equalCopy availableAssetDailyStatus];
    v17 = [availableAssetDailyStatus2 isEqual:availableAssetDailyStatus3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  deviceMetadata = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];

  if (deviceMetadata)
  {
    deviceMetadata2 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
    PBDataWriterWriteSubmessage();
  }

  availableAssetDailyStatus = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];

  if (availableAssetDailyStatus)
  {
    availableAssetDailyStatus2 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteAvailableAssetDailyStatus
{
  if (self->_whichEvent == 101)
  {
    self->_whichEvent = 0;
    self->_availableAssetDailyStatus = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SADSchemaSADAvailableAssetDailyStatus)availableAssetDailyStatus
{
  if (self->_whichEvent == 101)
  {
    v3 = self->_availableAssetDailyStatus;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAvailableAssetDailyStatus:(id)status
{
  v3 = 101;
  if (!status)
  {
    v3 = 0;
  }

  self->_whichEvent = v3;
  objc_storeStrong(&self->_availableAssetDailyStatus, status);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = UAFSchemaUAFAssetDailyStatusWithDeviceProperties;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  deviceMetadata = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
  v7 = [deviceMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deleteDeviceMetadata];
  }

  availableAssetDailyStatus = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
  v10 = [availableAssetDailyStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deleteAvailableAssetDailyStatus];
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