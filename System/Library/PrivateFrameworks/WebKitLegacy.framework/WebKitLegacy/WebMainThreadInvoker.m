@interface WebMainThreadInvoker
- (void)forwardInvocation:(id)a3;
- (void)handleException:(id)a3;
@end

@implementation WebMainThreadInvoker

- (void)forwardInvocation:(id)a3
{
  [a3 setTarget:self->target];
  [a3 performSelectorOnMainThread:sel__webkit_invokeAndHandleException_ withObject:self waitUntilDone:1];
  m_ptr = self->exception.m_ptr;
  if (m_ptr)
  {
    self->exception.m_ptr = 0;
    v12 = m_ptr;
    v13 = m_ptr;
    objc_exception_throw(v12);
  }

  v6 = [objc_msgSend(a3 "methodSignature")];
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
      [a3 getReturnValue:&v14];
      if (v14)
      {
        v11 = v14;
      }
    }
  }
}

- (void)handleException:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->exception.m_ptr;
  self->exception.m_ptr = a3;
  if (m_ptr)
  {
  }
}

@end