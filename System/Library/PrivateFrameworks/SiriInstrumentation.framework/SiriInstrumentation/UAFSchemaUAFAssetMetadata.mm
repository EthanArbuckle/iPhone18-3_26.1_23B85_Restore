@interface UAFSchemaUAFAssetMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (UAFSchemaUAFAssetMetadata)initWithDictionary:(id)a3;
- (UAFSchemaUAFAssetMetadata)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation UAFSchemaUAFAssetMetadata

- (UAFSchemaUAFAssetMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UAFSchemaUAFAssetMetadata;
  v5 = [(UAFSchemaUAFAssetMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(UAFSchemaUAFAssetMetadata *)v5 setAssetName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assetSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAssetMetadata setAssetSizeInBytes:](v5, "setAssetSizeInBytes:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAssetMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(UAFSchemaUAFAssetMetadata *)self dictionaryRepresentation];
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
  if (self->_assetName)
  {
    v4 = [(UAFSchemaUAFAssetMetadata *)self assetName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"assetName"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[UAFSchemaUAFAssetMetadata assetSizeInBytes](self, "assetSizeInBytes")}];
    [v3 setObject:v6 forKeyedSubscript:@"assetSizeInBytes"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_assetName hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_assetSizeInBytes;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(UAFSchemaUAFAssetMetadata *)self assetName];
  v6 = [v4 assetName];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(UAFSchemaUAFAssetMetadata *)self assetName];
  if (v8)
  {
    v9 = v8;
    v10 = [(UAFSchemaUAFAssetMetadata *)self assetName];
    v11 = [v4 assetName];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    assetSizeInBytes = self->_assetSizeInBytes;
    if (assetSizeInBytes != [v4 assetSizeInBytes])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(UAFSchemaUAFAssetMetadata *)self assetName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end