@interface SMTSchemaSMTAppLanguageModelBuildStarted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SMTSchemaSMTAppLanguageModelBuildStarted)initWithDictionary:(id)a3;
- (SMTSchemaSMTAppLanguageModelBuildStarted)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasLocale:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SMTSchemaSMTAppLanguageModelBuildStarted

- (SMTSchemaSMTAppLanguageModelBuildStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SMTSchemaSMTAppLanguageModelBuildStarted;
  v5 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"artifactSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildStarted setArtifactSizeInBytes:](v5, "setArtifactSizeInBytes:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"appBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SMTSchemaSMTAppLanguageModelBuildStarted *)v5 setAppBundleId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelBuildStarted setLocale:](v5, "setLocale:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (SMTSchemaSMTAppLanguageModelBuildStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self dictionaryRepresentation];
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
  if (self->_appBundleId)
  {
    v4 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self appBundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"appBundleId"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SMTSchemaSMTAppLanguageModelBuildStarted artifactSizeInBytes](self, "artifactSizeInBytes")}];
    [v3 setObject:v7 forKeyedSubscript:@"artifactSizeInBytes"];

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

    [v3 setObject:v9 forKeyedSubscript:@"locale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    artifactSizeInBytes = self->_artifactSizeInBytes;
    if (artifactSizeInBytes != [v4 artifactSizeInBytes])
    {
      goto LABEL_15;
    }
  }

  v6 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self appBundleId];
  v7 = [v4 appBundleId];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v9 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self appBundleId];
  if (v9)
  {
    v10 = v9;
    v11 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self appBundleId];
    v12 = [v4 appBundleId];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((v4[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    locale = self->_locale;
    if (locale != [v4 locale])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v4 = [(SMTSchemaSMTAppLanguageModelBuildStarted *)self appBundleId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasLocale:(BOOL)a3
{
  if (a3)
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