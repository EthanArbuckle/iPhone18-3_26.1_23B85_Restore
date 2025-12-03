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
  getWiFiRecordRepresentation = [(SNNetworkWiFiManagerInternal *)self->_underlyingNetworkWiFiManager getWiFiRecordRepresentation];
  if (getWiFiRecordRepresentation)
  {
    v3 = objc_alloc_init(SNWiFiRecord);
    -[SNWiFiRecord setRssi:](v3, "setRssi:", [getWiFiRecordRepresentation rssi]);
    -[SNWiFiRecord setSnr:](v3, "setSnr:", [getWiFiRecordRepresentation snr]);
    -[SNWiFiRecord setCca:](v3, "setCca:", [getWiFiRecordRepresentation cca]);
    channelInfo = [getWiFiRecordRepresentation channelInfo];
    [(SNWiFiRecord *)v3 setChannelInfo:channelInfo];

    phyMode = [getWiFiRecordRepresentation phyMode];
    [(SNWiFiRecord *)v3 setPhyMode:phyMode];

    -[SNWiFiRecord setIsCaptive:](v3, "setIsCaptive:", [getWiFiRecordRepresentation isCaptive]);
    timestamp = [getWiFiRecordRepresentation timestamp];
    [(SNWiFiRecord *)v3 setTimestamp:timestamp];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end