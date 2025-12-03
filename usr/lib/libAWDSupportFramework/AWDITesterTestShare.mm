@interface AWDITesterTestShare
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

@implementation AWDITesterTestShare

- (void)dealloc
{
  [(AWDITesterTestShare *)self setShareMethod:0];
  [(AWDITesterTestShare *)self setShareOption:0];
  v3.receiver = self;
  v3.super_class = AWDITesterTestShare;
  [(AWDITesterTestShare *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDITesterTestShare;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterTestShare description](&v3, sel_description), -[AWDITesterTestShare dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  shareMethod = self->_shareMethod;
  if (shareMethod)
  {
    [dictionary setObject:shareMethod forKey:@"shareMethod"];
  }

  shareOption = self->_shareOption;
  if (shareOption)
  {
    [dictionary setObject:shareOption forKey:@"shareOption"];
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

  if (self->_shareMethod)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shareOption)
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

  if (self->_shareMethod)
  {
    [to setShareMethod:?];
  }

  if (self->_shareOption)
  {

    [to setShareOption:?];
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

  *(v6 + 16) = [(NSString *)self->_shareMethod copyWithZone:zone];
  *(v6 + 24) = [(NSString *)self->_shareOption copyWithZone:zone];
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

    shareMethod = self->_shareMethod;
    if (!(shareMethod | *(equal + 2)) || (v5 = [(NSString *)shareMethod isEqual:?]) != 0)
    {
      shareOption = self->_shareOption;
      if (shareOption | *(equal + 3))
      {

        LOBYTE(v5) = [(NSString *)shareOption isEqual:?];
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

  v4 = [(NSString *)self->_shareMethod hash]^ v3;
  return v4 ^ [(NSString *)self->_shareOption hash];
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
    [(AWDITesterTestShare *)self setShareMethod:?];
  }

  if (*(from + 3))
  {

    [(AWDITesterTestShare *)self setShareOption:?];
  }
}

@end