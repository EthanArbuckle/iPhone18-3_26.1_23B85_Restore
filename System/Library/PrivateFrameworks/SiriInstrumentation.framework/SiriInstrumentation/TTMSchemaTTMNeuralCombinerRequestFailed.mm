@interface TTMSchemaTTMNeuralCombinerRequestFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTMSchemaTTMNeuralCombinerRequestFailed)initWithDictionary:(id)dictionary;
- (TTMSchemaTTMNeuralCombinerRequestFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation TTMSchemaTTMNeuralCombinerRequestFailed

- (TTMSchemaTTMNeuralCombinerRequestFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = TTMSchemaTTMNeuralCombinerRequestFailed;
  v5 = [(TTMSchemaTTMNeuralCombinerRequestFailed *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tcuId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTMSchemaTTMNeuralCombinerRequestFailed *)v5 setTcuId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMNeuralCombinerRequestFailed setReason:](v5, "setReason:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (TTMSchemaTTMNeuralCombinerRequestFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTMSchemaTTMNeuralCombinerRequestFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTMSchemaTTMNeuralCombinerRequestFailed *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(TTMSchemaTTMNeuralCombinerRequestFailed *)self reason]- 1;
    if (v4 > 2)
    {
      v5 = @"TTMNEURALCOMBINERFAILUREREASON_UNKNONW";
    }

    else
    {
      v5 = off_1E78E7EA8[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"reason"];
  }

  if (self->_tcuId)
  {
    tcuId = [(TTMSchemaTTMNeuralCombinerRequestFailed *)self tcuId];
    dictionaryRepresentation = [tcuId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"tcuId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"tcuId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_tcuId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_reason;
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
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  tcuId = [(TTMSchemaTTMNeuralCombinerRequestFailed *)self tcuId];
  tcuId2 = [equalCopy tcuId];
  v7 = tcuId2;
  if ((tcuId != 0) == (tcuId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  tcuId3 = [(TTMSchemaTTMNeuralCombinerRequestFailed *)self tcuId];
  if (tcuId3)
  {
    v9 = tcuId3;
    tcuId4 = [(TTMSchemaTTMNeuralCombinerRequestFailed *)self tcuId];
    tcuId5 = [equalCopy tcuId];
    v12 = [tcuId4 isEqual:tcuId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason != [equalCopy reason])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  tcuId = [(TTMSchemaTTMNeuralCombinerRequestFailed *)self tcuId];

  if (tcuId)
  {
    tcuId2 = [(TTMSchemaTTMNeuralCombinerRequestFailed *)self tcuId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = TTMSchemaTTMNeuralCombinerRequestFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(TTMSchemaTTMNeuralCombinerRequestFailed *)self tcuId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(TTMSchemaTTMNeuralCombinerRequestFailed *)self deleteTcuId];
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