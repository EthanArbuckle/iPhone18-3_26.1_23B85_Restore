@interface SNNetworkWiFiManager
- (SNNetworkWiFiManager)init;
- (id)getWiFiRecord;
@end

@implementation SNNetworkWiFiManager

- (SNNetworkWiFiManager)init
{
  v6.receiver = self;
  v6.super_class = SNNetworkWiFiManager;
  v2 = [(SNNetworkWiFiManager *)&v6 init];
  if (v2)
  {
    v3 = +[SNNetworkWiFiManagerInternal shared];
    underlyingNetworkWiFiManager = v2->_underlyingNetworkWiFiManager;
    v2->_underlyingNetworkWiFiManager = v3;
  }

  return v2;
}

- (id)getWiFiRecord
{
  v2 = [(SNNetworkWiFiManagerInternal *)self->_underlyingNetworkWiFiManager getWiFiRecordRepresentation];
  if (v2)
  {
    v3 = objc_alloc_init(SNWiFiRecord);
    -[SNWiFiRecord setRssi:](v3, "setRssi:", [v2 rssi]);
    -[SNWiFiRecord setSnr:](v3, "setSnr:", [v2 snr]);
    -[SNWiFiRecord setCca:](v3, "setCca:", [v2 cca]);
    v4 = [v2 channelInfo];
    [(SNWiFiRecord *)v3 setChannelInfo:v4];

    v5 = [v2 phyMode];
    [(SNWiFiRecord *)v3 setPhyMode:v5];

    -[SNWiFiRecord setIsCaptive:](v3, "setIsCaptive:", [v2 isCaptive]);
    v6 = [v2 timestamp];
    [(SNWiFiRecord *)v3 setTimestamp:v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end