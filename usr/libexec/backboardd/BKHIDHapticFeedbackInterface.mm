@interface BKHIDHapticFeedbackInterface
- (void)playHapticFeedbackRequest:(id)a3;
@end

@implementation BKHIDHapticFeedbackInterface

- (void)playHapticFeedbackRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 pattern];
  v5 = [v3 timestamp];
  v6 = [v3 senderID];
  v7 = [v3 powerSourceID];
  v8 = +[AHFManager sharedInstance];
  v9 = v8;
  if (v7)
  {
    v14 = 0;
    v10 = [v8 playFeedback:v4 powerSourceID:v7 timestamp:v5 error:&v14];
    v11 = v14;

    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    v13 = [v8 playFeedback:v4 senderID:v6 timestamp:v5 error:&v15];
    v11 = v15;

    if (v13)
    {
LABEL_3:
      v12 = sub_1000528AC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Haptic feedback request %{public}@ successful", buf, 0xCu);
      }

      goto LABEL_8;
    }
  }

  v12 = sub_1000528AC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Haptic feedback request %{public}@ failed with error %{public}@", buf, 0x16u);
  }

LABEL_8:
}

@end