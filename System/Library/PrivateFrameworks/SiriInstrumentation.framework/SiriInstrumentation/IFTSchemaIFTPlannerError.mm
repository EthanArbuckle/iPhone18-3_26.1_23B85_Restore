@interface IFTSchemaIFTPlannerError
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTIntelligenceFlowError)networkError;
- (IFTSchemaIFTIntelligenceFlowError)other;
- (IFTSchemaIFTPlannerError)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTPlannerError)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFailedToPlan;
- (void)deleteNetworkError;
- (void)deleteOther;
- (void)setFailedToPlan:(BOOL)plan;
- (void)setNetworkError:(id)error;
- (void)setOther:(id)other;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTPlannerError

- (IFTSchemaIFTPlannerError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTPlannerError;
  v5 = [(IFTSchemaIFTPlannerError *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"other"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(IFTSchemaIFTPlannerError *)v5 setOther:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"failedToPlan"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPlannerError setFailedToPlan:](v5, "setFailedToPlan:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"networkError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v9];
      [(IFTSchemaIFTPlannerError *)v5 setNetworkError:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTPlannerError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTPlannerError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTPlannerError *)self dictionaryRepresentation];
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
  if (self->_whichOneof_Plannererror == 2)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPlannerError failedToPlan](self, "failedToPlan")}];
    [dictionary setObject:v4 forKeyedSubscript:@"failedToPlan"];
  }

  if (self->_networkError)
  {
    networkError = [(IFTSchemaIFTPlannerError *)self networkError];
    dictionaryRepresentation = [networkError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"networkError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"networkError"];
    }
  }

  if (self->_other)
  {
    other = [(IFTSchemaIFTPlannerError *)self other];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTIntelligenceFlowError *)self->_other hash];
  if (self->_whichOneof_Plannererror == 2)
  {
    v4 = 2654435761 * self->_failedToPlan;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(IFTSchemaIFTIntelligenceFlowError *)self->_networkError hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  whichOneof_Plannererror = self->_whichOneof_Plannererror;
  if (whichOneof_Plannererror != [equalCopy whichOneof_Plannererror])
  {
    goto LABEL_14;
  }

  other = [(IFTSchemaIFTPlannerError *)self other];
  other2 = [equalCopy other];
  if ((other != 0) == (other2 == 0))
  {
    goto LABEL_13;
  }

  other3 = [(IFTSchemaIFTPlannerError *)self other];
  if (other3)
  {
    v9 = other3;
    other4 = [(IFTSchemaIFTPlannerError *)self other];
    other5 = [equalCopy other];
    v12 = [other4 isEqual:other5];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  failedToPlan = self->_failedToPlan;
  if (failedToPlan != [equalCopy failedToPlan])
  {
    goto LABEL_14;
  }

  other = [(IFTSchemaIFTPlannerError *)self networkError];
  other2 = [equalCopy networkError];
  if ((other != 0) == (other2 == 0))
  {
LABEL_13:

    goto LABEL_14;
  }

  networkError = [(IFTSchemaIFTPlannerError *)self networkError];
  if (!networkError)
  {

LABEL_17:
    v19 = 1;
    goto LABEL_15;
  }

  v15 = networkError;
  networkError2 = [(IFTSchemaIFTPlannerError *)self networkError];
  networkError3 = [equalCopy networkError];
  v18 = [networkError2 isEqual:networkError3];

  if (v18)
  {
    goto LABEL_17;
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  other = [(IFTSchemaIFTPlannerError *)self other];

  if (other)
  {
    other2 = [(IFTSchemaIFTPlannerError *)self other];
    PBDataWriterWriteSubmessage();
  }

  if (self->_whichOneof_Plannererror == 2)
  {
    PBDataWriterWriteBOOLField();
  }

  networkError = [(IFTSchemaIFTPlannerError *)self networkError];

  v7 = toCopy;
  if (networkError)
  {
    networkError2 = [(IFTSchemaIFTPlannerError *)self networkError];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (void)deleteNetworkError
{
  if (self->_whichOneof_Plannererror == 3)
  {
    self->_whichOneof_Plannererror = 0;
    self->_networkError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTIntelligenceFlowError)networkError
{
  if (self->_whichOneof_Plannererror == 3)
  {
    v3 = self->_networkError;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNetworkError:(id)error
{
  errorCopy = error;
  other = self->_other;
  self->_other = 0;

  self->_failedToPlan = 0;
  v6 = 3;
  if (!errorCopy)
  {
    v6 = 0;
  }

  self->_whichOneof_Plannererror = v6;
  networkError = self->_networkError;
  self->_networkError = errorCopy;
}

- (void)deleteFailedToPlan
{
  if (self->_whichOneof_Plannererror == 2)
  {
    self->_whichOneof_Plannererror = 0;
    self->_failedToPlan = 0;
  }
}

- (void)setFailedToPlan:(BOOL)plan
{
  other = self->_other;
  self->_other = 0;

  networkError = self->_networkError;
  self->_networkError = 0;

  self->_whichOneof_Plannererror = 2;
  self->_failedToPlan = plan;
}

- (void)deleteOther
{
  if (self->_whichOneof_Plannererror == 1)
  {
    self->_whichOneof_Plannererror = 0;
    self->_other = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTIntelligenceFlowError)other
{
  if (self->_whichOneof_Plannererror == 1)
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
  self->_failedToPlan = 0;
  networkError = self->_networkError;
  self->_networkError = 0;

  self->_whichOneof_Plannererror = otherCopy != 0;
  other = self->_other;
  self->_other = otherCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTPlannerError;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  other = [(IFTSchemaIFTPlannerError *)self other];
  v7 = [other applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTPlannerError *)self deleteOther];
  }

  networkError = [(IFTSchemaIFTPlannerError *)self networkError];
  v10 = [networkError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTPlannerError *)self deleteNetworkError];
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