@interface PerfPowerServicesReaderService
- (void)dataForRequest:(id)a3 withReply:(id)a4;
@end

@implementation PerfPowerServicesReaderService

- (void)dataForRequest:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = PPSLogReaderService();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v9)
    {
      sub_100001604(v5, v8);
    }

    v10 = [[PPSRequestDispatcher alloc] initWithFilepath:0];
    v13[0] = 0;
    v11 = [v10 dataForRequest:v5 withError:v13];
    v12 = v13[0];
  }

  else
  {
    if (v9)
    {
      sub_100001740(v8);
    }

    v12 = 0;
    v11 = 0;
  }

  v6[2](v6, v11, v12);

  objc_autoreleasePoolPop(v7);
}

@end