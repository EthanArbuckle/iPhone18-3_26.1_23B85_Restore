@interface BKHIDHapticFeedbackInterface
- (void)playHapticFeedbackRequest:(id)request;
@end

@implementation BKHIDHapticFeedbackInterface

- (void)playHapticFeedbackRequest:(id)request
{
  requestCopy = request;
  pattern = [requestCopy pattern];
  timestamp = [requestCopy timestamp];
  senderID = [requestCopy senderID];
  powerSourceID = [requestCopy powerSourceID];
  v8 = +[AHFManager sharedInstance];
  v9 = v8;
  if (powerSourceID)
  {
    v14 = 0;
    v10 = [v8 playFeedback:pattern powerSourceID:powerSourceID timestamp:timestamp error:&v14];
    v11 = v14;

    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    v13 = [v8 playFeedback:pattern senderID:senderID timestamp:timestamp error:&v15];
    v11 = v15;

    if (v13)
    {
LABEL_3:
      v12 = sub_1000528AC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = requestCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Haptic feedback request %{public}@ successful", buf, 0xCu);
      }

      goto LABEL_8;
    }
  }

  v12 = sub_1000528AC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v17 = requestCopy;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Haptic feedback request %{public}@ failed with error %{public}@", buf, 0x16u);
  }

LABEL_8:
}

@end