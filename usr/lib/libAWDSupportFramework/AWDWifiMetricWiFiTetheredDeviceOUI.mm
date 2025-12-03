@interface AWDWifiMetricWiFiTetheredDeviceOUI
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

@implementation AWDWifiMetricWiFiTetheredDeviceOUI

- (void)dealloc
{
  [(AWDWifiMetricWiFiTetheredDeviceOUI *)self setTetheredOUI:0];
  v3.receiver = self;
  v3.super_class = AWDWifiMetricWiFiTetheredDeviceOUI;
  [(AWDWifiMetricWiFiTetheredDeviceOUI *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWifiMetricWiFiTetheredDeviceOUI;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWifiMetricWiFiTetheredDeviceOUI description](&v3, sel_description), -[AWDWifiMetricWiFiTetheredDeviceOUI dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  tetheredOUI = self->_tetheredOUI;
  if (tetheredOUI)
  {
    [dictionary setObject:tetheredOUI forKey:@"tetheredOUI"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_tetheredOUI)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  if (self->_tetheredOUI)
  {
    [to setTetheredOUI:?];
  }

  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 16) = [(NSData *)self->_tetheredOUI copyWithZone:zone];
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    tetheredOUI = self->_tetheredOUI;
    if (!(tetheredOUI | *(equal + 2)) || (v5 = [(NSData *)tetheredOUI isEqual:?]) != 0)
    {
      LOBYTE(v5) = (*(equal + 24) & 1) == 0;
      if (*&self->_has)
      {
        LOBYTE(v5) = (*(equal + 24) & 1) != 0 && self->_timestamp == *(equal + 1);
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_tetheredOUI hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_timestamp;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 2))
  {
    [(AWDWifiMetricWiFiTetheredDeviceOUI *)self setTetheredOUI:?];
  }

  if (*(from + 24))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end