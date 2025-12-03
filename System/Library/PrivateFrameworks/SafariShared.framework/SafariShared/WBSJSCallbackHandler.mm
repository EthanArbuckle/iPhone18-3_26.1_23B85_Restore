@interface WBSJSCallbackHandler
- (JSValue)jsValue;
- (WBSJSCallbackHandler)initWithCallbackFunction:(OpaqueJSValue *)function errorReporter:(id)reporter context:(OpaqueJSContext *)context;
- (WBSJSCallbackHandler)initWithErrorReporter:(id)reporter context:(OpaqueJSContext *)context;
- (WBSJSCallbackHandler)initWithPromiseResolveFunction:(OpaqueJSValue *)function rejectFunction:(OpaqueJSValue *)rejectFunction context:(OpaqueJSContext *)context;
- (id)call;
- (id)callWithArgument:(id)argument;
- (id)callWithArgument:(id)argument argument:(id)a4;
- (id)callWithArgument:(id)argument argument:(id)a4 argument:(id)a5;
- (void)dealloc;
- (void)reportErrorWithMessage:(id)message;
@end

@implementation WBSJSCallbackHandler

- (WBSJSCallbackHandler)initWithCallbackFunction:(OpaqueJSValue *)function errorReporter:(id)reporter context:(OpaqueJSContext *)context
{
  reporterCopy = reporter;
  v16.receiver = self;
  v16.super_class = WBSJSCallbackHandler;
  v9 = [(WBSJSCallbackHandler *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_callbackFunction = function;
    objc_storeWeak(&v9->_errorReporter, reporterCopy);
    GlobalContext = JSContextGetGlobalContext(context);
    v12 = GlobalContext;
    if (GlobalContext)
    {
      JSGlobalContextRetain(GlobalContext);
    }

    m_ptr = v10->_globalContext.m_ptr;
    v10->_globalContext.m_ptr = v12;
    if (m_ptr)
    {
      JSGlobalContextRelease(m_ptr);
      v12 = v10->_globalContext.m_ptr;
    }

    JSValueProtect(v12, v10->_callbackFunction);
    v14 = v10;
  }

  return v10;
}

- (WBSJSCallbackHandler)initWithErrorReporter:(id)reporter context:(OpaqueJSContext *)context
{
  reporterCopy = reporter;
  v14.receiver = self;
  v14.super_class = WBSJSCallbackHandler;
  v7 = [(WBSJSCallbackHandler *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_errorReporter, reporterCopy);
    GlobalContext = JSContextGetGlobalContext(context);
    v10 = GlobalContext;
    if (GlobalContext)
    {
      JSGlobalContextRetain(GlobalContext);
    }

    m_ptr = v8->_globalContext.m_ptr;
    v8->_globalContext.m_ptr = v10;
    if (m_ptr)
    {
      JSGlobalContextRelease(m_ptr);
    }

    v12 = v8;
  }

  return v8;
}

- (WBSJSCallbackHandler)initWithPromiseResolveFunction:(OpaqueJSValue *)function rejectFunction:(OpaqueJSValue *)rejectFunction context:(OpaqueJSContext *)context
{
  v16.receiver = self;
  v16.super_class = WBSJSCallbackHandler;
  v8 = [(WBSJSCallbackHandler *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_callbackFunction = function;
    v8->_rejectFunction = rejectFunction;
    GlobalContext = JSContextGetGlobalContext(context);
    v11 = GlobalContext;
    if (GlobalContext)
    {
      JSGlobalContextRetain(GlobalContext);
    }

    m_ptr = v9->_globalContext.m_ptr;
    v9->_globalContext.m_ptr = v11;
    if (m_ptr)
    {
      JSGlobalContextRelease(m_ptr);
      v11 = v9->_globalContext.m_ptr;
    }

    JSValueProtect(v11, v9->_callbackFunction);
    rejectFunction = v9->_rejectFunction;
    if (rejectFunction)
    {
      JSValueProtect(v9->_globalContext.m_ptr, rejectFunction);
    }

    v14 = v9;
  }

  return v9;
}

- (void)dealloc
{
  callbackFunction = self->_callbackFunction;
  if (callbackFunction)
  {
    JSValueUnprotect(self->_globalContext.m_ptr, callbackFunction);
  }

  rejectFunction = self->_rejectFunction;
  if (rejectFunction)
  {
    JSValueUnprotect(self->_globalContext.m_ptr, rejectFunction);
  }

  v5.receiver = self;
  v5.super_class = WBSJSCallbackHandler;
  [(WBSJSCallbackHandler *)&v5 dealloc];
}

- (JSValue)jsValue
{
  v2 = MEMORY[0x1E696EB58];
  callbackFunction = self->_callbackFunction;
  v4 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:self->_globalContext.m_ptr];
  v5 = [v2 valueWithJSValueRef:callbackFunction inContext:v4];

  return v5;
}

- (void)reportErrorWithMessage:(id)message
{
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_errorReporter);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [(OpaqueJSContext *)WeakRetained reportErrorForCallbackHandler:self withMessage:messageCopy context:self->_globalContext.m_ptr];
  }

  else
  {
    if (!self->_rejectFunction)
    {
      goto LABEL_4;
    }

    v7 = MEMORY[0x1E696EB58];
    v8 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:self->_globalContext.m_ptr];
    v6 = [v7 valueWithNewErrorFromMessage:messageCopy inContext:v8];

    rejectFunction = self->_rejectFunction;
    m_ptr = self->_globalContext.m_ptr;
    ctx = m_ptr;
    if (m_ptr)
    {
      JSGlobalContextRetain(m_ptr);
      m_ptr = self->_globalContext.m_ptr;
    }

    v12 = SafariShared::JSUtilities::translateNSToJSValueForJSCallbackHandler(m_ptr, v6, v9);
    v13 = callWithArguments<1ul>(rejectFunction, &ctx, v12);
    if (ctx)
    {
      JSGlobalContextRelease(ctx);
    }
  }

LABEL_4:
}

- (id)call
{
  callbackFunction = self->_callbackFunction;
  if (callbackFunction)
  {
    m_ptr = self->_globalContext.m_ptr;
    ctx = m_ptr;
    if (m_ptr)
    {
      JSGlobalContextRetain(m_ptr);
    }

    callbackFunction = callWithArguments<0ul>(callbackFunction, &ctx);
    if (ctx)
    {
      JSGlobalContextRelease(ctx);
    }
  }

  return callbackFunction;
}

- (id)callWithArgument:(id)argument
{
  argumentCopy = argument;
  callbackFunction = self->_callbackFunction;
  if (callbackFunction)
  {
    m_ptr = self->_globalContext.m_ptr;
    ctx = m_ptr;
    if (m_ptr)
    {
      JSGlobalContextRetain(m_ptr);
      m_ptr = self->_globalContext.m_ptr;
    }

    v8 = SafariShared::JSUtilities::translateNSToJSValueForJSCallbackHandler(m_ptr, argumentCopy, v4);
    callbackFunction = callWithArguments<1ul>(callbackFunction, &ctx, v8);
    if (ctx)
    {
      JSGlobalContextRelease(ctx);
    }
  }

  return callbackFunction;
}

- (id)callWithArgument:(id)argument argument:(id)a4
{
  argumentCopy = argument;
  v8 = a4;
  callbackFunction = self->_callbackFunction;
  if (callbackFunction)
  {
    m_ptr = self->_globalContext.m_ptr;
    ctx = m_ptr;
    if (m_ptr)
    {
      JSGlobalContextRetain(m_ptr);
      m_ptr = self->_globalContext.m_ptr;
    }

    v11 = SafariShared::JSUtilities::translateNSToJSValueForJSCallbackHandler(m_ptr, argumentCopy, v7);
    v13 = SafariShared::JSUtilities::translateNSToJSValueForJSCallbackHandler(self->_globalContext.m_ptr, v8, v12);
    callbackFunction = callWithArguments<2ul>(callbackFunction, &ctx, v11, v13);
    if (ctx)
    {
      JSGlobalContextRelease(ctx);
    }
  }

  return callbackFunction;
}

- (id)callWithArgument:(id)argument argument:(id)a4 argument:(id)a5
{
  argumentCopy = argument;
  v9 = a4;
  v11 = a5;
  callbackFunction = self->_callbackFunction;
  if (callbackFunction)
  {
    m_ptr = self->_globalContext.m_ptr;
    ctx = m_ptr;
    if (m_ptr)
    {
      JSGlobalContextRetain(m_ptr);
      m_ptr = self->_globalContext.m_ptr;
    }

    v17[0] = SafariShared::JSUtilities::translateNSToJSValueForJSCallbackHandler(m_ptr, argumentCopy, v10);
    v17[1] = SafariShared::JSUtilities::translateNSToJSValueForJSCallbackHandler(self->_globalContext.m_ptr, v9, v14);
    v17[2] = SafariShared::JSUtilities::translateNSToJSValueForJSCallbackHandler(self->_globalContext.m_ptr, v11, v15);
    callbackFunction = callWithArguments<3ul>(callbackFunction, &ctx, v17);
    if (ctx)
    {
      JSGlobalContextRelease(ctx);
    }
  }

  return callbackFunction;
}

@end