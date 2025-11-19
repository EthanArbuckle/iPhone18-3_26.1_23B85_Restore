@interface SAReplyController
- (NSUUID)controllerID;
- (void)callAppSizerHandlerWithError:(id)a3;
- (void)callAppSizerHandlerWithResults:(id)a3 error:(id)a4 withHandlerResultBlock:(id)a5;
- (void)callURLSizerHandlerWithError:(id)a3;
- (void)callURLSizerHandlerWithResults:(id)a3 error:(id)a4 withHandlerResultsBlock:(id)a5;
- (void)setControllerID:(id)a3;
@end

@implementation SAReplyController

- (NSUUID)controllerID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_controllerID;
  objc_sync_exit(v2);

  return v3;
}

- (void)setControllerID:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  controllerID = obj->_controllerID;
  obj->_controllerID = v4;

  objc_sync_exit(obj);
}

- (void)callAppSizerHandlerWithError:(id)a3
{
  v6 = a3;
  v4 = [(SAReplyController *)self appSizerUpdateHandler];

  if (v4)
  {
    v5 = [(SAReplyController *)self appSizerUpdateHandler];
    (v5)[2](v5, 0, v6);
  }
}

- (void)callURLSizerHandlerWithError:(id)a3
{
  v6 = a3;
  v4 = [(SAReplyController *)self urlSizerUpdateHandler];

  if (v4)
  {
    v5 = [(SAReplyController *)self urlSizerUpdateHandler];
    (v5)[2](v5, 0, v6);
  }
}

- (void)callAppSizerHandlerWithResults:(id)a3 error:(id)a4 withHandlerResultBlock:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SAReplyController *)self appSizerUpdateHandler];

  if (v10)
  {
    v11 = [(SAReplyController *)self appSizerUpdateHandler];
    v12 = (v11)[2](v11, v13, v8);

    v9[2](v9, v12);
    if (v12)
    {
      [(SAReplyController *)self setAppSizerUpdateHandler:0];
      [(SAReplyController *)self setControllerID:0];
    }
  }

  else
  {
    v9[2](v9, 0);
  }
}

- (void)callURLSizerHandlerWithResults:(id)a3 error:(id)a4 withHandlerResultsBlock:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SAReplyController *)self urlSizerUpdateHandler];

  if (v10)
  {
    v11 = [(SAReplyController *)self urlSizerUpdateHandler];
    v12 = (v11)[2](v11, v13, v8);

    v9[2](v9, v12);
    if (v12)
    {
      [(SAReplyController *)self setUrlSizerUpdateHandler:0];
    }
  }

  else
  {
    v9[2](v9, 0);
  }
}

@end