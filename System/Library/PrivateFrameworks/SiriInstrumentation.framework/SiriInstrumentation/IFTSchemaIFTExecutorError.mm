@interface IFTSchemaIFTExecutorError
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTExecutorError)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTExecutorError)initWithJSON:(id)n;
- (IFTSchemaIFTIntelligenceFlowError)other;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFailedToExecute;
- (void)deleteOther;
- (void)setFailedToExecute:(BOOL)execute;
- (void)setOther:(id)other;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTExecutorError

- (IFTSchemaIFTExecutorError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTExecutorError;
  v5 = [(IFTSchemaIFTExecutorError *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"other"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(IFTSchemaIFTExecutorError *)v5 setOther:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"failedToExecute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTExecutorError setFailedToExecute:](v5, "setFailedToExecute:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTExecutorError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTExecutorError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTExecutorError *)self dictionaryRepresentation];
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
  if (self->_whichOneof_Executorerror == 2)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTExecutorError failedToExecute](self, "failedToExecute")}];
    [dictionary setObject:v4 forKeyedSubscript:@"failedToExecute"];
  }

  if (self->_other)
  {
    other = [(IFTSchemaIFTExecutorError *)self other];
    dictionaryRepresentation = [other dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"other"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"other"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTIntelligenceFlowError *)self->_other hash];
  if (self->_whichOneof_Executorerror == 2)
  {
    v4 = 2654435761 * self->_failedToExecute;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    whichOneof_Executorerror = self->_whichOneof_Executorerror;
    if (whichOneof_Executorerror == [equalCopy whichOneof_Executorerror])
    {
      other = [(IFTSchemaIFTExecutorError *)self other];
      other2 = [equalCopy other];
      v8 = other2;
      if ((other != 0) != (other2 == 0))
      {
        other3 = [(IFTSchemaIFTExecutorError *)self other];
        if (!other3)
        {

LABEL_11:
          failedToExecute = self->_failedToExecute;
          v14 = failedToExecute == [equalCopy failedToExecute];
          goto LABEL_9;
        }

        v10 = other3;
        other4 = [(IFTSchemaIFTExecutorError *)self other];
        other5 = [equalCopy other];
        v13 = [other4 isEqual:other5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  other = [(IFTSchemaIFTExecutorError *)self other];

  if (other)
  {
    other2 = [(IFTSchemaIFTExecutorError *)self other];
    PBDataWriterWriteSubmessage();
  }

  if (self->_whichOneof_Executorerror == 2)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)deleteFailedToExecute
{
  if (self->_whichOneof_Executorerror == 2)
  {
    self->_whichOneof_Executorerror = 0;
    self->_failedToExecute = 0;
  }
}

- (void)setFailedToExecute:(BOOL)execute
{
  other = self->_other;
  self->_other = 0;

  self->_whichOneof_Executorerror = 2;
  self->_failedToExecute = execute;
}

- (void)deleteOther
{
  if (self->_whichOneof_Executorerror == 1)
  {
    self->_whichOneof_Executorerror = 0;
    self->_other = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTIntelligenceFlowError)other
{
  if (self->_whichOneof_Executorerror == 1)
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
  self->_failedToExecute = 0;
  self->_whichOneof_Executorerror = other != 0;
  objc_storeStrong(&self->_other, other);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTExecutorError;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTExecutorError *)self other:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTExecutorError *)self deleteOther];
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