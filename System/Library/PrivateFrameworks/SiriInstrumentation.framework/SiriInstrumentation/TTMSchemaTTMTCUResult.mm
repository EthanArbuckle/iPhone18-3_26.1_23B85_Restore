@interface TTMSchemaTTMTCUResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTMSchemaTTMTCUResult)initWithDictionary:(id)dictionary;
- (TTMSchemaTTMTCUResult)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDecisionSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation TTMSchemaTTMTCUResult

- (TTMSchemaTTMTCUResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = TTMSchemaTTMTCUResult;
  v5 = [(TTMSchemaTTMTCUResult *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tcuId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTMSchemaTTMTCUResult *)v5 setTcuId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"decision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMTCUResult setDecision:](v5, "setDecision:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"decisionSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMTCUResult setDecisionSource:](v5, "setDecisionSource:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (TTMSchemaTTMTCUResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTMSchemaTTMTCUResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTMSchemaTTMTCUResult *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [(TTMSchemaTTMTCUResult *)self decision]- 1;
    if (v5 > 5)
    {
      v6 = @"TTMTCUMITIGATIONDECISION_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E8078[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"decision"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    decisionSource = [(TTMSchemaTTMTCUResult *)self decisionSource];
    v8 = @"TTMDECISIONSOURCE_UNKNOWN";
    if (decisionSource == 1)
    {
      v8 = @"TTMDECISIONSOURCE_SIRI_DIRECTED_SPEECH_DETECTOR";
    }

    if (decisionSource == 2)
    {
      v9 = @"TTMDECISIONSOURCE_OVERRIDE";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"decisionSource"];
  }

  if (self->_tcuId)
  {
    tcuId = [(TTMSchemaTTMTCUResult *)self tcuId];
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
    v4 = 2654435761 * self->_decision;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_decisionSource;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  tcuId = [(TTMSchemaTTMTCUResult *)self tcuId];
  tcuId2 = [equalCopy tcuId];
  v7 = tcuId2;
  if ((tcuId != 0) == (tcuId2 == 0))
  {

    goto LABEL_16;
  }

  tcuId3 = [(TTMSchemaTTMTCUResult *)self tcuId];
  if (tcuId3)
  {
    v9 = tcuId3;
    tcuId4 = [(TTMSchemaTTMTCUResult *)self tcuId];
    tcuId5 = [equalCopy tcuId];
    v12 = [tcuId4 isEqual:tcuId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    decision = self->_decision;
    if (decision == [equalCopy decision])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    decisionSource = self->_decisionSource;
    if (decisionSource != [equalCopy decisionSource])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  tcuId = [(TTMSchemaTTMTCUResult *)self tcuId];

  if (tcuId)
  {
    tcuId2 = [(TTMSchemaTTMTCUResult *)self tcuId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (void)setHasDecisionSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = TTMSchemaTTMTCUResult;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(TTMSchemaTTMTCUResult *)self tcuId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(TTMSchemaTTMTCUResult *)self deleteTcuId];
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