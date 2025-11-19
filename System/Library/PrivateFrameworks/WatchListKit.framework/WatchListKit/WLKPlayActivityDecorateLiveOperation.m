@interface WLKPlayActivityDecorateLiveOperation
- (WLKPlayActivityDecorateLiveOperation)initWithChannelID:(id)a3 serviceID:(id)a4 playablePassthrough:(id)a5;
@end

@implementation WLKPlayActivityDecorateLiveOperation

- (WLKPlayActivityDecorateLiveOperation)initWithChannelID:(id)a3 serviceID:(id)a4 playablePassthrough:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [WLKPlayActivityDecorateLiveOperation initWithChannelID:serviceID:playablePassthrough:];
  }

  if (!v9)
  {
    [WLKPlayActivityDecorateLiveOperation initWithChannelID:serviceID:playablePassthrough:];
  }

  v11 = v10;
  if (!v10)
  {
    v12 = WLKSystemLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WLKPlayActivityDecorateLiveOperation initWithChannelID:v8 serviceID:v9 playablePassthrough:v12];
    }
  }

  v13 = objc_opt_new();
  [v13 setObject:v8 forKey:@"brandId"];
  [v13 setObject:v9 forKey:@"externalServiceId"];
  [v13 wlk_setObjectUnlessNil:v11 forKey:@"playablePassthrough"];
  v14 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"contents/play-metadata/live" queryParameters:v13 httpMethod:0 headers:0 caller:0 timeout:0 apiVersion:0 options:0];
  v23.receiver = self;
  v23.super_class = WLKPlayActivityDecorateLiveOperation;
  v15 = [(WLKUTSNetworkRequestOperation *)&v23 initWithRequestProperties:v14];
  if (v15)
  {
    v16 = [v8 copy];
    channelID = v15->_channelID;
    v15->_channelID = v16;

    v18 = [v9 copy];
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