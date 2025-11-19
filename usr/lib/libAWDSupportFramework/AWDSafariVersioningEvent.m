@interface AWDSafariVersioningEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsVariant:(id)a3;
- (int)variant;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasVariant:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasVariant:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsVariant:(id)a3
{
  if ([a3 isEqualToString:@"CONSUMER"])
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"STP"];
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  version = self->_version;
  if (version)
  {
    [v3 setObject:version forKey:@"version"];
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

    [v3 setObject:v6 forKey:@"variant"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
  }

  if (self->_version)
  {
    [a3 setVersion:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 4) = self->_variant;
    *(a3 + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_version copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_variant;
    *(v6 + 32) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 32);
    if (has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    version = self->_version;
    if (version | *(a3 + 3))
    {
      v5 = [(NSString *)version isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(a3 + 32) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_variant != *(a3 + 4))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 32))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDSafariVersioningEvent *)self setVersion:?];
  }

  if ((*(a3 + 32) & 2) != 0)
  {
    self->_variant = *(a3 + 4);
    *&self->_has |= 2u;
  }
}

@end