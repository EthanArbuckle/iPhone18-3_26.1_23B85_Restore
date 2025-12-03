@interface IPPSessionDelegate
- (IPPSessionDelegate)initWithClientID:(int)d;
- (id)getLogLeader;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didCreateTask:(id)task;
@end

@implementation IPPSessionDelegate

- (IPPSessionDelegate)initWithClientID:(int)d
{
  v5.receiver = self;
  v5.super_class = IPPSessionDelegate;
  result = [(IPPSessionDelegate *)&v5 init];
  if (result)
  {
    result->_clientID = d;
  }

  return result;
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  errorCopy = error;
  v5 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    userInfo = [errorCopy userInfo];
    v7 = 138543618;
    v8 = errorCopy;
    v9 = 2114;
    v10 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "IPPSession invalidated: %{public}@ - %{public}@", &v7, 0x16u);
  }
}

- (void)URLSession:(id)session didCreateTask:(id)task
{
  taskCopy = task;
  v5 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = taskCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IPPSession didCreateTask: %{public}@", &v6, 0xCu);
  }
}

- (id)getLogLeader
{
  if (self->_clientID)
  {
    [NSString stringWithFormat:@"%@<%p> { client %d }", objc_opt_class(), self, self->_clientID];
  }

  else
  {
    [NSString stringWithFormat:@"GlobalSession<%p>", self, v4, v5];
  }
  v2 = ;

  return v2;
}

@end