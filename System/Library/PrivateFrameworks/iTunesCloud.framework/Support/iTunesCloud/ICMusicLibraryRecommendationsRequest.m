@interface ICMusicLibraryRecommendationsRequest
- (ICMusicLibraryRecommendationsRequest)initWithStoreRequestContext:(id)a3 params:(id)a4;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
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

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Beginning request for AMPMusicArtistNewContentResponse", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B7514;
  v7[3] = &unk_1001DFC28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(ICMusicLibraryRecommendationsRequest *)self performRequestWithCompletionHandler:v7];
}

- (ICMusicLibraryRecommendationsRequest)initWithStoreRequestContext:(id)a3 params:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = ICMusicLibraryRecommendationsRequest;
  v7 = [(ICMusicLibraryRecommendationsRequest *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_storeRequestContext, a3);
  }

  return v8;
}

@end