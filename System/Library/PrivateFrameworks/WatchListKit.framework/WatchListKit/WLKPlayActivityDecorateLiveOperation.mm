@interface WLKPlayActivityDecorateLiveOperation
- (WLKPlayActivityDecorateLiveOperation)initWithChannelID:(id)d serviceID:(id)iD playablePassthrough:(id)passthrough;
@end

@implementation WLKPlayActivityDecorateLiveOperation

- (WLKPlayActivityDecorateLiveOperation)initWithChannelID:(id)d serviceID:(id)iD playablePassthrough:(id)passthrough
{
  dCopy = d;
  iDCopy = iD;
  passthroughCopy = passthrough;
  if (!dCopy)
  {
    [WLKPlayActivityDecorateLiveOperation initWithChannelID:serviceID:playablePassthrough:];
  }

  if (!iDCopy)
  {
    [WLKPlayActivityDecorateLiveOperation initWithChannelID:serviceID:playablePassthrough:];
  }

  v11 = passthroughCopy;
  if (!passthroughCopy)
  {
    v12 = WLKSystemLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WLKPlayActivityDecorateLiveOperation initWithChannelID:dCopy serviceID:iDCopy playablePassthrough:v12];
    }
  }

  v13 = objc_opt_new();
  [v13 setObject:dCopy forKey:@"brandId"];
  [v13 setObject:iDCopy forKey:@"externalServiceId"];
  [v13 wlk_setObjectUnlessNil:v11 forKey:@"playablePassthrough"];
  v14 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"contents/play-metadata/live" queryParameters:v13 httpMethod:0 headers:0 caller:0 timeout:0 apiVersion:0 options:0];
  v23.receiver = self;
  v23.super_class = WLKPlayActivityDecorateLiveOperation;
  v15 = [(WLKUTSNetworkRequestOperation *)&v23 initWithRequestProperties:v14];
  if (v15)
  {
    v16 = [dCopy copy];
    channelID = v15->_channelID;
    v15->_channelID = v16;

    v18 = [iDCopy copy];
    serviceID = v15->_serviceID;
    v15->_serviceID = v18;

    v20 = [v11 copy];
    playablePassthrough = v15->_playablePassthrough;
    v15->_playablePassthrough = v20;
  }

  return v15;
}

- (void)initWithChannelID:(uint64_t)a1 serviceID:(uint64_t)a2 playablePassthrough:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_272A0F000, log, OS_LOG_TYPE_ERROR, "WLKPlayActivityDecorateLiveOperation - Playable passthrough is missing for channelID - %@ and serviceID - %@, we can still proceed with decorate call", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end