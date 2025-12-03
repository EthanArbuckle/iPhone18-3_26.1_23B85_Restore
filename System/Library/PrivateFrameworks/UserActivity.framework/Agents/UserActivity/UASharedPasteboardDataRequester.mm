@interface UASharedPasteboardDataRequester
- (void)requestRemotePasteboardInfo:(id)info;
- (void)requestStreamEndpointData:(id)data;
- (void)requestStreamEndpointDataV2:(id)v2;
@end

@implementation UASharedPasteboardDataRequester

- (void)requestStreamEndpointData:(id)data
{
  dataCopy = data;
  strcpy(v27, "pbpaste!");
  v5 = [NSData dataWithBytes:v27 length:8];
  v6 = +[UAUserActivityDefaults sharedDefaults];
  [v6 pasteboardPasteRequestTimeout];
  v8 = v7;

  v9 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    peer = [(UASharedPasteboardDataRequester *)self peer];
    v11 = [NSNumber numberWithDouble:v8];
    *buf = 138412546;
    v24 = peer;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DATA REQUESTER] Requesting payload from: %@, with timeout: %{public}@", buf, 0x16u);
  }

  v12 = +[UAUserActivityDefaults sharedDefaults];
  [v12 payloadFetchResponseDelay];
  v14 = v13;

  v15 = [NSDate dateWithTimeIntervalSinceNow:v14];
  scanner = [(UASharedPasteboardDataRequester *)self scanner];
  peer2 = [(UASharedPasteboardDataRequester *)self peer];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000461A4;
  v20[3] = &unk_1000C5C98;
  v21 = v15;
  v22 = dataCopy;
  v18 = dataCopy;
  v19 = v15;
  [scanner activityPayloadFromDevice:peer2 forAdvertisementPayload:v5 command:@"pbpaste" timeout:v8 withCompletionHandler:v20];
}

- (void)requestStreamEndpointDataV2:(id)v2
{
  v2Copy = v2;
  strcpy(v27, "pbpaste!");
  v5 = [NSData dataWithBytes:v27 length:8];
  v6 = +[UAUserActivityDefaults sharedDefaults];
  [v6 pasteboardPasteRequestTimeout];
  v8 = v7;

  v9 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    peer = [(UASharedPasteboardDataRequester *)self peer];
    v11 = [NSNumber numberWithDouble:v8];
    *buf = 138412546;
    v24 = peer;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DATA REQUESTER] Requesting payload from: %@, with timeout: %{public}@, version: 2", buf, 0x16u);
  }

  v12 = +[UAUserActivityDefaults sharedDefaults];
  [v12 payloadFetchResponseDelay];
  v14 = v13;

  v15 = [NSDate dateWithTimeIntervalSinceNow:v14];
  scanner = [(UASharedPasteboardDataRequester *)self scanner];
  peer2 = [(UASharedPasteboardDataRequester *)self peer];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100046570;
  v20[3] = &unk_1000C5C98;
  v21 = v15;
  v22 = v2Copy;
  v18 = v2Copy;
  v19 = v15;
  [scanner activityPayloadFromDevice:peer2 forAdvertisementPayload:v5 command:@"pbpaste2" timeout:v8 withCompletionHandler:v20];
}

- (void)requestRemotePasteboardInfo:(id)info
{
  infoCopy = info;
  strcpy(v27, "pbtypes!");
  v5 = [NSData dataWithBytes:v27 length:8];
  v6 = +[UAUserActivityDefaults sharedDefaults];
  [v6 pasteboardTypeRequestTimeout];
  v8 = v7;

  v9 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    peer = [(UASharedPasteboardDataRequester *)self peer];
    v11 = [NSNumber numberWithDouble:v8];
    *buf = 138412546;
    v24 = peer;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DATA REQUESTER] Requesting pbinfo from: %@, with timeout: %{public}@", buf, 0x16u);
  }

  v12 = +[UAUserActivityDefaults sharedDefaults];
  [v12 payloadFetchResponseDelay];
  v14 = v13;

  v15 = [NSDate dateWithTimeIntervalSinceNow:v14];
  scanner = [(UASharedPasteboardDataRequester *)self scanner];
  peer2 = [(UASharedPasteboardDataRequester *)self peer];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004693C;
  v20[3] = &unk_1000C5C98;
  v21 = v15;
  v22 = infoCopy;
  v18 = infoCopy;
  v19 = v15;
  [scanner activityPayloadFromDevice:peer2 forAdvertisementPayload:v5 command:@"pbtypes" timeout:v8 withCompletionHandler:v20];
}

@end