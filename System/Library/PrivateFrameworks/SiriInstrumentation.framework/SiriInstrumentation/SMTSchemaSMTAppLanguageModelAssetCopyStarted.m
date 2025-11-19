@interface SMTSchemaSMTAppLanguageModelAssetCopyStarted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SMTSchemaSMTAppLanguageModelAssetCopyStarted)initWithDictionary:(id)a3;
- (SMTSchemaSMTAppLanguageModelAssetCopyStarted)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SMTSchemaSMTAppLanguageModelAssetCopyStarted

- (SMTSchemaSMTAppLanguageModelAssetCopyStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SMTSchemaSMTAppLanguageModelAssetCopyStarted;
  v5 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SMTSchemaSMTAppLanguageModelAssetCopyStarted setLocale:](v5, "setLocale:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"appBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)v5 setAppBundleId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"appAssetPath"];
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

- (SMTSchemaSMTAppLanguageModelAssetCopyStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self dictionaryRepresentation];
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
  if (self->_appAssetPath)
  {
    v4 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appAssetPath];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"appAssetPath"];
  }

  if (self->_appBundleId)
  {
    v6 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appBundleId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"appBundleId"];
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

    [v3 setObject:v9 forKeyedSubscript:@"locale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    locale = self->_locale;
    if (locale != [v4 locale])
    {
      goto LABEL_15;
    }
  }

  v6 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appBundleId];
  v7 = [v4 appBundleId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appBundleId];
  if (v8)
  {
    v9 = v8;
    v10 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appBundleId];
    v11 = [v4 appBundleId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appAssetPath];
  v7 = [v4 appAssetPath];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appAssetPath];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appAssetPath];
    v16 = [v4 appAssetPath];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appBundleId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SMTSchemaSMTAppLanguageModelAssetCopyStarted *)self appAssetPath];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end