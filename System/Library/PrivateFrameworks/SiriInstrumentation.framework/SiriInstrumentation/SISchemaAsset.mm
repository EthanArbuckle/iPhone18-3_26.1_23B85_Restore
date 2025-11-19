@interface SISchemaAsset
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaAsset)initWithDictionary:(id)a3;
- (SISchemaAsset)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaAsset

- (SISchemaAsset)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SISchemaAsset;
  v5 = [(SISchemaAsset *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"trialNamespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaAsset *)v5 setTrialNamespace:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaAsset *)v5 setAssetName:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaVersion alloc] initWithDictionary:v10];
      [(SISchemaAsset *)v5 setAssetVersion:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"assetLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAsset setAssetLocale:](v5, "setAssetLocale:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (SISchemaAsset)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaAsset *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaAsset *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(SISchemaAsset *)self assetLocale]- 1;
    if (v4 > 0x3D)
    {
      v5 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v5 = off_1E78E3200[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"assetLocale"];
  }

  if (self->_assetName)
  {
    v6 = [(SISchemaAsset *)self assetName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"assetName"];
  }

  if (self->_assetVersion)
  {
    v8 = [(SISchemaAsset *)self assetVersion];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"assetVersion"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"assetVersion"];
    }
  }

  if (self->_trialNamespace)
  {
    v11 = [(SISchemaAsset *)self trialNamespace];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"trialNamespace"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_trialNamespace hash];
  v4 = [(NSString *)self->_assetName hash];
  v5 = [(SISchemaVersion *)self->_assetVersion hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_assetLocale;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(SISchemaAsset *)self trialNamespace];
  v6 = [v4 trialNamespace];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(SISchemaAsset *)self trialNamespace];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaAsset *)self trialNamespace];
    v10 = [v4 trialNamespace];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SISchemaAsset *)self assetName];
  v6 = [v4 assetName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(SISchemaAsset *)self assetName];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaAsset *)self assetName];
    v15 = [v4 assetName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SISchemaAsset *)self assetVersion];
  v6 = [v4 assetVersion];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(SISchemaAsset *)self assetVersion];
  if (v17)
  {
    v18 = v17;
    v19 = [(SISchemaAsset *)self assetVersion];
    v20 = [v4 assetVersion];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (assetLocale = self->_assetLocale, assetLocale == [v4 assetLocale]))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaAsset *)self trialNamespace];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SISchemaAsset *)self assetName];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SISchemaAsset *)self assetVersion];

  if (v6)
  {
    v7 = [(SISchemaAsset *)self assetVersion];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaAsset;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaAsset *)self assetVersion:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaAsset *)self deleteAssetVersion];
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