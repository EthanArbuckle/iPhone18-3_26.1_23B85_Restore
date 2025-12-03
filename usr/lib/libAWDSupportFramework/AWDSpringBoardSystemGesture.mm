@interface AWDSpringBoardSystemGesture
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDSpringBoardSystemGesture

- (void)dealloc
{
  [(AWDSpringBoardSystemGesture *)self setType:0];
  [(AWDSpringBoardSystemGesture *)self setUserInfo:0];
  v3.receiver = self;
  v3.super_class = AWDSpringBoardSystemGesture;
  [(AWDSpringBoardSystemGesture *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSpringBoardSystemGesture;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSpringBoardSystemGesture description](&v3, sel_description), -[AWDSpringBoardSystemGesture dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  type = self->_type;
  if (type)
  {
    [dictionary setObject:type forKey:@"type"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [dictionary setObject:userInfo forKey:@"userInfo"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userInfo)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
  }

  if (self->_type)
  {
    [to setType:?];
  }

  if (self->_userInfo)
  {

    [to setUserInfo:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_type copyWithZone:zone];
  *(v6 + 24) = [(NSString *)self->_userInfo copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 32);
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    type = self->_type;
    if (!(type | *(equal + 2)) || (v5 = [(NSString *)type isEqual:?]) != 0)
    {
      userInfo = self->_userInfo;
      if (userInfo | *(equal + 3))
      {

        LOBYTE(v5) = [(NSString *)userInfo isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_type hash]^ v3;
  return v4 ^ [(NSString *)self->_userInfo hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDSpringBoardSystemGesture *)self setType:?];
  }

  if (*(from + 3))
  {

    [(AWDSpringBoardSystemGesture *)self setUserInfo:?];
  }
}

@end