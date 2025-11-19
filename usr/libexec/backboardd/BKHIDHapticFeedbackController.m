@interface BKHIDHapticFeedbackController
+ (id)sharedInstance;
- (BKHIDHapticFeedbackController)initWithHIDHapticFeedbackInterface:(id)a3;
- (BOOL)_validateHapticFeedbackRequest:(id)a3 forAuditToken:(id *)a4;
- (void)postHapticFeedbackRequest:(id)a3 forAuditToken:(id *)a4;
@end

@implementation BKHIDHapticFeedbackController

- (BOOL)_validateHapticFeedbackRequest:(id)a3 forAuditToken:(id *)a4
{
  v6 = a3;
  v7 = BSPIDForAuditToken();
  v8 = [v6 powerSourceID];
  v9 = [v6 deviceType];
  v10 = [BKSecurityManager hasEntitlement:BKRequestHapticFeedbackEntitlement forAuditToken:a4];
  if (!v8)
  {
    if (v9)
    {
      if (v9 == 1 && [(BKHIDHapticFeedbackController *)self _validateTrackpadHapticFeedbackRequest:v6 forPID:v7])
      {
        goto LABEL_3;
      }
    }

    else if ([(BKHIDHapticFeedbackController *)self _validatePencilHapticFeedbackRequest:v6 forPID:v7])
    {
      goto LABEL_3;
    }

    v12 = sub_1000528AC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v6;
      v17 = 1024;
      v18 = v7;
      v13 = "Haptic feedback request %{public}@ from pid %d could not be validated due to destination mismatch";
      goto LABEL_15;
    }

LABEL_12:

    v11 = 0;
    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
    v12 = sub_1000528AC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v6;
      v17 = 1024;
      v18 = v7;
      v13 = "Haptic feedback request %{public}@ from pid %d could not be validated due to missing entitlement";
LABEL_15:
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, &v15, 0x12u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_3:
  v11 = 1;
LABEL_13:

  return v11;
}

- (void)postHapticFeedbackRequest:(id)a3 forAuditToken:(id *)a4
{
  v5 = a3;
  if ([BKHIDHapticFeedbackController _validateHapticFeedbackRequest:"_validateHapticFeedbackRequest:forAuditToken:" forAuditToken:?])
  {
    [(BKHIDHapticFeedbackInterface *)self->_HIDHapticFeedbackInterface playHapticFeedbackRequest:v5];
  }
}

- (BKHIDHapticFeedbackController)initWithHIDHapticFeedbackInterface:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKHIDHapticFeedbackController;
  v6 = [(BKHIDHapticFeedbackController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_HIDHapticFeedbackInterface, a3);
  }

  return v7;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000691E0;
  block[3] = &unk_1000FC018;
  block[4] = a1;
  if (qword_100126018 != -1)
  {
    dispatch_once(&qword_100126018, block);
  }

  v2 = qword_100126020;

  return v2;
}

@end