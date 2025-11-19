@interface POMMESSchemaPOMMESKnowledgeFallbackOffered
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESKnowledgeFallbackOffered)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESKnowledgeFallbackOffered)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasOfferedAgent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESKnowledgeFallbackOffered

- (POMMESSchemaPOMMESKnowledgeFallbackOffered)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESKnowledgeFallbackOffered;
  v5 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"pommesSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)v5 setPommesSessionId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isKnowledgeFallbackConfirmationShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESKnowledgeFallbackOffered setIsKnowledgeFallbackConfirmationShown:](v5, "setIsKnowledgeFallbackConfirmationShown:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"offeredAgent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESKnowledgeFallbackOffered setOfferedAgent:](v5, "setOfferedAgent:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESKnowledgeFallbackOffered)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESKnowledgeFallbackOffered isKnowledgeFallbackConfirmationShown](self, "isKnowledgeFallbackConfirmationShown")}];
    [v3 setObject:v5 forKeyedSubscript:@"isKnowledgeFallbackConfirmationShown"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self offeredAgent]- 1;
    if (v6 > 4)
    {
      v7 = @"GENAIAGENT_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E0E80[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"offeredAgent"];
  }

  if (self->_pommesSessionId)
  {
    v8 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"pommesSessionId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"pommesSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_pommesSessionId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isKnowledgeFallbackConfirmationShown;
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
  v5 = 2654435761 * self->_offeredAgent;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];
  v6 = [v4 pommesSessionId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];
  if (v8)
  {
    v9 = v8;
    v10 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];
    v11 = [v4 pommesSessionId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    isKnowledgeFallbackConfirmationShown = self->_isKnowledgeFallbackConfirmationShown;
    if (isKnowledgeFallbackConfirmationShown == [v4 isKnowledgeFallbackConfirmationShown])
    {
      has = self->_has;
      v14 = v4[24];
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
    offeredAgent = self->_offeredAgent;
    if (offeredAgent != [v4 offeredAgent])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];

  if (v4)
  {
    v5 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (void)setHasOfferedAgent:(BOOL)a3
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
  v9.super_class = POMMESSchemaPOMMESKnowledgeFallbackOffered;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self deletePommesSessionId];
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