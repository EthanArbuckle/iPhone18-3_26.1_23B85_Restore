@interface AWDWiFiMetric11axStats
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

@implementation AWDWiFiMetric11axStats

- (void)dealloc
{
  [(AWDWiFiMetric11axStats *)self setHestats:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetric11axStats;
  [(AWDWiFiMetric11axStats *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetric11axStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetric11axStats description](&v3, sel_description), -[AWDWiFiMetric11axStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  hestats = self->_hestats;
  if (hestats)
  {
    [dictionary setObject:-[AWDHEStats dictionaryRepresentation](hestats forKey:{"dictionaryRepresentation"), @"hestats"}];
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

  if (self->_hestats)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 24) |= 1u;
  }

  hestats = self->_hestats;
  if (hestats)
  {
    [to setHestats:hestats];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 24) |= 1u;
  }

  v6[2] = [(AWDHEStats *)self->_hestats copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 24);
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_9;
      }
    }

    else if (*(equal + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    hestats = self->_hestats;
    if (hestats | *(equal + 2))
    {

      LOBYTE(v5) = [(AWDHEStats *)hestats isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
  }

  else
  {
    v2 = 0;
  }

  return [(AWDHEStats *)self->_hestats hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 24))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  v3 = *(from + 2);
  if (self->_hestats)
  {
    if (v3)
    {
      [(AWDHEStats *)self->_hestats mergeFrom:?];
    }
  }

  else if (v3)
  {
    [(AWDWiFiMetric11axStats *)self setHestats:?];
  }
}

@end