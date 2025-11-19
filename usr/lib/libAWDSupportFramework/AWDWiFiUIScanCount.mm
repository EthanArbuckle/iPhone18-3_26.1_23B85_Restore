@interface AWDWiFiUIScanCount
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  section = self->_section;
  if (section)
  {
    [v3 setObject:section forKey:@"section"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_max), @"max"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (self->_section)
  {
    [a3 setSection:?];
  }

  if (*&self->_has)
  {
    *(a3 + 2) = self->_max;
    *(a3 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 16) = [(NSString *)self->_section copyWithZone:a3];
  if (*&self->_has)
  {
    *(v5 + 8) = self->_max;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    section = self->_section;
    if (!(section | *(a3 + 2)) || (v5 = [(NSString *)section isEqual:?]) != 0)
    {
      LOBYTE(v5) = (*(a3 + 24) & 1) == 0;
      if (*&self->_has)
      {
        LOBYTE(v5) = (*(a3 + 24) & 1) != 0 && self->_max == *(a3 + 2);
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 2))
  {
    [(AWDWiFiUIScanCount *)self setSection:?];
  }

  if (*(a3 + 24))
  {
    self->_max = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end