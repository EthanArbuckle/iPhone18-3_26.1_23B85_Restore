@interface UVFSServiceNotifciations
- (void)serviceExitingForDevice:(id)device withReply:(id)reply;
@end

@implementation UVFSServiceNotifciations

- (void)serviceExitingForDevice:(id)device withReply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  v7 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
  {
    sub_100004148(deviceCopy, v7);
  }

  v8 = qword_10000D328;
  objc_sync_enter(v8);
  v9 = [qword_10000D328 objectForKeyedSubscript:deviceCopy];
  objc_sync_exit(v8);

  v10 = qword_10000D340;
  if (v9)
  {
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
    {
      sub_1000041C0(deviceCopy, v10);
    }

    [v9 setExited:1];
    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      sub_100004238(deviceCopy, v10);
    }

    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
  }

  replyCopy[2](replyCopy, v11);
}

@end