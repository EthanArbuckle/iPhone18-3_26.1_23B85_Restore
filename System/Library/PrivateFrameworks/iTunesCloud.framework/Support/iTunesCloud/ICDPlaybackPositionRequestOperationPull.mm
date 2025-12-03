@interface ICDPlaybackPositionRequestOperationPull
- (ICDPlaybackPositionRequestOperationPull)initWithRequestContext:(id)context completionHandler:(id)handler;
- (id)_baseRequestWithURL:(id)l;
- (id)_requestItemVersion;
- (void)_finishWithError:(id)error;
- (void)_finishWithResponse:(id)response error:(id)error;
- (void)execute;
@end

@implementation ICDPlaybackPositionRequestOperationPull

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = self->_completionHandler;
  v6 = errorCopy;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, errorCopy == 0, errorCopy, self->_resultEntity);
    errorCopy = v6;
  }

  [(ICDPlaybackPositionRequestOperationPull *)self finishWithError:errorCopy];
}

- (void)_finishWithResponse:(id)response error:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    responseCopy = response;
    v8 = [ICDPlaybackPositionResponseDataPull alloc];
    parsedBodyDictionary = [responseCopy parsedBodyDictionary];

    entity = [(ICDPlaybackPositionRequestContext *)self->_context entity];
    playbackPositionDomain = [entity playbackPositionDomain];
    v12 = [(ICDPlaybackPositionResponseDataPull *)v8 initWithResponseDictionary:parsedBodyDictionary forDomain:playbackPositionDomain];

    v13 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ finished with reponseData: %{public}@", &v16, 0x16u);
    }

    cloudEntity = [(ICDPlaybackPositionResponseDataPull *)v12 cloudEntity];
    resultEntity = self->_resultEntity;
    self->_resultEntity = cloudEntity;
  }

  [(ICDPlaybackPositionRequestOperationPull *)self _finishWithError:errorCopy];
}

- (id)_baseRequestWithURL:(id)l
{
  lCopy = l;
  v5 = [[NSMutableURLRequest alloc] initWithURL:lCopy];

  [v5 setHTTPMethod:@"POST"];
  [v5 setValue:ICHTTPHeaderContentTypeXApplePlist forHTTPHeaderField:ICHTTPHeaderKeyContentType];
  v22[0] = @"domain";
  entity = [(ICDPlaybackPositionRequestContext *)self->_context entity];
  playbackPositionDomain = [entity playbackPositionDomain];
  v23[0] = playbackPositionDomain;
  v22[1] = @"since-version";
  _requestItemVersion = [(ICDPlaybackPositionRequestOperationPull *)self _requestItemVersion];
  v23[1] = _requestItemVersion;
  v22[2] = @"key";
  entity2 = [(ICDPlaybackPositionRequestContext *)self->_context entity];
  playbackPositionKey = [entity2 playbackPositionKey];
  v23[2] = playbackPositionKey;
  v11 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
  v12 = [v11 mutableCopy];

  v13 = +[ICDeviceInfo currentDeviceInfo];
  deviceGUID = [v13 deviceGUID];

  if (deviceGUID)
  {
    [v12 setObject:deviceGUID forKey:@"guid"];
  }

  v15 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ creating request with body: %{public}@", &v18, 0x16u);
  }

  v16 = [NSPropertyListSerialization dataWithPropertyList:v12 format:[(ICDPlaybackPositionRequestOperationBase *)self bodyContentFormat] options:0 error:0];
  if (v16)
  {
    [v5 setHTTPBody:v16];
  }

  return v5;
}

- (id)_requestItemVersion
{
  library = [(ICDPlaybackPositionRequestContext *)self->_context library];
  v4 = ML3TrackPropertyStoreBookmarkMetadataIdentifier;
  entity = [(ICDPlaybackPositionRequestContext *)self->_context entity];
  playbackPositionKey = [entity playbackPositionKey];
  v7 = [ML3ComparisonPredicate predicateWithProperty:v4 equalToValue:playbackPositionKey];
  v8 = [ML3Track anyInLibrary:library predicate:v7];

  v9 = [v8 valueForProperty:ML3TrackPropertyStoreBookmarkMetadataEntityRevision];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"0";
  }

  v12 = v11;

  return v11;
}

- (void)execute
{
  storeRequestContext = [(ICDPlaybackPositionRequestContext *)self->_context storeRequestContext];
  if (!storeRequestContext)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      v8 = "%{public}@ context.requestContext=nil";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
    }

LABEL_9:

    v9 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
    [(ICDPlaybackPositionRequestOperationPull *)self _finishWithError:v9];

    goto LABEL_10;
  }

  entity = [(ICDPlaybackPositionRequestContext *)self->_context entity];
  playbackPositionKey = [entity playbackPositionKey];

  if (!playbackPositionKey)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      v8 = "%{public}@ entity.playbackPositionKey=nil";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = +[ICURLBagProvider sharedBagProvider];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005777C;
  v10[3] = &unk_1001DFB88;
  v10[4] = self;
  v11 = storeRequestContext;
  [v6 getBagForRequestContext:v11 withCompletionHandler:v10];

LABEL_10:
}

- (ICDPlaybackPositionRequestOperationPull)initWithRequestContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = ICDPlaybackPositionRequestOperationPull;
  v9 = [(ICDPlaybackPositionRequestOperationPull *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_urlBagKey, ICURLBagKeyKVSRequestURLGet);
    v11 = objc_retainBlock(handlerCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

@end