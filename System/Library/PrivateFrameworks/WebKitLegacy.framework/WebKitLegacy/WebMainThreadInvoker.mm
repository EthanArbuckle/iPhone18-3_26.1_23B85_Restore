@interface WebMainThreadInvoker
- (void)forwardInvocation:(id)invocation;
- (void)handleException:(id)exception;
@end

@implementation WebMainThreadInvoker

- (void)forwardInvocation:(id)invocation
{
  [invocation setTarget:self->target];
  [invocation performSelectorOnMainThread:sel__webkit_invokeAndHandleException_ withObject:self waitUntilDone:1];
  m_ptr = self->exception.m_ptr;
  if (m_ptr)
  {
    self->exception.m_ptr = 0;
    v12 = m_ptr;
    v13 = m_ptr;
    objc_exception_throw(v12);
  }

  v6 = [objc_msgSend(invocation "methodSignature")];
  v7 = v6;
  if (v6)
  {
    v6 = strlen(v6);
  }

  if (v6)
  {
    if (v6 >= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
    v10 = v7;
    while (*v10 != 64)
    {
      ++v10;
      if (!--v9)
      {
        if (v6 < 0x11)
        {
          return;
        }

        v10 = memchr(&v7[v8], 64, &v6[-v8]);
        if (!v10)
        {
          return;
        }

        break;
      }
    }

    if (v10 - v7 != -1)
    {
      v14 = 0;
      [invocation getReturnValue:&v14];
      if (v14)
      {
        v11 = v14;
      }
    }
  }
}

- (void)handleException:(id)exception
{
  if (exception)
  {
    exceptionCopy = exception;
  }

  m_ptr = self->exception.m_ptr;
  self->exception.m_ptr = exception;
  if (m_ptr)
  {
  }
}

@end