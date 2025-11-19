@interface AWDWiFiDPSCountersSample
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  controllerStats = self->_controllerStats;
  if (controllerStats)
  {
    [v3 setObject:-[AWDWiFiNWActivityControllerStats dictionaryRepresentation](controllerStats forKey:{"dictionaryRepresentation"), @"controllerStats"}];
  }

  peerStats = self->_peerStats;
  if (peerStats)
  {
    [v3 setObject:-[AWDWiFiNWActivityPeerStats dictionaryRepresentation](peerStats forKey:{"dictionaryRepresentation"), @"peerStats"}];
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

  if (self->_controllerStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_peerStats)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
  }

  if (self->_controllerStats)
  {
    [a3 setControllerStats:?];
  }

  if (self->_peerStats)
  {

    [a3 setPeerStats:?];
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

  *(v6 + 16) = [(AWDWiFiNWActivityControllerStats *)self->_controllerStats copyWithZone:a3];
  *(v6 + 24) = [(AWDWiFiNWActivityPeerStats *)self->_peerStats copyWithZone:a3];
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

    controllerStats = self->_controllerStats;
    if (!(controllerStats | *(a3 + 2)) || (v5 = [(AWDWiFiNWActivityControllerStats *)controllerStats isEqual:?]) != 0)
    {
      peerStats = self->_peerStats;
      if (peerStats | *(a3 + 3))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 32))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  controllerStats = self->_controllerStats;
  v6 = *(a3 + 2);
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
  v8 = *(a3 + 3);
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