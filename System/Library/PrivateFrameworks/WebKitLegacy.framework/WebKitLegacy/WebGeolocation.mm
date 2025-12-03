@interface WebGeolocation
- (id)_initWithWebCoreGeolocation:(void *)geolocation;
- (void)dealloc;
- (void)setIsAllowed:(BOOL)allowed;
@end

@implementation WebGeolocation

- (id)_initWithWebCoreGeolocation:(void *)geolocation
{
  v5.receiver = self;
  v5.super_class = WebGeolocation;
  result = [(WebGeolocation *)&v5 init];
  if (result)
  {
    ++*(geolocation + 10);
    *(result + 1) = geolocation;
  }

  return result;
}

- (void)setIsAllowed:(BOOL)allowed
{
  v3 = self->_private;
  v6 = 0;
  WebCore::Geolocation::setIsAllowed(v3, allowed, &v6);
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
      selfCopy = self;
      v4 = MEMORY[0x1CCA64030](self->_private, a2);
      bmalloc::api::tzoneFree(v4, v5);
      self = selfCopy;
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