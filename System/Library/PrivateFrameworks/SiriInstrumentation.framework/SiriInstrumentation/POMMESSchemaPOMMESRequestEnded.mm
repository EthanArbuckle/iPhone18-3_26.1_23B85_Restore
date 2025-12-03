@interface POMMESSchemaPOMMESRequestEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESRequestEnded)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESRequestEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPommesSearchReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESRequestEnded

- (POMMESSchemaPOMMESRequestEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = POMMESSchemaPOMMESRequestEnded;
  v5 = [(POMMESSchemaPOMMESRequestEnded *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isHandledByPreflight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestEnded setIsHandledByPreflight:](v5, "setIsHandledByPreflight:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[POMMESSchemaPOMMESRequestResult alloc] initWithDictionary:v7];
      [(POMMESSchemaPOMMESRequestEnded *)v5 setResult:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"preflightClientHandlerIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(POMMESSchemaPOMMESRequestEnded *)v5 setPreflightClientHandlerIdentifier:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"pommesSearchReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestEnded setPommesSearchReason:](v5, "setPommesSearchReason:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESRequestEnded *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESRequestEnded isHandledByPreflight](self, "isHandledByPreflight")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isHandledByPreflight"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESRequestEnded pommesSearchReason](self, "pommesSearchReason")}];
    [dictionary setObject:v6 forKeyedSubscript:@"pommesSearchReason"];
  }

  if (self->_preflightClientHandlerIdentifier)
  {
    preflightClientHandlerIdentifier = [(POMMESSchemaPOMMESRequestEnded *)self preflightClientHandlerIdentifier];
    v8 = [preflightClientHandlerIdentifier copy];
    [dictionary setObject:v8 forKeyedSubscript:@"preflightClientHandlerIdentifier"];
  }

  if (self->_result)
  {
    result = [(POMMESSchemaPOMMESRequestEnded *)self result];
    dictionaryRepresentation = [result dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"result"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"result"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isHandledByPreflight;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(POMMESSchemaPOMMESRequestResult *)self->_result hash];
  v5 = [(NSString *)self->_preflightClientHandlerIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_pommesSearchReason;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isHandledByPreflight = self->_isHandledByPreflight;
    if (isHandledByPreflight != [equalCopy isHandledByPreflight])
    {
      goto LABEL_15;
    }
  }

  result = [(POMMESSchemaPOMMESRequestEnded *)self result];
  result2 = [equalCopy result];
  if ((result != 0) == (result2 == 0))
  {
    goto LABEL_14;
  }

  result3 = [(POMMESSchemaPOMMESRequestEnded *)self result];
  if (result3)
  {
    v9 = result3;
    result4 = [(POMMESSchemaPOMMESRequestEnded *)self result];
    result5 = [equalCopy result];
    v12 = [result4 isEqual:result5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  result = [(POMMESSchemaPOMMESRequestEnded *)self preflightClientHandlerIdentifier];
  result2 = [equalCopy preflightClientHandlerIdentifier];
  if ((result != 0) == (result2 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  preflightClientHandlerIdentifier = [(POMMESSchemaPOMMESRequestEnded *)self preflightClientHandlerIdentifier];
  if (preflightClientHandlerIdentifier)
  {
    v14 = preflightClientHandlerIdentifier;
    preflightClientHandlerIdentifier2 = [(POMMESSchemaPOMMESRequestEnded *)self preflightClientHandlerIdentifier];
    preflightClientHandlerIdentifier3 = [equalCopy preflightClientHandlerIdentifier];
    v17 = [preflightClientHandlerIdentifier2 isEqual:preflightClientHandlerIdentifier3];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 1) & 1;
  if (v20 == ((equalCopy[36] >> 1) & 1))
  {
    if (!v20 || (pommesSearchReason = self->_pommesSearchReason, pommesSearchReason == [equalCopy pommesSearchReason]))
    {
      v18 = 1;
      goto LABEL_16;
    }
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  result = [(POMMESSchemaPOMMESRequestEnded *)self result];

  if (result)
  {
    result2 = [(POMMESSchemaPOMMESRequestEnded *)self result];
    PBDataWriterWriteSubmessage();
  }

  preflightClientHandlerIdentifier = [(POMMESSchemaPOMMESRequestEnded *)self preflightClientHandlerIdentifier];

  if (preflightClientHandlerIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasPommesSearchReason:(BOOL)reason
{
  if (reason)
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
  v9.super_class = POMMESSchemaPOMMESRequestEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESRequestEnded *)self result:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(POMMESSchemaPOMMESRequestEnded *)self deleteResult];
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