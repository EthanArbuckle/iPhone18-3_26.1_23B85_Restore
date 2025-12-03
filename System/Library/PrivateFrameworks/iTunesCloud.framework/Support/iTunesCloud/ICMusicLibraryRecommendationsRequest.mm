@interface ICMusicLibraryRecommendationsRequest
- (ICMusicLibraryRecommendationsRequest)initWithStoreRequestContext:(id)context params:(id)params;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation ICMusicLibraryRecommendationsRequest

- (void)execute
{
  v3 = +[ICURLBagProvider sharedBagProvider];
  storeRequestContext = self->_storeRequestContext;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B6DB4;
  v5[3] = &unk_1001DD040;
  v5[4] = self;
  [v3 getBagForRequestContext:storeRequestContext withCompletionHandler:v5];
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Beginning request for AMPMusicArtistNewContentResponse", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B7514;
  v7[3] = &unk_1001DFC28;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ICMusicLibraryRecommendationsRequest *)self performRequestWithCompletionHandler:v7];
}

- (ICMusicLibraryRecommendationsRequest)initWithStoreRequestContext:(id)context params:(id)params
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = ICMusicLibraryRecommendationsRequest;
  v7 = [(ICMusicLibraryRecommendationsRequest *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_storeRequestContext, context);
  }

  return v8;
}

@end