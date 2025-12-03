@interface ICLightweightMusicSubscriptionStatusRequest
- (ICLightweightMusicSubscriptionStatusRequest)initWithRequestContext:(id)context;
- (void)_finishWithExtendedSubscriptionStatusResponse:(id)response error:(id)error;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation ICLightweightMusicSubscriptionStatusRequest

- (void)_finishWithExtendedSubscriptionStatusResponse:(id)response error:(id)error
{
  errorCopy = error;
  if (response)
  {
    responseCopy = response;
    v7 = [[ICLightweightMusicSubscriptionStatusResponse alloc] _initWithExtendedSubscriptionStatusResponse:responseCopy];

    response = self->_response;
    self->_response = v7;
  }

  [(ICRequestOperation *)self finishWithError:errorCopy];
}

- (void)execute
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:self->_requestContext];
  [(ICMusicSubscriptionStatusRequest *)v3 setAllowsFallbackToExpiredStatus:0];
  [(ICMusicSubscriptionStatusRequest *)v3 setAllowsFallbackToStatusNeedingReload:0];
  [(ICMusicSubscriptionStatusRequest *)v3 setShouldIgnoreCache:1];
  [(ICMusicSubscriptionStatusRequest *)v3 setShouldReturnLastKnownStatusOnly:0];
  [(ICMusicSubscriptionStatusRequest *)v3 setShouldBypassEnforcementOfPrivacyAcknowledgement:1];
  v4 = [[ICMusicSubscriptionStatusRequestOperation alloc] initWithRequest:v3];
  [(ICMusicSubscriptionStatusRequestOperation *)v4 setAllowsFuseHeaderEnrichment:0];
  [(ICMusicSubscriptionStatusRequestOperation *)v4 setShouldRequestLightweightStatus:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__ICLightweightMusicSubscriptionStatusRequest_execute__block_invoke;
  v6[3] = &unk_1E7BF37F8;
  v6[4] = self;
  [(ICMusicSubscriptionStatusRequestOperation *)v4 setResponseHandler:v6];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing lightweight subscription status request. Extended request: %{public}@.", buf, 0x16u);
  }

  [(ICAsyncOperation *)self enqueueChildOperation:v4];
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__ICLightweightMusicSubscriptionStatusRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

- (ICLightweightMusicSubscriptionStatusRequest)initWithRequestContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICLightweightMusicSubscriptionStatusRequest;
  v5 = [(ICRequestOperation *)&v9 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    requestContext = v5->_requestContext;
    v5->_requestContext = v6;
  }

  return v5;
}

@end