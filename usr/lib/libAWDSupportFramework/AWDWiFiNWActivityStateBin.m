@interface AWDWiFiNWActivityStateBin
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

@implementation AWDWiFiNWActivityStateBin

- (void)dealloc
{
  [(AWDWiFiNWActivityStateBin *)self setState:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityStateBin;
  [(AWDWiFiNWActivityStateBin *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityStateBin;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityStateBin description](&v3, sel_description), -[AWDWiFiNWActivityStateBin dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  state = self->_state;
  if (state)
  {
    [v3 setObject:state forKey:@"state"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_residentTime), @"residentTime"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_state)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    residentTime = self->_residentTime;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  if (self->_state)
  {
    [a3 setState:?];
  }

  if (*&self->_has)
  {
    *(a3 + 1) = self->_residentTime;
    *(a3 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 16) = [(NSString *)self->_state copyWithZone:a3];
  if (*&self->_has)
  {
    *(v5 + 8) = self->_residentTime;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    state = self->_state;
    if (!(state | *(a3 + 2)) || (v5 = [(NSString *)state isEqual:?]) != 0)
    {
      LOBYTE(v5) = (*(a3 + 24) & 1) == 0;
      if (*&self->_has)
      {
        LOBYTE(v5) = (*(a3 + 24) & 1) != 0 && self->_residentTime == *(a3 + 1);
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_state hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_residentTime;
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
    [(AWDWiFiNWActivityStateBin *)self setState:?];
  }

  if (*(a3 + 24))
  {
    self->_residentTime = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

@end