@interface SAReplyController
- (NSUUID)controllerID;
- (void)callAppSizerHandlerWithError:(id)error;
- (void)callAppSizerHandlerWithResults:(id)results error:(id)error withHandlerResultBlock:(id)block;
- (void)callURLSizerHandlerWithError:(id)error;
- (void)callURLSizerHandlerWithResults:(id)results error:(id)error withHandlerResultsBlock:(id)block;
- (void)setControllerID:(id)d;
@end

@implementation SAReplyController

- (NSUUID)controllerID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_controllerID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setControllerID:(id)d
{
  dCopy = d;
  obj = self;
  objc_sync_enter(obj);
  controllerID = obj->_controllerID;
  obj->_controllerID = dCopy;

  objc_sync_exit(obj);
}

- (void)callAppSizerHandlerWithError:(id)error
{
  errorCopy = error;
  appSizerUpdateHandler = [(SAReplyController *)self appSizerUpdateHandler];

  if (appSizerUpdateHandler)
  {
    appSizerUpdateHandler2 = [(SAReplyController *)self appSizerUpdateHandler];
    (appSizerUpdateHandler2)[2](appSizerUpdateHandler2, 0, errorCopy);
  }
}

- (void)callURLSizerHandlerWithError:(id)error
{
  errorCopy = error;
  urlSizerUpdateHandler = [(SAReplyController *)self urlSizerUpdateHandler];

  if (urlSizerUpdateHandler)
  {
    urlSizerUpdateHandler2 = [(SAReplyController *)self urlSizerUpdateHandler];
    (urlSizerUpdateHandler2)[2](urlSizerUpdateHandler2, 0, errorCopy);
  }
}

- (void)callAppSizerHandlerWithResults:(id)results error:(id)error withHandlerResultBlock:(id)block
{
  resultsCopy = results;
  errorCopy = error;
  blockCopy = block;
  appSizerUpdateHandler = [(SAReplyController *)self appSizerUpdateHandler];

  if (appSizerUpdateHandler)
  {
    appSizerUpdateHandler2 = [(SAReplyController *)self appSizerUpdateHandler];
    v12 = (appSizerUpdateHandler2)[2](appSizerUpdateHandler2, resultsCopy, errorCopy);

    blockCopy[2](blockCopy, v12);
    if (v12)
    {
      [(SAReplyController *)self setAppSizerUpdateHandler:0];
      [(SAReplyController *)self setControllerID:0];
    }
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)callURLSizerHandlerWithResults:(id)results error:(id)error withHandlerResultsBlock:(id)block
{
  resultsCopy = results;
  errorCopy = error;
  blockCopy = block;
  urlSizerUpdateHandler = [(SAReplyController *)self urlSizerUpdateHandler];

  if (urlSizerUpdateHandler)
  {
    urlSizerUpdateHandler2 = [(SAReplyController *)self urlSizerUpdateHandler];
    v12 = (urlSizerUpdateHandler2)[2](urlSizerUpdateHandler2, resultsCopy, errorCopy);

    blockCopy[2](blockCopy, v12);
    if (v12)
    {
      [(SAReplyController *)self setUrlSizerUpdateHandler:0];
    }
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

@end