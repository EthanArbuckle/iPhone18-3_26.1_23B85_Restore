@interface CSDMessagingSmartHoldingRequest
- (BOOL)isEqual:(id)equal;
- (CSDMessagingSmartHoldingRequest)initWithRequest:(id)request;
- (TUSmartHoldingRequest)tuSmartHoldingRequest;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequestType:(id)type;
- (int)requestType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingSmartHoldingRequest

- (int)requestType
{
  if (*&self->_has)
  {
    return self->_requestType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsRequestType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"StartHoldDetection"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"StopHoldDetection"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"StartSmartHolding"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"StopSmartHolding"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingSmartHoldingRequest;
  v3 = [(CSDMessagingSmartHoldingRequest *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingSmartHoldingRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  callUUID = self->_callUUID;
  if (callUUID)
  {
    [v4 setObject:callUUID forKey:@"callUUID"];
  }

  if (*&self->_has)
  {
    v7 = self->_requestType - 1;
    if (v7 >= 4)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_requestType];
    }

    else
    {
      v8 = off_10061BE10[v7];
    }

    [v4 setObject:v8 forKey:@"requestType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_callUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    requestType = self->_requestType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v5;
  }

  if (self->_callUUID)
  {
    [v5 setCallUUID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_requestType;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_callUUID copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_requestType;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 3))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_10;
    }
  }

  callUUID = self->_callUUID;
  if (callUUID | *(equalCopy + 1))
  {
    if (![(NSString *)callUUID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_requestType == *(equalCopy + 4))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  v4 = [(NSString *)self->_callUUID hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_requestType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(CSDMessagingSmartHoldingRequest *)self setUuid:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(CSDMessagingSmartHoldingRequest *)self setCallUUID:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_requestType = fromCopy[4];
    *&self->_has |= 1u;
  }
}

- (CSDMessagingSmartHoldingRequest)initWithRequest:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = CSDMessagingSmartHoldingRequest;
  v5 = [(CSDMessagingSmartHoldingRequest *)&v13 init];
  if (v5)
  {
    uuid = [requestCopy uuid];
    uUIDString = [uuid UUIDString];
    uuid = v5->_uuid;
    v5->_uuid = uUIDString;

    v5->_requestType = [requestCopy requestType];
    callUUID = [requestCopy callUUID];
    uUIDString2 = [callUUID UUIDString];
    callUUID = v5->_callUUID;
    v5->_callUUID = uUIDString2;
  }

  return v5;
}

- (TUSmartHoldingRequest)tuSmartHoldingRequest
{
  v3 = [NSUUID alloc];
  callUUID = [(CSDMessagingSmartHoldingRequest *)self callUUID];
  v5 = [v3 initWithUUIDString:callUUID];

  v6 = [[TUSmartHoldingRequest alloc] initWithCallUUID:v5 requestType:{-[CSDMessagingSmartHoldingRequest requestType](self, "requestType")}];

  return v6;
}

@end