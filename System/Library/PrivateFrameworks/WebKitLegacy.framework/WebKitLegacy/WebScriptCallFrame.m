@interface WebScriptCallFrame
- (id)_convertValueToObjcValue:(JSValue)a3;
- (id)_initWithGlobalObject:(id)a3 functionName:(String)a4 exceptionValue:(JSValue)a5;
- (id)exception;
- (id)functionName;
- (void)dealloc;
- (void)setUserInfo:(id)a3;
@end

@implementation WebScriptCallFrame

- (id)_initWithGlobalObject:(id)a3 functionName:(String)a4 exceptionValue:(JSValue)a5
{
  v15.receiver = self;
  v15.super_class = WebScriptCallFrame;
  v8 = [(WebScriptCallFrame *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc_init(WebScriptCallFramePrivate);
    v8->_private = v9;
    v9->globalObject = a3;
    v11 = v8->_private;
    v12 = *a4.m_impl.m_ptr;
    if (*a4.m_impl.m_ptr)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    m_ptr = v11->functionName.m_impl.m_ptr;
    v11->functionName.m_impl.m_ptr = v12;
    if (m_ptr && atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v10);
    }

    v8->_private->exceptionValue = a5;
  }

  return v8;
}

- (id)_convertValueToObjcValue:(JSValue)a3
{
  if (!a3.super.isa)
  {
    return 0;
  }

  globalObject = self->_private->globalObject;
  if ([(WebScriptObject *)globalObject _imp]== a3.super.isa)
  {
    return globalObject;
  }

  v5 = [(WebScriptObject *)globalObject _originRootObject];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [(WebScriptObject *)globalObject _rootObject];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = MEMORY[0x1E69E21B8];

  return [v9 _convertValueToObjcValue:a3.super.isa originRootObject:v6 rootObject:v8];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebScriptCallFrame;
  [(WebScriptCallFrame *)&v3 dealloc];
}

- (void)setUserInfo:(id)a3
{
  userInfo = self->_userInfo;
  if (userInfo != a3)
  {

    self->_userInfo = a3;
  }
}

- (id)functionName
{
  m_ptr = self->_private->functionName.m_impl.m_ptr;
  if (!m_ptr || !*(m_ptr + 1))
  {
    return 0;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  result = WTF::StringImpl::operator NSString *();
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v5 = result;
    WTF::StringImpl::destroy(m_ptr, v4);
    return v5;
  }

  return result;
}

- (id)exception
{
  if (self->_private->exceptionValue.super.isa)
  {
    return [(WebScriptCallFrame *)self _convertValueToObjcValue:?];
  }

  else
  {
    return 0;
  }
}

@end