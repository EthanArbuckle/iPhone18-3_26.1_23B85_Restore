@interface CSDMessagingSmartHoldingRequest
- (BOOL)isEqual:(id)a3;
- (CSDMessagingSmartHoldingRequest)initWithRequest:(id)a3;
- (TUSmartHoldingRequest)tuSmartHoldingRequest;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequestType:(id)a3;
- (int)requestType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsRequestType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"StartHoldDetection"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"StopHoldDetection"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"StartSmartHolding"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"StopSmartHolding"])
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
  v4 = [(CSDMessagingSmartHoldingRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_callUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    requestType = self->_requestType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v5;
  }

  if (self->_callUUID)
  {
    [v5 setCallUUID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_requestType;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_callUUID copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_requestType;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 3))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_10;
    }
  }

  callUUID = self->_callUUID;
  if (callUUID | *(v4 + 1))
  {
    if (![(NSString *)callUUID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_requestType == *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(CSDMessagingSmartHoldingRequest *)self setUuid:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(CSDMessagingSmartHoldingRequest *)self setCallUUID:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_requestType = v4[4];
    *&self->_has |= 1u;
  }
}

- (CSDMessagingSmartHoldingRequest)initWithRequest:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSDMessagingSmartHoldingRequest;
  v5 = [(CSDMessagingSmartHoldingRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 uuid];
    v7 = [v6 UUIDString];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v5->_requestType = [v4 requestType];
    v9 = [v4 callUUID];
    v10 = [v9 UUIDString];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;
  }

  return v5;
}

- (TUSmartHoldingRequest)tuSmartHoldingRequest
{
  v3 = [NSUUID alloc];
  v4 = [(CSDMessagingSmartHoldingRequest *)self callUUID];
  v5 = [v3 initWithUUIDString:v4];

  v6 = [[TUSmartHoldingRequest alloc] initWithCallUUID:v5 requestType:{-[CSDMessagingSmartHoldingRequest requestType](self, "requestType")}];

  return v6;
}

@end