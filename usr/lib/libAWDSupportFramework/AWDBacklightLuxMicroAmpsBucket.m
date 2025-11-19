@interface AWDBacklightLuxMicroAmpsBucket
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDBacklightLuxMicroAmpsBucket

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDBacklightLuxMicroAmpsBucket;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDBacklightLuxMicroAmpsBucket description](&v3, sel_description), -[AWDBacklightLuxMicroAmpsBucket dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bucketDuration), @"bucketDuration"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    bucketDuration = self->_bucketDuration;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_bucketDuration;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_bucketDuration;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    LOBYTE(v5) = (*(a3 + 12) & 1) == 0;
    if (*&self->_has)
    {
      LOBYTE(v5) = (*(a3 + 12) & 1) != 0 && self->_bucketDuration == *(a3 + 2);
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_bucketDuration;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_bucketDuration = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end