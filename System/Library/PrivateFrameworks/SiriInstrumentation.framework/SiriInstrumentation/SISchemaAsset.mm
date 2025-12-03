@interface SISchemaAsset
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaAsset)initWithDictionary:(id)dictionary;
- (SISchemaAsset)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaAsset

- (SISchemaAsset)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SISchemaAsset;
  v5 = [(SISchemaAsset *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"trialNamespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaAsset *)v5 setTrialNamespace:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaAsset *)v5 setAssetName:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaVersion alloc] initWithDictionary:v10];
      [(SISchemaAsset *)v5 setAssetVersion:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"assetLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAsset setAssetLocale:](v5, "setAssetLocale:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (SISchemaAsset)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaAsset *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaAsset *)self dictionaryRepresentation];
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

    [dictionary setObject:v5 forKeyedSubscript:@"assetLocale"];
  }

  if (self->_assetName)
  {
    assetName = [(SISchemaAsset *)self assetName];
    v7 = [assetName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"assetName"];
  }

  if (self->_assetVersion)
  {
    assetVersion = [(SISchemaAsset *)self assetVersion];
    dictionaryRepresentation = [assetVersion dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assetVersion"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assetVersion"];
    }
  }

  if (self->_trialNamespace)
  {
    trialNamespace = [(SISchemaAsset *)self trialNamespace];
    v12 = [trialNamespace copy];
    [dictionary setObject:v12 forKeyedSubscript:@"trialNamespace"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  trialNamespace = [(SISchemaAsset *)self trialNamespace];
  trialNamespace2 = [equalCopy trialNamespace];
  if ((trialNamespace != 0) == (trialNamespace2 == 0))
  {
    goto LABEL_16;
  }

  trialNamespace3 = [(SISchemaAsset *)self trialNamespace];
  if (trialNamespace3)
  {
    v8 = trialNamespace3;
    trialNamespace4 = [(SISchemaAsset *)self trialNamespace];
    trialNamespace5 = [equalCopy trialNamespace];
    v11 = [trialNamespace4 isEqual:trialNamespace5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  trialNamespace = [(SISchemaAsset *)self assetName];
  trialNamespace2 = [equalCopy assetName];
  if ((trialNamespace != 0) == (trialNamespace2 == 0))
  {
    goto LABEL_16;
  }

  assetName = [(SISchemaAsset *)self assetName];
  if (assetName)
  {
    v13 = assetName;
    assetName2 = [(SISchemaAsset *)self assetName];
    assetName3 = [equalCopy assetName];
    v16 = [assetName2 isEqual:assetName3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  trialNamespace = [(SISchemaAsset *)self assetVersion];
  trialNamespace2 = [equalCopy assetVersion];
  if ((trialNamespace != 0) == (trialNamespace2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  assetVersion = [(SISchemaAsset *)self assetVersion];
  if (assetVersion)
  {
    v18 = assetVersion;
    assetVersion2 = [(SISchemaAsset *)self assetVersion];
    assetVersion3 = [equalCopy assetVersion];
    v21 = [assetVersion2 isEqual:assetVersion3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (assetLocale = self->_assetLocale, assetLocale == [equalCopy assetLocale]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  trialNamespace = [(SISchemaAsset *)self trialNamespace];

  if (trialNamespace)
  {
    PBDataWriterWriteStringField();
  }

  assetName = [(SISchemaAsset *)self assetName];

  if (assetName)
  {
    PBDataWriterWriteStringField();
  }

  assetVersion = [(SISchemaAsset *)self assetVersion];

  if (assetVersion)
  {
    assetVersion2 = [(SISchemaAsset *)self assetVersion];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaAsset;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaAsset *)self assetVersion:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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