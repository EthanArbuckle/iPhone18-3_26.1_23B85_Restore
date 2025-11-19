@interface AWDCpuLoad
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

@implementation AWDCpuLoad

- (void)dealloc
{
  [(AWDCpuLoad *)self setProcName:0];
  v3.receiver = self;
  v3.super_class = AWDCpuLoad;
  [(AWDCpuLoad *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCpuLoad;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCpuLoad description](&v3, sel_description), -[AWDCpuLoad dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  procName = self->_procName;
  if (procName)
  {
    [v3 setObject:procName forKey:@"procName"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_duration), @"duration"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_procName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    duration = self->_duration;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (self->_procName)
  {
    [a3 setProcName:?];
  }

  if (*&self->_has)
  {
    *(a3 + 2) = self->_duration;
    *(a3 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 16) = [(NSString *)self->_procName copyWithZone:a3];
  if (*&self->_has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    procName = self->_procName;
    if (!(procName | *(a3 + 2)) || (v5 = [(NSString *)procName isEqual:?]) != 0)
    {
      LOBYTE(v5) = (*(a3 + 24) & 1) == 0;
      if (*&self->_has)
      {
        LOBYTE(v5) = (*(a3 + 24) & 1) != 0 && self->_duration == *(a3 + 2);
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_procName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_duration;
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
    [(AWDCpuLoad *)self setProcName:?];
  }

  if (*(a3 + 24))
  {
    self->_duration = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end