@interface UAMockActivityScanner
- (UAMockActivityScanner)initWithController:(id)a3;
- (void)activityPayloadFromDevice:(id)a3 forAdvertisementPayload:(id)a4 command:(id)a5 timeout:(int64_t)a6 withCompletionHandler:(id)a7;
@end

@implementation UAMockActivityScanner

- (UAMockActivityScanner)initWithController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UAMockActivityScanner;
  v6 = [(UAMockActivityScanner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
  }

  return v7;
}

- (void)activityPayloadFromDevice:(id)a3 forAdvertisementPayload:(id)a4 command:(id)a5 timeout:(int64_t)a6 withCompletionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = sub_100001A30(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138544130;
    v19 = v12;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    v24 = 2048;
    v25 = a6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "activityPayloadFromDevice:%{public}@ forAdvertisementPayload:%{public}@ command:%{public}@ timeout:%ld", &v18, 0x2Au);
  }

  v17 = [(UAMockActivityScanner *)self controller];
  [v17 activityPayloadFromDevice:v12 forAdvertisementPayload:v13 command:v14 timeout:a6 withCompletionHandler:v15];
}

@end