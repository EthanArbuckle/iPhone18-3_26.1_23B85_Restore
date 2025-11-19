@interface INAppsSyncingToDriveResponse
- (INAppsSyncingToDriveResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation INAppsSyncingToDriveResponse

- (INAppsSyncingToDriveResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v11.receiver = self;
  v11.super_class = INAppsSyncingToDriveResponse;
  v4 = [(INAppsSyncingToDriveResponse *)&v11 initWithHTTPResponse:a3 data:a4 bodyIsPlist:0];
  v5 = v4;
  if (v4)
  {
    v6 = OBJC_IVAR___AAResponse__httpResponse;
    if ([*&v4->AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == 200)
    {
      v7 = [ICQAppsSyncingToDrive alloc];
      v8 = [v7 initFromDictionary:*&v5->AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
      appsSyncingToDrive = v5->_appsSyncingToDrive;
      v5->_appsSyncingToDrive = v8;
    }

    else
    {
      appsSyncingToDrive = _INLogSystem();
      if (os_log_type_enabled(appsSyncingToDrive, OS_LOG_TYPE_ERROR))
      {
        sub_1000358F4(v5, &v5->AAResponse_opaque[v6], appsSyncingToDrive);
      }
    }
  }

  return v5;
}

@end