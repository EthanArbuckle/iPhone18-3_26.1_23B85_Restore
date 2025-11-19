@interface VUIActionPromise
- (VUIActionPromise)initWithContextData:(id)a3 appContext:(id)a4;
- (VUIAppContext)appContext;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionPromise

- (VUIActionPromise)initWithContextData:(id)a3 appContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VUIActionPromise;
  v9 = [(VUIActionPromise *)&v12 init];
  v10 = v9;
  if (v7 && v9)
  {
    objc_storeStrong(&v9->_contextDataDictionary, a3);
    objc_storeWeak(&v10->_appContext, v8);
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
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

    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = +[VUIInterfaceFactory sharedInstance];
    v11 = [v10 openURLHandler];
    [v11 processEntityWithContextData:self->_contextDataDictionary appContext:v7];

    if (v5)
    {
LABEL_11:
      v5[2](v5, 1);
    }
  }
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end