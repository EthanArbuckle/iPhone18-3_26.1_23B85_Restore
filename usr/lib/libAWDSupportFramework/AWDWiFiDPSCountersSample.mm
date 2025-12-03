@interface AWDWiFiDPSCountersSample
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

@implementation AWDWiFiDPSCountersSample

- (void)dealloc
{
  [(AWDWiFiDPSCountersSample *)self setControllerStats:0];
  [(AWDWiFiDPSCountersSample *)self setPeerStats:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSCountersSample;
  [(AWDWiFiDPSCountersSample *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSCountersSample;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiDPSCountersSample description](&v3, sel_description), -[AWDWiFiDPSCountersSample dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  controllerStats = self->_controllerStats;
  if (controllerStats)
  {
    [dictionary setObject:-[AWDWiFiNWActivityControllerStats dictionaryRepresentation](controllerStats forKey:{"dictionaryRepresentation"), @"controllerStats"}];
  }

  peerStats = self->_peerStats;
  if (peerStats)
  {
    [dictionary setObject:-[AWDWiFiNWActivityPeerStats dictionaryRepresentation](peerStats forKey:{"dictionaryRepresentation"), @"peerStats"}];
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

  if (self->_controllerStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_peerStats)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
  }

  if (self->_controllerStats)
  {
    [to setControllerStats:?];
  }

  if (self->_peerStats)
  {

    [to setPeerStats:?];
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

  *(v6 + 16) = [(AWDWiFiNWActivityControllerStats *)self->_controllerStats copyWithZone:zone];
  *(v6 + 24) = [(AWDWiFiNWActivityPeerStats *)self->_peerStats copyWithZone:zone];
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

    controllerStats = self->_controllerStats;
    if (!(controllerStats | *(equal + 2)) || (v5 = [(AWDWiFiNWActivityControllerStats *)controllerStats isEqual:?]) != 0)
    {
      peerStats = self->_peerStats;
      if (peerStats | *(equal + 3))
      {

        LOBYTE(v5) = [(AWDWiFiNWActivityPeerStats *)peerStats isEqual:?];
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

  v4 = [(AWDWiFiNWActivityControllerStats *)self->_controllerStats hash]^ v3;
  return v4 ^ [(AWDWiFiNWActivityPeerStats *)self->_peerStats hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  controllerStats = self->_controllerStats;
  v6 = *(from + 2);
  if (controllerStats)
  {
    if (v6)
    {
      [(AWDWiFiNWActivityControllerStats *)controllerStats mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDWiFiDPSCountersSample *)self setControllerStats:?];
  }

  peerStats = self->_peerStats;
  v8 = *(from + 3);
  if (peerStats)
  {
    if (v8)
    {

      [(AWDWiFiNWActivityPeerStats *)peerStats mergeFrom:?];
    }
  }

  else if (v8)
  {

    [(AWDWiFiDPSCountersSample *)self setPeerStats:?];
  }
}

@end