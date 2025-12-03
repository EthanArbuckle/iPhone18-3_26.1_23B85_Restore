@interface VUIActionPromise
- (VUIActionPromise)initWithContextData:(id)data appContext:(id)context;
- (VUIAppContext)appContext;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionPromise

- (VUIActionPromise)initWithContextData:(id)data appContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = VUIActionPromise;
  v9 = [(VUIActionPromise *)&v12 init];
  v10 = v9;
  if (dataCopy && v9)
  {
    objc_storeStrong(&v9->_contextDataDictionary, data);
    objc_storeWeak(&v10->_appContext, contextCopy);
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_appContext);
  v7 = WeakRetained;
  if (self->_contextDataDictionary)
  {
    v8 = WeakRetained == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [VUIActionPromise performWithTargetResponder:v9 completionHandler:?];
    }

    if (handlerCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = +[VUIInterfaceFactory sharedInstance];
    openURLHandler = [v10 openURLHandler];
    [openURLHandler processEntityWithContextData:self->_contextDataDictionary appContext:v7];

    if (handlerCopy)
    {
LABEL_11:
      handlerCopy[2](handlerCopy, 1);
    }
  }
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end