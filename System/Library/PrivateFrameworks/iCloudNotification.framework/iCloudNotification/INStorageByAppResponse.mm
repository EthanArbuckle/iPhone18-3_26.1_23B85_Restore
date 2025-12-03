@interface INStorageByAppResponse
- (INStorageByAppResponse)initWithHTTPResponse:(id)response data:(id)data;
- (void)_parseResponseDict;
@end

@implementation INStorageByAppResponse

- (INStorageByAppResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v9.receiver = self;
  v9.super_class = INStorageByAppResponse;
  v4 = [(INStorageByAppResponse *)&v9 initWithHTTPResponse:response data:data bodyIsPlist:0];
  v5 = v4;
  if (v4)
  {
    v6 = OBJC_IVAR___AAResponse__httpResponse;
    if ([*&v4->AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == 200)
    {
      [(INStorageByAppResponse *)v5 _parseResponseDict];
    }

    else
    {
      v7 = _INLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100038C94(&v5->AAResponse_opaque[v6], v7);
      }
    }
  }

  return v5;
}

- (void)_parseResponseDict
{
  v3 = objc_alloc_init(ICQAppCloudStorage);
  appCloudStorage = self->_appCloudStorage;
  self->_appCloudStorage = v3;

  v5 = OBJC_IVAR___AAResponse__responseDictionary;
  v11 = [*&self->AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary] objectForKeyedSubscript:@"bundleIdentifier"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQAppCloudStorage *)self->_appCloudStorage setBundleID:v11];
    }
  }

  v6 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"storageUsedBytes"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQAppCloudStorage *)self->_appCloudStorage setStorageUsed:v6];
    }
  }

  v7 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"ruiURL"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [NSURL URLWithString:v7];
      [(ICQAppCloudStorage *)self->_appCloudStorage setRuiURL:v8];
    }
  }

  v9 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"liftUIURL"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [NSURL URLWithString:v9];
      [(ICQAppCloudStorage *)self->_appCloudStorage setLiftUIURL:v10];
    }
  }
}

@end