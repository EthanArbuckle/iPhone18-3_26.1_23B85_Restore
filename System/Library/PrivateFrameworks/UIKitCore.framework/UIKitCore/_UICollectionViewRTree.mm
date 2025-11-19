@interface _UICollectionViewRTree
- (_UICollectionViewRTree)init;
- (id).cxx_construct;
- (uint64_t)enumerateAttributesWithFramesIntersectingFrame:(float64x2_t)a3 withBlock:(float64_t)a4;
- (uint64_t)insertFrame:(CGFloat)a3 forElement:(CGFloat)a4;
- (void)removeAttributesWithFramesIntersectingFrame:(float64_t)a3;
@end

@implementation _UICollectionViewRTree

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (_UICollectionViewRTree)init
{
  v3.receiver = self;
  v3.super_class = _UICollectionViewRTree;
  if ([(_UICollectionViewRTree *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (uint64_t)insertFrame:(CGFloat)a3 forElement:(CGFloat)a4
{
  if (result)
  {
    v7 = result;
    if (CGRectIsNull(*&a3))
    {
      return 0;
    }

    v41.origin.x = a3;
    v41.size.width = a5;
    v41.origin.y = a4;
    v41.size.height = a6;
    if (CGRectIsInfinite(v41))
    {
      return 0;
    }

    else
    {
      v9.f64[0] = a3;
      v8.f64[0] = a5;
      v9.f64[1] = a4;
      v8.f64[1] = a6;
      v10 = vaddq_f64(v9, vminnmq_f64(v8, 0));
      __asm { FMOV            V2.2D, #6.0 }

      v16 = vmulq_f64(v10, _Q2);
      v17 = vmulq_f64(vabsq_f64(v8), _Q2);
      v18 = vrndaq_f64(v16);
      v19 = vrndaq_f64(v17);
      v20 = vdupq_n_s64(0x3F43A92A30553262uLL);
      v21 = vcgtq_f64(v20, vabdq_f64(v16, v18));
      v22 = vcgtq_f64(v20, vabdq_f64(v17, v19));
      v23 = *(v7 + 8);
      v24 = *a2;
      v35 = *(a2 + 8);
      v25 = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      v26 = *(v7 + 8);
      v27 = *(v7 + 16);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = vbslq_s8(v21, v18, v16);
      v29 = vbslq_s8(v22, v19, v17);
      *&v37.f64[1] = v27;
      v38 = v24;
      v39 = v35;
      v40 = v25;
      v37.f64[0] = v26;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      _UIRTreeContainerNode<_UICollectionViewRTreeElement>::addChild(&v36, v23, &v38, &v37, v28, v29);
      if (*&v37.f64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v37.f64[1]);
      }

      v30 = *(v7 + 16);
      *(v7 + 8) = v36;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v30);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v27);
      }

      return 1;
    }
  }

  return result;
}

- (uint64_t)enumerateAttributesWithFramesIntersectingFrame:(float64x2_t)a3 withBlock:(float64_t)a4
{
  if (result)
  {
    a3.f64[1] = a4;
    v20 = 0;
    a5.f64[1] = a6;
    v6 = vaddq_f64(a3, vminnmq_f64(a5, 0));
    v7 = vabsq_f64(a5);
    __asm { FMOV            V2.2D, #6.0 }

    v13 = vmulq_f64(v6, _Q2);
    v14 = vmulq_f64(v7, _Q2);
    v15 = vrndaq_f64(v13);
    v16 = vrndaq_f64(v14);
    v17 = vdupq_n_s64(0x3F43A92A30553262uLL);
    v18 = *(result + 8);
    v19[0] = vbslq_s8(vcgtq_f64(v17, vabdq_f64(v13, v15)), v15, v13);
    v19[1] = vbslq_s8(vcgtq_f64(v17, vabdq_f64(v14, v16)), v16, v14);
    return _UIRTreeContainerNode<_UICollectionViewRTreeElement>::enumerateElementsIntersectingWithConstRef(v18, v19, &v20, a2);
  }

  return result;
}

- (void)removeAttributesWithFramesIntersectingFrame:(float64_t)a3
{
  if (a1)
  {
    a2.f64[1] = a3;
    a4.f64[1] = a5;
    v5 = vaddq_f64(a2, vminnmq_f64(a4, 0));
    v6 = vabsq_f64(a4);
    __asm { FMOV            V2.2D, #6.0 }

    v12 = vmulq_f64(v5, _Q2);
    v13 = vmulq_f64(v6, _Q2);
    v14 = vrndaq_f64(v12);
    v15 = vrndaq_f64(v13);
    v16 = vdupq_n_s64(0x3F43A92A30553262uLL);
    v17 = *(a1 + 8);
    v18[0] = vbslq_s8(vcgtq_f64(v16, vabdq_f64(v12, v14)), v14, v12);
    v18[1] = vbslq_s8(vcgtq_f64(v16, vabdq_f64(v13, v15)), v15, v13);
    _UIRTreeContainerNode<_UICollectionViewRTreeElement>::removeElementsIntersecting(v17, v18);
  }
}

@end