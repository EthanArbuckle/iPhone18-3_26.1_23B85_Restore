@interface POMMESSchemaPOMMESPegasusSearchQueryAmpUserState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusSearchQueryAmpUserState)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESPegasusSearchQueryAmpUserState)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHasItunesSubscriptionStatus:(BOOL)a3;
- (void)setHasHasSharedUserId:(BOOL)a3;
- (void)setHasHasUserToken:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESPegasusSearchQueryAmpUserState

- (POMMESSchemaPOMMESPegasusSearchQueryAmpUserState)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESPegasusSearchQueryAmpUserState;
  v5 = [(POMMESSchemaPOMMESPegasusSearchQueryAmpUserState *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"hasAmpSubscriptionStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusSearchQueryAmpUserState setHasAmpSubscriptionStatus:](v5, "setHasAmpSubscriptionStatus:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"hasItunesSubscriptionStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusSearchQueryAmpUserState setHasItunesSubscriptionStatus:](v5, "setHasItunesSubscriptionStatus:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"hasUserToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusSearchQueryAmpUserState setHasUserToken:](v5, "setHasUserToken:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"hasSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusSearchQueryAmpUserState setHasSharedUserId:](v5, "setHasSharedUserId:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESPegasusSearchQueryAmpUserState)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusSearchQueryAmpUserState *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESPegasusSearchQueryAmpUserState *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusSearchQueryAmpUserState hasAmpSubscriptionStatus](self, "hasAmpSubscriptionStatus")}];
    [v3 setObject:v7 forKeyedSubscript:@"hasAmpSubscriptionStatus"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusSearchQueryAmpUserState hasItunesSubscriptionStatus](self, "hasItunesSubscriptionStatus")}];
  [v3 setObject:v8 forKeyedSubscript:@"hasItunesSubscriptionStatus"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusSearchQueryAmpUserState hasSharedUserId](self, "hasSharedUserId")}];
  [v3 setObject:v9 forKeyedSubscript:@"hasSharedUserId"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusSearchQueryAmpUserState hasUserToken](self, "hasUserToken")}];
    [v3 setObject:v5 forKeyedSubscript:@"hasUserToken"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_hasAmpSubscriptionStatus;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_hasItunesSubscriptionStatus;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_hasUserToken;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_hasSharedUserId;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = v4[12];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    hasAmpSubscriptionStatus = self->_hasAmpSubscriptionStatus;
    if (hasAmpSubscriptionStatus != [v4 hasAmpSubscriptionStatus])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    hasItunesSubscriptionStatus = self->_hasItunesSubscriptionStatus;
    if (hasItunesSubscriptionStatus != [v4 hasItunesSubscriptionStatus])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    hasUserToken = self->_hasUserToken;
    if (hasUserToken == [v4 hasUserToken])
    {
      has = self->_has;
      v6 = v4[12];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    hasSharedUserId = self->_hasSharedUserId;
    if (hasSharedUserId != [v4 hasSharedUserId])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
}

- (void)setHasHasSharedUserId:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHasUserToken:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHasItunesSubscriptionStatus:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end