@interface WiFiAnalyticsAWDWiFiDPSCountersSample
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiDPSCountersSample

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiDPSCountersSample;
  v4 = [(WiFiAnalyticsAWDWiFiDPSCountersSample *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiDPSCountersSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  controllerStats = self->_controllerStats;
  if (controllerStats)
  {
    v6 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)controllerStats dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"controllerStats"];
  }

  peerStats = self->_peerStats;
  if (peerStats)
  {
    v8 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)peerStats dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"peerStats"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_controllerStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_peerStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_controllerStats)
  {
    [v4 setControllerStats:?];
    v4 = v5;
  }

  if (self->_peerStats)
  {
    [v5 setPeerStats:?];
    v4 = v5;
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

  v7 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self->_controllerStats copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self->_peerStats copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  controllerStats = self->_controllerStats;
  if (controllerStats | *(v4 + 2) && ![(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)controllerStats isEqual:?])
  {
    goto LABEL_11;
  }

  peerStats = self->_peerStats;
  if (peerStats | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[4])
  {
    self->_timestamp = v4[1];
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