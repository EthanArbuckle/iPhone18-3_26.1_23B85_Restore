@interface USKPropertyIterator
- (USKPropertyIterator)initWithProperties:(const void *)a3;
- (id).cxx_construct;
- (id)nextObject;
@end

@implementation USKPropertyIterator

- (USKPropertyIterator)initWithProperties:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = USKPropertyIterator;
  v4 = [(USKPropertyIterator *)&v9 init];
  v5 = v4;
  if (v4)
  {
    p_properties = &v4->_properties;
    if (&v5->_properties != a3)
    {
      sub_270366DD8(p_properties, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 5);
    }

    v5->_it.__i_ = v5->_properties.__begin_;
    v7 = v5;
  }

  return v5;
}

- (id)nextObject
{
  if (self->_it.__i_ == self->_properties.__end_)
  {
    v9 = 0;
  }

  else
  {
    v3 = [USKProperty alloc];
    i = self->_it.__i_;
    type = i->_type;
    pointer = i->_prim._p._pointer;
    v12 = pointer;
    if (pointer)
    {
      atomic_fetch_add_explicit((pointer + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v13, &i->_proxyPrimPath);
    sub_270325728(&v14, &i->_proxyPrimPath._primPart._poolHandle + 1);
    poolHandle = i->_proxyPrimPath._propPart._poolHandle;
    v15 = poolHandle;
    if ((poolHandle & 7) != 0 && (atomic_fetch_add_explicit((poolHandle & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = (v15 & 0xFFFFFFFFFFFFFFF8);
    }

    v9 = objc_msgSend_initWithUsdProperty_(v3, v6, &type, v7);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v13);
    if (v12)
    {
      sub_270314574(v12);
    }

    self->_it.__i_ = (self->_it.__i_ + 32);
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end