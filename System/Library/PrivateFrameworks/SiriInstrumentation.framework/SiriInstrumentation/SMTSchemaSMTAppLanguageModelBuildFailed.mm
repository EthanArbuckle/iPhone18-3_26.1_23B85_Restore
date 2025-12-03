@interface SMTSchemaSMTAppLanguageModelBuildFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SMTSchemaSMTAppLanguageModelBuildFailed)initWithDictionary:(id)dictionary;
- (SMTSchemaSMTAppLanguageModelBuildFailed)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SMTSchemaSMTAppLanguageModelBuildFailed

- (SMTSchemaSMTAppLanguageModelBuildFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SMTSchemaSMTAppLanguageModelBuildFailed;
  v5 = [(SMTSchemaSMTAppLanguageModelBuildFailed *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SMTSchemaSMTAppLanguageModelBuildFailed *)v5 setAssetName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildFailed setReason:](v5, "setReason:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SMTSchemaSMTAppLanguageModelBuildFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SMTSchemaSMTAppLanguageModelBuildFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SMTSchemaSMTAppLanguageModelBuildFailed *)self dictionaryRepresentation];
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
  if (self->_assetName)
  {
    assetName = [(SMTSchemaSMTAppLanguageModelBuildFailed *)self assetName];
    v5 = [assetName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetName"];
  }

  if (*&self->_has)
  {
    reason = [(SMTSchemaSMTAppLanguageModelBuildFailed *)self reason];
    v7 = @"SMTAPPLANGUAGEMODELBUILDFAILUREREASON_UNKNOWN";
    if (reason == 1)
    {
      v7 = @"SMTAPPLANGUAGEMODELBUILDFAILUREREASON_DATAPACK";
    }

    if (reason == 2)
    {
      v8 = @"SMTAPPLANGUAGEMODELBUILDFAILUREREASON_TRANSITION";
    }

    else
    {
      v8 = v7;
    }

    [dictionary setObject:v8 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_assetName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_reason;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  assetName = [(SMTSchemaSMTAppLanguageModelBuildFailed *)self assetName];
  assetName2 = [equalCopy assetName];
  v7 = assetName2;
  if ((assetName != 0) == (assetName2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  assetName3 = [(SMTSchemaSMTAppLanguageModelBuildFailed *)self assetName];
  if (assetName3)
  {
    v9 = assetName3;
    assetName4 = [(SMTSchemaSMTAppLanguageModelBuildFailed *)self assetName];
    assetName5 = [equalCopy assetName];
    v12 = [assetName4 isEqual:assetName5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason != [equalCopy reason])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  assetName = [(SMTSchemaSMTAppLanguageModelBuildFailed *)self assetName];

  if (assetName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end