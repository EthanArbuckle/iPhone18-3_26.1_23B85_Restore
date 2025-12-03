@interface ICStoreURLRequest
- (void)_startGeniusRequestWithStartDate:(id)date retryTimeout:(double)timeout debugName:(id)name connectionResponseBlock:(id)block;
- (void)startGeniusRequestWithRetryTimeout:(double)timeout debugName:(id)name connectionResponseBlock:(id)block;
@end

@implementation ICStoreURLRequest

- (void)_startGeniusRequestWithStartDate:(id)date retryTimeout:(double)timeout debugName:(id)name connectionResponseBlock:(id)block
{
  dateCopy = date;
  nameCopy = name;
  blockCopy = block;
  v13 = os_log_create("com.apple.amp.itunescloudd", "Genius");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v15 = v14;
    [dateCopy timeIntervalSinceReferenceDate];
    *buf = 138543618;
    v28 = nameCopy;
    v29 = 2048;
    v30 = timeout - (v15 - v16);
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending request for %{public}@ (retryTimeRemaining = %g seconds)", buf, 0x16u);
  }

  v17 = +[ICURLSessionManager defaultSession];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000805C4;
  v21[3] = &unk_1001DC1A0;
  v22 = nameCopy;
  v23 = dateCopy;
  timeoutCopy = timeout;
  selfCopy = self;
  v25 = blockCopy;
  v18 = dateCopy;
  v19 = blockCopy;
  v20 = nameCopy;
  [v17 enqueueDataRequest:self withCompletionHandler:v21];
}

- (void)startGeniusRequestWithRetryTimeout:(double)timeout debugName:(id)name connectionResponseBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  v10 = +[NSDate date];
  [(ICStoreURLRequest *)self _startGeniusRequestWithStartDate:v10 retryTimeout:nameCopy debugName:blockCopy connectionResponseBlock:timeout];
}

@end