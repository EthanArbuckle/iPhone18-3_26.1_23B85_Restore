@interface WebScriptCallFrame
- (id)_convertValueToObjcValue:(JSValue)value;
- (id)_initWithGlobalObject:(id)object functionName:(String)name exceptionValue:(JSValue)value;
- (id)exception;
- (id)functionName;
- (void)dealloc;
- (void)setUserInfo:(id)info;
@end

@implementation WebScriptCallFrame

- (id)_initWithGlobalObject:(id)object functionName:(String)name exceptionValue:(JSValue)value
{
  v15.receiver = self;
  v15.super_class = WebScriptCallFrame;
  v8 = [(WebScriptCallFrame *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc_init(WebScriptCallFramePrivate);
    v8->_private = v9;
    v9->globalObject = object;
    v11 = v8->_private;
    v12 = *name.m_impl.m_ptr;
    if (*name.m_impl.m_ptr)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    m_ptr = v11->functionName.m_impl.m_ptr;
    v11->functionName.m_impl.m_ptr = v12;
    if (m_ptr && atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v10);
    }

    v8->_private->exceptionValue = value;
  }

  return v8;
}

- (id)_convertValueToObjcValue:(JSValue)value
{
  if (!value.super.isa)
  {
    return 0;
  }

  globalObject = self->_private->globalObject;
  if ([(WebScriptObject *)globalObject _imp]== value.super.isa)
  {
    return globalObject;
  }

  _originRootObject = [(WebScriptObject *)globalObject _originRootObject];
  if (!_originRootObject)
  {
    return 0;
  }

  v6 = _originRootObject;
  _rootObject = [(WebScriptObject *)globalObject _rootObject];
  if (!_rootObject)
  {
    return 0;
  }

  v8 = _rootObject;
  v9 = MEMORY[0x1E69E21B8];

  return [v9 _convertValueToObjcValue:value.super.isa originRootObject:v6 rootObject:v8];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebScriptCallFrame;
  [(WebScriptCallFrame *)&v3 dealloc];
}

- (void)setUserInfo:(id)info
{
  userInfo = self->_userInfo;
  if (userInfo != info)
  {

    self->_userInfo = info;
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