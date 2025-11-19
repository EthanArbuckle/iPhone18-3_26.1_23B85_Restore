@interface SAURLSizerConfiguration
+ (id)newWithReplyController:(id)a3 urls:(id)a4;
- (SAURLSizerConfiguration)initWithReplayController:(id)a3 urls:(id)a4;
- (void)callHandlerWithResults:(id)a3 error:(id)a4;
@end

@implementation SAURLSizerConfiguration

- (SAURLSizerConfiguration)initWithReplayController:(id)a3 urls:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SAURLSizerConfiguration;
  v9 = [(SAURLSizerConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_replyController, a3);
    objc_storeStrong(&v10->_urls, a4);
  }

  return v10;
}

+ (id)newWithReplyController:(id)a3 urls:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithReplayController:v7 urls:v6];

  return v8;
}

- (void)callHandlerWithResults:(id)a3 error:(id)a4
{
  v6 = a3;
  if (self->_replyController)
  {
    v7 = a4;
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10003F904(v8);
    }

    replyController = self->_replyController;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100022BCC;
    v11[3] = &unk_1000652D0;
    v11[4] = self;
    [(SAReplyProtocol *)replyController callURLSizerHandlerWithResults:v6 error:v7 withHandlerResultsBlock:v11];
  }

  results = self->_results;
  self->_results = v6;
}

@end