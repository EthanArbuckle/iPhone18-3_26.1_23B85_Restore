@interface SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)self setSessionId:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)self setClientSessionId:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)self setClientRequestId:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionId hash];
  v4 = [(NSString *)self->_clientSessionId hash]^ v3;
  return v4 ^ [(NSString *)self->_clientRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((sessionId = self->_sessionId, !(sessionId | v4[3])) || -[NSString isEqual:](sessionId, "isEqual:")) && ((clientSessionId = self->_clientSessionId, !(clientSessionId | v4[2])) || -[NSString isEqual:](clientSessionId, "isEqual:")))
  {
    clientRequestId = self->_clientRequestId;
    if (clientRequestId | v4[1])
    {
      v8 = [(NSString *)clientRequestId isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sessionId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_clientSessionId copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_clientRequestId copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sessionId)
  {
    [v4 setSessionId:?];
    v4 = v5;
  }

  if (self->_clientSessionId)
  {
    [v5 setClientSessionId:?];
    v4 = v5;
  }

  if (self->_clientRequestId)
  {
    [v5 setClientRequestId:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_clientSessionId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_clientRequestId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  sessionId = self->_sessionId;
  if (sessionId)
  {
    [v3 setObject:sessionId forKey:@"session_id"];
  }

  clientSessionId = self->_clientSessionId;
  if (clientSessionId)
  {
    [v4 setObject:clientSessionId forKey:@"client_session_id"];
  }

  clientRequestId = self->_clientRequestId;
  if (clientRequestId)
  {
    [v4 setObject:clientRequestId forKey:@"client_request_id"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier;
  v4 = [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)&v8 description];
  v5 = [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end