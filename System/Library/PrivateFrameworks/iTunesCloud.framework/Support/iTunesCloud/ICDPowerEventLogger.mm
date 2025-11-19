@interface ICDPowerEventLogger
+ (void)logEvent:(id)a3 payload:(id)a4;
@end

@implementation ICDPowerEventLogger

+ (void)logEvent:(id)a3 payload:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v7 = off_100213AA0;
    v22 = off_100213AA0;
    if (!off_100213AA0)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100009B58;
      v24 = &unk_1001DF318;
      v25 = &v19;
      v8 = sub_100009BA8();
      v9 = dlsym(v8, "PLShouldLogRegisteredEvent");
      *(v25[1] + 24) = v9;
      off_100213AA0 = *(v25[1] + 24);
      v7 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (v7)
    {
      if (!v7(15, v5))
      {
        v13 = os_log_create("com.apple.amp.itunescloudd", "XPC");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = v5;
          *&buf[12] = 2114;
          *&buf[14] = v6;
          v14 = "Log Power Event requested but not permitted -- %{public}@ -- %{public}@";
          goto LABEL_13;
        }

LABEL_14:

        goto LABEL_15;
      }

      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v10 = off_100213AB0;
      v22 = off_100213AB0;
      if (!off_100213AB0)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100009CFC;
        v24 = &unk_1001DF318;
        v25 = &v19;
        v11 = sub_100009BA8();
        v12 = dlsym(v11, "PLLogRegisteredEvent");
        *(v25[1] + 24) = v12;
        off_100213AB0 = *(v25[1] + 24);
        v10 = v20[3];
      }

      _Block_object_dispose(&v19, 8);
      if (v10)
      {
        v10(15, v5, v6, 0);
        v13 = os_log_create("com.apple.amp.itunescloudd", "XPC");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = v5;
          *&buf[12] = 2114;
          *&buf[14] = v6;
          v14 = "Logged Power Event -- %{public}@ -- %{public}@";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);
          goto LABEL_14;
        }

        goto LABEL_14;
      }

      v17 = +[NSAssertionHandler currentHandler];
      v18 = [NSString stringWithUTF8String:"Boolean soft_PLLogRegisteredEvent(PLClientID, CFStringRef, CFDictionaryRef, CFArrayRef)"];
      [v17 handleFailureInFunction:v18 file:@"ICDPowerEventLogger.m" lineNumber:17 description:{@"%s", dlerror()}];
    }

    else
    {
      v15 = +[NSAssertionHandler currentHandler];
      v16 = [NSString stringWithUTF8String:"Boolean soft_PLShouldLogRegisteredEvent(PLClientID, CFStringRef)"];
      [v15 handleFailureInFunction:v16 file:@"ICDPowerEventLogger.m" lineNumber:16 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

LABEL_15:
}

@end