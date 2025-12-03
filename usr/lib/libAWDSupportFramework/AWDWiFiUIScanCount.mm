@interface AWDWiFiUIScanCount
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

@implementation AWDWiFiUIScanCount

- (void)dealloc
{
  [(AWDWiFiUIScanCount *)self setSection:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiUIScanCount;
  [(AWDWiFiUIScanCount *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiUIScanCount;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiUIScanCount description](&v3, sel_description), -[AWDWiFiUIScanCount dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  section = self->_section;
  if (section)
  {
    [dictionary setObject:section forKey:@"section"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_max), @"max"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_section)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    max = self->_max;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  if (self->_section)
  {
    [to setSection:?];
  }

  if (*&self->_has)
  {
    *(to + 2) = self->_max;
    *(to + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 16) = [(NSString *)self->_section copyWithZone:zone];
  if (*&self->_has)
  {
    *(v5 + 8) = self->_max;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    section = self->_section;
    if (!(section | *(equal + 2)) || (v5 = [(NSString *)section isEqual:?]) != 0)
    {
      LOBYTE(v5) = (*(equal + 24) & 1) == 0;
      if (*&self->_has)
      {
        LOBYTE(v5) = (*(equal + 24) & 1) != 0 && self->_max == *(equal + 2);
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_section hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_max;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 2))
  {
    [(AWDWiFiUIScanCount *)self setSection:?];
  }

  if (*(from + 24))
  {
    self->_max = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end