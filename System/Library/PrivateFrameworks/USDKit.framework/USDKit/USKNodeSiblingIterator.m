@interface USKNodeSiblingIterator
- (USKNodeSiblingIterator)initWithPrim:(const void *)a3;
- (USKNodeSiblingIterator)initWithPrim:(const void *)a3 withPredicate:(Usd_PrimFlagsPredicate *)a4;
- (USKNodeSiblingIterator)initWithSiblingRange:(const void *)a3;
- (id).cxx_construct;
- (id)nextObject;
@end

@implementation USKNodeSiblingIterator

- (USKNodeSiblingIterator)initWithSiblingRange:(const void *)a3
{
  v15.receiver = self;
  v15.super_class = USKNodeSiblingIterator;
  v4 = [(USKNodeSiblingIterator *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_range._begin._underlyingIterator = *a3;
    sub_27032787C(&v4->_range._begin._proxyPrimPath, a3 + 2);
    sub_2703278D4(&v5->_range._begin._proxyPrimPath._primPart._poolHandle + 4, a3 + 3);
    v6 = *(a3 + 1);
    LOBYTE(v5->_range._begin._predicate._values.__first_) = *(a3 + 32);
    *&v5->_range._begin._proxyPrimPath._propPart._poolHandle = v6;
    *&v5->_range._begin._predicate._negate = *(a3 + 5);
    sub_27032787C(&v5->_range._end, a3 + 12);
    sub_2703278D4(&v5->_range._end._underlyingIterator + 4, a3 + 13);
    v7 = *(a3 + 72);
    v5->_range._end._proxyPrimPath = *(a3 + 56);
    LOBYTE(v5->_range._end._predicate._mask.__first_) = v7;
    v10 = *a3;
    sub_2703256DC(&v11, a3 + 2);
    sub_270325728(&v12, a3 + 3);
    v13 = *(a3 + 1);
    v14 = *(a3 + 4);
    v5->_range._end._predicate._values.__first_ = v10;
    sub_270325804(&v5->_range._end._predicate._negate, &v11);
    sub_27032585C((&v5->_range._end._predicate._negate + 4), &v12);
    *&v5->_it._underlyingIterator = v13;
    LOBYTE(v5->_it._proxyPrimPath._propPart._poolHandle) = v14;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v11);
    v8 = v5;
  }

  return v5;
}

- (USKNodeSiblingIterator)initWithPrim:(const void *)a3
{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(self);
  v6 = *UsdPrimDefaultPredicate;
  v7 = UsdPrimDefaultPredicate[1];
  v8 = UsdPrimDefaultPredicate[2];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  v16[0] = v6 & 0xFFFFFFFFFFFFDFFFLL;
  v16[1] = v7 | 0x2000;
  v16[2] = v8;
  sub_270365998(a3, v16, v13);
  v11 = objc_msgSend_initWithSiblingRange_(self, v9, v13, v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v14);

  return v11;
}

- (USKNodeSiblingIterator)initWithPrim:(const void *)a3 withPredicate:(Usd_PrimFlagsPredicate *)a4
{
  first = a4->_mask.__first_;
  v7 = a4->_values.__first_;
  v8 = *&a4->_negate;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  v16[0] = first & 0xFFFFFFFFFFFFDFFFLL;
  v16[1] = v7 | 0x2000;
  v16[2] = v8;
  sub_270365998(a3, v16, v13);
  v11 = objc_msgSend_initWithSiblingRange_(self, v9, v13, v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v14);

  return v11;
}

- (id)nextObject
{
  *&v15 = *&self->_range._begin._predicate._negate;
  sub_2703256DC(&v15 + 2, &self->_range._end);
  sub_270325728(&v15 + 3, &self->_range._end._underlyingIterator + 1);
  p_values = &self->_range._end._predicate._values;
  first = self->_range._end._predicate._values.__first_;
  proxyPrimPath = self->_range._end._proxyPrimPath;
  v17 = self->_range._end._predicate._mask.__first_;
  if (__PAIR128__(*&self->_range._end._predicate._negate, first) == v15)
  {
    v5 = sub_270366284(&self->_it, &proxyPrimPath);
  }

  else
  {
    v5 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v15 + 8);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    *&v15 = *&self->_range._begin._predicate._negate;
    sub_2703256DC(&v15 + 2, &self->_range._end);
    sub_270325728(&v15 + 3, &self->_range._end._underlyingIterator + 1);
    proxyPrimPath = self->_range._end._proxyPrimPath;
    v17 = self->_range._end._predicate._mask.__first_;
    if (*&self->_range._end._predicate._values.__first_ == v15 && (sub_270366284(&self->_it, &proxyPrimPath) & 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v7 = [USKNode alloc];
      sub_2703662FC(p_values, v11);
      v6 = objc_msgSend_initWithUsdPrim_(v7, v8, v11, v9);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v13);
      if (v12)
      {
        sub_270314574(v12);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v15 + 8);
    sub_2703661EC(p_values);
  }

  return v6;
}

- (id).cxx_construct
{
  sub_270366370(&self->_range);
  self->_range._end._predicate._values.__first_ = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  self->_it._underlyingIterator = 0;
  self->_it._proxyPrimPath._primPart._poolHandle = 0;
  LOBYTE(self->_it._proxyPrimPath._propPart._poolHandle) = 0;
  return self;
}

@end