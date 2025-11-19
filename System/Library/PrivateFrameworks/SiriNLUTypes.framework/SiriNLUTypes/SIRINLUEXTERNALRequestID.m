@interface SIRINLUEXTERNALRequestID
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequester:(id)a3;
- (int)requester;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALRequestID

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 2))
  {
    [(SIRINLUEXTERNALRequestID *)self setIdA:?];
    v4 = v7;
  }

  nluRequestId = self->_nluRequestId;
  v6 = *(v4 + 4);
  if (nluRequestId)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(SIRINLUEXTERNALUUID *)nluRequestId mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(SIRINLUEXTERNALRequestID *)self setNluRequestId:?];
  }

  v4 = v7;
LABEL_9:
  if (*(v4 + 7))
  {
    [(SIRINLUEXTERNALRequestID *)self setUserId:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    [(SIRINLUEXTERNALRequestID *)self setLoggableUserId:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(SIRINLUEXTERNALRequestID *)self setTrpId:?];
    v4 = v7;
  }

  if (*(v4 + 1))
  {
    [(SIRINLUEXTERNALRequestID *)self setConnectionId:?];
    v4 = v7;
  }

  if (v4[16])
  {
    self->_requester = v4[10];
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_idA hash];
  v4 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId hash];
  v5 = [(NSString *)self->_userId hash];
  v6 = [(NSString *)self->_loggableUserId hash];
  v7 = [(NSString *)self->_trpId hash];
  v8 = [(NSString *)self->_connectionId hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_requester;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  idA = self->_idA;
  if (idA | *(v4 + 2))
  {
    if (![(NSString *)idA isEqual:?])
    {
      goto LABEL_18;
    }
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId | *(v4 + 4))
  {
    if (![(SIRINLUEXTERNALUUID *)nluRequestId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  userId = self->_userId;
  if (userId | *(v4 + 7))
  {
    if (![(NSString *)userId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  loggableUserId = self->_loggableUserId;
  if (loggableUserId | *(v4 + 3))
  {
    if (![(NSString *)loggableUserId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  trpId = self->_trpId;
  if (trpId | *(v4 + 6))
  {
    if (![(NSString *)trpId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  connectionId = self->_connectionId;
  if (connectionId | *(v4 + 1))
  {
    if (![(NSString *)connectionId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v11 = (*(v4 + 64) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) != 0 && self->_requester == *(v4 + 10))
    {
      v11 = 1;
      goto LABEL_19;
    }

LABEL_18:
    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_idA copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_userId copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_loggableUserId copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_trpId copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_connectionId copyWithZone:a3];
  v17 = *(v5 + 8);
  *(v5 + 8) = v16;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_requester;
    *(v5 + 64) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_idA)
  {
    [v4 setIdA:?];
    v4 = v5;
  }

  if (self->_nluRequestId)
  {
    [v5 setNluRequestId:?];
    v4 = v5;
  }

  if (self->_userId)
  {
    [v5 setUserId:?];
    v4 = v5;
  }

  if (self->_loggableUserId)
  {
    [v5 setLoggableUserId:?];
    v4 = v5;
  }

  if (self->_trpId)
  {
    [v5 setTrpId:?];
    v4 = v5;
  }

  if (self->_connectionId)
  {
    [v5 setConnectionId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 10) = self->_requester;
    *(v4 + 64) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_idA)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_userId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_loggableUserId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_trpId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_connectionId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    requester = self->_requester;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  idA = self->_idA;
  if (idA)
  {
    [v3 setObject:idA forKey:@"id_a"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    v7 = [(SIRINLUEXTERNALUUID *)nluRequestId dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"nlu_request_id"];
  }

  userId = self->_userId;
  if (userId)
  {
    [v4 setObject:userId forKey:@"user_id"];
  }

  loggableUserId = self->_loggableUserId;
  if (loggableUserId)
  {
    [v4 setObject:loggableUserId forKey:@"loggable_user_id"];
  }

  trpId = self->_trpId;
  if (trpId)
  {
    [v4 setObject:trpId forKey:@"trp_id"];
  }

  connectionId = self->_connectionId;
  if (connectionId)
  {
    [v4 setObject:connectionId forKey:@"connection_id"];
  }

  if (*&self->_has)
  {
    requester = self->_requester;
    if (requester >= 6)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requester];
    }

    else
    {
      v13 = off_1E8327FB8[requester];
    }

    [v4 setObject:v13 forKey:@"requester"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALRequestID;
  v4 = [(SIRINLUEXTERNALRequestID *)&v8 description];
  v5 = [(SIRINLUEXTERNALRequestID *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsRequester:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CDM_REQUESTER_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CDM_REQUESTER_ORCHESTRATOR"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CDM_REQUESTER_CURARE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CDM_REQUESTER_LIGHTHOUSE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CDM_REQUESTER_XCODE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CDM_REQUESTER_SPOTLIGHT"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)requester
{
  if (*&self->_has)
  {
    return self->_requester;
  }

  else
  {
    return 0;
  }
}

@end