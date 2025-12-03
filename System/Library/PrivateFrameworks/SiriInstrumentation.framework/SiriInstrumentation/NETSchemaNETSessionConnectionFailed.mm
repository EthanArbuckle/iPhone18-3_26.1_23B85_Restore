@interface NETSchemaNETSessionConnectionFailed
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETSessionConnectionFailed)initWithDictionary:(id)dictionary;
- (NETSchemaNETSessionConnectionFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConnectionMode:(BOOL)mode;
- (void)setHasIsDormant:(BOOL)dormant;
- (void)setHasIsWwanPreferred:(BOOL)preferred;
- (void)setHasNetworkSessionState:(BOOL)state;
- (void)setHasSendBufferSize:(BOOL)size;
- (void)setHasSessionType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETSessionConnectionFailed

- (NETSchemaNETSessionConnectionFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = NETSchemaNETSessionConnectionFailed;
  v5 = [(NETSchemaNETSessionConnectionFailed *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"connectionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setConnectionType:](v5, "setConnectionType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"connectionMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setConnectionMode:](v5, "setConnectionMode:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sessionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setSessionType:](v5, "setSessionType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"networkSessionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setNetworkSessionState:](v5, "setNetworkSessionState:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"isWwanPreferred", v9}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setIsWwanPreferred:](v5, "setIsWwanPreferred:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isDormant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setIsDormant:](v5, "setIsDormant:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"sendBufferSize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionFailed setSendBufferSize:](v5, "setSendBufferSize:", [v12 unsignedLongLongValue]);
    }

    v22 = v7;
    v23 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"policyId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(NETSchemaNETSessionConnectionFailed *)v5 setPolicyId:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[NETSchemaNETError alloc] initWithDictionary:v15];
      [(NETSchemaNETSessionConnectionFailed *)v5 setError:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"underlyingError"];
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

- (NETSchemaNETSessionConnectionFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETSessionConnectionFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETSessionConnectionFailed *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    connectionMode = [(NETSchemaNETSessionConnectionFailed *)self connectionMode];
    v6 = @"NETCONNECTIONMODE_UNKNOWN";
    if (connectionMode == 1)
    {
      v6 = @"NETCONNECTIONMODE_ASSISTANT";
    }

    if (connectionMode == 2)
    {
      v7 = @"NETCONNECTIONMODE_ASSISTANT_AND_DICTATION";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"connectionMode"];
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

    [dictionary setObject:v9 forKeyedSubscript:@"connectionType"];
  }

  if (self->_error)
  {
    error = [(NETSchemaNETSessionConnectionFailed *)self error];
    dictionaryRepresentation = [error dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"error"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"error"];
    }
  }

  v13 = self->_has;
  if ((v13 & 0x20) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETSessionConnectionFailed isDormant](self, "isDormant")}];
    [dictionary setObject:v14 forKeyedSubscript:@"isDormant"];

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
  [dictionary setObject:v15 forKeyedSubscript:@"isWwanPreferred"];

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

  [dictionary setObject:v17 forKeyedSubscript:@"networkSessionState"];
LABEL_28:
  if (self->_policyId)
  {
    policyId = [(NETSchemaNETSessionConnectionFailed *)self policyId];
    v19 = [policyId copy];
    [dictionary setObject:v19 forKeyedSubscript:@"policyId"];
  }

  v20 = self->_has;
  if ((v20 & 0x40) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETSessionConnectionFailed sendBufferSize](self, "sendBufferSize")}];
    [dictionary setObject:v21 forKeyedSubscript:@"sendBufferSize"];

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

    [dictionary setObject:v23 forKeyedSubscript:@"sessionType"];
  }

  if (self->_underlyingError)
  {
    underlyingError = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
    dictionaryRepresentation2 = [underlyingError dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"underlyingError"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"underlyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  has = self->_has;
  v6 = equalCopy[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_44;
  }

  if (*&has)
  {
    connectionType = self->_connectionType;
    if (connectionType != [equalCopy connectionType])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      connectionMode = self->_connectionMode;
      if (connectionMode != [equalCopy connectionMode])
      {
        goto LABEL_44;
      }

      has = self->_has;
      v6 = equalCopy[64];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        sessionType = self->_sessionType;
        if (sessionType != [equalCopy sessionType])
        {
          goto LABEL_44;
        }

        has = self->_has;
        v6 = equalCopy[64];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          networkSessionState = self->_networkSessionState;
          if (networkSessionState != [equalCopy networkSessionState])
          {
            goto LABEL_44;
          }

          has = self->_has;
          v6 = equalCopy[64];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            isWwanPreferred = self->_isWwanPreferred;
            if (isWwanPreferred != [equalCopy isWwanPreferred])
            {
              goto LABEL_44;
            }

            has = self->_has;
            v6 = equalCopy[64];
          }

          v16 = (*&has >> 5) & 1;
          if (v16 == ((v6 >> 5) & 1))
          {
            if (v16)
            {
              isDormant = self->_isDormant;
              if (isDormant != [equalCopy isDormant])
              {
                goto LABEL_44;
              }

              has = self->_has;
              v6 = equalCopy[64];
            }

            v18 = (*&has >> 6) & 1;
            if (v18 != ((v6 >> 6) & 1))
            {
              goto LABEL_44;
            }

            if (v18)
            {
              sendBufferSize = self->_sendBufferSize;
              if (sendBufferSize != [equalCopy sendBufferSize])
              {
                goto LABEL_44;
              }
            }

            policyId = [(NETSchemaNETSessionConnectionFailed *)self policyId];
            policyId2 = [equalCopy policyId];
            if ((policyId != 0) == (policyId2 == 0))
            {
              goto LABEL_43;
            }

            policyId3 = [(NETSchemaNETSessionConnectionFailed *)self policyId];
            if (policyId3)
            {
              v23 = policyId3;
              policyId4 = [(NETSchemaNETSessionConnectionFailed *)self policyId];
              policyId5 = [equalCopy policyId];
              v26 = [policyId4 isEqual:policyId5];

              if (!v26)
              {
                goto LABEL_44;
              }
            }

            else
            {
            }

            policyId = [(NETSchemaNETSessionConnectionFailed *)self error];
            policyId2 = [equalCopy error];
            if ((policyId != 0) == (policyId2 == 0))
            {
              goto LABEL_43;
            }

            error = [(NETSchemaNETSessionConnectionFailed *)self error];
            if (error)
            {
              v28 = error;
              error2 = [(NETSchemaNETSessionConnectionFailed *)self error];
              error3 = [equalCopy error];
              v31 = [error2 isEqual:error3];

              if (!v31)
              {
                goto LABEL_44;
              }
            }

            else
            {
            }

            policyId = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
            policyId2 = [equalCopy underlyingError];
            if ((policyId != 0) != (policyId2 == 0))
            {
              underlyingError = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
              if (!underlyingError)
              {

LABEL_47:
                v37 = 1;
                goto LABEL_45;
              }

              v33 = underlyingError;
              underlyingError2 = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
              underlyingError3 = [equalCopy underlyingError];
              v36 = [underlyingError2 isEqual:underlyingError3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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
  policyId = [(NETSchemaNETSessionConnectionFailed *)self policyId];

  if (policyId)
  {
    PBDataWriterWriteStringField();
  }

  error = [(NETSchemaNETSessionConnectionFailed *)self error];

  if (error)
  {
    error2 = [(NETSchemaNETSessionConnectionFailed *)self error];
    PBDataWriterWriteSubmessage();
  }

  underlyingError = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];

  v9 = toCopy;
  if (underlyingError)
  {
    underlyingError2 = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)setHasSendBufferSize:(BOOL)size
{
  if (size)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsDormant:(BOOL)dormant
{
  if (dormant)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsWwanPreferred:(BOOL)preferred
{
  if (preferred)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNetworkSessionState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSessionType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasConnectionMode:(BOOL)mode
{
  if (mode)
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
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = NETSchemaNETSessionConnectionFailed;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  error = [(NETSchemaNETSessionConnectionFailed *)self error];
  v7 = [error applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NETSchemaNETSessionConnectionFailed *)self deleteError];
  }

  underlyingError = [(NETSchemaNETSessionConnectionFailed *)self underlyingError];
  v10 = [underlyingError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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