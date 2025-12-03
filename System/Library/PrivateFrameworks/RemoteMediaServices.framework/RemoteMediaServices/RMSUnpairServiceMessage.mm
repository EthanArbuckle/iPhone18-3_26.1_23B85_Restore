@interface RMSUnpairServiceMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RMSUnpairServiceMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSUnpairServiceMessage;
  v4 = [(RMSUnpairServiceMessage *)&v8 description];
  dictionaryRepresentation = [(RMSUnpairServiceMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  service = self->_service;
  if (service)
  {
    dictionaryRepresentation = [(RMSServiceMessage *)service dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"service"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_service)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  service = self->_service;
  if (service)
  {
    [to setService:service];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(RMSServiceMessage *)self->_service copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    service = self->_service;
    if (service | equalCopy[1])
    {
      v6 = [(RMSServiceMessage *)service isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  service = self->_service;
  v6 = fromCopy[1];
  if (service)
  {
    if (v6)
    {
      [(RMSServiceMessage *)service mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(RMSUnpairServiceMessage *)self setService:?];
  }

  MEMORY[0x2821F96F8]();
}

@end