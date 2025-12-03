@interface ICDPrivacyPromptOperation
- (ICDPrivacyPromptOperation)initWithPrivacyIdentifier:(id)identifier;
- (ICDPrivacyPromptOperation)initWithPrivacyIdentifier:(id)identifier identity:(id)identity;
- (id)completionHandler;
- (void)_didCompleteWithPrivacyPromptStatus:(int64_t)status error:(id)error;
- (void)_handleRemoteAlertActionWithResult:(BOOL)result;
- (void)cancel;
- (void)execute;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)setCompletionHandler:(id)handler;
@end

@implementation ICDPrivacyPromptOperation

- (void)_handleRemoteAlertActionWithResult:(BOOL)result
{
  resultCopy = result;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v15 = 1024;
    v16 = resultCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Remote alert action handler was called with didContinue = %{BOOL}u.", buf, 0x12u);
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_privacyIdentifier;
  v7 = self->_remoteAlertHandle;
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = 0;

  wasCancelled = self->_wasCancelled;
  os_unfair_lock_unlock(&self->_lock);
  [(SBSRemoteAlertHandle *)v7 unregisterObserver:self];
  if (wasCancelled)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Operation was already cancelled. Aborting.", buf, 0xCu);
    }

    v11 = [NSError errorWithDomain:ICErrorDomain code:-7004 userInfo:0];
    [(ICDPrivacyPromptOperation *)self finishWithError:v11];
  }

  else
  {
    if (!resultCopy)
    {
      [(ICDPrivacyPromptOperation *)self _didCompleteWithPrivacyPromptStatus:1 error:0];
      goto LABEL_11;
    }

    v11 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:self->_userIdentity];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10010D1A8;
    v12[3] = &unk_1001DE788;
    v12[4] = self;
    [v11 acknowledgePrivacyPolicyForIdentifier:v6 completionHandler:v12];
  }

LABEL_11:
}

- (void)_didCompleteWithPrivacyPromptStatus:(int64_t)status error:(id)error
{
  errorCopy = error;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_remoteAlertHandle;
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = 0;

  v9 = objc_retainBlock(self->_completionHandler);
  hasInvokedCompletionHandler = self->_hasInvokedCompletionHandler;
  if (!hasInvokedCompletionHandler)
  {
    self->_hasInvokedCompletionHandler = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    [(SBSRemoteAlertHandle *)v7 unregisterObserver:self];
  }

  if (hasInvokedCompletionHandler)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 138543362;
      *&v17[4] = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Request is already finished. Skipping running completion logic a second time.", v17, 0xCu);
    }

    goto LABEL_24;
  }

  if (status <= 3)
  {
    v12 = off_1001DE7D8[status];
    if (errorCopy)
    {
      goto LABEL_11;
    }

LABEL_15:
    v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 138543618;
      *&v17[4] = self;
      *&v17[12] = 2114;
      *&v17[14] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Did complete privacy prompt with status: %{public}@.", v17, 0x16u);
    }

    goto LABEL_21;
  }

  v12 = 0;
  if (!errorCopy)
  {
    goto LABEL_15;
  }

LABEL_11:
  v13 = [errorCopy debugDescription];
  v14 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    if (v15)
    {
      *v17 = 138543618;
      *&v17[4] = self;
      *&v17[12] = 2114;
      *&v17[14] = v13;
      v16 = "%{public}@: %{public}@.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v16, v17, 0x16u);
    }
  }

  else if (v15)
  {
    *v17 = 138543618;
    *&v17[4] = self;
    *&v17[12] = 2114;
    *&v17[14] = errorCopy;
    v16 = "%{public}@: Encountered error: %{public}@.";
    goto LABEL_19;
  }

LABEL_21:
  if (v9)
  {
    v9[2](v9, status, errorCopy);
  }

  [(ICDPrivacyPromptOperation *)self finishWithError:errorCopy, *v17, *&v17[16]];
LABEL_24:
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v6 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Remote alert handle did invalidate with error: %{public}@.", &v7, 0x16u);
  }

  [(ICDPrivacyPromptOperation *)self _didCompleteWithPrivacyPromptStatus:1 error:0];
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v4 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Remote alert handle did deactivate.", &v5, 0xCu);
  }

  [(ICDPrivacyPromptOperation *)self _didCompleteWithPrivacyPromptStatus:1 error:0];
}

- (void)execute
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v32 = self->_privacyIdentifier;
  wasCancelled = self->_wasCancelled;
  os_unfair_lock_unlock(&self->_lock);
  if (wasCancelled)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Operation was cancelled upon beginning execution. Aborting.", buf, 0xCu);
    }

    v5 = [NSError errorWithDomain:ICErrorDomain code:-7004 userInfo:0];
    [(ICDPrivacyPromptOperation *)self finishWithError:v5];
  }

  else
  {
    v6 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:self->_userIdentity];
    v7 = [v6 privacyAcknowledgementRequiredForIdentifier:v32];

    if (v7)
    {
      v8 = [ICPrivacyInfo _onboardingKitPrivacyIdentifierForPrivacyIdentifier:v32];
      if (v8)
      {
        v34 = 0;
        v35 = &v34;
        v36 = 0x2050000000;
        v9 = qword_100213DD0;
        v37 = qword_100213DD0;
        if (!qword_100213DD0)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10010DE64;
          v41 = &unk_1001DF318;
          v42 = &v34;
          sub_10010DE64(buf);
          v9 = v35[3];
        }

        v10 = v9;
        _Block_object_dispose(&v34, 8);
        v11 = [[v9 alloc] initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServicePrivacyPromptViewController"];
        v34 = 0;
        v35 = &v34;
        v36 = 0x2050000000;
        v12 = qword_100213DE0;
        v37 = qword_100213DE0;
        if (!qword_100213DE0)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10010DF2C;
          v41 = &unk_1001DF318;
          v42 = &v34;
          sub_10010DF2C(buf);
          v12 = v35[3];
        }

        v13 = v12;
        _Block_object_dispose(&v34, 8);
        v14 = objc_alloc_init(v12);
        v34 = 0;
        v35 = &v34;
        v36 = 0x2050000000;
        v15 = qword_100213DE8;
        v37 = qword_100213DE8;
        if (!qword_100213DE8)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10010DFF4;
          v41 = &unk_1001DF318;
          v42 = &v34;
          sub_10010DFF4(buf);
          v15 = v35[3];
        }

        v16 = v15;
        _Block_object_dispose(&v34, 8);
        v17 = objc_alloc_init(v15);
        v34 = 0;
        v35 = &v34;
        v36 = 0x2050000000;
        v18 = qword_100213DF8;
        v37 = qword_100213DF8;
        if (!qword_100213DF8)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10010E0BC;
          v41 = &unk_1001DF318;
          v42 = &v34;
          sub_10010E0BC(buf);
          v18 = v35[3];
        }

        v19 = v18;
        _Block_object_dispose(&v34, 8);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10010E184;
        v33[3] = &unk_1001DE760;
        v33[4] = self;
        v20 = [[v18 alloc] initWithInfo:v17 timeout:0 forResponseOnQueue:v33 withHandler:0.0];
        v21 = [NSSet setWithObject:v20];
        [v14 setActions:v21];

        v38 = @"privacyIdentifier";
        v39 = v8;
        v22 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        [v14 setUserInfo:v22];

        v34 = 0;
        v35 = &v34;
        v36 = 0x2050000000;
        v23 = qword_100213E00;
        v37 = qword_100213E00;
        if (!qword_100213E00)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10010E1F8;
          v41 = &unk_1001DF318;
          v42 = &v34;
          sub_10010E1F8(buf);
          v23 = v35[3];
        }

        v24 = v23;
        _Block_object_dispose(&v34, 8);
        v25 = [v23 newHandleWithDefinition:v11 configurationContext:v14];
        if (v25)
        {
          v26 = os_log_create("com.apple.amp.itunescloudd", "Default");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Remote alert handle created for privacy prompt: %{public}@.", buf, 0x16u);
          }

          [v25 registerObserver:self];
          os_unfair_lock_lock(&self->_lock);
          if (self->_wasCancelled)
          {
            os_unfair_lock_unlock(&self->_lock);
            v27 = os_log_create("com.apple.amp.itunescloudd", "Default");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = self;
              *&buf[12] = 2114;
              *&buf[14] = v25;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Operation was cancelled right before activating remote alert handle: %{public}@. Aborting.", buf, 0x16u);
            }

            v28 = [NSError errorWithDomain:ICErrorDomain code:-7004 userInfo:0];
            [(ICDPrivacyPromptOperation *)self finishWithError:v28];
          }

          else
          {
            objc_storeStrong(&self->_remoteAlertHandle, v25);
            os_unfair_lock_unlock(&self->_lock);
            v31 = os_log_create("com.apple.amp.itunescloudd", "Default");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = self;
              *&buf[12] = 2114;
              *&buf[14] = v25;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: Activating remote alert handle for privacy prompt: %{public}@.", buf, 0x16u);
            }

            [v25 activateWithContext:0];
          }
        }

        else
        {
          v30 = [NSError msv_errorWithDomain:ICErrorDomain code:0 debugDescription:@"Failed to create remote alert handle for privacy prompt."];
          [(ICDPrivacyPromptOperation *)self _didCompleteWithPrivacyPromptStatus:3 error:v30];
        }
      }

      else
      {
        v29 = [NSError msv_errorWithDomain:ICErrorDomain code:-7002 debugDescription:@"Unsupported privacy identifier for prompting the user to acknowledge the latest privacy policy."];
        [(ICDPrivacyPromptOperation *)self _didCompleteWithPrivacyPromptStatus:3 error:v29];
      }
    }

    else
    {
      [(ICDPrivacyPromptOperation *)self _didCompleteWithPrivacyPromptStatus:0 error:0];
    }
  }
}

- (void)cancel
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v6.receiver = self;
  v6.super_class = ICDPrivacyPromptOperation;
  [(ICDPrivacyPromptOperation *)&v6 cancel];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_remoteAlertHandle;
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = 0;

  self->_wasCancelled = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Deactivating remote alert handle for privacy prompt: %{public}@.", buf, 0x16u);
    }

    [(SBSRemoteAlertHandle *)v3 unregisterObserver:self];
    [(SBSRemoteAlertHandle *)v3 invalidate];
  }
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  completionHandler = self->_completionHandler;
  self->_completionHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)completionHandler
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_retainBlock(self->_completionHandler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = objc_retainBlock(v3);

  return v4;
}

- (ICDPrivacyPromptOperation)initWithPrivacyIdentifier:(id)identifier identity:(id)identity
{
  identifierCopy = identifier;
  identityCopy = identity;
  v12.receiver = self;
  v12.super_class = ICDPrivacyPromptOperation;
  v9 = [(ICDPrivacyPromptOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_privacyIdentifier, identifier);
    objc_storeStrong(&v10->_userIdentity, identity);
  }

  return v10;
}

- (ICDPrivacyPromptOperation)initWithPrivacyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[ICUserIdentity activeAccount];
  v6 = [(ICDPrivacyPromptOperation *)self initWithPrivacyIdentifier:identifierCopy identity:v5];

  return v6;
}

@end