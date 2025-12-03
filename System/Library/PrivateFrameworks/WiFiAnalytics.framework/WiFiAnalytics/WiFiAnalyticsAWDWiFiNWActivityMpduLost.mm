@interface WiFiAnalyticsAWDWiFiNWActivityMpduLost
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityMpduLost

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityMpduLost;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityMpduLost *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityMpduLost *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  bALost = self->_bALost;
  if (bALost)
  {
    dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)bALost dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"BALost"];
  }

  nonBALost = self->_nonBALost;
  if (nonBALost)
  {
    dictionaryRepresentation2 = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)nonBALost dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"nonBALost"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bALost)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_nonBALost)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bALost)
  {
    [toCopy setBALost:?];
    toCopy = v5;
  }

  if (self->_nonBALost)
  {
    [v5 setNonBALost:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)self->_bALost copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(WiFiAnalyticsAWDWiFiNWActivityMpduWME *)self->_nonBALost copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((bALost = self->_bALost, !(bALost | equalCopy[1])) || -[WiFiAnalyticsAWDWiFiNWActivityMpduWME isEqual:](bALost, "isEqual:")))
  {
    nonBALost = self->_nonBALost;
    if (nonBALost | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  bALost = self->_bALost;
  v6 = fromCopy[1];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  nonBALost = self->_nonBALost;
  v8 = fromCopy[2];
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