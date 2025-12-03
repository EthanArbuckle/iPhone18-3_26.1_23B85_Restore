@interface SSDownloadAuthenticationChallengeSender
- (SSDownloadAuthenticationChallengeSender)initWithAuthenticationSession:(id)session;
- (SSDownloadAuthenticationSession)authenticationSession;
- (void)cancelAuthenticationChallenge:(id)challenge;
- (void)continueWithoutCredentialForAuthenticationChallenge:(id)challenge;
- (void)dealloc;
- (void)performDefaultHandlingForAuthenticationChallenge:(id)challenge;
- (void)rejectProtectionSpaceAndContinueWithChallenge:(id)challenge;
- (void)useCredential:(id)credential forAuthenticationChallenge:(id)challenge;
@end

@implementation SSDownloadAuthenticationChallengeSender

- (SSDownloadAuthenticationChallengeSender)initWithAuthenticationSession:(id)session
{
  v6.receiver = self;
  v6.super_class = SSDownloadAuthenticationChallengeSender;
  v4 = [(SSDownloadAuthenticationChallengeSender *)&v6 init];
  if (v4)
  {
    v4->_dispatchQueue = dispatch_queue_create("com.apple.StoreServices.SSDownloadAuthenticationChallengeSender", 0);
    v4->_session = session;
  }

  return v4;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);

  v3.receiver = self;
  v3.super_class = SSDownloadAuthenticationChallengeSender;
  [(SSDownloadAuthenticationChallengeSender *)&v3 dealloc];
}

- (SSDownloadAuthenticationSession)authenticationSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__SSDownloadAuthenticationChallengeSender_authenticationSession__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __64__SSDownloadAuthenticationChallengeSender_authenticationSession__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)cancelAuthenticationChallenge:(id)challenge
{
  authenticationSession = [(SSDownloadAuthenticationChallengeSender *)self authenticationSession];

  [(SSDownloadAuthenticationSession *)authenticationSession _finishWithType:1000 credential:0];
}

- (void)continueWithoutCredentialForAuthenticationChallenge:(id)challenge
{
  authenticationSession = [(SSDownloadAuthenticationChallengeSender *)self authenticationSession];

  [(SSDownloadAuthenticationSession *)authenticationSession _finishWithType:1001 credential:0];
}

- (void)performDefaultHandlingForAuthenticationChallenge:(id)challenge
{
  authenticationSession = [(SSDownloadAuthenticationChallengeSender *)self authenticationSession];

  [(SSDownloadAuthenticationSession *)authenticationSession _finishWithType:1003 credential:0];
}

- (void)rejectProtectionSpaceAndContinueWithChallenge:(id)challenge
{
  authenticationSession = [(SSDownloadAuthenticationChallengeSender *)self authenticationSession];

  [(SSDownloadAuthenticationSession *)authenticationSession _finishWithType:1004 credential:0];
}

- (void)useCredential:(id)credential forAuthenticationChallenge:(id)challenge
{
  v5 = [(SSDownloadAuthenticationChallengeSender *)self authenticationSession:credential];

  [(SSDownloadAuthenticationSession *)v5 _finishWithType:1002 credential:credential];
}

@end