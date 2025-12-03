@interface IFTSchemaIFTSessionError
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTExecutorError)executorError;
- (IFTSchemaIFTIntelligenceFlowError)other;
- (IFTSchemaIFTPlannerError)plannerError;
- (IFTSchemaIFTSessionCoordinatorError)sessionCoordinatorError;
- (IFTSchemaIFTSessionError)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSessionError)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteExecutorError;
- (void)deleteOther;
- (void)deletePlannerError;
- (void)deleteSessionCoordinatorError;
- (void)setExecutorError:(id)error;
- (void)setOther:(id)other;
- (void)setPlannerError:(id)error;
- (void)setSessionCoordinatorError:(id)error;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSessionError

- (IFTSchemaIFTSessionError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTSessionError;
  v5 = [(IFTSchemaIFTSessionError *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"other"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(IFTSchemaIFTSessionError *)v5 setOther:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sessionCoordinatorError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTSessionCoordinatorError alloc] initWithDictionary:v8];
      [(IFTSchemaIFTSessionError *)v5 setSessionCoordinatorError:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"plannerError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTPlannerError alloc] initWithDictionary:v10];
      [(IFTSchemaIFTSessionError *)v5 setPlannerError:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"executorError"];
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

- (IFTSchemaIFTSessionError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSessionError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSessionError *)self dictionaryRepresentation];
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
  if (self->_executorError)
  {
    executorError = [(IFTSchemaIFTSessionError *)self executorError];
    dictionaryRepresentation = [executorError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"executorError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"executorError"];
    }
  }

  if (self->_other)
  {
    other = [(IFTSchemaIFTSessionError *)self other];
    dictionaryRepresentation2 = [other dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"other"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"other"];
    }
  }

  if (self->_plannerError)
  {
    plannerError = [(IFTSchemaIFTSessionError *)self plannerError];
    dictionaryRepresentation3 = [plannerError dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"plannerError"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"plannerError"];
    }
  }

  if (self->_sessionCoordinatorError)
  {
    sessionCoordinatorError = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
    dictionaryRepresentation4 = [sessionCoordinatorError dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"sessionCoordinatorError"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"sessionCoordinatorError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTIntelligenceFlowError *)self->_other hash];
  v4 = [(IFTSchemaIFTSessionCoordinatorError *)self->_sessionCoordinatorError hash]^ v3;
  v5 = [(IFTSchemaIFTPlannerError *)self->_plannerError hash];
  return v4 ^ v5 ^ [(IFTSchemaIFTExecutorError *)self->_executorError hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichOneof_Sessionerror = self->_whichOneof_Sessionerror;
  if (whichOneof_Sessionerror != [equalCopy whichOneof_Sessionerror])
  {
    goto LABEL_23;
  }

  other = [(IFTSchemaIFTSessionError *)self other];
  other2 = [equalCopy other];
  if ((other != 0) == (other2 == 0))
  {
    goto LABEL_22;
  }

  other3 = [(IFTSchemaIFTSessionError *)self other];
  if (other3)
  {
    v9 = other3;
    other4 = [(IFTSchemaIFTSessionError *)self other];
    other5 = [equalCopy other];
    v12 = [other4 isEqual:other5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  other = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
  other2 = [equalCopy sessionCoordinatorError];
  if ((other != 0) == (other2 == 0))
  {
    goto LABEL_22;
  }

  sessionCoordinatorError = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
  if (sessionCoordinatorError)
  {
    v14 = sessionCoordinatorError;
    sessionCoordinatorError2 = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
    sessionCoordinatorError3 = [equalCopy sessionCoordinatorError];
    v17 = [sessionCoordinatorError2 isEqual:sessionCoordinatorError3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  other = [(IFTSchemaIFTSessionError *)self plannerError];
  other2 = [equalCopy plannerError];
  if ((other != 0) == (other2 == 0))
  {
    goto LABEL_22;
  }

  plannerError = [(IFTSchemaIFTSessionError *)self plannerError];
  if (plannerError)
  {
    v19 = plannerError;
    plannerError2 = [(IFTSchemaIFTSessionError *)self plannerError];
    plannerError3 = [equalCopy plannerError];
    v22 = [plannerError2 isEqual:plannerError3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  other = [(IFTSchemaIFTSessionError *)self executorError];
  other2 = [equalCopy executorError];
  if ((other != 0) != (other2 == 0))
  {
    executorError = [(IFTSchemaIFTSessionError *)self executorError];
    if (!executorError)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = executorError;
    executorError2 = [(IFTSchemaIFTSessionError *)self executorError];
    executorError3 = [equalCopy executorError];
    v27 = [executorError2 isEqual:executorError3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  other = [(IFTSchemaIFTSessionError *)self other];

  if (other)
  {
    other2 = [(IFTSchemaIFTSessionError *)self other];
    PBDataWriterWriteSubmessage();
  }

  sessionCoordinatorError = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];

  if (sessionCoordinatorError)
  {
    sessionCoordinatorError2 = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
    PBDataWriterWriteSubmessage();
  }

  plannerError = [(IFTSchemaIFTSessionError *)self plannerError];

  if (plannerError)
  {
    plannerError2 = [(IFTSchemaIFTSessionError *)self plannerError];
    PBDataWriterWriteSubmessage();
  }

  executorError = [(IFTSchemaIFTSessionError *)self executorError];

  v11 = toCopy;
  if (executorError)
  {
    executorError2 = [(IFTSchemaIFTSessionError *)self executorError];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
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

- (void)setExecutorError:(id)error
{
  errorCopy = error;
  other = self->_other;
  self->_other = 0;

  sessionCoordinatorError = self->_sessionCoordinatorError;
  self->_sessionCoordinatorError = 0;

  plannerError = self->_plannerError;
  self->_plannerError = 0;

  self->_whichOneof_Sessionerror = 4 * (errorCopy != 0);
  executorError = self->_executorError;
  self->_executorError = errorCopy;
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

- (void)setPlannerError:(id)error
{
  errorCopy = error;
  other = self->_other;
  self->_other = 0;

  sessionCoordinatorError = self->_sessionCoordinatorError;
  self->_sessionCoordinatorError = 0;

  executorError = self->_executorError;
  self->_executorError = 0;

  v8 = 3;
  if (!errorCopy)
  {
    v8 = 0;
  }

  self->_whichOneof_Sessionerror = v8;
  plannerError = self->_plannerError;
  self->_plannerError = errorCopy;
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

- (void)setSessionCoordinatorError:(id)error
{
  errorCopy = error;
  other = self->_other;
  self->_other = 0;

  plannerError = self->_plannerError;
  self->_plannerError = 0;

  executorError = self->_executorError;
  self->_executorError = 0;

  self->_whichOneof_Sessionerror = 2 * (errorCopy != 0);
  sessionCoordinatorError = self->_sessionCoordinatorError;
  self->_sessionCoordinatorError = errorCopy;
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

- (void)setOther:(id)other
{
  otherCopy = other;
  sessionCoordinatorError = self->_sessionCoordinatorError;
  self->_sessionCoordinatorError = 0;

  plannerError = self->_plannerError;
  self->_plannerError = 0;

  executorError = self->_executorError;
  self->_executorError = 0;

  self->_whichOneof_Sessionerror = otherCopy != 0;
  other = self->_other;
  self->_other = otherCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = IFTSchemaIFTSessionError;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  other = [(IFTSchemaIFTSessionError *)self other];
  v7 = [other applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTSessionError *)self deleteOther];
  }

  sessionCoordinatorError = [(IFTSchemaIFTSessionError *)self sessionCoordinatorError];
  v10 = [sessionCoordinatorError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTSessionError *)self deleteSessionCoordinatorError];
  }

  plannerError = [(IFTSchemaIFTSessionError *)self plannerError];
  v13 = [plannerError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTSessionError *)self deletePlannerError];
  }

  executorError = [(IFTSchemaIFTSessionError *)self executorError];
  v16 = [executorError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
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