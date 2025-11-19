@interface RMSUnpairServiceMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RMSUnpairServiceMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSUnpairServiceMessage;
  v4 = [(RMSUnpairServiceMessage *)&v8 description];
  v5 = [(RMSUnpairServiceMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  service = self->_service;
  if (service)
  {
    v5 = [(RMSServiceMessage *)service dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"service"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_service)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  service = self->_service;
  if (service)
  {
    [a3 setService:service];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(RMSServiceMessage *)self->_service copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    service = self->_service;
    if (service | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  service = self->_service;
  v6 = v4[1];
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