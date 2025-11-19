@interface UVFSServiceNotifciations
- (void)serviceExitingForDevice:(id)a3 withReply:(id)a4;
@end

@implementation UVFSServiceNotifciations

- (void)serviceExitingForDevice:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
  {
    sub_100004148(v5, v7);
  }

  v8 = qword_10000D328;
  objc_sync_enter(v8);
  v9 = [qword_10000D328 objectForKeyedSubscript:v5];
  objc_sync_exit(v8);

  v10 = qword_10000D340;
  if (v9)
  {
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
    {
      sub_1000041C0(v5, v10);
    }

    [v9 setExited:1];
    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      sub_100004238(v5, v10);
    }

    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
  }

  v6[2](v6, v11);
}

@end