@interface AWDWiFiMetric11axStats
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  hestats = self->_hestats;
  if (hestats)
  {
    [v3 setObject:-[AWDHEStats dictionaryRepresentation](hestats forKey:{"dictionaryRepresentation"), @"hestats"}];
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

  if (self->_hestats)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 24) |= 1u;
  }

  hestats = self->_hestats;
  if (hestats)
  {
    [a3 setHestats:hestats];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 24) |= 1u;
  }

  v6[2] = [(AWDHEStats *)self->_hestats copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 24);
    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_9;
      }
    }

    else if (*(a3 + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    hestats = self->_hestats;
    if (hestats | *(a3 + 2))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 24))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  v3 = *(a3 + 2);
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