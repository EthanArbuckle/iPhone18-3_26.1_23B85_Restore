@interface USKNodeSubtreeIterator
- (USKNodeSubtreeIterator)initWithPrim:(const void *)a3;
- (USKNodeSubtreeIterator)initWithPrim:(const void *)a3 withPredicate:(Usd_PrimFlagsPredicate *)a4;
- (USKNodeSubtreeIterator)initWithScene:(const void *)a3;
- (USKNodeSubtreeIterator)initWithScene:(const void *)a3 withPredicate:(Usd_PrimFlagsPredicate *)a4;
- (USKNodeSubtreeIterator)initWithSubtreeRange:(const void *)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)nextObject;
@end

@implementation USKNodeSubtreeIterator

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [USKNodeSubtreeIterator alloc];

  return objc_msgSend_initWithSubtreeRange_(v4, v5, &self->_range, v6);
}

- (USKNodeSubtreeIterator)initWithSubtreeRange:(const void *)a3
{
  v13.receiver = self;
  v13.super_class = USKNodeSubtreeIterator;
  v4 = [(USKNodeSubtreeIterator *)&v13 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = *a3;
    sub_27032787C((v4 + 24), a3 + 4);
    sub_2703278D4((v5 + 28), a3 + 5);
    v6 = *(a3 + 37);
    *(v5 + 2) = *(a3 + 24);
    *(v5 + 45) = v6;
    sub_2703649F0(v5 + 1, &v9);
    *(v5 + 4) = v9;
    sub_270325804((v5 + 80), &v10);
    sub_27032585C((v5 + 84), v11);
    *(v5 + 22) = v11[1];
    *(v5 + 46) = v12;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v10);
    v7 = v5;
  }

  return v5;
}

- (USKNodeSubtreeIterator)initWithScene:(const void *)a3
{
  v4 = sub_270351FC8(a3);
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(v4);
  v6 = UsdPrimDefaultPredicate[1].i64[0];
  v7.i64[0] = -8193;
  v7.i64[0] = vandq_s8(*UsdPrimDefaultPredicate, v7).u64[0];
  v7.i64[1] = vorrq_s8(*UsdPrimDefaultPredicate, vdupq_n_s64(0x2000uLL)).i64[1];
  *&v12._mask.__first_ = v7;
  *&v12._negate = v6;
  pxrInternal__aapl__pxrReserved__::UsdStage::Traverse(v13, v4, &v12);
  v10 = objc_msgSend_initWithSubtreeRange_(self, v8, v13, v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v14);

  return v10;
}

- (USKNodeSubtreeIterator)initWithPrim:(const void *)a3
{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(self);
  v6 = UsdPrimDefaultPredicate[1].i64[0];
  v7.i64[0] = -8193;
  v7.i64[0] = vandq_s8(*UsdPrimDefaultPredicate, v7).u64[0];
  v7.i64[1] = vorrq_s8(*UsdPrimDefaultPredicate, vdupq_n_s64(0x2000uLL)).i64[1];
  v12 = v7;
  v13 = v6;
  sub_2703663D8(v14, a3, &v12);
  v10 = objc_msgSend_initWithSubtreeRange_(self, v8, v14, v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v15);

  return v10;
}

- (USKNodeSubtreeIterator)initWithScene:(const void *)a3 withPredicate:(Usd_PrimFlagsPredicate *)a4
{
  v6 = sub_270351FC8(a3);
  v7 = *&a4->_negate;
  v8.i64[0] = -8193;
  v8.i64[0] = vandq_s8(*&a4->_mask.__first_, v8).u64[0];
  v8.i64[1] = vorrq_s8(*a4, vdupq_n_s64(0x2000uLL)).i64[1];
  *&v13._mask.__first_ = v8;
  *&v13._negate = v7;
  pxrInternal__aapl__pxrReserved__::UsdStage::Traverse(v14, v6, &v13);
  v11 = objc_msgSend_initWithSubtreeRange_(self, v9, v14, v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v15);

  return v11;
}

- (USKNodeSubtreeIterator)initWithPrim:(const void *)a3 withPredicate:(Usd_PrimFlagsPredicate *)a4
{
  v6 = *&a4->_negate;
  v4.i64[0] = -8193;
  *&v7 = vandq_s8(*&a4->_mask.__first_, v4).u64[0];
  *(&v7 + 1) = vorrq_s8(*a4, vdupq_n_s64(0x2000uLL)).i64[1];
  v12 = v7;
  v13 = v6;
  sub_2703663D8(v14, a3, &v12);
  v10 = objc_msgSend_initWithSubtreeRange_(self, v8, v14, v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v15);

  return v10;
}

- (id)nextObject
{
  p_range = &self->_range;
  *&v15 = self->_range._end;
  *(&v15 + 1) = &self->_range;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v17 = 0;
  v18 = 0;
  v4 = *&self->_range._initDepth == v15 && self->_it._range == v16 && !LODWORD(self->_it._proxyPrimPath._primPart._poolHandle) && (BYTE4(self->_it._proxyPrimPath._primPart._poolHandle) & 1) == 0 && BYTE5(self->_it._proxyPrimPath._primPart._poolHandle) == 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v16);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    *&v15 = self->_range._end;
    *(&v15 + 1) = p_range;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v17 = 0;
    v18 = 0;
    if (self->_it._underlyingIterator == p_range && *&self->_range._initDepth == v15 && self->_it._range == v16 && !LODWORD(self->_it._proxyPrimPath._primPart._poolHandle) && (BYTE4(self->_it._proxyPrimPath._primPart._poolHandle) & 1) == 0 && !BYTE5(self->_it._proxyPrimPath._primPart._poolHandle))
    {
      v5 = 0;
    }

    else
    {
      v6 = [USKNode alloc];
      v7 = *&self->_range._initDepth;
      v19 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 48), 1uLL, memory_order_relaxed);
      }

      sub_270347BF8(v11, &v19, &self->_it._range);
      if (v19)
      {
        sub_270314574(v19);
      }

      v5 = objc_msgSend_initWithUsdPrim_(v6, v8, v11, v9);
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
    sub_2703143D8(&v16);
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&self->_range._initDepth);
  }

  return v5;
}

- (id).cxx_construct
{
  self->_range._begin = 0;
  self->_range._end = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  self->_range._initProxyPrimPath._propPart._poolHandle = 0;
  self->_range._predicate._mask.__first_ = 0;
  LOBYTE(self->_range._predicate._values.__first_) = 0;
  *&self->_range._predicate._negate = 0;
  *(&self->_range._predicate._negate + 4) = 0;
  *&self->_range._initDepth = 0;
  self->_it._underlyingIterator = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  LODWORD(self->_it._proxyPrimPath._primPart._poolHandle) = 0;
  WORD2(self->_it._proxyPrimPath._primPart._poolHandle) = 0;
  return self;
}

@end