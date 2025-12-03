@interface AWDWiFiOtaSystemInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasChannel:(BOOL)channel;
- (void)setHasChannelWidth:(BOOL)width;
- (void)writeTo:(id)to;
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

- (void)setHasChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasChannelWidth:(BOOL)width
{
  if (width)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  beaconInfo = self->_beaconInfo;
  if (beaconInfo)
  {
    [dictionary setObject:beaconInfo forKey:@"beaconInfo"];
  }

  ssid = self->_ssid;
  if (ssid)
  {
    [dictionary setObject:ssid forKey:@"ssid"];
  }

  bssid = self->_bssid;
  if (bssid)
  {
    [dictionary setObject:bssid forKey:@"bssid"];
  }

  wpsResponseType = self->_wpsResponseType;
  if (wpsResponseType)
  {
    [dictionary setObject:wpsResponseType forKey:@"wpsResponseType"];
  }

  wpsManufacturerElement = self->_wpsManufacturerElement;
  if (wpsManufacturerElement)
  {
    [dictionary setObject:wpsManufacturerElement forKey:@"wpsManufacturerElement"];
  }

  wpsModelName = self->_wpsModelName;
  if (wpsModelName)
  {
    [dictionary setObject:wpsModelName forKey:@"wpsModelName"];
  }

  wpsModelNumber = self->_wpsModelNumber;
  if (wpsModelNumber)
  {
    [dictionary setObject:wpsModelNumber forKey:@"wpsModelNumber"];
  }

  wpsPrimaryDeviceTypeCategory = self->_wpsPrimaryDeviceTypeCategory;
  if (wpsPrimaryDeviceTypeCategory)
  {
    [dictionary setObject:wpsPrimaryDeviceTypeCategory forKey:@"wpsPrimaryDeviceTypeCategory"];
  }

  wpsPrimaryDeviceTypeSubCategory = self->_wpsPrimaryDeviceTypeSubCategory;
  if (wpsPrimaryDeviceTypeSubCategory)
  {
    [dictionary setObject:wpsPrimaryDeviceTypeSubCategory forKey:@"wpsPrimaryDeviceTypeSubCategory"];
  }

  wpsDeviceNameElement = self->_wpsDeviceNameElement;
  if (wpsDeviceNameElement)
  {
    [dictionary setObject:wpsDeviceNameElement forKey:@"wpsDeviceNameElement"];
  }

  wpsDeviceNameData = self->_wpsDeviceNameData;
  if (wpsDeviceNameData)
  {
    [dictionary setObject:wpsDeviceNameData forKey:@"wpsDeviceNameData"];
  }

  wpsConfigMethods = self->_wpsConfigMethods;
  if (wpsConfigMethods)
  {
    [dictionary setObject:wpsConfigMethods forKey:@"wpsConfigMethods"];
  }

  locale = self->_locale;
  if (locale)
  {
    [dictionary setObject:locale forKey:@"locale"];
  }

  localeSource = self->_localeSource;
  if (localeSource)
  {
    [dictionary setObject:localeSource forKey:@"localeSource"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelWidth), @"channelWidth"}];
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 136) |= 1u;
  }

  if (self->_beaconInfo)
  {
    [to setBeaconInfo:?];
  }

  if (self->_ssid)
  {
    [to setSsid:?];
  }

  if (self->_bssid)
  {
    [to setBssid:?];
  }

  if (self->_wpsResponseType)
  {
    [to setWpsResponseType:?];
  }

  if (self->_wpsManufacturerElement)
  {
    [to setWpsManufacturerElement:?];
  }

  if (self->_wpsModelName)
  {
    [to setWpsModelName:?];
  }

  if (self->_wpsModelNumber)
  {
    [to setWpsModelNumber:?];
  }

  if (self->_wpsPrimaryDeviceTypeCategory)
  {
    [to setWpsPrimaryDeviceTypeCategory:?];
  }

  if (self->_wpsPrimaryDeviceTypeSubCategory)
  {
    [to setWpsPrimaryDeviceTypeSubCategory:?];
  }

  if (self->_wpsDeviceNameElement)
  {
    [to setWpsDeviceNameElement:?];
  }

  if (self->_wpsDeviceNameData)
  {
    [to setWpsDeviceNameData:?];
  }

  if (self->_wpsConfigMethods)
  {
    [to setWpsConfigMethods:?];
  }

  if (self->_locale)
  {
    [to setLocale:?];
  }

  if (self->_localeSource)
  {
    [to setLocaleSource:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 8) = self->_channel;
    *(to + 136) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(to + 9) = self->_channelWidth;
    *(to + 136) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 136) |= 1u;
  }

  *(v6 + 16) = [(NSData *)self->_beaconInfo copyWithZone:zone];
  *(v6 + 56) = [(NSString *)self->_ssid copyWithZone:zone];

  *(v6 + 24) = [(NSString *)self->_bssid copyWithZone:zone];
  *(v6 + 128) = [(NSString *)self->_wpsResponseType copyWithZone:zone];

  *(v6 + 88) = [(NSString *)self->_wpsManufacturerElement copyWithZone:zone];
  *(v6 + 96) = [(NSString *)self->_wpsModelName copyWithZone:zone];

  *(v6 + 104) = [(NSString *)self->_wpsModelNumber copyWithZone:zone];
  *(v6 + 112) = [(NSString *)self->_wpsPrimaryDeviceTypeCategory copyWithZone:zone];

  *(v6 + 120) = [(NSString *)self->_wpsPrimaryDeviceTypeSubCategory copyWithZone:zone];
  *(v6 + 80) = [(NSString *)self->_wpsDeviceNameElement copyWithZone:zone];

  *(v6 + 72) = [(NSString *)self->_wpsDeviceNameData copyWithZone:zone];
  *(v6 + 64) = [(NSString *)self->_wpsConfigMethods copyWithZone:zone];

  *(v6 + 40) = [(NSString *)self->_locale copyWithZone:zone];
  *(v6 + 48) = [(NSString *)self->_localeSource copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 136);
    if (*&self->_has)
    {
      if ((*(equal + 136) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_44;
      }
    }

    else if (*(equal + 136))
    {
LABEL_44:
      LOBYTE(v5) = 0;
      return v5;
    }

    beaconInfo = self->_beaconInfo;
    if (!(beaconInfo | *(equal + 2)) || (v5 = [(NSData *)beaconInfo isEqual:?]) != 0)
    {
      ssid = self->_ssid;
      if (!(ssid | *(equal + 7)) || (v5 = [(NSString *)ssid isEqual:?]) != 0)
      {
        bssid = self->_bssid;
        if (!(bssid | *(equal + 3)) || (v5 = [(NSString *)bssid isEqual:?]) != 0)
        {
          wpsResponseType = self->_wpsResponseType;
          if (!(wpsResponseType | *(equal + 16)) || (v5 = [(NSString *)wpsResponseType isEqual:?]) != 0)
          {
            wpsManufacturerElement = self->_wpsManufacturerElement;
            if (!(wpsManufacturerElement | *(equal + 11)) || (v5 = [(NSString *)wpsManufacturerElement isEqual:?]) != 0)
            {
              wpsModelName = self->_wpsModelName;
              if (!(wpsModelName | *(equal + 12)) || (v5 = [(NSString *)wpsModelName isEqual:?]) != 0)
              {
                wpsModelNumber = self->_wpsModelNumber;
                if (!(wpsModelNumber | *(equal + 13)) || (v5 = [(NSString *)wpsModelNumber isEqual:?]) != 0)
                {
                  wpsPrimaryDeviceTypeCategory = self->_wpsPrimaryDeviceTypeCategory;
                  if (!(wpsPrimaryDeviceTypeCategory | *(equal + 14)) || (v5 = [(NSString *)wpsPrimaryDeviceTypeCategory isEqual:?]) != 0)
                  {
                    wpsPrimaryDeviceTypeSubCategory = self->_wpsPrimaryDeviceTypeSubCategory;
                    if (!(wpsPrimaryDeviceTypeSubCategory | *(equal + 15)) || (v5 = [(NSString *)wpsPrimaryDeviceTypeSubCategory isEqual:?]) != 0)
                    {
                      wpsDeviceNameElement = self->_wpsDeviceNameElement;
                      if (!(wpsDeviceNameElement | *(equal + 10)) || (v5 = [(NSString *)wpsDeviceNameElement isEqual:?]) != 0)
                      {
                        wpsDeviceNameData = self->_wpsDeviceNameData;
                        if (!(wpsDeviceNameData | *(equal + 9)) || (v5 = [(NSString *)wpsDeviceNameData isEqual:?]) != 0)
                        {
                          wpsConfigMethods = self->_wpsConfigMethods;
                          if (!(wpsConfigMethods | *(equal + 8)) || (v5 = [(NSString *)wpsConfigMethods isEqual:?]) != 0)
                          {
                            locale = self->_locale;
                            if (!(locale | *(equal + 5)) || (v5 = [(NSString *)locale isEqual:?]) != 0)
                            {
                              localeSource = self->_localeSource;
                              if (!(localeSource | *(equal + 6)) || (v5 = [(NSString *)localeSource isEqual:?]) != 0)
                              {
                                if ((*&self->_has & 2) != 0)
                                {
                                  if ((*(equal + 136) & 2) == 0 || self->_channel != *(equal + 8))
                                  {
                                    goto LABEL_44;
                                  }
                                }

                                else if ((*(equal + 136) & 2) != 0)
                                {
                                  goto LABEL_44;
                                }

                                LOBYTE(v5) = (*(equal + 136) & 4) == 0;
                                if ((*&self->_has & 4) != 0)
                                {
                                  if ((*(equal + 136) & 4) == 0 || self->_channelWidth != *(equal + 9))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 136))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDWiFiOtaSystemInfo *)self setBeaconInfo:?];
  }

  if (*(from + 7))
  {
    [(AWDWiFiOtaSystemInfo *)self setSsid:?];
  }

  if (*(from + 3))
  {
    [(AWDWiFiOtaSystemInfo *)self setBssid:?];
  }

  if (*(from + 16))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsResponseType:?];
  }

  if (*(from + 11))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsManufacturerElement:?];
  }

  if (*(from + 12))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsModelName:?];
  }

  if (*(from + 13))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsModelNumber:?];
  }

  if (*(from + 14))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsPrimaryDeviceTypeCategory:?];
  }

  if (*(from + 15))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsPrimaryDeviceTypeSubCategory:?];
  }

  if (*(from + 10))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsDeviceNameElement:?];
  }

  if (*(from + 9))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsDeviceNameData:?];
  }

  if (*(from + 8))
  {
    [(AWDWiFiOtaSystemInfo *)self setWpsConfigMethods:?];
  }

  if (*(from + 5))
  {
    [(AWDWiFiOtaSystemInfo *)self setLocale:?];
  }

  if (*(from + 6))
  {
    [(AWDWiFiOtaSystemInfo *)self setLocaleSource:?];
  }

  v5 = *(from + 136);
  if ((v5 & 2) != 0)
  {
    self->_channel = *(from + 8);
    *&self->_has |= 2u;
    v5 = *(from + 136);
  }

  if ((v5 & 4) != 0)
  {
    self->_channelWidth = *(from + 9);
    *&self->_has |= 4u;
  }
}

@end