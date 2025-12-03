@interface WiFiAnalyticsAWDWiFiDPSCountersSample
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiDPSCountersSample

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiDPSCountersSample;
  v4 = [(WiFiAnalyticsAWDWiFiDPSCountersSample *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiDPSCountersSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  controllerStats = self->_controllerStats;
  if (controllerStats)
  {
    dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)controllerStats dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"controllerStats"];
  }

  peerStats = self->_peerStats;
  if (peerStats)
  {
    dictionaryRepresentation2 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)peerStats dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"peerStats"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_controllerStats)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_peerStats)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_controllerStats)
  {
    [toCopy setControllerStats:?];
    toCopy = v5;
  }

  if (self->_peerStats)
  {
    [v5 setPeerStats:?];
    toCopy = v5;
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

  v7 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self->_controllerStats copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self->_peerStats copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  controllerStats = self->_controllerStats;
  if (controllerStats | *(equalCopy + 2) && ![(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)controllerStats isEqual:?])
  {
    goto LABEL_11;
  }

  peerStats = self->_peerStats;
  if (peerStats | *(equalCopy + 3))
  {
    v8 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)peerStats isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
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

  v4 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self->_controllerStats hash]^ v3;
  return v4 ^ [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self->_peerStats hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[4])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  controllerStats = self->_controllerStats;
  v7 = v5[2];
  v10 = v5;
  if (controllerStats)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)controllerStats mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(WiFiAnalyticsAWDWiFiDPSCountersSample *)self setControllerStats:?];
  }

  v5 = v10;
LABEL_9:
  peerStats = self->_peerStats;
  v9 = v5[3];
  if (peerStats)
  {
    if (v9)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)peerStats mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(WiFiAnalyticsAWDWiFiDPSCountersSample *)self setPeerStats:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end