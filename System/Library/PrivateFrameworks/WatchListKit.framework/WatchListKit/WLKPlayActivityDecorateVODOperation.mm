@interface WLKPlayActivityDecorateVODOperation
+ (id)identifierForPlayActivityID:(id)a3 channelID:(id)a4 duration:(id)a5;
- (WLKPlayActivityDecorateVODOperation)initWithExternalId:(id)a3 brandId:(id)a4 hlsAssetDuration:(id)a5 playablePassthrough:(id)a6;
- (void)processResponse;
@end

@implementation WLKPlayActivityDecorateVODOperation

+ (id)identifierForPlayActivityID:(id)a3 channelID:(id)a4 duration:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 length] && objc_msgSend(v8, "length"))
  {
    v10 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v11 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v10];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v8, v11];
    if ([v9 integerValue] >= 1)
    {
      [v9 doubleValue];
      v14 = [v12 stringByAppendingFormat:@":%.0f", v13 * 1000.0];

      v12 = v14;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (WLKPlayActivityDecorateVODOperation)initWithExternalId:(id)a3 brandId:(id)a4 hlsAssetDuration:(id)a5 playablePassthrough:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    [WLKPlayActivityDecorateVODOperation initWithExternalId:brandId:hlsAssetDuration:playablePassthrough:];
  }

  if (!v11)
  {
    [WLKPlayActivityDecorateVODOperation initWithExternalId:brandId:hlsAssetDuration:playablePassthrough:];
  }

  if (!v12)
  {
    [WLKPlayActivityDecorateVODOperation initWithExternalId:brandId:hlsAssetDuration:playablePassthrough:];
  }

  v14 = v13;
  if (!v13)
  {
    v15 = WLKSystemLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WLKPlayActivityDecorateVODOperation initWithExternalId:v10 brandId:v11 hlsAssetDuration:v15 playablePassthrough:?];
    }
  }

  v16 = [objc_opt_class() identifierForPlayActivityID:v10 channelID:v11 duration:v12];
  compoundId = self->_compoundId;
  self->_compoundId = v16;

  v18 = objc_opt_new();
  [v18 setObject:v10 forKey:@"externalId"];
  [v18 setObject:v11 forKey:@"brandId"];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v12, "integerValue")];
  [v18 setObject:v19 forKey:@"hlsAssetDuration"];

  [v18 wlk_setObjectUnlessNil:v14 forKey:@"playablePassthrough"];
  v20 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"contents/play-metadata/vod" queryParameters:v18 httpMethod:0 headers:0 caller:0 timeout:0 apiVersion:0 options:0];
  v23.receiver = self;
  v23.super_class = WLKPlayActivityDecorateVODOperation;
  v21 = [(WLKUTSNetworkRequestOperation *)&v23 initWithRequestProperties:v20];

  return v21;
}

- (void)processResponse
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  if (v3)
  {
    v4 = [[WLKPlayActivityMetadata alloc] initWithDictionary:v3];
    v5 = v4;
    if (self->_compoundId)
    {
      if (v4)
      {
        compoundId = self->_compoundId;
        v10[0] = v4;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&compoundId count:1];
        p_super = &self->_metadataByIdentifier->super;
        self->_metadataByIdentifier = v6;
      }

      else
      {
        p_super = WLKSystemLogObject();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(WLKPlayActivityDecorateVODOperation *)p_super processResponse];
        }
      }
    }

    else
    {
      p_super = WLKSystemLogObject();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [(WLKPlayActivityDecorateVODOperation *)p_super processResponse];
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithExternalId:(os_log_t)log brandId:hlsAssetDuration:playablePassthrough:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_272A0F000, log, OS_LOG_TYPE_ERROR, "WLKPlayActivityDecorateVODOperation - Playable passthrough is nil for externalID - %@ and brandID - %@, we can still proceed with decorate call", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end