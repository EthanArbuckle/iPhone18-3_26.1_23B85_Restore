@interface PerfPowerServicesReaderService
- (void)dataForRequest:(id)request withReply:(id)reply;
@end

@implementation PerfPowerServicesReaderService

- (void)dataForRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v7 = objc_autoreleasePoolPush();
  v8 = PPSLogReaderService();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (requestCopy)
  {
    if (v9)
    {
      sub_100001604(requestCopy, v8);
    }

    v10 = [[PPSRequestDispatcher alloc] initWithFilepath:0];
    v13[0] = 0;
    v11 = [v10 dataForRequest:requestCopy withError:v13];
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

  replyCopy[2](replyCopy, v11, v12);

  objc_autoreleasePoolPop(v7);
}

@end