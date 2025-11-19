@interface AWDWiFiMetricsManagerLastSSIDInfo
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  lastSSIDAttempted = self->_lastSSIDAttempted;
  if (lastSSIDAttempted)
  {
    [v3 setObject:lastSSIDAttempted forKey:@"lastSSIDAttempted"];
  }

  lastSSIDConnectedTo = self->_lastSSIDConnectedTo;
  if (lastSSIDConnectedTo)
  {
    [v3 setObject:lastSSIDConnectedTo forKey:@"lastSSIDConnectedTo"];
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

  if (self->_lastSSIDAttempted)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_lastSSIDConnectedTo)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
  }

  if (self->_lastSSIDAttempted)
  {
    [a3 setLastSSIDAttempted:?];
  }

  if (self->_lastSSIDConnectedTo)
  {

    [a3 setLastSSIDConnectedTo:?];
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

  *(v6 + 16) = [(NSData *)self->_lastSSIDAttempted copyWithZone:a3];
  *(v6 + 24) = [(NSData *)self->_lastSSIDConnectedTo copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 32);
    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    lastSSIDAttempted = self->_lastSSIDAttempted;
    if (!(lastSSIDAttempted | *(a3 + 2)) || (v5 = [(NSData *)lastSSIDAttempted isEqual:?]) != 0)
    {
      lastSSIDConnectedTo = self->_lastSSIDConnectedTo;
      if (lastSSIDConnectedTo | *(a3 + 3))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 32))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDWiFiMetricsManagerLastSSIDInfo *)self setLastSSIDAttempted:?];
  }

  if (*(a3 + 3))
  {

    [(AWDWiFiMetricsManagerLastSSIDInfo *)self setLastSSIDConnectedTo:?];
  }
}

@end