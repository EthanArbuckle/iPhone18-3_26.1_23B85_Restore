@interface SAURLSizerConfiguration
+ (id)newWithReplyController:(id)controller urls:(id)urls;
- (SAURLSizerConfiguration)initWithReplayController:(id)controller urls:(id)urls;
- (void)callHandlerWithResults:(id)results error:(id)error;
@end

@implementation SAURLSizerConfiguration

- (SAURLSizerConfiguration)initWithReplayController:(id)controller urls:(id)urls
{
  controllerCopy = controller;
  urlsCopy = urls;
  v12.receiver = self;
  v12.super_class = SAURLSizerConfiguration;
  v9 = [(SAURLSizerConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_replyController, controller);
    objc_storeStrong(&v10->_urls, urls);
  }

  return v10;
}

+ (id)newWithReplyController:(id)controller urls:(id)urls
{
  urlsCopy = urls;
  controllerCopy = controller;
  v8 = [[self alloc] initWithReplayController:controllerCopy urls:urlsCopy];

  return v8;
}

- (void)callHandlerWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  if (self->_replyController)
  {
    errorCopy = error;
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
    [(SAReplyProtocol *)replyController callURLSizerHandlerWithResults:resultsCopy error:errorCopy withHandlerResultsBlock:v11];
  }

  results = self->_results;
  self->_results = resultsCopy;
}

@end