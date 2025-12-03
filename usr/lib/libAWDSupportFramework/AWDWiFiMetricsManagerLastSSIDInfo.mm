@interface AWDWiFiMetricsManagerLastSSIDInfo
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

@implementation AWDWiFiMetricsManagerLastSSIDInfo

- (void)dealloc
{
  [(AWDWiFiMetricsManagerLastSSIDInfo *)self setLastSSIDAttempted:0];
  [(AWDWiFiMetricsManagerLastSSIDInfo *)self setLastSSIDConnectedTo:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerLastSSIDInfo;
  [(AWDWiFiMetricsManagerLastSSIDInfo *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerLastSSIDInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerLastSSIDInfo description](&v3, sel_description), -[AWDWiFiMetricsManagerLastSSIDInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  lastSSIDAttempted = self->_lastSSIDAttempted;
  if (lastSSIDAttempted)
  {
    [dictionary setObject:lastSSIDAttempted forKey:@"lastSSIDAttempted"];
  }

  lastSSIDConnectedTo = self->_lastSSIDConnectedTo;
  if (lastSSIDConnectedTo)
  {
    [dictionary setObject:lastSSIDConnectedTo forKey:@"lastSSIDConnectedTo"];
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

  if (self->_lastSSIDAttempted)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_lastSSIDConnectedTo)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
  }

  if (self->_lastSSIDAttempted)
  {
    [to setLastSSIDAttempted:?];
  }

  if (self->_lastSSIDConnectedTo)
  {

    [to setLastSSIDConnectedTo:?];
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

  *(v6 + 16) = [(NSData *)self->_lastSSIDAttempted copyWithZone:zone];
  *(v6 + 24) = [(NSData *)self->_lastSSIDConnectedTo copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 32);
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    lastSSIDAttempted = self->_lastSSIDAttempted;
    if (!(lastSSIDAttempted | *(equal + 2)) || (v5 = [(NSData *)lastSSIDAttempted isEqual:?]) != 0)
    {
      lastSSIDConnectedTo = self->_lastSSIDConnectedTo;
      if (lastSSIDConnectedTo | *(equal + 3))
      {

        LOBYTE(v5) = [(NSData *)lastSSIDConnectedTo isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
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

  v4 = [(NSData *)self->_lastSSIDAttempted hash]^ v3;
  return v4 ^ [(NSData *)self->_lastSSIDConnectedTo hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDWiFiMetricsManagerLastSSIDInfo *)self setLastSSIDAttempted:?];
  }

  if (*(from + 3))
  {

    [(AWDWiFiMetricsManagerLastSSIDInfo *)self setLastSSIDConnectedTo:?];
  }
}

@end