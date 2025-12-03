@interface WebResourcePrivate
- (WebResourcePrivate)init;
- (WebResourcePrivate)initWithCoreResource:(void *)resource;
- (void)dealloc;
@end

@implementation WebResourcePrivate

- (WebResourcePrivate)init
{
  v3.receiver = self;
  v3.super_class = WebResourcePrivate;
  return [(WebResourcePrivate *)&v3 init];
}

- (WebResourcePrivate)initWithCoreResource:(void *)resource
{
  v8.receiver = self;
  v8.super_class = WebResourcePrivate;
  result = [(WebResourcePrivate *)&v8 init];
  if (result)
  {
    v5 = *resource;
    *resource = 0;
    m_ptr = result->coreResource.m_ptr;
    result->coreResource.m_ptr = v5;
    if (m_ptr)
    {
      if (*(m_ptr + 2) == 1)
      {
        v7 = result;
        (*(*m_ptr + 8))(m_ptr);
        return v7;
      }

      else
      {
        --*(m_ptr + 2);
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = WebResourcePrivate;
    [(WebResourcePrivate *)&v4 dealloc];
  }
}

@end