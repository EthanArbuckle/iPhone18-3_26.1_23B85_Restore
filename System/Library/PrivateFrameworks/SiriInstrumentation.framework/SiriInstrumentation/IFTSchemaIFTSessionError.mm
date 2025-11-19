@interface IFTSchemaIFTSessionError
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTExecutorError)executorError;
- (IFTSchemaIFTIntelligenceFlowError)other;
- (IFTSchemaIFTPlannerError)plannerError;
- (IFTSchemaIFTSessionCoordinatorError)sessionCoordinatorError;
- (IFTSchemaIFTSessionError)initWithDictionary:(id)a3;
- (IFTSchemaIFTSessionError)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteExecutorError;
- (void)deleteOther;
- (void)deletePlannerError;
- (void)deleteSessionCoordinatorError;
- (void)setExecutorError:(id)a3;
- (void)setOther:(id)a3;
- (void)setPlannerError:(id)a3;
- (void)setSessionCoordinatorError:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTSessionError

- (IFTSchemaIFTSessionError)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTSessionError;
  v5 = [(IFTSchemaIFTSessionError *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"other"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(IFTSchemaIFTSessionError *)v5 setOther:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sessionCoordinatorError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTSessionCoordinatorError alloc] initWithDictionary:v8];
      [(IFTSchemaIFTSessionError *)v5 setSessionCoordinatorError:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"plannerError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTPlannerError alloc] initWithDictionary:v10];
      [(IFTSchemaIFTSessionError *)v5 setPlannerError:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"executorError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTExecutorError alloc] initWithDictionary:v12];
      [(IFTSchemaIFTSessionError *)v5 setExecutorError:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSessionError)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSessionError *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTSessionError *)self dictionaryRepresentation];
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
  if (self->_executorError)
  {
    v4 = [(IFTSchemaIFTSessionError *)self executorError];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"executorError"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"executorError"];
    }
  }

  if (self->_other)
  {
    v7 = [(IFTSchemaIFTSessionError *)self other];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"other"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"other"];
    }
  }

  if (self->_plannerError)
  {
    v10 = [(IFTSchemaIFTSessionError *)self plannerError];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"plannerError"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"plannerError"];
    }
  }

  if (self->_sessionCoordinatorError)
  {
    v13 = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"sessionCoordinatorError"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"sessionCoordinatorError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTIntelligenceFlowError *)self->_other hash];
  v4 = [(IFTSchemaIFTSessionCoordinatorError *)self->_sessionCoordinatorError hash]^ v3;
  v5 = [(IFTSchemaIFTPlannerError *)self->_plannerError hash];
  return v4 ^ v5 ^ [(IFTSchemaIFTExecutorError *)self->_executorError hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichOneof_Sessionerror = self->_whichOneof_Sessionerror;
  if (whichOneof_Sessionerror != [v4 whichOneof_Sessionerror])
  {
    goto LABEL_23;
  }

  v6 = [(IFTSchemaIFTSessionError *)self other];
  v7 = [v4 other];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(IFTSchemaIFTSessionError *)self other];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTSessionError *)self other];
    v11 = [v4 other];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
  v7 = [v4 sessionCoordinatorError];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
    v16 = [v4 sessionCoordinatorError];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSessionError *)self plannerError];
  v7 = [v4 plannerError];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(IFTSchemaIFTSessionError *)self plannerError];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTSessionError *)self plannerError];
    v21 = [v4 plannerError];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSessionError *)self executorError];
  v7 = [v4 executorError];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(IFTSchemaIFTSessionError *)self executorError];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(IFTSchemaIFTSessionError *)self executorError];
    v26 = [v4 executorError];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(IFTSchemaIFTSessionError *)self other];

  if (v4)
  {
    v5 = [(IFTSchemaIFTSessionError *)self other];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];

  if (v6)
  {
    v7 = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTSessionError *)self plannerError];

  if (v8)
  {
    v9 = [(IFTSchemaIFTSessionError *)self plannerError];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTSessionError *)self executorError];

  v11 = v13;
  if (v10)
  {
    v12 = [(IFTSchemaIFTSessionError *)self executorError];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)deleteExecutorError
{
  if (self->_whichOneof_Sessionerror == 4)
  {
    self->_whichOneof_Sessionerror = 0;
    self->_executorError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTExecutorError)executorError
{
  if (self->_whichOneof_Sessionerror == 4)
  {
    v3 = self->_executorError;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutorError:(id)a3
{
  v4 = a3;
  other = self->_other;
  self->_other = 0;

  sessionCoordinatorError = self->_sessionCoordinatorError;
  self->_sessionCoordinatorError = 0;

  plannerError = self->_plannerError;
  self->_plannerError = 0;

  self->_whichOneof_Sessionerror = 4 * (v4 != 0);
  executorError = self->_executorError;
  self->_executorError = v4;
}

- (void)deletePlannerError
{
  if (self->_whichOneof_Sessionerror == 3)
  {
    self->_whichOneof_Sessionerror = 0;
    self->_plannerError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPlannerError)plannerError
{
  if (self->_whichOneof_Sessionerror == 3)
  {
    v3 = self->_plannerError;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlannerError:(id)a3
{
  v4 = a3;
  other = self->_other;
  self->_other = 0;

  sessionCoordinatorError = self->_sessionCoordinatorError;
  self->_sessionCoordinatorError = 0;

  executorError = self->_executorError;
  self->_executorError = 0;

  v8 = 3;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichOneof_Sessionerror = v8;
  plannerError = self->_plannerError;
  self->_plannerError = v4;
}

- (void)deleteSessionCoordinatorError
{
  if (self->_whichOneof_Sessionerror == 2)
  {
    self->_whichOneof_Sessionerror = 0;
    self->_sessionCoordinatorError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSessionCoordinatorError)sessionCoordinatorError
{
  if (self->_whichOneof_Sessionerror == 2)
  {
    v3 = self->_sessionCoordinatorError;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSessionCoordinatorError:(id)a3
{
  v4 = a3;
  other = self->_other;
  self->_other = 0;

  plannerError = self->_plannerError;
  self->_plannerError = 0;

  executorError = self->_executorError;
  self->_executorError = 0;

  self->_whichOneof_Sessionerror = 2 * (v4 != 0);
  sessionCoordinatorError = self->_sessionCoordinatorError;
  self->_sessionCoordinatorError = v4;
}

- (void)deleteOther
{
  if (self->_whichOneof_Sessionerror == 1)
  {
    self->_whichOneof_Sessionerror = 0;
    self->_other = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTIntelligenceFlowError)other
{
  if (self->_whichOneof_Sessionerror == 1)
  {
    v3 = self->_other;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOther:(id)a3
{
  v4 = a3;
  sessionCoordinatorError = self->_sessionCoordinatorError;
  self->_sessionCoordinatorError = 0;

  plannerError = self->_plannerError;
  self->_plannerError = 0;

  executorError = self->_executorError;
  self->_executorError = 0;

  self->_whichOneof_Sessionerror = v4 != 0;
  other = self->_other;
  self->_other = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = IFTSchemaIFTSessionError;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTSessionError *)self other];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTSessionError *)self deleteOther];
  }

  v9 = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTSessionError *)self deleteSessionCoordinatorError];
  }

  v12 = [(IFTSchemaIFTSessionError *)self plannerError];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTSessionError *)self deletePlannerError];
  }

  v15 = [(IFTSchemaIFTSessionError *)self executorError];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IFTSchemaIFTSessionError *)self deleteExecutorError];
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