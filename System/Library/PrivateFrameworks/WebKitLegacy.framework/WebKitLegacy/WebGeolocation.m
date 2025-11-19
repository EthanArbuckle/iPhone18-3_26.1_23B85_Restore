@interface WebGeolocation
- (id)_initWithWebCoreGeolocation:(void *)a3;
- (void)dealloc;
- (void)setIsAllowed:(BOOL)a3;
@end

@implementation WebGeolocation

- (id)_initWithWebCoreGeolocation:(void *)a3
{
  v5.receiver = self;
  v5.super_class = WebGeolocation;
  result = [(WebGeolocation *)&v5 init];
  if (result)
  {
    ++*(a3 + 10);
    *(result + 1) = a3;
  }

  return result;
}

- (void)setIsAllowed:(BOOL)a3
{
  v3 = self->_private;
  v6 = 0;
  WebCore::Geolocation::setIsAllowed(v3, a3, &v6);
  v5 = v6;
  v6 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

- (void)dealloc
{
  v2 = self->_private;
  if (v2)
  {
    if (*(v2 + 10) == 1)
    {
      v3 = self;
      v4 = MEMORY[0x1CCA64030](self->_private, a2);
      bmalloc::api::tzoneFree(v4, v5);
      self = v3;
    }

    else
    {
      --*(v2 + 10);
    }
  }

  v6.receiver = self;
  v6.super_class = WebGeolocation;
  [(WebGeolocation *)&v6 dealloc];
}

@end