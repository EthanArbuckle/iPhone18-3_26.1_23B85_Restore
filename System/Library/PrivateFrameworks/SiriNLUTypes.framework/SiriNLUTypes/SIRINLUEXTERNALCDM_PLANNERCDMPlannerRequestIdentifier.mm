@interface SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)self setSessionId:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)self setClientSessionId:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)self setClientRequestId:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionId hash];
  v4 = [(NSString *)self->_clientSessionId hash]^ v3;
  return v4 ^ [(NSString *)self->_clientRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((sessionId = self->_sessionId, !(sessionId | equalCopy[3])) || -[NSString isEqual:](sessionId, "isEqual:")) && ((clientSessionId = self->_clientSessionId, !(clientSessionId | equalCopy[2])) || -[NSString isEqual:](clientSessionId, "isEqual:")))
  {
    clientRequestId = self->_clientRequestId;
    if (clientRequestId | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sessionId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_clientSessionId copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_clientRequestId copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sessionId)
  {
    [toCopy setSessionId:?];
    toCopy = v5;
  }

  if (self->_clientSessionId)
  {
    [v5 setClientSessionId:?];
    toCopy = v5;
  }

  if (self->_clientRequestId)
  {
    [v5 setClientRequestId:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clientSessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clientRequestId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  sessionId = self->_sessionId;
  if (sessionId)
  {
    [dictionary setObject:sessionId forKey:@"session_id"];
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
  dictionaryRepresentation = [(SIRINLUEXTERNALCDM_PLANNERCDMPlannerRequestIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end