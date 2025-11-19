@interface ICStoreURLRequest
- (void)_startGeniusRequestWithStartDate:(id)a3 retryTimeout:(double)a4 debugName:(id)a5 connectionResponseBlock:(id)a6;
- (void)startGeniusRequestWithRetryTimeout:(double)a3 debugName:(id)a4 connectionResponseBlock:(id)a5;
@end

@implementation ICStoreURLRequest

- (void)_startGeniusRequestWithStartDate:(id)a3 retryTimeout:(double)a4 debugName:(id)a5 connectionResponseBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.amp.itunescloudd", "Genius");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v15 = v14;
    [v10 timeIntervalSinceReferenceDate];
    *buf = 138543618;
    v28 = v11;
    v29 = 2048;
    v30 = a4 - (v15 - v16);
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending request for %{public}@ (retryTimeRemaining = %g seconds)", buf, 0x16u);
  }

  v17 = +[ICURLSessionManager defaultSession];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000805C4;
  v21[3] = &unk_1001DC1A0;
  v22 = v11;
  v23 = v10;
  v26 = a4;
  v24 = self;
  v25 = v12;
  v18 = v10;
  v19 = v12;
  v20 = v11;
  [v17 enqueueDataRequest:self withCompletionHandler:v21];
}

- (void)startGeniusRequestWithRetryTimeout:(double)a3 debugName:(id)a4 connectionResponseBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = +[NSDate date];
  [(ICStoreURLRequest *)self _startGeniusRequestWithStartDate:v10 retryTimeout:v9 debugName:v8 connectionResponseBlock:a3];
}

@end