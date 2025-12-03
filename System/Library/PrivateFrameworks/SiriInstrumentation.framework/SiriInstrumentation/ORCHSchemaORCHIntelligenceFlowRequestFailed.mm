@interface ORCHSchemaORCHIntelligenceFlowRequestFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHIntelligenceFlowRequestFailed)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHIntelligenceFlowRequestFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsSiriXFallback:(BOOL)fallback;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHIntelligenceFlowRequestFailed

- (ORCHSchemaORCHIntelligenceFlowRequestFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ORCHSchemaORCHIntelligenceFlowRequestFailed;
  v5 = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHIntelligenceFlowRequestFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isSiriXFallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHIntelligenceFlowRequestFailed setIsSiriXFallback:](v5, "setIsSiriXFallback:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ifflowError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHIFFlowError alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)v5 setIfflowError:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHIntelligenceFlowRequestFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self dictionaryRepresentation];
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
  if (self->_ifflowError)
  {
    ifflowError = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self ifflowError];
    dictionaryRepresentation = [ifflowError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ifflowError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ifflowError"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHIntelligenceFlowRequestFailed isSiriXFallback](self, "isSiriXFallback")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isSiriXFallback"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self reason]- 1;
    if (v9 > 0x13)
    {
      v10 = @"ORCHINTELLIGENCEFLOWFAILUREREASON_UNKNOWN";
    }

    else
    {
      v10 = off_1E78DEC08[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_reason;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(ORCHSchemaORCHIFFlowError *)self->_ifflowError hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_isSiriXFallback;
  return v7 ^ v6 ^ [(ORCHSchemaORCHIFFlowError *)self->_ifflowError hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    reason = self->_reason;
    if (reason != [equalCopy reason])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (isSiriXFallback = self->_isSiriXFallback, isSiriXFallback == [equalCopy isSiriXFallback]))
    {
      ifflowError = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self ifflowError];
      ifflowError2 = [equalCopy ifflowError];
      v12 = ifflowError2;
      if ((ifflowError != 0) != (ifflowError2 == 0))
      {
        ifflowError3 = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self ifflowError];
        if (!ifflowError3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = ifflowError3;
        ifflowError4 = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self ifflowError];
        ifflowError5 = [equalCopy ifflowError];
        v17 = [ifflowError4 isEqual:ifflowError5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  ifflowError = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self ifflowError];

  v6 = toCopy;
  if (ifflowError)
  {
    ifflowError2 = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self ifflowError];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasIsSiriXFallback:(BOOL)fallback
{
  if (fallback)
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
  v9.super_class = ORCHSchemaORCHIntelligenceFlowRequestFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self ifflowError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ORCHSchemaORCHIntelligenceFlowRequestFailed *)self deleteIfflowError];
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