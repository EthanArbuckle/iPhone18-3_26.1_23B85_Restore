@interface WiFiAnalyticsAWDWiFiNWActivityMpduLost
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityMpduLost

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityMpduLost;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityMpduLost *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityMpduLost *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  bALost = self->_bALost;
  if (bALost)
  {
    v5 = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)bALost dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"BALost"];
  }

  nonBALost = self->_nonBALost;
  if (nonBALost)
  {
    v7 = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)nonBALost dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"nonBALost"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bALost)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_nonBALost)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bALost)
  {
    [v4 setBALost:?];
    v4 = v5;
  }

  if (self->_nonBALost)
  {
    [v5 setNonBALost:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)self->_bALost copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)self->_nonBALost copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((bALost = self->_bALost, !(bALost | v4[1])) || -[WiFiAnalyticsAWDWiFiNWActivityMpduWME isEqual:](bALost, "isEqual:")))
  {
    nonBALost = self->_nonBALost;
    if (nonBALost | v4[2])
    {
      v7 = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)nonBALost isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  bALost = self->_bALost;
  v6 = v4[1];
  v9 = v4;
  if (bALost)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)bALost mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(WiFiAnalyticsAWDWiFiNWActivityMpduLost *)self setBALost:?];
  }

  v4 = v9;
LABEL_7:
  nonBALost = self->_nonBALost;
  v8 = v4[2];
  if (nonBALost)
  {
    if (v8)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)nonBALost mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityMpduLost *)self setNonBALost:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end