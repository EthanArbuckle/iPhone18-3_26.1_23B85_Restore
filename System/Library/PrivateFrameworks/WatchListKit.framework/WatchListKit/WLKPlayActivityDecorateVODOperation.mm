@interface WLKPlayActivityDecorateVODOperation
+ (id)identifierForPlayActivityID:(id)d channelID:(id)iD duration:(id)duration;
- (WLKPlayActivityDecorateVODOperation)initWithExternalId:(id)id brandId:(id)brandId hlsAssetDuration:(id)duration playablePassthrough:(id)passthrough;
- (void)processResponse;
@end

@implementation WLKPlayActivityDecorateVODOperation

+ (id)identifierForPlayActivityID:(id)d channelID:(id)iD duration:(id)duration
{
  dCopy = d;
  iDCopy = iD;
  durationCopy = duration;
  if ([dCopy length] && objc_msgSend(iDCopy, "length"))
  {
    uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v11 = [dCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", iDCopy, v11];
    if ([durationCopy integerValue] >= 1)
    {
      [durationCopy doubleValue];
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

- (WLKPlayActivityDecorateVODOperation)initWithExternalId:(id)id brandId:(id)brandId hlsAssetDuration:(id)duration playablePassthrough:(id)passthrough
{
  idCopy = id;
  brandIdCopy = brandId;
  durationCopy = duration;
  passthroughCopy = passthrough;
  if (!idCopy)
  {
    [WLKPlayActivityDecorateVODOperation initWithExternalId:brandId:hlsAssetDuration:playablePassthrough:];
  }

  if (!brandIdCopy)
  {
    [WLKPlayActivityDecorateVODOperation initWithExternalId:brandId:hlsAssetDuration:playablePassthrough:];
  }

  if (!durationCopy)
  {
    [WLKPlayActivityDecorateVODOperation initWithExternalId:brandId:hlsAssetDuration:playablePassthrough:];
  }

  v14 = passthroughCopy;
  if (!passthroughCopy)
  {
    v15 = WLKSystemLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WLKPlayActivityDecorateVODOperation initWithExternalId:idCopy brandId:brandIdCopy hlsAssetDuration:v15 playablePassthrough:?];
    }
  }

  v16 = [objc_opt_class() identifierForPlayActivityID:idCopy channelID:brandIdCopy duration:durationCopy];
  compoundId = self->_compoundId;
  self->_compoundId = v16;

  v18 = objc_opt_new();
  [v18 setObject:idCopy forKey:@"externalId"];
  [v18 setObject:brandIdCopy forKey:@"brandId"];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(durationCopy, "integerValue")];
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
  responseDictionary = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  if (responseDictionary)
  {
    v4 = [[WLKPlayActivityMetadata alloc] initWithDictionary:responseDictionary];
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