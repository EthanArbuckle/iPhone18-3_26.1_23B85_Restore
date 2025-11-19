@interface IPPSessionDelegate
- (IPPSessionDelegate)initWithClientID:(int)a3;
- (id)getLogLeader;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didCreateTask:(id)a4;
@end

@implementation IPPSessionDelegate

- (IPPSessionDelegate)initWithClientID:(int)a3
{
  v5.receiver = self;
  v5.super_class = IPPSessionDelegate;
  result = [(IPPSessionDelegate *)&v5 init];
  if (result)
  {
    result->_clientID = a3;
  }

  return result;
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v4 = a4;
  v5 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 userInfo];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "IPPSession invalidated: %{public}@ - %{public}@", &v7, 0x16u);
  }
}

- (void)URLSession:(id)a3 didCreateTask:(id)a4
{
  v4 = a4;
  v5 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
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