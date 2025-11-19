@interface WiFiUsageBssDetails
+ (id)bssWithIdentifier:(id)a3 channel:(int64_t)a4 channelFlags:(unint64_t)a5 rssi:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOnChannel:(id)a3;
- (NSString)apProfile;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)eventDictionary:(BOOL)a3;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)updateMLORuntimeConfig:(id *)a3;
@end

@implementation WiFiUsageBssDetails

- (NSString)apProfile
{
  apProfile = self->_apProfile;
  if (!apProfile)
  {
    bssid = self->_bssid;
    v10 = 0;
    v5 = [WiFiUsageAccessPointProfile profileForBSSID:bssid withError:&v10];
    v6 = v10;
    v7 = self->_apProfile;
    self->_apProfile = v5;

    apProfileError = self->_apProfileError;
    self->_apProfileError = v6;

    apProfile = self->_apProfile;
  }

  return apProfile;
}

+ (id)bssWithIdentifier:(id)a3 channel:(int64_t)a4 channelFlags:(unint64_t)a5 rssi:(int64_t)a6
{
  v9 = a3;
  LOBYTE(v12) = 0;
  v10 = [objc_opt_class() bssWithIdentifier:v9 apProfile:0 apMode:0 phyMode:0 channel:a4 channelFlags:a5 channelWidth:0.0 rssi:0.0 latitude:0 longitude:a6 isEdgeBss:v12];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [WiFiUsagePrivacyFilter reformatMACAddress:self->_bssid];
  channel = self->_channel;
  v6 = [WiFiUsagePrivacyFilter bandAsString:self->_band];
  v7 = [v3 stringWithFormat:@"{BSSID:%@, Channel:%d(%@ Ghz), RSSI:%d}", v4, channel, v6, self->_rssi];

  return v7;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  channel = self->_channel;
  v5 = [WiFiUsagePrivacyFilter bandAsString:self->_band];
  v6 = [v3 stringWithFormat:@"{BSSID:<redacted>, Channel:%d(%@ Ghz), RSSI:%d}", channel, v5, self->_rssi];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  bssid = self->_bssid;
  v6 = [(WiFiUsageBssDetails *)self apProfile];
  channelWidth = self->_channelWidth;
  LOBYTE(v10) = self->_isEdgeBss;
  v8 = [v4 bssWithIdentifier:bssid apProfile:v6 apMode:self->_apMode phyMode:self->_phyMode channel:self->_channel channelFlags:self->_channelFlags channelWidth:self->_locationLatitude rssi:self->_locationLongitude latitude:channelWidth longitude:self->_rssi isEdgeBss:v10];

  [v8 setHasAppleIE:self->_hasAppleIE];
  [v8 setHasInterworkingIE:self->_hasInterworkingIE];
  [v8 setHasWpsIE:self->_hasWpsIE];
  [v8 setHasDomainName:self->_hasDomainName];
  [v8 setHasNaiRealms:self->_hasNaiRealms];
  [v8 setHasRoamingOis:self->_hasRoamingOis];
  [v8 setNetworkAccessCode:self->_networkAccessCode];
  [v8 setVenueGroup:self->_venueGroup];
  [v8 setVenueCode:self->_venueCode];
  [v8 setModelName:self->_modelName];
  [v8 setModelNumber:self->_modelNumber];
  [v8 setManufacturerName:self->_manufacturerName];
  [v8 setDeviceVersion:self->_deviceVersion];
  [v8 setRssi:self->_rssi];
  [v8 setHasColocatedMLOs:self->_hasColocatedMLOs];
  [v8 setApProfileError:self->_apProfileError];
  return v8;
}

- (unint64_t)hash
{
  v2 = [(WiFiUsageBssDetails *)self bssid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WiFiUsageBssDetails *)self bssid];
    v6 = [v4 bssid];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)eventDictionary:(BOOL)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = v5;
  if (!a3)
  {
    [v5 setObject:self->_bssid forKeyedSubscript:@"NetworkBssIdentifier"];
  }

  if (self->_bssid)
  {
    v7 = [WiFiUsagePrivacyFilter sanitizedOUI:?];
    [v6 setObject:v7 forKeyedSubscript:@"NetworkBssOui"];
  }

  apProfile = self->_apProfile;
  if (apProfile)
  {
    [v6 setObject:apProfile forKeyedSubscript:@"NetworkBssApProfile"];
  }

  else
  {
    v9 = [WiFiUsageAccessPointProfile errorStringForTelemetry:self->_apProfileError];
    [v6 setObject:v9 forKeyedSubscript:@"NetworkBssApProfile"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_phyMode];
  [v6 setObject:v10 forKeyedSubscript:@"NetworkBssPhyMode"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_apMode];
  [v6 setObject:v11 forKeyedSubscript:@"NetworkBssApMode"];

  v12 = [WiFiUsagePrivacyFilter bandAsString:self->_band];
  [v6 setObject:v12 forKeyedSubscript:@"NetworkBssBand"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_channel];
  [v6 setObject:v13 forKeyedSubscript:@"NetworkBssChannel"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_channelWidth];
  [v6 setObject:v14 forKeyedSubscript:@"NetworkBssChannelWidth"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEdgeBss];
  [v6 setObject:v15 forKeyedSubscript:@"NetworkBssIsEdge"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasAppleIE];
  [v6 setObject:v16 forKeyedSubscript:@"NetworkBssHasAppleIE"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasInterworkingIE];
  [v6 setObject:v17 forKeyedSubscript:@"NetworkBssHasInterworkingIE"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasWpsIE];
  [v6 setObject:v18 forKeyedSubscript:@"NetworkBssHasWpsIE"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasDomainName];
  [v6 setObject:v19 forKeyedSubscript:@"NetworkBssHasDomainName"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasNaiRealms];
  [v6 setObject:v20 forKeyedSubscript:@"NetworkBssHasNaiRealms"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasRoamingOis];
  [v6 setObject:v21 forKeyedSubscript:@"NetworkBssHasRoamingOis"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_networkAccessCode];
  [v6 setObject:v22 forKeyedSubscript:@"NetworkBssNetworkAccessCode"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_venueGroup];
  [v6 setObject:v23 forKeyedSubscript:@"NetworkBssVenueGroup"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_venueCode];
  [v6 setObject:v24 forKeyedSubscript:@"NetworkBssVenueCode"];

  return v6;
}

- (BOOL)isOnChannel:(id)a3
{
  v4 = a3;
  v5 = v4;
  band = self->_band;
  if (!band)
  {
    if ([v4 is2_4GHz])
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (band == 2)
  {
    if ([v4 is6GHz])
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  if (band != 1 || ([v4 is5GHz] & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = self->_channel == [v5 channelNumber];
LABEL_10:

  return v7;
}

- (void)updateMLORuntimeConfig:(id *)a3
{
  [(WiFiUsageBssDetails *)self setCurrentMloLinksCount:a3->var0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3->var3];
  [(WiFiUsageBssDetails *)self setMloTrafficSwitchEnabled:v5];

  [(WiFiUsageBssDetails *)self setCurrentMloPreferredBand:a3->var2];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v8 = 0;
  var1 = a3->var1;
  do
  {
    if (var1[v8] != 3)
    {
      v10 = [WiFiUsagePrivacyFilter bandAsString:?];
      [v7 addObject:v10];
    }

    ++v8;
  }

  while (v8 != 3);
  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
  currentMloLinks = self->_currentMloLinks;
  self->_currentMloLinks = v11;

  objc_autoreleasePoolPop(v6);
}

@end