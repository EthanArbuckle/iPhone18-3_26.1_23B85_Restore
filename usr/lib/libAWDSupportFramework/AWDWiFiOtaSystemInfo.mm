@interface AWDWiFiOtaSystemInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasChannelWidth:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiOtaSystemInfo

- (void)dealloc
{
  [(AWDWiFiOtaSystemInfo *)self setBeaconInfo:0];
  [(AWDWiFiOtaSystemInfo *)self setSsid:0];
  [(AWDWiFiOtaSystemInfo *)self setBssid:0];
  [(AWDWiFiOtaSystemInfo *)self setWpsResponseType:0];
  [(AWDWiFiOtaSystemInfo *)self setWpsManufacturerElement:0];
  [(AWDWiFiOtaSystemInfo *)self setWpsModelName:0];
  [(AWDWiFiOtaSystemInfo *)self setWpsModelNumber:0];
  [(AWDWiFiOtaSystemInfo *)self setWpsPrimaryDeviceTypeCategory:0];
  [(AWDWiFiOtaSystemInfo *)self setWpsPrimaryDeviceTypeSubCategory:0];
  [(AWDWiFiOtaSystemInfo *)self setWpsDeviceNameElement:0];
  [(AWDWiFiOtaSystemInfo *)self setWpsDeviceNameData:0];
  [(AWDWiFiOtaSystemInfo *)self setWpsConfigMethods:0];
  [(AWDWiFiOtaSystemInfo *)self setLocale:0];
  [(AWDWiFiOtaSystemInfo *)self setLocaleSource:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiOtaSystemInfo;
  [(AWDWiFiOtaSystemInfo *)&v3 dealloc];
}

- (void)setHasChannel:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasChannelWidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiOtaSystemInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiOtaSystemInfo description](&v3, sel_description), -[AWDWiFiOtaSystemInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  beaconInfo = self->_beaconInfo;
  if (beaconInfo)
  {
    [v3 setObject:beaconInfo forKey:@"beaconInfo"];
  }

  ssid = self->_ssid;
  if (ssid)
  {
    [v3 setObject:ssid forKey:@"ssid"];
  }

  bssid = self->_bssid;
  if (bssid)
  {
    [v3 setObject:bssid forKey:@"bssid"];
  }

  wpsResponseType = self->_wpsResponseType;
  if (wpsResponseType)
  {
    [v3 setObject:wpsResponseType forKey:@"wpsResponseType"];
  }

  wpsManufacturerElement = self->_wpsManufacturerElement;
  if (wpsManufacturerElement)
  {
    [v3 setObject:wpsManufacturerElement forKey:@"wpsManufacturerElement"];
  }

  wpsModelName = self->_wpsModelName;
  if (wpsModelName)
  {
    [v3 setObject:wpsModelName forKey:@"wpsModelName"];
  }

  wpsModelNumber = self->_wpsModelNumber;
  if (wpsModelNumber)
  {
    [v3 setObject:wpsModelNumber forKey:@"wpsModelNumber"];
  }

  wpsPrimaryDeviceTypeCategory = self->_wpsPrimaryDeviceTypeCategory;
  if (wpsPrimaryDeviceTypeCategory)
  {
    [v3 setObject:wpsPrimaryDeviceTypeCategory forKey:@"wpsPrimaryDeviceTypeCategory"];
  }

  wpsPrimaryDeviceTypeSubCategory = self->_wpsPrimaryDeviceTypeSubCategory;
  if (wpsPrimaryDeviceTypeSubCategory)
  {
    [v3 setObject:wpsPrimaryDeviceTypeSubCategory forKey:@"wpsPrimaryDeviceTypeSubCategory"];
  }

  wpsDeviceNameElement = self->_wpsDeviceNameElement;
  if (wpsDeviceNameElement)
  {
    [v3 setObject:wpsDeviceNameElement forKey:@"wpsDeviceNameElement"];
  }

  wpsDeviceNameData = self->_wpsDeviceNameData;
  if (wpsDeviceNameData)
  {
    [v3 setObject:wpsDeviceNameData forKey:@"wpsDeviceNameData"];
  }

  wpsConfigMethods = self->_wpsConfigMethods;
  if (wpsConfigMethods)
  {
    [v3 setObject:wpsConfigMethods forKey:@"wpsConfigMethods"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKey:@"locale"];
  }

  localeSource = self->_localeSource;
  if (localeSource)
  {
    [v3 setObject:localeSource forKey:@"localeSource"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelWidth), @"channelWidth"}];
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

  if (self->_beaconInfo)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_ssid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bssid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsResponseType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsManufacturerElement)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsModelName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsModelNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsPrimaryDeviceTypeCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsPrimaryDeviceTypeSubCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsDeviceNameElement)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsDeviceNameData)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsConfigMethods)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localeSource)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    channel = self->_channel;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    channelWidth = self->_channelWidth;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 136) |= 1u;
  }

  if (self->_beaconInfo)
  {
    [a3 setBeaconInfo:?];
  }

  if (self->_ssid)
  {
    [a3 setSsid:?];
  }

  if (self->_bssid)
  {
    [a3 setBssid:?];
  }

  if (self->_wpsResponseType)
  {
    [a3 setWpsResponseType:?];
  }

  if (self->_wpsManufacturerElement)
  {
    [a3 setWpsManufacturerElement:?];
  }

  if (self->_wpsModelName)
  {
    [a3 setWpsModelName:?];
  }

  if (self->_wpsModelNumber)
  {
    [a3 setWpsModelNumber:?];
  }

  if (self->_wpsPrimaryDeviceTypeCategory)
  {
    [a3 setWpsPrimaryDeviceTypeCategory:?];
  }

  if (self->_wpsPrimaryDeviceTypeSubCategory)
  {
    [a3 setWpsPrimaryDeviceTypeSubCategory:?];
  }

  if (self->_wpsDeviceNameElement)
  {
    [a3 setWpsDeviceNameElement:?];
  }

  if (self->_wpsDeviceNameData)
  {
    [a3 setWpsDeviceNameData:?];
  }

  if (self->_wpsConfigMethods)
  {
    [a3 setWpsConfigMethods:?];
  }

  if (self->_locale)
  {
    [a3 setLocale:?];
  }

  if (self->_localeSource)
  {
    [a3 setLocaleSource:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 8) = self->_channel;
    *(a3 + 136) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 9) = self->_channelWidth;
    *(a3 + 136) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 136) |= 1u;
  }

  *(v6 + 16) = [(NSData *)self->_beaconInfo copyWithZone:a3];
  *(v6 + 56) = [(NSString *)self->_ssid copyWithZone:a3];

  *(v6 + 24) = [(NSString *)self->_bssid copyWithZone:a3];
  *(v6 + 128) = [(NSString *)self->_wpsResponseType copyWithZone:a3];

  *(v6 + 88) = [(NSString *)self->_wpsManufacturerElement copyWithZone:a3];
  *(v6 + 96) = [(NSString *)self->_wpsModelName copyWithZone:a3];

  *(v6 + 104) = [(NSString *)self->_wpsModelNumber copyWithZone:a3];
  *(v6 + 112) = [(NSString *)self->_wpsPrimaryDeviceTypeCategory copyWithZone:a3];

  *(v6 + 120) = [(NSString *)self->_wpsPrimaryDeviceTypeSubCategory copyWithZone:a3];
  *(v6 + 80) = [(NSString *)self->_wpsDeviceNameElement copyWithZone:a3];

  *(v6 + 72) = [(NSString *)self->_wpsDeviceNameData copyWithZone:a3];
  *(v6 + 64) = [(NSString *)self->_wpsConfigMethods copyWithZone:a3];

  *(v6 + 40) = [(NSString *)self->_locale copyWithZone:a3];
  *(v6 + 48) = [(NSString *)self->_localeSource copyWithZone:a3];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 32) = self->_channel;
    *(v6 + 136) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 36) = self->_channelWidth;
    *(v6 + 136) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 136);
    if (*&self->_has)
    {
      if ((*(a3 + 136) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_44;
      }
    }

    else if (*(a3 + 136))
    {
LABEL_44:
      LOBYTE(v5) = 0;
      return v5;
    }

    beaconInfo = self->_beaconInfo;
    if (!(beaconInfo | *(a3 + 2)) || (v5 = [(NSData *)beaconInfo isEqual:?]) != 0)
    {
      ssid = self->_ssid;
      if (!(ssid | *(a3 + 7)) || (v5 = [(NSString *)ssid isEqual:?]) != 0)
      {
        bssid = self->_bssid;
        if (!(bssid | *(a3 + 3)) || (v5 = [(NSString *)bssid isEqual:?]) != 0)
        {
          wpsResponseType = self->_wpsResponseType;
          if (!(wpsResponseType | *(a3 + 16)) || (v5 = [(NSString *)wpsResponseType isEqual:?]) != 0)
          {
            wpsManufacturerElement = self->_wpsManufacturerElement;
            if (!(wpsManufacturerElement | *(a3 + 11)) || (v5 = [(NSString *)wpsManufacturerElement isEqual:?]) != 0)
            {
              wpsModelName = self->_wpsModelName;
              if (!(wpsModelName | *(a3 + 12)) || (v5 = [(NSString *)wpsModelName isEqual:?]) != 0)
              {
                wpsModelNumber = self->_wpsModelNumber;
                if (!(wpsModelNumber | *(a3 + 13)) || (v5 = [(NSString *)wpsModelNumber isEqual:?]) != 0)
                {
                  wpsPrimaryDeviceTypeCategory = self->_wpsPrimaryDeviceTypeCategory;
                  if (!(wpsPrimaryDeviceTypeCategory | *(a3 + 14)) || (v5 = [(NSString *)wpsPrimaryDeviceTypeCategory isEqual:?]) != 0)
                  {
                    wpsPrimaryDeviceTypeSubCategory = self->_wpsPrimaryDeviceTypeSubCategory;
                    if (!(wpsPrimaryDeviceTypeSubCategory | *(a3 + 15)) || (v5 = [(NSString *)wpsPrimaryDeviceTypeSubCategory isEqual:?]) != 0)
                    {
                      wpsDeviceNameElement = self->_wpsDeviceNameElement;
                      if (!(wpsDeviceNameElement | *(a3 + 10)) || (v5 = [(NSString *)wpsDeviceNameElement isEqual:?]) != 0)
                      {
                        wpsDeviceNameData = self->_wpsDeviceNameData;
                        if (!(wpsDeviceNameData | *(a3 + 9)) || (v5 = [(NSString *)wpsDeviceNameData isEqual:?]) != 0)
                        {
                          wpsConfigMethods = self->_wpsConfigMethods;
                          if (!(wpsConfigMethods | *(a3 + 8)) || (v5 = [(NSString *)wpsConfigMethods isEqual:?]) != 0)
                          {
                            locale = self->_locale;
                            if (!(locale | *(a3 + 5)) || (v5 = [(NSString *)locale isEqual:?]) != 0)
                            {
                              localeSource = self->_localeSource;
                              if (!(localeSource | *(a3 + 6)) || (v5 = [(NSString *)localeSource isEqual:?]) != 0)
                              {
                                if ((*&self->_has & 2) != 0)
                                {
                                  if ((*(a3 + 136) & 2) == 0 || self->_channel != *(a3 + 8))
                                  {
                                    goto LABEL_44;
                                  }
                                }

                                else if ((*(a3 + 136) & 2) != 0)
                                {
                                  goto LABEL_44;
                                }

                                LOBYTE(v5) = (*(a3 + 136) & 4) == 0;
                                if ((*&self->_has & 4) != 0)
                                {
                                  if ((*(a3 + 136) & 4) == 0 || self->_channelWidth != *(a3 + 9))
                                  {
                                    goto LABEL_44;
                                  }

                                  LOBYTE(v5) = 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v20 = 2654435761u * self->_timestamp;
  }

  else
  {
    v20 = 0;
  }

  v19 = [(NSData *)self->_beaconInfo hash];
  v18 = [(NSString *)self->_ssid hash];
  v17 = [(NSString *)self->_bssid hash];
  v16 = [(NSString *)self->_wpsResponseType hash];
  v15 = [(NSString *)self->_wpsManufacturerElement hash];
  v3 = [(NSString *)self->_wpsModelName hash];
  v4 = [(NSString *)self->_wpsModelNumber hash];
  v5 = [(NSString *)self->_wpsPrimaryDeviceTypeCategory hash];
  v6 = [(NSString *)self->_wpsPrimaryDeviceTypeSubCategory hash];
  v7 = [(NSString *)self->_wpsDeviceNameElement hash];
  v8 = [(NSString *)self->_wpsDeviceNameData hash];
  v9 = [(NSString *)self->_wpsConfigMethods hash];
  v10 = [(NSString *)self->_locale hash];
  v11 = [(NSString *)self->_localeSource hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_channel;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    return v19 ^ v20 ^ v18 ^ v17 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = 2654435761 * self->_channelWidth;
  return v19 ^ v20 ^ v18 ^ v17 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 136))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDWiFiOtaSystemInfo *)self setBeaconInfo:?];
  }

  if (*(a3 + 7))
  {
    [(AWDWiFiOtaSystemInfo *)self setSsid:?];
  }

  if (*(a3 + 3))
  {
    [(AWDWiFiOtaSystemInfo *)self setBssid:?];
  }

  if (*(a3 + 16))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsResponseType:?];
  }

  if (*(a3 + 11))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsManufacturerElement:?];
  }

  if (*(a3 + 12))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsModelName:?];
  }

  if (*(a3 + 13))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsModelNumber:?];
  }

  if (*(a3 + 14))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsPrimaryDeviceTypeCategory:?];
  }

  if (*(a3 + 15))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsPrimaryDeviceTypeSubCategory:?];
  }

  if (*(a3 + 10))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsDeviceNameElement:?];
  }

  if (*(a3 + 9))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsDeviceNameData:?];
  }

  if (*(a3 + 8))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsConfigMethods:?];
  }

  if (*(a3 + 5))
  {
    [(AWDWiFiOtaSystemInfo *)self setLocale:?];
  }

  if (*(a3 + 6))
  {
    [(AWDWiFiOtaSystemInfo *)self setLocaleSource:?];
  }

  v5 = *(a3 + 136);
  if ((v5 & 2) != 0)
  {
    self->_channel = *(a3 + 8);
    *&self->_has |= 2u;
    v5 = *(a3 + 136);
  }

  if ((v5 & 4) != 0)
  {
    self->_channelWidth = *(a3 + 9);
    *&self->_has |= 4u;
  }
}

@end