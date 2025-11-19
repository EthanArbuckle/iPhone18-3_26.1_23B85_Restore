@interface IFTSchemaIFTSessionCoordinatorError
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTIntelligenceFlowError)failedToConvertClientEvent;
- (IFTSchemaIFTIntelligenceFlowError)failedToWriteTranscript;
- (IFTSchemaIFTIntelligenceFlowError)other;
- (IFTSchemaIFTSessionCoordinatorError)initWithDictionary:(id)a3;
- (IFTSchemaIFTSessionCoordinatorError)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFailedToConvertClientEvent;
- (void)deleteFailedToWriteTranscript;
- (void)deleteOther;
- (void)setFailedToConvertClientEvent:(id)a3;
- (void)setFailedToWriteTranscript:(id)a3;
- (void)setOther:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTSessionCoordinatorError

- (IFTSchemaIFTSessionCoordinatorError)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTSessionCoordinatorError;
  v5 = [(IFTSchemaIFTSessionCoordinatorError *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"other"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(IFTSchemaIFTSessionCoordinatorError *)v5 setOther:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"failedToWriteTranscript"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v8];
      [(IFTSchemaIFTSessionCoordinatorError *)v5 setFailedToWriteTranscript:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"failedToConvertClientEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v10];
      [(IFTSchemaIFTSessionCoordinatorError *)v5 setFailedToConvertClientEvent:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSessionCoordinatorError)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSessionCoordinatorError *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTSessionCoordinatorError *)self dictionaryRepresentation];
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
  if (self->_failedToConvertClientEvent)
  {
    v4 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"failedToConvertClientEvent"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"failedToConvertClientEvent"];
    }
  }

  if (self->_failedToWriteTranscript)
  {
    v7 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"failedToWriteTranscript"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"failedToWriteTranscript"];
    }
  }

  if (self->_other)
  {
    v10 = [(IFTSchemaIFTSessionCoordinatorError *)self other];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"other"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"other"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTIntelligenceFlowError *)self->_other hash];
  v4 = [(IFTSchemaIFTIntelligenceFlowError *)self->_failedToWriteTranscript hash]^ v3;
  return v4 ^ [(IFTSchemaIFTIntelligenceFlowError *)self->_failedToConvertClientEvent hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichOneof_Sessioncoordinatorerror = self->_whichOneof_Sessioncoordinatorerror;
  if (whichOneof_Sessioncoordinatorerror != [v4 whichOneof_Sessioncoordinatorerror])
  {
    goto LABEL_18;
  }

  v6 = [(IFTSchemaIFTSessionCoordinatorError *)self other];
  v7 = [v4 other];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(IFTSchemaIFTSessionCoordinatorError *)self other];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTSessionCoordinatorError *)self other];
    v11 = [v4 other];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
  v7 = [v4 failedToWriteTranscript];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
    v16 = [v4 failedToWriteTranscript];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
  v7 = [v4 failedToConvertClientEvent];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
    v21 = [v4 failedToConvertClientEvent];
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
  v4 = [(IFTSchemaIFTSessionCoordinatorError *)self other];

  if (v4)
  {
    v5 = [(IFTSchemaIFTSessionCoordinatorError *)self other];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];

  if (v6)
  {
    v7 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];

  v9 = v11;
  if (v8)
  {
    v10 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteFailedToConvertClientEvent
{
  if (self->_whichOneof_Sessioncoordinatorerror == 3)
  {
    self->_whichOneof_Sessioncoordinatorerror = 0;
    self->_failedToConvertClientEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTIntelligenceFlowError)failedToConvertClientEvent
{
  if (self->_whichOneof_Sessioncoordinatorerror == 3)
  {
    v3 = self->_failedToConvertClientEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailedToConvertClientEvent:(id)a3
{
  v4 = a3;
  other = self->_other;
  self->_other = 0;

  failedToWriteTranscript = self->_failedToWriteTranscript;
  self->_failedToWriteTranscript = 0;

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichOneof_Sessioncoordinatorerror = v7;
  failedToConvertClientEvent = self->_failedToConvertClientEvent;
  self->_failedToConvertClientEvent = v4;
}

- (void)deleteFailedToWriteTranscript
{
  if (self->_whichOneof_Sessioncoordinatorerror == 2)
  {
    self->_whichOneof_Sessioncoordinatorerror = 0;
    self->_failedToWriteTranscript = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTIntelligenceFlowError)failedToWriteTranscript
{
  if (self->_whichOneof_Sessioncoordinatorerror == 2)
  {
    v3 = self->_failedToWriteTranscript;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailedToWriteTranscript:(id)a3
{
  v4 = a3;
  other = self->_other;
  self->_other = 0;

  failedToConvertClientEvent = self->_failedToConvertClientEvent;
  self->_failedToConvertClientEvent = 0;

  self->_whichOneof_Sessioncoordinatorerror = 2 * (v4 != 0);
  failedToWriteTranscript = self->_failedToWriteTranscript;
  self->_failedToWriteTranscript = v4;
}

- (void)deleteOther
{
  if (self->_whichOneof_Sessioncoordinatorerror == 1)
  {
    self->_whichOneof_Sessioncoordinatorerror = 0;
    self->_other = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTIntelligenceFlowError)other
{
  if (self->_whichOneof_Sessioncoordinatorerror == 1)
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
  failedToWriteTranscript = self->_failedToWriteTranscript;
  self->_failedToWriteTranscript = 0;

  failedToConvertClientEvent = self->_failedToConvertClientEvent;
  self->_failedToConvertClientEvent = 0;

  self->_whichOneof_Sessioncoordinatorerror = v4 != 0;
  other = self->_other;
  self->_other = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTSessionCoordinatorError;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTSessionCoordinatorError *)self other];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTSessionCoordinatorError *)self deleteOther];
  }

  v9 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTSessionCoordinatorError *)self deleteFailedToWriteTranscript];
  }

  v12 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTSessionCoordinatorError *)self deleteFailedToConvertClientEvent];
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