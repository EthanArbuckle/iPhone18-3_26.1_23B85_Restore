@interface NETSchemaNETSessionConnectionFailed
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETSessionConnectionFailed)initWithDictionary:(id)a3;
- (NETSchemaNETSessionConnectionFailed)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConnectionMode:(BOOL)a3;
- (void)setHasIsDormant:(BOOL)a3;
- (void)setHasIsWwanPreferred:(BOOL)a3;
- (void)setHasNetworkSessionState:(BOOL)a3;
- (void)setHasSendBufferSize:(BOOL)a3;
- (void)setHasSessionType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETSessionConnectionFailed

- (NETSchemaNETSessionConnectionFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NETSchemaNETSessionConnectionFailed;
  v5 = [(NETSchemaNETSessionConnectionFailed *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"connectionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setConnectionType:](v5, "setConnectionType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"connectionMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setConnectionMode:](v5, "setConnectionMode:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"sessionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setSessionType:](v5, "setSessionType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"networkSessionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setNetworkSessionState:](v5, "setNetworkSessionState:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:{@"isWwanPreferred", v9}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setIsWwanPreferred:](v5, "setIsWwanPreferred:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isDormant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setIsDormant:](v5, "setIsDormant:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"sendBufferSize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setSendBufferSize:](v5, "setSendBufferSize:", [v12 unsignedLongLongValue]);
    }

    v22 = v7;
    v23 = v6;
    v13 = [v4 objectForKeyedSubscript:@"policyId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(NETSchemaNETSessionConnectionFailed *)v5 setPolicyId:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[NETSchemaNETError alloc] initWithDictionary:v15];
      [(NETSchemaNETSessionConnectionFailed *)v5 setError:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"underlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[NETSchemaNETError alloc] initWithDictionary:v17];
      [(NETSchemaNETSessionConnectionFailed *)v5 setUnderlyingError:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (NETSchemaNETSessionConnectionFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETSessionConnectionFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETSessionConnectionFailed *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [(NETSchemaNETSessionConnectionFailed *)self connectionMode];
    v6 = @"NETCONNECTIONMODE_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"NETCONNECTIONMODE_ASSISTANT";
    }

    if (v5 == 2)
    {
      v7 = @"NETCONNECTIONMODE_ASSISTANT_AND_DICTATION";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"connectionMode"];
    has = self->_has;
  }

  if (has)
  {
    v8 = [(NETSchemaNETSessionConnectionFailed *)self connectionType]- 1;
    if (v8 > 0x16)
    {
      v9 = @"NETCONNECTIONTYPE_UNKNOWN";
    }

    else
    {
      v9 = off_1E78DB268[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"connectionType"];
  }

  if (self->_error)
  {
    v10 = [(NETSchemaNETSessionConnectionFailed *)self error];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"error"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"error"];
    }
  }

  v13 = self->_has;
  if ((v13 & 0x20) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETSessionConnectionFailed isDormant](self, "isDormant")}];
    [v3 setObject:v14 forKeyedSubscript:@"isDormant"];

    v13 = self->_has;
    if ((v13 & 0x10) == 0)
    {
LABEL_20:
      if ((v13 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_20;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETSessionConnectionFailed isWwanPreferred](self, "isWwanPreferred")}];
  [v3 setObject:v15 forKeyedSubscript:@"isWwanPreferred"];

  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = [(NETSchemaNETSessionConnectionFailed *)self networkSessionState]- 1;
  if (v16 > 0xB)
  {
    v17 = @"NETSESSIONSTATE_UNKNOWN";
  }

  else
  {
    v17 = off_1E78DB320[v16];
  }

  [v3 setObject:v17 forKeyedSubscript:@"networkSessionState"];
LABEL_28:
  if (self->_policyId)
  {
    v18 = [(NETSchemaNETSessionConnectionFailed *)self policyId];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"policyId"];
  }

  v20 = self->_has;
  if ((v20 & 0x40) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETSessionConnectionFailed sendBufferSize](self, "sendBufferSize")}];
    [v3 setObject:v21 forKeyedSubscript:@"sendBufferSize"];

    v20 = self->_has;
  }

  if ((v20 & 4) != 0)
  {
    v22 = [(NETSchemaNETSessionConnectionFailed *)self sessionType]- 1;
    if (v22 > 3)
    {
      v23 = @"NETSESSIONTYPE_UNKNOWN";
    }

    else
    {
      v23 = off_1E78DB380[v22];
    }

    [v3 setObject:v23 forKeyedSubscript:@"sessionType"];
  }

  if (self->_underlyingError)
  {
    v24 = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"underlyingError"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"underlyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_connectionType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_connectionMode;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_sessionType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_networkSessionState;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_isWwanPreferred;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v8 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v8 = 2654435761 * self->_isDormant;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v9 = 2654435761u * self->_sendBufferSize;
LABEL_16:
  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSString *)self->_policyId hash];
  v11 = [(NETSchemaNETError *)self->_error hash];
  return v10 ^ v11 ^ [(NETSchemaNETError *)self->_underlyingError hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  has = self->_has;
  v6 = v4[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_44;
  }

  if (*&has)
  {
    connectionType = self->_connectionType;
    if (connectionType != [v4 connectionType])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v6 = v4[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      connectionMode = self->_connectionMode;
      if (connectionMode != [v4 connectionMode])
      {
        goto LABEL_44;
      }

      has = self->_has;
      v6 = v4[64];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        sessionType = self->_sessionType;
        if (sessionType != [v4 sessionType])
        {
          goto LABEL_44;
        }

        has = self->_has;
        v6 = v4[64];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          networkSessionState = self->_networkSessionState;
          if (networkSessionState != [v4 networkSessionState])
          {
            goto LABEL_44;
          }

          has = self->_has;
          v6 = v4[64];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            isWwanPreferred = self->_isWwanPreferred;
            if (isWwanPreferred != [v4 isWwanPreferred])
            {
              goto LABEL_44;
            }

            has = self->_has;
            v6 = v4[64];
          }

          v16 = (*&has >> 5) & 1;
          if (v16 == ((v6 >> 5) & 1))
          {
            if (v16)
            {
              isDormant = self->_isDormant;
              if (isDormant != [v4 isDormant])
              {
                goto LABEL_44;
              }

              has = self->_has;
              v6 = v4[64];
            }

            v18 = (*&has >> 6) & 1;
            if (v18 != ((v6 >> 6) & 1))
            {
              goto LABEL_44;
            }

            if (v18)
            {
              sendBufferSize = self->_sendBufferSize;
              if (sendBufferSize != [v4 sendBufferSize])
              {
                goto LABEL_44;
              }
            }

            v20 = [(NETSchemaNETSessionConnectionFailed *)self policyId];
            v21 = [v4 policyId];
            if ((v20 != 0) == (v21 == 0))
            {
              goto LABEL_43;
            }

            v22 = [(NETSchemaNETSessionConnectionFailed *)self policyId];
            if (v22)
            {
              v23 = v22;
              v24 = [(NETSchemaNETSessionConnectionFailed *)self policyId];
              v25 = [v4 policyId];
              v26 = [v24 isEqual:v25];

              if (!v26)
              {
                goto LABEL_44;
              }
            }

            else
            {
            }

            v20 = [(NETSchemaNETSessionConnectionFailed *)self error];
            v21 = [v4 error];
            if ((v20 != 0) == (v21 == 0))
            {
              goto LABEL_43;
            }

            v27 = [(NETSchemaNETSessionConnectionFailed *)self error];
            if (v27)
            {
              v28 = v27;
              v29 = [(NETSchemaNETSessionConnectionFailed *)self error];
              v30 = [v4 error];
              v31 = [v29 isEqual:v30];

              if (!v31)
              {
                goto LABEL_44;
              }
            }

            else
            {
            }

            v20 = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
            v21 = [v4 underlyingError];
            if ((v20 != 0) != (v21 == 0))
            {
              v32 = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
              if (!v32)
              {

LABEL_47:
                v37 = 1;
                goto LABEL_45;
              }

              v33 = v32;
              v34 = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
              v35 = [v4 underlyingError];
              v36 = [v34 isEqual:v35];

              if (v36)
              {
                goto LABEL_47;
              }
            }

            else
            {
LABEL_43:
            }
          }
        }
      }
    }
  }

LABEL_44:
  v37 = 0;
LABEL_45:

  return v37;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_23:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint64Field();
  }

LABEL_9:
  v5 = [(NETSchemaNETSessionConnectionFailed *)self policyId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(NETSchemaNETSessionConnectionFailed *)self error];

  if (v6)
  {
    v7 = [(NETSchemaNETSessionConnectionFailed *)self error];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];

  v9 = v11;
  if (v8)
  {
    v10 = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)setHasSendBufferSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsDormant:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsWwanPreferred:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNetworkSessionState:(BOOL)a3
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

- (void)setHasSessionType:(BOOL)a3
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

- (void)setHasConnectionMode:(BOOL)a3
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
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NETSchemaNETSessionConnectionFailed;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(NETSchemaNETSessionConnectionFailed *)self error];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NETSchemaNETSessionConnectionFailed *)self deleteError];
  }

  v9 = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NETSchemaNETSessionConnectionFailed *)self deleteUnderlyingError];
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