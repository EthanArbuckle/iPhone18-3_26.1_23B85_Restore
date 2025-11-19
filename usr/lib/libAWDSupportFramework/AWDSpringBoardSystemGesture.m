@interface AWDSpringBoardSystemGesture
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  type = self->_type;
  if (type)
  {
    [v3 setObject:type forKey:@"type"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v3 setObject:userInfo forKey:@"userInfo"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
  }

  if (self->_type)
  {
    [a3 setType:?];
  }

  if (self->_userInfo)
  {

    [a3 setUserInfo:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_type copyWithZone:a3];
  *(v6 + 24) = [(NSString *)self->_userInfo copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 32);
    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    type = self->_type;
    if (!(type | *(a3 + 2)) || (v5 = [(NSString *)type isEqual:?]) != 0)
    {
      userInfo = self->_userInfo;
      if (userInfo | *(a3 + 3))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 32))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDSpringBoardSystemGesture *)self setType:?];
  }

  if (*(a3 + 3))
  {

    [(AWDSpringBoardSystemGesture *)self setUserInfo:?];
  }
}

@end