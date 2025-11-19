@interface PFARepackagingExecutionResult
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PFARepackagingExecutionFailure)failure;
- (PFARepackagingExecutionResult)initWithDictionary:(id)a3;
- (PFARepackagingExecutionResult)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFailure;
- (void)deleteSuccess;
- (void)setFailure:(id)a3;
- (void)setSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PFARepackagingExecutionResult

- (PFARepackagingExecutionResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PFARepackagingExecutionResult;
  v5 = [(PFARepackagingExecutionResult *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"samplingResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFARepackagingExecutionResult setSamplingResult:](v5, "setSamplingResult:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"success"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFARepackagingExecutionResult setSuccess:](v5, "setSuccess:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"failure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PFARepackagingExecutionFailure alloc] initWithDictionary:v8];
      [(PFARepackagingExecutionResult *)v5 setFailure:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PFARepackagingExecutionResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PFARepackagingExecutionResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PFARepackagingExecutionResult *)self dictionaryRepresentation];
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
  if (self->_failure)
  {
    v4 = [(PFARepackagingExecutionResult *)self failure];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"failure"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"failure"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(PFARepackagingExecutionResult *)self samplingResult];
    v8 = @"UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"Sampled";
    }

    if (v7 == 2)
    {
      v9 = @"NotSampled";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"samplingResult"];
  }

  if (self->_whichSuccessorfail == 101)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFARepackagingExecutionResult success](self, "success")}];
    [v3 setObject:v10 forKeyedSubscript:@"success"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_samplingResult;
  }

  else
  {
    v6 = 0;
  }

  if (self->_whichSuccessorfail == 101)
  {
    v7 = 2654435761 * self->_success;
  }

  else
  {
    v7 = 0;
  }

  return v7 ^ v6 ^ [(PFARepackagingExecutionFailure *)self->_failure hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichSuccessorfail = self->_whichSuccessorfail;
    if (whichSuccessorfail == [v4 whichSuccessorfail] && (*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (samplingResult = self->_samplingResult, samplingResult == [v4 samplingResult]))
      {
        success = self->_success;
        if (success == [v4 success])
        {
          v8 = [(PFARepackagingExecutionResult *)self failure];
          v9 = [v4 failure];
          v10 = v9;
          if ((v8 != 0) != (v9 == 0))
          {
            v11 = [(PFARepackagingExecutionResult *)self failure];
            if (!v11)
            {

LABEL_15:
              v16 = 1;
              goto LABEL_13;
            }

            v12 = v11;
            v13 = [(PFARepackagingExecutionResult *)self failure];
            v14 = [v4 failure];
            v15 = [v13 isEqual:v14];

            if (v15)
            {
              goto LABEL_15;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_whichSuccessorfail == 101)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(PFARepackagingExecutionResult *)self failure];

  v5 = v7;
  if (v4)
  {
    v6 = [(PFARepackagingExecutionResult *)self failure];
    PBDataWriterWriteSubmessage();

    v5 = v7;
  }
}

- (void)deleteFailure
{
  if (self->_whichSuccessorfail == 102)
  {
    self->_whichSuccessorfail = 0;
    self->_failure = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PFARepackagingExecutionFailure)failure
{
  if (self->_whichSuccessorfail == 102)
  {
    v3 = self->_failure;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailure:(id)a3
{
  self->_success = 0;
  v3 = 102;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichSuccessorfail = v3;
  objc_storeStrong(&self->_failure, a3);
}

- (void)deleteSuccess
{
  if (self->_whichSuccessorfail == 101)
  {
    self->_whichSuccessorfail = 0;
    self->_success = 0;
  }
}

- (void)setSuccess:(BOOL)a3
{
  failure = self->_failure;
  self->_failure = 0;

  self->_whichSuccessorfail = 101;
  self->_success = a3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = PFARepackagingExecutionResult;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PFARepackagingExecutionResult *)self failure:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(PFARepackagingExecutionResult *)self deleteFailure];
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