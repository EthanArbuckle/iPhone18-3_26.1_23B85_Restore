@interface SMTSchemaSMTAppLanguageModelAssetCopyStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SMTSchemaSMTAppLanguageModelAssetCopyStarted)initWithDictionary:(id)dictionary;
- (SMTSchemaSMTAppLanguageModelAssetCopyStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SMTSchemaSMTAppLanguageModelAssetCopyStarted

- (SMTSchemaSMTAppLanguageModelAssetCopyStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SMTSchemaSMTAppLanguageModelAssetCopyStarted;
  v5 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelAssetCopyStarted setLocale:](v5, "setLocale:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"appBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)v5 setAppBundleId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"appAssetPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)v5 setAppAssetPath:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SMTSchemaSMTAppLanguageModelAssetCopyStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self dictionaryRepresentation];
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
  if (self->_appAssetPath)
  {
    appAssetPath = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appAssetPath];
    v5 = [appAssetPath copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appAssetPath"];
  }

  if (self->_appBundleId)
  {
    appBundleId = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appBundleId];
    v7 = [appBundleId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"appBundleId"];
  }

  if (*&self->_has)
  {
    v8 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self locale]- 1;
    if (v8 > 0x3D)
    {
      v9 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v9 = off_1E78E7150[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"locale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_locale;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_appBundleId hash]^ v3;
  return v4 ^ [(NSString *)self->_appAssetPath hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    locale = self->_locale;
    if (locale != [equalCopy locale])
    {
      goto LABEL_15;
    }
  }

  appBundleId = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appBundleId];
  appBundleId2 = [equalCopy appBundleId];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_14;
  }

  appBundleId3 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appBundleId];
  if (appBundleId3)
  {
    v9 = appBundleId3;
    appBundleId4 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appBundleId];
    appBundleId5 = [equalCopy appBundleId];
    v12 = [appBundleId4 isEqual:appBundleId5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  appBundleId = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appAssetPath];
  appBundleId2 = [equalCopy appAssetPath];
  if ((appBundleId != 0) != (appBundleId2 == 0))
  {
    appAssetPath = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appAssetPath];
    if (!appAssetPath)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = appAssetPath;
    appAssetPath2 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appAssetPath];
    appAssetPath3 = [equalCopy appAssetPath];
    v17 = [appAssetPath2 isEqual:appAssetPath3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  appBundleId = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appBundleId];

  if (appBundleId)
  {
    PBDataWriterWriteStringField();
  }

  appAssetPath = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appAssetPath];

  v6 = toCopy;
  if (appAssetPath)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end