@interface MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext)initWithDictionary:(id)a3;
- (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext)initWithJSON:(id)a3;
- (MHSchemaMHAcousticFalseTriggerMitigationFailed)failed;
- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)scoreGenerated;
- (MHSchemaMHAcousticFalseTriggerMitigationStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFailed;
- (void)deleteScoreGenerated;
- (void)deleteStartedOrChanged;
- (void)setFailed:(id)a3;
- (void)setScoreGenerated:(id)a3;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext

- (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext;
  v5 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MHSchemaMHAcousticFalseTriggerMitigationStarted alloc] initWithDictionary:v6];
      [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"scoreGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated alloc] initWithDictionary:v8];
      [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)v5 setScoreGenerated:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MHSchemaMHAcousticFalseTriggerMitigationFailed alloc] initWithDictionary:v10];
      [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)v5 setFailed:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self dictionaryRepresentation];
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
  if (self->_failed)
  {
    v4 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"failed"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_scoreGenerated)
  {
    v7 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"scoreGenerated"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"scoreGenerated"];
    }
  }

  if (self->_startedOrChanged)
  {
    v10 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)self->_startedOrChanged hash];
  v4 = [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)self->_scoreGenerated hash]^ v3;
  return v4 ^ [(MHSchemaMHAcousticFalseTriggerMitigationFailed *)self->_failed hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_18;
  }

  v6 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
  if (v8)
  {
    v9 = v8;
    v10 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
    v11 = [v4 startedOrChanged];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
  v7 = [v4 scoreGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
  if (v13)
  {
    v14 = v13;
    v15 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
    v16 = [v4 scoreGenerated];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
    v21 = [v4 failed];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];

  if (v4)
  {
    v5 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];

  if (v6)
  {
    v7 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];

  v9 = v11;
  if (v8)
  {
    v10 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MHSchemaMHAcousticFalseTriggerMitigationFailed)failed
{
  if (self->_whichContextevent == 3)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailed:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  scoreGenerated = self->_scoreGenerated;
  self->_scoreGenerated = 0;

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  failed = self->_failed;
  self->_failed = v4;
}

- (void)deleteScoreGenerated
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_scoreGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)scoreGenerated
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_scoreGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setScoreGenerated:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = 2 * (v4 != 0);
  scoreGenerated = self->_scoreGenerated;
  self->_scoreGenerated = v4;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 1)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MHSchemaMHAcousticFalseTriggerMitigationStarted)startedOrChanged
{
  if (self->_whichContextevent == 1)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStartedOrChanged:(id)a3
{
  v4 = a3;
  scoreGenerated = self->_scoreGenerated;
  self->_scoreGenerated = 0;

  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = v4 != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self deleteStartedOrChanged];
  }

  v9 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self deleteScoreGenerated];
  }

  v12 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self deleteFailed];
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