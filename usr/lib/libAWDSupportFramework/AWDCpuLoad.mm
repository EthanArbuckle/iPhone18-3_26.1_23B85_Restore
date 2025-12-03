@interface AWDCpuLoad
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  procName = self->_procName;
  if (procName)
  {
    [dictionary setObject:procName forKey:@"procName"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_duration), @"duration"}];
  }

  return v4;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (self->_procName)
  {
    [to setProcName:?];
  }

  if (*&self->_has)
  {
    *(to + 2) = self->_duration;
    *(to + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 16) = [(NSString *)self->_procName copyWithZone:zone];
  if (*&self->_has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    procName = self->_procName;
    if (!(procName | *(equal + 2)) || (v5 = [(NSString *)procName isEqual:?]) != 0)
    {
      LOBYTE(v5) = (*(equal + 24) & 1) == 0;
      if (*&self->_has)
      {
        LOBYTE(v5) = (*(equal + 24) & 1) != 0 && self->_duration == *(equal + 2);
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

- (void)mergeFrom:(id)from
{
  if (*(from + 2))
  {
    [(AWDCpuLoad *)self setProcName:?];
  }

  if (*(from + 24))
  {
    self->_duration = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end