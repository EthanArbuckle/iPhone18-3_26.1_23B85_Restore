@interface IFTSchemaIFTExecutorError
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTExecutorError)initWithDictionary:(id)a3;
- (IFTSchemaIFTExecutorError)initWithJSON:(id)a3;
- (IFTSchemaIFTIntelligenceFlowError)other;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFailedToExecute;
- (void)deleteOther;
- (void)setFailedToExecute:(BOOL)a3;
- (void)setOther:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTExecutorError

- (IFTSchemaIFTExecutorError)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTExecutorError;
  v5 = [(IFTSchemaIFTExecutorError *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"other"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(IFTSchemaIFTExecutorError *)v5 setOther:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"failedToExecute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTExecutorError setFailedToExecute:](v5, "setFailedToExecute:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTExecutorError)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTExecutorError *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTExecutorError *)self dictionaryRepresentation];
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
  if (self->_whichOneof_Executorerror == 2)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTExecutorError failedToExecute](self, "failedToExecute")}];
    [v3 setObject:v4 forKeyedSubscript:@"failedToExecute"];
  }

  if (self->_other)
  {
    v5 = [(IFTSchemaIFTExecutorError *)self other];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"other"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"other"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichOneof_Executorerror = self->_whichOneof_Executorerror;
    if (whichOneof_Executorerror == [v4 whichOneof_Executorerror])
    {
      v6 = [(IFTSchemaIFTExecutorError *)self other];
      v7 = [v4 other];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(IFTSchemaIFTExecutorError *)self other];
        if (!v9)
        {

LABEL_11:
          failedToExecute = self->_failedToExecute;
          v14 = failedToExecute == [v4 failedToExecute];
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(IFTSchemaIFTExecutorError *)self other];
        v12 = [v4 other];
        v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(IFTSchemaIFTExecutorError *)self other];

  if (v4)
  {
    v5 = [(IFTSchemaIFTExecutorError *)self other];
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

- (void)setFailedToExecute:(BOOL)a3
{
  other = self->_other;
  self->_other = 0;

  self->_whichOneof_Executorerror = 2;
  self->_failedToExecute = a3;
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

- (void)setOther:(id)a3
{
  self->_failedToExecute = 0;
  self->_whichOneof_Executorerror = a3 != 0;
  objc_storeStrong(&self->_other, a3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTExecutorError;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTExecutorError *)self other:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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