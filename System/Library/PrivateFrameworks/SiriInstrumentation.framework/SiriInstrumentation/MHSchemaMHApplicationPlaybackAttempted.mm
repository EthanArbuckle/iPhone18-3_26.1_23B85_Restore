@interface MHSchemaMHApplicationPlaybackAttempted
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHApplicationPlaybackAttempted)initWithDictionary:(id)dictionary;
- (MHSchemaMHApplicationPlaybackAttempted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHApplicationPlaybackAttempted

- (MHSchemaMHApplicationPlaybackAttempted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MHSchemaMHApplicationPlaybackAttempted;
  v5 = [(MHSchemaMHApplicationPlaybackAttempted *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appBundleName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHApplicationPlaybackAttempted *)v5 setAppBundleName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appBundleVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MHSchemaMHApplicationPlaybackAttempted *)v5 setAppBundleVersion:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (MHSchemaMHApplicationPlaybackAttempted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHApplicationPlaybackAttempted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHApplicationPlaybackAttempted *)self dictionaryRepresentation];
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
  if (self->_appBundleName)
  {
    appBundleName = [(MHSchemaMHApplicationPlaybackAttempted *)self appBundleName];
    v5 = [appBundleName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appBundleName"];
  }

  if (self->_appBundleVersion)
  {
    appBundleVersion = [(MHSchemaMHApplicationPlaybackAttempted *)self appBundleVersion];
    v7 = [appBundleVersion copy];
    [dictionary setObject:v7 forKeyedSubscript:@"appBundleVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  appBundleName = [(MHSchemaMHApplicationPlaybackAttempted *)self appBundleName];
  appBundleName2 = [equalCopy appBundleName];
  if ((appBundleName != 0) == (appBundleName2 == 0))
  {
    goto LABEL_11;
  }

  appBundleName3 = [(MHSchemaMHApplicationPlaybackAttempted *)self appBundleName];
  if (appBundleName3)
  {
    v8 = appBundleName3;
    appBundleName4 = [(MHSchemaMHApplicationPlaybackAttempted *)self appBundleName];
    appBundleName5 = [equalCopy appBundleName];
    v11 = [appBundleName4 isEqual:appBundleName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  appBundleName = [(MHSchemaMHApplicationPlaybackAttempted *)self appBundleVersion];
  appBundleName2 = [equalCopy appBundleVersion];
  if ((appBundleName != 0) != (appBundleName2 == 0))
  {
    appBundleVersion = [(MHSchemaMHApplicationPlaybackAttempted *)self appBundleVersion];
    if (!appBundleVersion)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = appBundleVersion;
    appBundleVersion2 = [(MHSchemaMHApplicationPlaybackAttempted *)self appBundleVersion];
    appBundleVersion3 = [equalCopy appBundleVersion];
    v16 = [appBundleVersion2 isEqual:appBundleVersion3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appBundleName = [(MHSchemaMHApplicationPlaybackAttempted *)self appBundleName];

  if (appBundleName)
  {
    PBDataWriterWriteStringField();
  }

  appBundleVersion = [(MHSchemaMHApplicationPlaybackAttempted *)self appBundleVersion];

  if (appBundleVersion)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = MHSchemaMHApplicationPlaybackAttempted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(MHSchemaMHApplicationPlaybackAttempted *)self deleteAppBundleName];
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