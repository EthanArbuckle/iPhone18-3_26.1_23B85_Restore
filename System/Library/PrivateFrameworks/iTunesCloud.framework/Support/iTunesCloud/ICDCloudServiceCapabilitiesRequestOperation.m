@interface ICDCloudServiceCapabilitiesRequestOperation
- (ICDCloudServiceCapabilitiesRequestOperation)initWithIdentity:(id)a3;
- (NSXPCConnection)originatingClientConnection;
- (id)completionHandler;
- (int64_t)privacyAcknowledgementPolicy;
- (void)_didCompleteAllCapabilitiesAsynchronousRequests;
- (void)_didCompletePrivacyPromptOperation:(id)a3 withStatus:(int64_t)a4 error:(id)a5;
- (void)_handlePrivacyAcknowledgementErrorWithMessage:(id)a3 underlyingError:(id)a4;
- (void)_performPrivacyPromptOperation;
- (void)_requestBagWithAsynchronousRequestsGroup:(id)a3;
- (void)_requestCapabilities;
- (void)_requestIdentityPropertiesWithAsynchronousRequestsGroup:(id)a3;
- (void)_requestSubscriptionStatusWithAsynchronousRequestsGroup:(id)a3;
- (void)_updateWithBag:(id)a3 error:(id)a4;
- (void)_updateWithIdentityProperties:(id)a3 error:(id)a4;
- (void)_updateWithSubscriptionStatusResponse:(id)a3 error:(id)a4;
- (void)cancel;
- (void)execute;
- (void)setCompletionHandler:(id)a3;
- (void)setOriginatingClientConnection:(id)a3;
- (void)setPrivacyAcknowledgementPolicy:(int64_t)a3;
@end

@implementation ICDCloudServiceCapabilitiesRequestOperation

- (void)_didCompleteAllCapabilitiesAsynchronousRequests
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_bag;
  v4 = self->_identityProperties;
  v5 = self->_subscriptionStatusResponse;
  v6 = self->_error;
  v7 = objc_retainBlock(self->_completionHandler);
  if (self->_hasInvokedCompletionHandler)
  {
    os_unfair_lock_unlock(&self->_lock);
    v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Request is already finished. Skipping running completion logic a second time.", &v14, 0xCu);
    }
  }

  else
  {
    self->_hasInvokedCompletionHandler = 1;
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = 138543618;
        v15 = self;
        v16 = 2114;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Did complete request with error: %{public}@.", &v14, 0x16u);
      }

      v10 = 0;
    }

    else
    {
      v9 = [(ICMusicSubscriptionStatusResponse *)v5 subscriptionStatus];
      v10 = [v9 hasCapability:1];
      if ((([v9 hasCapability:512]& 1) != 0 || [v9 hasCapability:256]) && [(ICUserIdentityProperties *)v4 isActiveLocker])
      {
        v10 |= 0x100uLL;
      }

      if (([v9 hasCapability:1]& 1) == 0 && ([(ICUserIdentityProperties *)v4 isManagedAppleID]& 1) == 0)
      {
        v11 = [(ICURLBag *)v3 dictionaryForBagKey:ICURLBagKeyMusicSubscription];

        if (v11)
        {
          v10 |= 2uLL;
        }
      }

      v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = ICCloudServiceCapabilitiesGetDescription();
        v14 = 138543618;
        v15 = self;
        v16 = 2114;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Did complete request; capabilities: %{public}@.", &v14, 0x16u);
      }
    }

    if (v7)
    {
      v7[2](v7, v10, v6);
    }

    [(ICDCloudServiceCapabilitiesRequestOperation *)self finishWithError:v6];
  }
}

- (void)_requestCapabilities
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = dispatch_group_create();
  [(ICDCloudServiceCapabilitiesRequestOperation *)self _requestBagWithAsynchronousRequestsGroup:v3];
  [(ICDCloudServiceCapabilitiesRequestOperation *)self _requestIdentityPropertiesWithAsynchronousRequestsGroup:v3];
  [(ICDCloudServiceCapabilitiesRequestOperation *)self _requestSubscriptionStatusWithAsynchronousRequestsGroup:v3];
  v4 = qos_class_self();
  v5 = dispatch_get_global_queue(v4, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100134EFC;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_group_notify(v3, v5, block);
}

- (void)_updateWithSubscriptionStatusResponse:(id)a3 error:(id)a4
{
  v9 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (v7)
  {
    if (self->_error)
    {
      error = self->_error;
    }

    else
    {
      error = v7;
    }

    objc_storeStrong(&self->_error, error);

    os_unfair_lock_unlock(&self->_lock);
    [(ICDCloudServiceCapabilitiesRequestOperation *)self _didCompleteAllCapabilitiesAsynchronousRequests];
  }

  else
  {
    objc_storeStrong(&self->_subscriptionStatusResponse, a3);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_requestSubscriptionStatusWithAsynchronousRequestsGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_identity;
  v6 = self->_identityStore;
  privacyAcknowledgementPolicy = self->_privacyAcknowledgementPolicy;
  os_unfair_lock_unlock(&self->_lock);
  dispatch_group_enter(v4);
  v8 = [ICStoreRequestContext alloc];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100135280;
  v20[3] = &unk_1001DF490;
  v9 = v6;
  v21 = v9;
  v10 = v5;
  v22 = v10;
  v11 = [v8 initWithBlock:v20];
  v12 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:v11];
  [v12 setAllowsFallbackToExpiredStatus:1];
  [v12 setAllowsFallbackToStatusNeedingReload:1];
  [v12 setCarrierBundleProvisioningStyle:1];
  [v12 setShouldBypassEnforcementOfPrivacyAcknowledgement:privacyAcknowledgementPolicy == 2];
  v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting subscription status using %{public}@.", buf, 0x16u);
  }

  v14 = +[ICMusicSubscriptionStatusController sharedStatusController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100135318;
  v17[3] = &unk_1001DF4E0;
  v17[4] = self;
  v18 = v12;
  v19 = v4;
  v15 = v4;
  v16 = v12;
  [v14 performSubscriptionStatusRequest:v16 withCompletionHandler:v17];
}

- (void)_updateWithIdentityProperties:(id)a3 error:(id)a4
{
  v9 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (v7)
  {
    if (self->_error)
    {
      error = self->_error;
    }

    else
    {
      error = v7;
    }

    objc_storeStrong(&self->_error, error);

    os_unfair_lock_unlock(&self->_lock);
    [(ICDCloudServiceCapabilitiesRequestOperation *)self _didCompleteAllCapabilitiesAsynchronousRequests];
  }

  else
  {
    objc_storeStrong(&self->_identityProperties, a3);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_requestIdentityPropertiesWithAsynchronousRequestsGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_identity;
  v6 = self->_identityStore;
  os_unfair_lock_unlock(&self->_lock);
  dispatch_group_enter(v4);
  v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identity = self->_identity;
    *buf = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = identity;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting properties for %{public}@.", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001356C4;
  v10[3] = &unk_1001DF4B8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [(ICUserIdentityStore *)v6 getPropertiesForUserIdentity:v5 completionHandler:v10];
}

- (void)_updateWithBag:(id)a3 error:(id)a4
{
  v9 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (v7)
  {
    if (self->_error)
    {
      error = self->_error;
    }

    else
    {
      error = v7;
    }

    objc_storeStrong(&self->_error, error);

    os_unfair_lock_unlock(&self->_lock);
    [(ICDCloudServiceCapabilitiesRequestOperation *)self _didCompleteAllCapabilitiesAsynchronousRequests];
  }

  else
  {
    objc_storeStrong(&self->_bag, a3);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_requestBagWithAsynchronousRequestsGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_identity;
  v6 = self->_identityStore;
  os_unfair_lock_unlock(&self->_lock);
  dispatch_group_enter(v4);
  v7 = [ICStoreRequestContext alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100135B08;
  v16[3] = &unk_1001DF490;
  v8 = v6;
  v17 = v8;
  v9 = v5;
  v18 = v9;
  v10 = [v7 initWithBlock:v16];
  v11 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = self;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting bag using %{public}@.", buf, 0x16u);
  }

  v12 = +[ICURLBagProvider sharedBagProvider];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100135BA0;
  v14[3] = &unk_1001DFB88;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  [v12 getBagForRequestContext:v10 withCompletionHandler:v14];
}

- (void)_handlePrivacyAcknowledgementErrorWithMessage:(id)a3 underlyingError:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_retainBlock(self->_completionHandler);
  os_unfair_lock_unlock(&self->_lock);
  v9 = [NSError msv_errorWithDomain:ICErrorDomain code:-7007 underlyingError:v6 debugDescription:@"%@", v7];

  v10 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v9 msv_description];
    *buf = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
  }

  if (v8)
  {
    v8[2](v8, 0, v9);
  }

  [(ICDCloudServiceCapabilitiesRequestOperation *)self finishWithError:v9];
}

- (void)_didCompletePrivacyPromptOperation:(id)a3 withStatus:(int64_t)a4 error:(id)a5
{
  v13 = a5;
  v8 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  privacyPromptOperation = self->_privacyPromptOperation;

  if (privacyPromptOperation == v8)
  {
    self->_privacyPromptOperation = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        goto LABEL_12;
      }

      v10 = @"Encountered error while performing privacy prompt operation.";
      v11 = self;
      v12 = v13;
      goto LABEL_10;
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_12;
    }

    v10 = @"Privacy acknowledgement required, but user did not accept latest privacy policy.";
    v11 = self;
    v12 = 0;
LABEL_10:
    [(ICDCloudServiceCapabilitiesRequestOperation *)v11 _handlePrivacyAcknowledgementErrorWithMessage:v10 underlyingError:v12];
    goto LABEL_12;
  }

  [(ICDCloudServiceCapabilitiesRequestOperation *)self _requestCapabilities];
LABEL_12:
}

- (void)_performPrivacyPromptOperation
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = [ICDPrivacyPromptOperation alloc];
  v4 = [(ICDPrivacyPromptOperation *)v3 initWithPrivacyIdentifier:ICPrivacyIdentifierMusic];
  objc_initWeak(&location, v4);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013624C;
  v8[3] = &unk_1001DF468;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [(ICDPrivacyPromptOperation *)v4 setCompletionHandler:v8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_wasCancelled)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Operation was cancelled right before enqueuing privacy prompt operation: %{public}@. Aborting.", buf, 0x16u);
    }

    v6 = [NSError errorWithDomain:ICErrorDomain code:-7004 userInfo:0];
    [(ICDCloudServiceCapabilitiesRequestOperation *)self finishWithError:v6];
  }

  else
  {
    objc_storeStrong(&self->_privacyPromptOperation, v4);
    os_unfair_lock_unlock(&self->_lock);
    v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Performing %{public}@.", buf, 0x16u);
    }

    [(ICDCloudServiceCapabilitiesRequestOperation *)self enqueueChildOperation:v4];
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setCompletionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

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

- (void)setOriginatingClientConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  originatingClientConnection = self->_originatingClientConnection;
  self->_originatingClientConnection = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSXPCConnection)originatingClientConnection
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_originatingClientConnection;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPrivacyAcknowledgementPolicy:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_privacyAcknowledgementPolicy = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)privacyAcknowledgementPolicy
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  privacyAcknowledgementPolicy = self->_privacyAcknowledgementPolicy;
  os_unfair_lock_unlock(&self->_lock);
  return privacyAcknowledgementPolicy;
}

- (void)execute
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  privacyAcknowledgementPolicy = self->_privacyAcknowledgementPolicy;
  wasCancelled = self->_wasCancelled;
  os_unfair_lock_unlock(&self->_lock);
  if (wasCancelled)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Operation was cancelled upon beginning execution. Aborting.", &v10, 0xCu);
    }

    v6 = [NSError errorWithDomain:ICErrorDomain code:-7004 userInfo:0];
    [(ICDCloudServiceCapabilitiesRequestOperation *)self finishWithError:v6];
  }

  else if (privacyAcknowledgementPolicy)
  {
    if (privacyAcknowledgementPolicy == 1)
    {

      [(ICDCloudServiceCapabilitiesRequestOperation *)self _performPrivacyPromptOperation];
    }

    else if (privacyAcknowledgementPolicy == 2)
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Bypassing enforcement of privacy acknowledgement.", &v10, 0xCu);
      }

      [(ICDCloudServiceCapabilitiesRequestOperation *)self _requestCapabilities];
    }
  }

  else
  {
    v8 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:self->_identity];
    v9 = [v8 privacyAcknowledgementRequiredForIdentifier:ICPrivacyIdentifierMusic];

    if (v9)
    {

      [(ICDCloudServiceCapabilitiesRequestOperation *)self _handlePrivacyAcknowledgementErrorWithMessage:@"Privacy acknowledgement required underlyingError:but presenting the privacy prompt is not allowed.", 0];
    }

    else
    {

      [(ICDCloudServiceCapabilitiesRequestOperation *)self _requestCapabilities];
    }
  }
}

- (void)cancel
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = ICDCloudServiceCapabilitiesRequestOperation;
  [(ICDCloudServiceCapabilitiesRequestOperation *)&v5 cancel];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_privacyPromptOperation;
  self->_wasCancelled = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v7 = self;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling %{public}@.", buf, 0x16u);
    }

    [(ICDPrivacyPromptOperation *)v3 cancel];
  }
}

- (ICDCloudServiceCapabilitiesRequestOperation)initWithIdentity:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ICDCloudServiceCapabilitiesRequestOperation;
  v6 = [(ICDCloudServiceCapabilitiesRequestOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identity, a3);
    v8 = +[ICUserIdentityStore defaultIdentityStore];
    identityStore = v7->_identityStore;
    v7->_identityStore = v8;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

@end