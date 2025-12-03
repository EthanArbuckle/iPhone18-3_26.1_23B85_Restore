@interface DIMSchemaDIMDataSharingSettings
- (BOOL)isEqual:(id)equal;
- (DIMSchemaDIMDataSharingSettings)initWithDictionary:(id)dictionary;
- (DIMSchemaDIMDataSharingSettings)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAppAnalyticsEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation DIMSchemaDIMDataSharingSettings

- (DIMSchemaDIMDataSharingSettings)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = DIMSchemaDIMDataSharingSettings;
  v5 = [(DIMSchemaDIMDataSharingSettings *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isDiagnosticsAndUsageEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDataSharingSettings setIsDiagnosticsAndUsageEnabled:](v5, "setIsDiagnosticsAndUsageEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isAppAnalyticsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDataSharingSettings setIsAppAnalyticsEnabled:](v5, "setIsAppAnalyticsEnabled:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (DIMSchemaDIMDataSharingSettings)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DIMSchemaDIMDataSharingSettings *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DIMSchemaDIMDataSharingSettings *)self dictionaryRepresentation];
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
  v4 = *(&self->_isAppAnalyticsEnabled + 1);
  if ((v4 & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[DIMSchemaDIMDataSharingSettings isAppAnalyticsEnabled](self, "isAppAnalyticsEnabled")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isAppAnalyticsEnabled"];

    v4 = *(&self->_isAppAnalyticsEnabled + 1);
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[DIMSchemaDIMDataSharingSettings isDiagnosticsAndUsageEnabled](self, "isDiagnosticsAndUsageEnabled")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isDiagnosticsAndUsageEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isAppAnalyticsEnabled + 1))
  {
    v2 = 2654435761 * self->_isDiagnosticsAndUsageEnabled;
    if ((*(&self->_isAppAnalyticsEnabled + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_isAppAnalyticsEnabled + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_isAppAnalyticsEnabled;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_isAppAnalyticsEnabled + 1);
  v6 = equalCopy[10];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    isDiagnosticsAndUsageEnabled = self->_isDiagnosticsAndUsageEnabled;
    if (isDiagnosticsAndUsageEnabled != [equalCopy isDiagnosticsAndUsageEnabled])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_isAppAnalyticsEnabled + 1);
    v6 = equalCopy[10];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    isAppAnalyticsEnabled = self->_isAppAnalyticsEnabled;
    if (isAppAnalyticsEnabled != [equalCopy isAppAnalyticsEnabled])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = *(&self->_isAppAnalyticsEnabled + 1);
  v6 = toCopy;
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    v5 = *(&self->_isAppAnalyticsEnabled + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)setHasIsAppAnalyticsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAppAnalyticsEnabled + 1) = *(&self->_isAppAnalyticsEnabled + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end