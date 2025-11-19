@interface IFTSchemaIFTPlannerError
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTIntelligenceFlowError)networkError;
- (IFTSchemaIFTIntelligenceFlowError)other;
- (IFTSchemaIFTPlannerError)initWithDictionary:(id)a3;
- (IFTSchemaIFTPlannerError)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFailedToPlan;
- (void)deleteNetworkError;
- (void)deleteOther;
- (void)setFailedToPlan:(BOOL)a3;
- (void)setNetworkError:(id)a3;
- (void)setOther:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTPlannerError

- (IFTSchemaIFTPlannerError)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTPlannerError;
  v5 = [(IFTSchemaIFTPlannerError *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"other"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(IFTSchemaIFTPlannerError *)v5 setOther:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"failedToPlan"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPlannerError setFailedToPlan:](v5, "setFailedToPlan:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"networkError"];
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

- (IFTSchemaIFTPlannerError)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTPlannerError *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTPlannerError *)self dictionaryRepresentation];
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
  if (self->_whichOneof_Plannererror == 2)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPlannerError failedToPlan](self, "failedToPlan")}];
    [v3 setObject:v4 forKeyedSubscript:@"failedToPlan"];
  }

  if (self->_networkError)
  {
    v5 = [(IFTSchemaIFTPlannerError *)self networkError];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"networkError"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"networkError"];
    }
  }

  if (self->_other)
  {
    v8 = [(IFTSchemaIFTPlannerError *)self other];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"other"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"other"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  whichOneof_Plannererror = self->_whichOneof_Plannererror;
  if (whichOneof_Plannererror != [v4 whichOneof_Plannererror])
  {
    goto LABEL_14;
  }

  v6 = [(IFTSchemaIFTPlannerError *)self other];
  v7 = [v4 other];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_13;
  }

  v8 = [(IFTSchemaIFTPlannerError *)self other];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTPlannerError *)self other];
    v11 = [v4 other];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  failedToPlan = self->_failedToPlan;
  if (failedToPlan != [v4 failedToPlan])
  {
    goto LABEL_14;
  }

  v6 = [(IFTSchemaIFTPlannerError *)self networkError];
  v7 = [v4 networkError];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_13:

    goto LABEL_14;
  }

  v14 = [(IFTSchemaIFTPlannerError *)self networkError];
  if (!v14)
  {

LABEL_17:
    v19 = 1;
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [(IFTSchemaIFTPlannerError *)self networkError];
  v17 = [v4 networkError];
  v18 = [v16 isEqual:v17];

  if (v18)
  {
    goto LABEL_17;
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(IFTSchemaIFTPlannerError *)self other];

  if (v4)
  {
    v5 = [(IFTSchemaIFTPlannerError *)self other];
    PBDataWriterWriteSubmessage();
  }

  if (self->_whichOneof_Plannererror == 2)
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(IFTSchemaIFTPlannerError *)self networkError];

  v7 = v9;
  if (v6)
  {
    v8 = [(IFTSchemaIFTPlannerError *)self networkError];
    PBDataWriterWriteSubmessage();

    v7 = v9;
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

- (void)setNetworkError:(id)a3
{
  v4 = a3;
  other = self->_other;
  self->_other = 0;

  self->_failedToPlan = 0;
  v6 = 3;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichOneof_Plannererror = v6;
  networkError = self->_networkError;
  self->_networkError = v4;
}

- (void)deleteFailedToPlan
{
  if (self->_whichOneof_Plannererror == 2)
  {
    self->_whichOneof_Plannererror = 0;
    self->_failedToPlan = 0;
  }
}

- (void)setFailedToPlan:(BOOL)a3
{
  other = self->_other;
  self->_other = 0;

  networkError = self->_networkError;
  self->_networkError = 0;

  self->_whichOneof_Plannererror = 2;
  self->_failedToPlan = a3;
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

- (void)setOther:(id)a3
{
  v4 = a3;
  self->_failedToPlan = 0;
  networkError = self->_networkError;
  self->_networkError = 0;

  self->_whichOneof_Plannererror = v4 != 0;
  other = self->_other;
  self->_other = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTPlannerError;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTPlannerError *)self other];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTPlannerError *)self deleteOther];
  }

  v9 = [(IFTSchemaIFTPlannerError *)self networkError];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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