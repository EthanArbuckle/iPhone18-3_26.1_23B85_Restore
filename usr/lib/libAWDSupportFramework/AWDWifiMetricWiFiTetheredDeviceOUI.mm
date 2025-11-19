@interface AWDWifiMetricWiFiTetheredDeviceOUI
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  tetheredOUI = self->_tetheredOUI;
  if (tetheredOUI)
  {
    [v3 setObject:tetheredOUI forKey:@"tetheredOUI"];
  }

  if (*&self->_has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (self->_tetheredOUI)
  {
    [a3 setTetheredOUI:?];
  }

  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 16) = [(NSData *)self->_tetheredOUI copyWithZone:a3];
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    tetheredOUI = self->_tetheredOUI;
    if (!(tetheredOUI | *(a3 + 2)) || (v5 = [(NSData *)tetheredOUI isEqual:?]) != 0)
    {
      LOBYTE(v5) = (*(a3 + 24) & 1) == 0;
      if (*&self->_has)
      {
        LOBYTE(v5) = (*(a3 + 24) & 1) != 0 && self->_timestamp == *(a3 + 1);
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 2))
  {
    [(AWDWifiMetricWiFiTetheredDeviceOUI *)self setTetheredOUI:?];
  }

  if (*(a3 + 24))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

@end