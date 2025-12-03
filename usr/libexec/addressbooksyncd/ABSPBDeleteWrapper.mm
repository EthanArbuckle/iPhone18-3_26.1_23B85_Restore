@interface ABSPBDeleteWrapper
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABSPBDeleteWrapper

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBDeleteWrapper;
  v3 = [(ABSPBDeleteWrapper *)&v7 description];
  dictionaryRepresentation = [(ABSPBDeleteWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  guid = self->_guid;
  if (guid)
  {
    [to setGuid:guid];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_guid copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    guid = self->_guid;
    if (guid | equalCopy[1])
    {
      v6 = [(NSString *)guid isEqual:?];
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
    [(ABSPBDeleteWrapper *)self setGuid:?];
  }
}

@end