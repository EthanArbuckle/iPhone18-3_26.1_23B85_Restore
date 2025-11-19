@interface POMMESSchemaPOMMESRequestEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESRequestEnded)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESRequestEnded)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPommesSearchReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESRequestEnded

- (POMMESSchemaPOMMESRequestEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = POMMESSchemaPOMMESRequestEnded;
  v5 = [(POMMESSchemaPOMMESRequestEnded *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isHandledByPreflight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestEnded setIsHandledByPreflight:](v5, "setIsHandledByPreflight:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[POMMESSchemaPOMMESRequestResult alloc] initWithDictionary:v7];
      [(POMMESSchemaPOMMESRequestEnded *)v5 setResult:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"preflightClientHandlerIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(POMMESSchemaPOMMESRequestEnded *)v5 setPreflightClientHandlerIdentifier:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"pommesSearchReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestEnded setPommesSearchReason:](v5, "setPommesSearchReason:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESRequestEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESRequestEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESRequestEnded *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESRequestEnded isHandledByPreflight](self, "isHandledByPreflight")}];
    [v3 setObject:v5 forKeyedSubscript:@"isHandledByPreflight"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESRequestEnded pommesSearchReason](self, "pommesSearchReason")}];
    [v3 setObject:v6 forKeyedSubscript:@"pommesSearchReason"];
  }

  if (self->_preflightClientHandlerIdentifier)
  {
    v7 = [(POMMESSchemaPOMMESRequestEnded *)self preflightClientHandlerIdentifier];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"preflightClientHandlerIdentifier"];
  }

  if (self->_result)
  {
    v9 = [(POMMESSchemaPOMMESRequestEnded *)self result];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"result"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"result"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isHandledByPreflight = self->_isHandledByPreflight;
    if (isHandledByPreflight != [v4 isHandledByPreflight])
    {
      goto LABEL_15;
    }
  }

  v6 = [(POMMESSchemaPOMMESRequestEnded *)self result];
  v7 = [v4 result];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(POMMESSchemaPOMMESRequestEnded *)self result];
  if (v8)
  {
    v9 = v8;
    v10 = [(POMMESSchemaPOMMESRequestEnded *)self result];
    v11 = [v4 result];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESRequestEnded *)self preflightClientHandlerIdentifier];
  v7 = [v4 preflightClientHandlerIdentifier];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v13 = [(POMMESSchemaPOMMESRequestEnded *)self preflightClientHandlerIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = [(POMMESSchemaPOMMESRequestEnded *)self preflightClientHandlerIdentifier];
    v16 = [v4 preflightClientHandlerIdentifier];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 1) & 1;
  if (v20 == ((v4[36] >> 1) & 1))
  {
    if (!v20 || (pommesSearchReason = self->_pommesSearchReason, pommesSearchReason == [v4 pommesSearchReason]))
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

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(POMMESSchemaPOMMESRequestEnded *)self result];

  if (v4)
  {
    v5 = [(POMMESSchemaPOMMESRequestEnded *)self result];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(POMMESSchemaPOMMESRequestEnded *)self preflightClientHandlerIdentifier];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasPommesSearchReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESRequestEnded;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESRequestEnded *)self result:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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