@interface ExecutorSiriSchemaExecutorRequestEnded
- (BOOL)isEqual:(id)a3;
- (ExecutorSiriSchemaExecutorRequestEnded)initWithDictionary:(id)a3;
- (ExecutorSiriSchemaExecutorRequestEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (SISchemaIFOutcomeSuccess)success;
- (SISchemaIFOutcomeToolDisambiguation)toolDisambiguation;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteSuccess;
- (void)deleteToolDisambiguation;
- (void)setSuccess:(id)a3;
- (void)setToolDisambiguation:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ExecutorSiriSchemaExecutorRequestEnded

- (ExecutorSiriSchemaExecutorRequestEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ExecutorSiriSchemaExecutorRequestEnded;
  v5 = [(ExecutorSiriSchemaExecutorRequestEnded *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ExecutorSiriSchemaExecutorRequestEnded setOutcome:](v5, "setOutcome:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"success"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaIFOutcomeSuccess alloc] initWithDictionary:v7];
      [(ExecutorSiriSchemaExecutorRequestEnded *)v5 setSuccess:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"toolDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaIFOutcomeToolDisambiguation alloc] initWithDictionary:v9];
      [(ExecutorSiriSchemaExecutorRequestEnded *)v5 setToolDisambiguation:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (ExecutorSiriSchemaExecutorRequestEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ExecutorSiriSchemaExecutorRequestEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ExecutorSiriSchemaExecutorRequestEnded *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(ExecutorSiriSchemaExecutorRequestEnded *)self outcome]- 1;
    if (v4 > 0xB)
    {
      v5 = @"IFOUTCOME_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D4860[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"outcome"];
  }

  if (self->_success)
  {
    v6 = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"success"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"success"];
    }
  }

  if (self->_toolDisambiguation)
  {
    v9 = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"toolDisambiguation"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"toolDisambiguation"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_outcome;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaIFOutcomeSuccess *)self->_success hash]^ v3;
  return v4 ^ [(SISchemaIFOutcomeToolDisambiguation *)self->_toolDisambiguation hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  whichOutcomedetails = self->_whichOutcomedetails;
  if (whichOutcomedetails != [v4 whichOutcomedetails])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    outcome = self->_outcome;
    if (outcome != [v4 outcome])
    {
      goto LABEL_16;
    }
  }

  v7 = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
  v8 = [v4 success];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_15;
  }

  v9 = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
  if (v9)
  {
    v10 = v9;
    v11 = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
    v12 = [v4 success];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
  v8 = [v4 toolDisambiguation];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
    v17 = [v4 toolDisambiguation];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];

  if (v4)
  {
    v5 = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];

  v7 = v9;
  if (v6)
  {
    v8 = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (void)deleteToolDisambiguation
{
  if (self->_whichOutcomedetails == 3)
  {
    self->_whichOutcomedetails = 0;
    self->_toolDisambiguation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaIFOutcomeToolDisambiguation)toolDisambiguation
{
  if (self->_whichOutcomedetails == 3)
  {
    v3 = self->_toolDisambiguation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setToolDisambiguation:(id)a3
{
  v4 = a3;
  success = self->_success;
  self->_success = 0;

  v6 = 3;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichOutcomedetails = v6;
  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = v4;
}

- (void)deleteSuccess
{
  if (self->_whichOutcomedetails == 2)
  {
    self->_whichOutcomedetails = 0;
    self->_success = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaIFOutcomeSuccess)success
{
  if (self->_whichOutcomedetails == 2)
  {
    v3 = self->_success;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSuccess:(id)a3
{
  v4 = a3;
  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  self->_whichOutcomedetails = 2 * (v4 != 0);
  success = self->_success;
  self->_success = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ExecutorSiriSchemaExecutorRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ExecutorSiriSchemaExecutorRequestEnded *)self deleteSuccess];
  }

  v9 = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ExecutorSiriSchemaExecutorRequestEnded *)self deleteToolDisambiguation];
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