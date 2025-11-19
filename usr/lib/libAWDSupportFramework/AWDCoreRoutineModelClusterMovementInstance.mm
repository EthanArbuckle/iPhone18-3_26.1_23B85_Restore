@interface AWDCoreRoutineModelClusterMovementInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineModelClusterMovementInstance

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineModelClusterMovementInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineModelClusterMovementInstance description](&v3, sel_description), -[AWDCoreRoutineModelClusterMovementInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_distance), @"distance"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    distance = self->_distance;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_distance;
    *(a3 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = self->_distance;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    LOBYTE(v5) = (*(a3 + 16) & 1) == 0;
    if (*&self->_has)
    {
      LOBYTE(v5) = (*(a3 + 16) & 1) != 0 && self->_distance == *(a3 + 1);
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761u * self->_distance;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 16))
  {
    self->_distance = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

@end