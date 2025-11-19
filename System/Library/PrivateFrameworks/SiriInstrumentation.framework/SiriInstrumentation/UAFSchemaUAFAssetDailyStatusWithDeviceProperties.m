@interface UAFSchemaUAFAssetDailyStatusWithDeviceProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SADSchemaSADAvailableAssetDailyStatus)availableAssetDailyStatus;
- (UAFSchemaUAFAssetDailyStatusWithDeviceProperties)initWithDictionary:(id)a3;
- (UAFSchemaUAFAssetDailyStatusWithDeviceProperties)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteAvailableAssetDailyStatus;
- (void)setAvailableAssetDailyStatus:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation UAFSchemaUAFAssetDailyStatusWithDeviceProperties

- (UAFSchemaUAFAssetDailyStatusWithDeviceProperties)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UAFSchemaUAFAssetDailyStatusWithDeviceProperties;
  v5 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"deviceMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[UAFSchemaUAFDeviceMetadata alloc] initWithDictionary:v6];
      [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)v5 setDeviceMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"availableAssetDailyStatus"];
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

- (UAFSchemaUAFAssetDailyStatusWithDeviceProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_availableAssetDailyStatus)
  {
    v4 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"availableAssetDailyStatus"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"availableAssetDailyStatus"];
    }
  }

  if (self->_deviceMetadata)
  {
    v7 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"deviceMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"deviceMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichEvent = self->_whichEvent;
  if (whichEvent != [v4 whichEvent])
  {
    goto LABEL_13;
  }

  v6 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
  v7 = [v4 deviceMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
    v11 = [v4 deviceMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
  v7 = [v4 availableAssetDailyStatus];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
    v16 = [v4 availableAssetDailyStatus];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];

  if (v4)
  {
    v5 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];

  if (v6)
  {
    v7 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
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

- (void)setAvailableAssetDailyStatus:(id)a3
{
  v3 = 101;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichEvent = v3;
  objc_storeStrong(&self->_availableAssetDailyStatus, a3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UAFSchemaUAFAssetDailyStatusWithDeviceProperties;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deviceMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self deleteDeviceMetadata];
  }

  v9 = [(UAFSchemaUAFAssetDailyStatusWithDeviceProperties *)self availableAssetDailyStatus];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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