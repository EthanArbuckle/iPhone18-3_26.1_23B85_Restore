@interface AWDSafariVersioningEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsVariant:(id)variant;
- (int)variant;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasVariant:(BOOL)variant;
- (void)writeTo:(id)to;
@end

@implementation AWDSafariVersioningEvent

- (void)dealloc
{
  [(AWDSafariVersioningEvent *)self setVersion:0];
  v3.receiver = self;
  v3.super_class = AWDSafariVersioningEvent;
  [(AWDSafariVersioningEvent *)&v3 dealloc];
}

- (int)variant
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_variant;
  }

  else
  {
    return 0;
  }
}

- (void)setHasVariant:(BOOL)variant
{
  if (variant)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsVariant:(id)variant
{
  if ([variant isEqualToString:@"CONSUMER"])
  {
    return 0;
  }

  else
  {
    return [variant isEqualToString:@"STP"];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariVersioningEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariVersioningEvent description](&v3, sel_description), -[AWDSafariVersioningEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  version = self->_version;
  if (version)
  {
    [dictionary setObject:version forKey:@"version"];
  }

  if ((*&self->_has & 2) != 0)
  {
    variant = self->_variant;
    if (variant)
    {
      if (variant == 1)
      {
        v6 = @"STP";
      }

      else
      {
        v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_variant];
      }
    }

    else
    {
      v6 = @"CONSUMER";
    }

    [dictionary setObject:v6 forKey:@"variant"];
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

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    variant = self->_variant;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
  }

  if (self->_version)
  {
    [to setVersion:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 4) = self->_variant;
    *(to + 32) |= 2u;
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

  *(v6 + 24) = [(NSString *)self->_version copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_variant;
    *(v6 + 32) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 32);
    if (has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 32))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    version = self->_version;
    if (version | *(equal + 3))
    {
      v5 = [(NSString *)version isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 32) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_variant != *(equal + 4))
      {
        goto LABEL_14;
      }

      LOBYTE(v5) = 1;
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

  v4 = [(NSString *)self->_version hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_variant;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDSafariVersioningEvent *)self setVersion:?];
  }

  if ((*(from + 32) & 2) != 0)
  {
    self->_variant = *(from + 4);
    *&self->_has |= 2u;
  }
}

@end