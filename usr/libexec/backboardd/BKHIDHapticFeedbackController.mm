@interface BKHIDHapticFeedbackController
+ (id)sharedInstance;
- (BKHIDHapticFeedbackController)initWithHIDHapticFeedbackInterface:(id)interface;
- (BOOL)_validateHapticFeedbackRequest:(id)request forAuditToken:(id *)token;
- (void)postHapticFeedbackRequest:(id)request forAuditToken:(id *)token;
@end

@implementation BKHIDHapticFeedbackController

- (BOOL)_validateHapticFeedbackRequest:(id)request forAuditToken:(id *)token
{
  requestCopy = request;
  v7 = BSPIDForAuditToken();
  powerSourceID = [requestCopy powerSourceID];
  deviceType = [requestCopy deviceType];
  v10 = [BKSecurityManager hasEntitlement:BKRequestHapticFeedbackEntitlement forAuditToken:token];
  if (!powerSourceID)
  {
    if (deviceType)
    {
      if (deviceType == 1 && [(BKHIDHapticFeedbackController *)self _validateTrackpadHapticFeedbackRequest:requestCopy forPID:v7])
      {
        goto LABEL_3;
      }
    }

    else if ([(BKHIDHapticFeedbackController *)self _validatePencilHapticFeedbackRequest:requestCopy forPID:v7])
    {
      goto LABEL_3;
    }

    v12 = sub_1000528AC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = requestCopy;
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
      v16 = requestCopy;
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

- (void)postHapticFeedbackRequest:(id)request forAuditToken:(id *)token
{
  requestCopy = request;
  if ([BKHIDHapticFeedbackController _validateHapticFeedbackRequest:"_validateHapticFeedbackRequest:forAuditToken:" forAuditToken:?])
  {
    [(BKHIDHapticFeedbackInterface *)self->_HIDHapticFeedbackInterface playHapticFeedbackRequest:requestCopy];
  }
}

- (BKHIDHapticFeedbackController)initWithHIDHapticFeedbackInterface:(id)interface
{
  interfaceCopy = interface;
  v9.receiver = self;
  v9.super_class = BKHIDHapticFeedbackController;
  v6 = [(BKHIDHapticFeedbackController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_HIDHapticFeedbackInterface, interface);
  }

  return v7;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000691E0;
  block[3] = &unk_1000FC018;
  block[4] = self;
  if (qword_100126018 != -1)
  {
    dispatch_once(&qword_100126018, block);
  }

  v2 = qword_100126020;

  return v2;
}

@end