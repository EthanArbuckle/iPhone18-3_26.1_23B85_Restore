@interface ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest

- (ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest;
  v5 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDDeviceAndUsageDynamicDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)v5 setDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"appTaskCounts"];
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

- (ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dictionaryRepresentation];
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
  if (self->_appTaskCounts)
  {
    v4 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appTaskCounts"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appTaskCounts"];
    }
  }

  if (self->_dimensions)
  {
    v7 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"dimensions"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"dimensions"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
  v6 = [v4 dimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
    v10 = [v4 dimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
  v6 = [v4 appTaskCounts];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
    v15 = [v4 appTaskCounts];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];

  if (v6)
  {
    v7 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self dimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self deleteDimensions];
  }

  v9 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest *)self appTaskCounts];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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