@interface UWLOptInEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation UWLOptInEvent

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLOptInEvent;
  v3 = [(UWLOptInEvent *)&v7 description];
  dictionaryRepresentation = [(UWLOptInEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  brandId = self->_brandId;
  if (brandId)
  {
    [v3 setObject:brandId forKey:@"brand_id"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_brandId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  brandId = self->_brandId;
  if (brandId)
  {
    [to setBrandId:brandId];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_brandId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    brandId = self->_brandId;
    if (brandId | equalCopy[1])
    {
      v6 = [(NSString *)brandId isEqual:?];
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
  if (*(from + 1))
  {
    [(UWLOptInEvent *)self setBrandId:?];
  }
}

@end