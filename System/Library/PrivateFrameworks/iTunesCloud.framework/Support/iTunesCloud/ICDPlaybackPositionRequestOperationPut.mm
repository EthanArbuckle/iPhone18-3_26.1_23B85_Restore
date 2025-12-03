@interface ICDPlaybackPositionRequestOperationPut
- (ICDPlaybackPositionRequestOperationPut)initWithRequestContext:(id)context completionBlock:(id)block;
- (id)_baseRequestWithURL:(id)l;
- (id)_resolveConflictBetweenClientPayloadPair:(id)pair andServerPayloadPair:(id)payloadPair;
- (void)_finishWithError:(id)error;
- (void)_finishWithResponse:(id)response error:(id)error;
- (void)execute;
@end

@implementation ICDPlaybackPositionRequestOperationPut

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = self->_completionHandler;
  v6 = errorCopy;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, self->_success, errorCopy, self->_resultItemEntity);
    errorCopy = v6;
  }

  [(ICDPlaybackPositionRequestOperationPut *)self finishWithError:errorCopy];
}

- (id)_resolveConflictBetweenClientPayloadPair:(id)pair andServerPayloadPair:(id)payloadPair
{
  pairCopy = pair;
  payloadPairCopy = payloadPair;
  bookmarkTimestamp = [payloadPairCopy bookmarkTimestamp];
  bookmarkTimestamp2 = [pairCopy bookmarkTimestamp];

  if (bookmarkTimestamp >= bookmarkTimestamp2)
  {
    v9 = payloadPairCopy;
  }

  else
  {
    v9 = pairCopy;
  }

  v10 = v9;

  return v9;
}

- (void)_finishWithResponse:(id)response error:(id)error
{
  errorCopy = error;
  self->_isReschedulable = 0;
  parsedBodyDictionary = [response parsedBodyDictionary];
  v7 = [parsedBodyDictionary ic_dictionaryValueForKey:@"value"];
  if (v7)
  {
    entity = [(ICDPlaybackPositionRequestContext *)self->_context entity];
    playbackPositionKey = [entity playbackPositionKey];

    v10 = [parsedBodyDictionary ic_stringValueForKey:@"version"];
    v11 = [parsedBodyDictionary ic_stringValueForKey:@"domain-version"];
    v12 = [ICPlaybackPositionEntity alloc];
    playbackPositionDomain = [(ICDPlaybackPositionRequestContext *)self->_context playbackPositionDomain];
    v14 = [v12 initWithDomain:playbackPositionDomain];

    [v14 setPlaybackPositionKey:playbackPositionKey];
    v15 = [v7 ic_numberValueForKey:@"bktm"];
    [v14 setBookmarkTime:v15];

    v16 = [v7 ic_numberValueForKey:@"hbpl"];
    [v14 setHasBeenPlayed:v16];

    v17 = [v7 ic_numberValueForKey:@"plct"];
    [v14 setUserPlayCount:v17];

    v18 = [v7 ic_numberValueForKey:@"tstm"];
    [v14 setBookmarkTimestamp:v18];

    entity2 = [(ICDPlaybackPositionRequestContext *)self->_context entity];
    v20 = [(ICDPlaybackPositionRequestOperationPut *)self _resolveConflictBetweenClientPayloadPair:entity2 andServerPayloadPair:v14];

    v21 = v10;
  }

  else
  {
    v11 = [parsedBodyDictionary ic_stringValueForKey:@"domain-version"];
    v22 = [parsedBodyDictionary objectForKeyedSubscript:@"status"];
    if (v22)
    {
      v23 = [parsedBodyDictionary ic_integerValueForKey:@"status"] == 0;
    }

    else
    {
      v23 = 0;
    }

    self->_success = v23;

    resultItemEntity = self->_resultItemEntity;
    self->_resultItemEntity = 0;

    resultItemVersionAnchor = self->_resultItemVersionAnchor;
    self->_resultItemVersionAnchor = 0;

    objc_storeStrong(&self->_resultDomainVersion, v11);
    [(ICDPlaybackPositionRequestOperationPut *)self _finishWithError:errorCopy];
  }
}

- (id)_baseRequestWithURL:(id)l
{
  lCopy = l;
  v5 = [[NSMutableURLRequest alloc] initWithURL:lCopy];

  [v5 setHTTPMethod:@"POST"];
  [v5 setValue:ICHTTPHeaderContentTypeXApplePlist forHTTPHeaderField:ICHTTPHeaderKeyContentType];
  v18[0] = @"domain";
  entity = [(ICDPlaybackPositionRequestContext *)self->_context entity];
  playbackPositionDomain = [entity playbackPositionDomain];
  v19[0] = playbackPositionDomain;
  v18[1] = @"key";
  entity2 = [(ICDPlaybackPositionRequestContext *)self->_context entity];
  playbackPositionKey = [entity2 playbackPositionKey];
  v19[1] = playbackPositionKey;
  v18[2] = @"value";
  entity3 = [(ICDPlaybackPositionRequestContext *)self->_context entity];
  v11 = [(ICDPlaybackPositionRequestOperationBase *)self keyValueStorePayloadWithEntity:entity3];
  v19[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v13 = [v12 mutableCopy];

  v14 = +[ICDeviceInfo currentDeviceInfo];
  deviceGUID = [v14 deviceGUID];

  if (deviceGUID)
  {
    [v13 setObject:deviceGUID forKey:@"guid"];
  }

  v16 = [NSPropertyListSerialization dataWithPropertyList:v13 format:[(ICDPlaybackPositionRequestOperationBase *)self bodyContentFormat] options:0 error:0];
  if (v16)
  {
    [v5 setHTTPBody:v16];
  }

  return v5;
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
    [(ICDPlaybackPositionRequestOperationPut *)self _finishWithError:v9];

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
  v10[2] = sub_100132F28;
  v10[3] = &unk_1001DFB88;
  v10[4] = self;
  v11 = storeRequestContext;
  [v6 getBagForRequestContext:v11 withCompletionHandler:v10];

LABEL_10:
}

- (ICDPlaybackPositionRequestOperationPut)initWithRequestContext:(id)context completionBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = ICDPlaybackPositionRequestOperationPut;
  v9 = [(ICDPlaybackPositionRequestOperationPut *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_urlBagKey, ICURLBagKeyKVSRequestURLPut);
    v11 = objc_retainBlock(blockCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;

    v10->_isReschedulable = 1;
  }

  return v10;
}

@end