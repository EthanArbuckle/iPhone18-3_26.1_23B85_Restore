@interface UWLOptOutEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation UWLOptOutEvent

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLOptOutEvent;
  v3 = [(UWLOptOutEvent *)&v7 description];
  v4 = [(UWLOptOutEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (self->_brandId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  brandId = self->_brandId;
  if (brandId)
  {
    [a3 setBrandId:brandId];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_brandId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    brandId = self->_brandId;
    if (brandId | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(UWLOptOutEvent *)self setBrandId:?];
  }
}

@end