@interface INStorageAppsResponse
- (INStorageAppsResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation INStorageAppsResponse

- (INStorageAppsResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v11.receiver = self;
  v11.super_class = INStorageAppsResponse;
  v4 = [(INStorageAppsResponse *)&v11 initWithHTTPResponse:response data:data bodyIsPlist:0];
  v5 = v4;
  if (v4)
  {
    v6 = OBJC_IVAR___AAResponse__httpResponse;
    if ([*&v4->AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == 200)
    {
      v7 = [ICQCloudStorageApps alloc];
      v8 = [v7 initFromDictionary:*&v5->AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
      cloudStorageApps = v5->_cloudStorageApps;
      v5->_cloudStorageApps = v8;
    }

    else
    {
      cloudStorageApps = _INLogSystem();
      if (os_log_type_enabled(cloudStorageApps, OS_LOG_TYPE_ERROR))
      {
        sub_100033DA8(&v5->AAResponse_opaque[v6], cloudStorageApps);
      }
    }
  }

  return v5;
}

@end