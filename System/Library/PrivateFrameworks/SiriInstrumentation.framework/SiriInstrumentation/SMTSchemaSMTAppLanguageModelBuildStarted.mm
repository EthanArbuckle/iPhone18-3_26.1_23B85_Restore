@interface SMTSchemaSMTAppLanguageModelBuildStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SMTSchemaSMTAppLanguageModelBuildStarted)initWithDictionary:(id)dictionary;
- (SMTSchemaSMTAppLanguageModelBuildStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasLocale:(BOOL)locale;
- (void)writeTo:(id)to;
@end

@implementation SMTSchemaSMTAppLanguageModelBuildStarted

- (SMTSchemaSMTAppLanguageModelBuildStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SMTSchemaSMTAppLanguageModelBuildStarted;
  v5 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"artifactSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildStarted setArtifactSizeInBytes:](v5, "setArtifactSizeInBytes:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"appBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SMTSchemaSMTAppLanguageModelBuildStarted *)v5 setAppBundleId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildStarted setLocale:](v5, "setLocale:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (SMTSchemaSMTAppLanguageModelBuildStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self dictionaryRepresentation];
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
  if (self->_appBundleId)
  {
    appBundleId = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self appBundleId];
    v5 = [appBundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appBundleId"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SMTSchemaSMTAppLanguageModelBuildStarted artifactSizeInBytes](self, "artifactSizeInBytes")}];
    [dictionary setObject:v7 forKeyedSubscript:@"artifactSizeInBytes"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self locale]- 1;
    if (v8 > 0x3D)
    {
      v9 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v9 = off_1E78E7340[v8];
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
    v3 = 2654435761u * self->_artifactSizeInBytes;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_appBundleId hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_locale;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    artifactSizeInBytes = self->_artifactSizeInBytes;
    if (artifactSizeInBytes != [equalCopy artifactSizeInBytes])
    {
      goto LABEL_15;
    }
  }

  appBundleId = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self appBundleId];
  appBundleId2 = [equalCopy appBundleId];
  v8 = appBundleId2;
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  appBundleId3 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self appBundleId];
  if (appBundleId3)
  {
    v10 = appBundleId3;
    appBundleId4 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self appBundleId];
    appBundleId5 = [equalCopy appBundleId];
    v13 = [appBundleId4 isEqual:appBundleId5];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((equalCopy[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    locale = self->_locale;
    if (locale != [equalCopy locale])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  appBundleId = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self appBundleId];

  if (appBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end