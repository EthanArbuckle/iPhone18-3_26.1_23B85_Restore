@interface WebFramePolicyListener
- (WebFramePolicyListener)initWithFrame:(NakedPtr<WebCore:(void *)frame :(unsigned __int8)a5 LocalFrame>)a3 policyFunction:(id)function defaultPolicy:(id)policy appLinkURL:referrerURL:;
- (WebFramePolicyListener)initWithFrame:(NakedPtr<WebCore:(void *)frame :(unsigned __int8)a5 LocalFrame>)a3 policyFunction:defaultPolicy:;
- (id).cxx_construct;
- (void)dealloc;
- (void)invalidate;
- (void)receivedPolicyDecision:(unsigned __int8)decision;
- (void)use;
@end

@implementation WebFramePolicyListener

- (WebFramePolicyListener)initWithFrame:(NakedPtr<WebCore:(void *)frame :(unsigned __int8)a5 LocalFrame>)a3 policyFunction:defaultPolicy:
{
  result = [(WebFramePolicyListener *)self init];
  if (result)
  {
    v9 = *a3.m_ptr;
    if (*a3.m_ptr)
    {
      ++*(v9 + 16);
    }

    m_ptr = result->_frame.m_ptr;
    result->_frame.m_ptr = v9;
    if (m_ptr)
    {
      if (*(m_ptr + 4) == 1)
      {
        v14 = result;
        (*(*m_ptr + 8))(m_ptr);
        result = v14;
        v15 = *frame;
        *frame = 0;
        ptr = v14->_policyFunction.m_function.m_callableWrapper.__ptr_;
        v14->_policyFunction.m_function.m_callableWrapper.__ptr_ = v15;
        if (!ptr)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      --*(m_ptr + 4);
    }

    v11 = *frame;
    *frame = 0;
    ptr = result->_policyFunction.m_function.m_callableWrapper.__ptr_;
    result->_policyFunction.m_function.m_callableWrapper.__ptr_ = v11;
    if (!ptr)
    {
LABEL_9:
      result->_defaultPolicy = a5;
      return result;
    }

LABEL_8:
    v13 = result;
    (*(*ptr + 8))(ptr);
    result = v13;
    goto LABEL_9;
  }

  return result;
}

- (WebFramePolicyListener)initWithFrame:(NakedPtr<WebCore:(void *)frame :(unsigned __int8)a5 LocalFrame>)a3 policyFunction:(id)function defaultPolicy:(id)policy appLinkURL:referrerURL:
{
  v23[0] = *a3.m_ptr;
  v9 = [(WebFramePolicyListener *)self initWithFrame:v23 policyFunction:frame defaultPolicy:a5];
  if (v9)
  {
    if (function)
    {
      functionCopy = function;
    }

    m_ptr = v9->_appLinkURL.m_ptr;
    v9->_appLinkURL.m_ptr = function;
    if (m_ptr)
    {
    }

    MEMORY[0x1CCA63960](v21, policy);
    WebCore::SecurityOrigin::create(&v22, v21, v12);
    WebCore::SecurityOrigin::toURL(v23, v22);
    WTF::URL::createCFURL(&v24, v23);
    v14 = v24;
    v24 = 0;
    v15 = v9->_referrerURL.m_ptr;
    v9->_referrerURL.m_ptr = v14;
    if (v15)
    {

      v16 = v24;
      v24 = 0;
      if (v16)
      {
      }
    }

    v17 = v23[0];
    v23[0] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v13);
    }

    v18 = v22;
    v22 = 0;
    if (v18)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v18, v13);
    }

    v19 = v21[0];
    v21[0] = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v13);
    }
  }

  return v9;
}

- (void)invalidate
{
  m_ptr = self->_frame.m_ptr;
  self->_frame.m_ptr = 0;
  if (m_ptr)
  {
    if (*(m_ptr + 4) == 1)
    {
      (*(*m_ptr + 8))(m_ptr, a2);
      selfCopy = self;
      ptr = self->_policyFunction.m_function.m_callableWrapper.__ptr_;
      selfCopy->_policyFunction.m_function.m_callableWrapper.__ptr_ = 0;
      if (!ptr)
      {
        return;
      }

      goto LABEL_5;
    }

    --*(m_ptr + 4);
  }

  ptr = self->_policyFunction.m_function.m_callableWrapper.__ptr_;
  self->_policyFunction.m_function.m_callableWrapper.__ptr_ = 0;
  if (!ptr)
  {
    return;
  }

LABEL_5:
  (*(*ptr + 16))(ptr, 2);
  v4 = *(*ptr + 8);

  v4(ptr);
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    m_ptr = self->_frame.m_ptr;
    self->_frame.m_ptr = 0;
    if (m_ptr)
    {
      if (*(m_ptr + 4) == 1)
      {
        (*(*m_ptr + 8))(m_ptr);
        ptr = self->_policyFunction.m_function.m_callableWrapper.__ptr_;
        self->_policyFunction.m_function.m_callableWrapper.__ptr_ = 0;
        if (!ptr)
        {
LABEL_11:
          v8.receiver = self;
          v8.super_class = WebFramePolicyListener;
          [(WebFramePolicyListener *)&v8 dealloc];
          return;
        }

LABEL_8:
        v6 = qword_1EC260D58;
        if (os_log_type_enabled(qword_1EC260D58, OS_LOG_TYPE_ERROR))
        {
          defaultPolicy = self->_defaultPolicy;
          *buf = 67109120;
          v10 = defaultPolicy;
          _os_log_error_impl(&dword_1C79C0000, v6, OS_LOG_TYPE_ERROR, "Client application failed to make a policy decision via WebPolicyDecisionListener, using defaultPolicy %hhu", buf, 8u);
        }

        (*(*ptr + 16))(ptr, self->_defaultPolicy);
        (*(*ptr + 8))(ptr);
        goto LABEL_11;
      }

      --*(m_ptr + 4);
    }

    ptr = self->_policyFunction.m_function.m_callableWrapper.__ptr_;
    self->_policyFunction.m_function.m_callableWrapper.__ptr_ = 0;
    if (!ptr)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }
}

- (void)receivedPolicyDecision:(unsigned __int8)decision
{
  m_ptr = self->_frame.m_ptr;
  self->_frame.m_ptr = 0;
  if (m_ptr)
  {
    ptr = self->_policyFunction.m_function.m_callableWrapper.__ptr_;
    self->_policyFunction.m_function.m_callableWrapper.__ptr_ = 0;
    if (ptr)
    {
      (*(*ptr + 16))(ptr, decision);
      (*(*ptr + 8))(ptr);
    }

    if (*(m_ptr + 4) == 1)
    {
      v5 = *(*m_ptr + 8);

      v5(m_ptr);
    }

    else
    {
      --*(m_ptr + 4);
    }
  }
}

- (void)use
{
  if (self->_appLinkURL.m_ptr && self->_frame.m_ptr)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69636B8]);
    [v3 setReferrerURL:self->_referrerURL.m_ptr];
    m_ptr = self->_appLinkURL.m_ptr;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __29__WebFramePolicyListener_use__block_invoke;
    v5[3] = &unk_1E82C75B0;
    v5[4] = self;
    [MEMORY[0x1E69635C0] openWithURL:m_ptr configuration:v3 completionHandler:v5];
    if (v3)
    {
    }
  }

  else
  {

    [(WebFramePolicyListener *)self receivedPolicyDecision:0];
  }
}

uint64_t __29__WebFramePolicyListener_use__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return [v2 receivedPolicyDecision:v3];
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end