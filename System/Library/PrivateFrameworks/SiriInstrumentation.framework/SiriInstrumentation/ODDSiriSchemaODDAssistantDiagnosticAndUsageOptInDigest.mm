@interface ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest

- (ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest;
  v5 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDDeviceAndUsageDynamicDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)v5 setDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appTaskCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDDeviceAndUsageAppTaskCounts alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)v5 setAppTaskCounts:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dictionaryRepresentation];
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
  if (self->_appTaskCounts)
  {
    appTaskCounts = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
    dictionaryRepresentation = [appTaskCounts dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appTaskCounts"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appTaskCounts"];
    }
  }

  if (self->_dimensions)
  {
    dimensions = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
    dictionaryRepresentation2 = [dimensions dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"dimensions"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"dimensions"];
    }
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

  dimensions = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
  dimensions2 = [equalCopy dimensions];
  if ((dimensions != 0) == (dimensions2 == 0))
  {
    goto LABEL_11;
  }

  dimensions3 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
  if (dimensions3)
  {
    v8 = dimensions3;
    dimensions4 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
    dimensions5 = [equalCopy dimensions];
    v11 = [dimensions4 isEqual:dimensions5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  dimensions = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
  dimensions2 = [equalCopy appTaskCounts];
  if ((dimensions != 0) != (dimensions2 == 0))
  {
    appTaskCounts = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
    if (!appTaskCounts)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = appTaskCounts;
    appTaskCounts2 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
    appTaskCounts3 = [equalCopy appTaskCounts];
    v16 = [appTaskCounts2 isEqual:appTaskCounts3];

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
  dimensions = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];

  if (dimensions)
  {
    dimensions2 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  appTaskCounts = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];

  if (appTaskCounts)
  {
    appTaskCounts2 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  dimensions = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
  v7 = [dimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self deleteDimensions];
  }

  appTaskCounts = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
  v10 = [appTaskCounts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self deleteAppTaskCounts];
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