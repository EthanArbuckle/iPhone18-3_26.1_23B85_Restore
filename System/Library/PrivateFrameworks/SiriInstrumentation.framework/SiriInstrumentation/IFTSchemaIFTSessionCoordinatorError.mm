@interface IFTSchemaIFTSessionCoordinatorError
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTIntelligenceFlowError)failedToConvertClientEvent;
- (IFTSchemaIFTIntelligenceFlowError)failedToWriteTranscript;
- (IFTSchemaIFTIntelligenceFlowError)other;
- (IFTSchemaIFTSessionCoordinatorError)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSessionCoordinatorError)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFailedToConvertClientEvent;
- (void)deleteFailedToWriteTranscript;
- (void)deleteOther;
- (void)setFailedToConvertClientEvent:(id)event;
- (void)setFailedToWriteTranscript:(id)transcript;
- (void)setOther:(id)other;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSessionCoordinatorError

- (IFTSchemaIFTSessionCoordinatorError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTSessionCoordinatorError;
  v5 = [(IFTSchemaIFTSessionCoordinatorError *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"other"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(IFTSchemaIFTSessionCoordinatorError *)v5 setOther:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"failedToWriteTranscript"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v8];
      [(IFTSchemaIFTSessionCoordinatorError *)v5 setFailedToWriteTranscript:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failedToConvertClientEvent"];
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

- (IFTSchemaIFTSessionCoordinatorError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSessionCoordinatorError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSessionCoordinatorError *)self dictionaryRepresentation];
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
  if (self->_failedToConvertClientEvent)
  {
    failedToConvertClientEvent = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
    dictionaryRepresentation = [failedToConvertClientEvent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"failedToConvertClientEvent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"failedToConvertClientEvent"];
    }
  }

  if (self->_failedToWriteTranscript)
  {
    failedToWriteTranscript = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
    dictionaryRepresentation2 = [failedToWriteTranscript dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"failedToWriteTranscript"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"failedToWriteTranscript"];
    }
  }

  if (self->_other)
  {
    other = [(IFTSchemaIFTSessionCoordinatorError *)self other];
    dictionaryRepresentation3 = [other dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"other"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"other"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTIntelligenceFlowError *)self->_other hash];
  v4 = [(IFTSchemaIFTIntelligenceFlowError *)self->_failedToWriteTranscript hash]^ v3;
  return v4 ^ [(IFTSchemaIFTIntelligenceFlowError *)self->_failedToConvertClientEvent hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichOneof_Sessioncoordinatorerror = self->_whichOneof_Sessioncoordinatorerror;
  if (whichOneof_Sessioncoordinatorerror != [equalCopy whichOneof_Sessioncoordinatorerror])
  {
    goto LABEL_18;
  }

  other = [(IFTSchemaIFTSessionCoordinatorError *)self other];
  other2 = [equalCopy other];
  if ((other != 0) == (other2 == 0))
  {
    goto LABEL_17;
  }

  other3 = [(IFTSchemaIFTSessionCoordinatorError *)self other];
  if (other3)
  {
    v9 = other3;
    other4 = [(IFTSchemaIFTSessionCoordinatorError *)self other];
    other5 = [equalCopy other];
    v12 = [other4 isEqual:other5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  other = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
  other2 = [equalCopy failedToWriteTranscript];
  if ((other != 0) == (other2 == 0))
  {
    goto LABEL_17;
  }

  failedToWriteTranscript = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
  if (failedToWriteTranscript)
  {
    v14 = failedToWriteTranscript;
    failedToWriteTranscript2 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
    failedToWriteTranscript3 = [equalCopy failedToWriteTranscript];
    v17 = [failedToWriteTranscript2 isEqual:failedToWriteTranscript3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  other = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
  other2 = [equalCopy failedToConvertClientEvent];
  if ((other != 0) != (other2 == 0))
  {
    failedToConvertClientEvent = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
    if (!failedToConvertClientEvent)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = failedToConvertClientEvent;
    failedToConvertClientEvent2 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
    failedToConvertClientEvent3 = [equalCopy failedToConvertClientEvent];
    v22 = [failedToConvertClientEvent2 isEqual:failedToConvertClientEvent3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  other = [(IFTSchemaIFTSessionCoordinatorError *)self other];

  if (other)
  {
    other2 = [(IFTSchemaIFTSessionCoordinatorError *)self other];
    PBDataWriterWriteSubmessage();
  }

  failedToWriteTranscript = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];

  if (failedToWriteTranscript)
  {
    failedToWriteTranscript2 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
    PBDataWriterWriteSubmessage();
  }

  failedToConvertClientEvent = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];

  v9 = toCopy;
  if (failedToConvertClientEvent)
  {
    failedToConvertClientEvent2 = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
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

- (void)setFailedToConvertClientEvent:(id)event
{
  eventCopy = event;
  other = self->_other;
  self->_other = 0;

  failedToWriteTranscript = self->_failedToWriteTranscript;
  self->_failedToWriteTranscript = 0;

  v7 = 3;
  if (!eventCopy)
  {
    v7 = 0;
  }

  self->_whichOneof_Sessioncoordinatorerror = v7;
  failedToConvertClientEvent = self->_failedToConvertClientEvent;
  self->_failedToConvertClientEvent = eventCopy;
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

- (void)setFailedToWriteTranscript:(id)transcript
{
  transcriptCopy = transcript;
  other = self->_other;
  self->_other = 0;

  failedToConvertClientEvent = self->_failedToConvertClientEvent;
  self->_failedToConvertClientEvent = 0;

  self->_whichOneof_Sessioncoordinatorerror = 2 * (transcriptCopy != 0);
  failedToWriteTranscript = self->_failedToWriteTranscript;
  self->_failedToWriteTranscript = transcriptCopy;
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

- (void)setOther:(id)other
{
  otherCopy = other;
  failedToWriteTranscript = self->_failedToWriteTranscript;
  self->_failedToWriteTranscript = 0;

  failedToConvertClientEvent = self->_failedToConvertClientEvent;
  self->_failedToConvertClientEvent = 0;

  self->_whichOneof_Sessioncoordinatorerror = otherCopy != 0;
  other = self->_other;
  self->_other = otherCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTSessionCoordinatorError;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  other = [(IFTSchemaIFTSessionCoordinatorError *)self other];
  v7 = [other applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTSessionCoordinatorError *)self deleteOther];
  }

  failedToWriteTranscript = [(IFTSchemaIFTSessionCoordinatorError *)self failedToWriteTranscript];
  v10 = [failedToWriteTranscript applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTSessionCoordinatorError *)self deleteFailedToWriteTranscript];
  }

  failedToConvertClientEvent = [(IFTSchemaIFTSessionCoordinatorError *)self failedToConvertClientEvent];
  v13 = [failedToConvertClientEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
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