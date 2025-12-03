@interface AWDBacklightLuxMicroAmpsBucket
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bucketDuration), @"bucketDuration"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    bucketDuration = self->_bucketDuration;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_bucketDuration;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_bucketDuration;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    LOBYTE(v5) = (*(equal + 12) & 1) == 0;
    if (*&self->_has)
    {
      LOBYTE(v5) = (*(equal + 12) & 1) != 0 && self->_bucketDuration == *(equal + 2);
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

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_bucketDuration = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end