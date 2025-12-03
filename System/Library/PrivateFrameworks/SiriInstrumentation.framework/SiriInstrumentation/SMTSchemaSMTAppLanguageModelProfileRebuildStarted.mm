@interface SMTSchemaSMTAppLanguageModelProfileRebuildStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SMTSchemaSMTAppLanguageModelProfileRebuildStarted)initWithDictionary:(id)dictionary;
- (SMTSchemaSMTAppLanguageModelProfileRebuildStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SMTSchemaSMTAppLanguageModelProfileRebuildStarted

- (SMTSchemaSMTAppLanguageModelProfileRebuildStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SMTSchemaSMTAppLanguageModelProfileRebuildStarted;
  v5 = [(SMTSchemaSMTAppLanguageModelProfileRebuildStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SMTSchemaSMTAppLanguageModelProfileRebuildStarted *)v5 setAppBundleId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SMTSchemaSMTAppLanguageModelProfileRebuildStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SMTSchemaSMTAppLanguageModelProfileRebuildStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SMTSchemaSMTAppLanguageModelProfileRebuildStarted *)self dictionaryRepresentation];
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
    appBundleId = [(SMTSchemaSMTAppLanguageModelProfileRebuildStarted *)self appBundleId];
    v5 = [appBundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appBundleId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    appBundleId = [(SMTSchemaSMTAppLanguageModelProfileRebuildStarted *)self appBundleId];
    appBundleId2 = [equalCopy appBundleId];
    v7 = appBundleId2;
    if ((appBundleId != 0) != (appBundleId2 == 0))
    {
      appBundleId3 = [(SMTSchemaSMTAppLanguageModelProfileRebuildStarted *)self appBundleId];
      if (!appBundleId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = appBundleId3;
      appBundleId4 = [(SMTSchemaSMTAppLanguageModelProfileRebuildStarted *)self appBundleId];
      appBundleId5 = [equalCopy appBundleId];
      v12 = [appBundleId4 isEqual:appBundleId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appBundleId = [(SMTSchemaSMTAppLanguageModelProfileRebuildStarted *)self appBundleId];

  if (appBundleId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end