@interface WebFixedPositionContent
- (BOOL)hasFixedOrStickyPositionLayers;
- (WebFixedPositionContent)initWithWebView:(id)a3;
- (void)dealloc;
- (void)overflowScrollPositionForLayer:(id)a3 changedTo:(CGPoint)a4;
- (void)scrollOrZoomChanged:(CGRect)a3;
- (void)setViewportConstrainedLayers:(void *)a3 stickyContainerMap:(const void *)a4;
@end

@implementation WebFixedPositionContent

- (WebFixedPositionContent)initWithWebView:(id)a3
{
  v7.receiver = self;
  v7.super_class = WebFixedPositionContent;
  result = [(WebFixedPositionContent *)&v7 init];
  if (result)
  {
    v5 = result;
    v6 = WTF::fastMalloc(0x10);
    result = v5;
    *v6 = a3;
    v6[1] = 0;
    v5->_private = v6;
  }

  return result;
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3)
  {
    v4 = *(v3 + 1);
    if (v4)
    {
      v5 = *(v4 - 4);
      if (v5)
      {
        v6 = *(v3 + 1);
        do
        {
          v7 = *v6;
          if (*v6 != -1)
          {
            v8 = *(v6 + 8);
            *(v6 + 8) = 0;
            if (v8)
            {
              v9 = *(v8 + 1);
              *(v8 + 1) = 0;
              if (v9)
              {
                (*(*v9 + 8))(v9, a2);
              }

              WTF::fastFree(v8, a2);
              v7 = *v6;
            }

            *v6 = 0;
            if (v7)
            {
            }
          }

          v6 += 16;
          --v5;
        }

        while (v5);
      }

      WTF::fastFree((v4 - 16), a2);
    }

    WTF::fastFree(v3, a2);
  }

  v10.receiver = self;
  v10.super_class = WebFixedPositionContent;
  [(WebFixedPositionContent *)&v10 dealloc];
}

- (void)scrollOrZoomChanged:(CGRect)a3
{
  v3 = 0;
  v35 = a3;
  atomic_compare_exchange_strong_explicit(webFixedPositionContentDataLock, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x1CCA63990](webFixedPositionContentDataLock, a2);
    v4 = *(self->_private + 1);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(self->_private + 1);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (*(v4 - 3))
  {
    v5 = *(v4 - 1);
    if (v5)
    {
      v6 = 16 * v5;
      v7 = v4;
      while (*v7 + 1 <= 1)
      {
        v7 += 2;
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v7 = v4;
    }

    v9 = &v4[2 * v5];
LABEL_12:
    if (v7 != v9)
    {
      v10 = *v7;
      v11 = *(v7[1] + 1);
      v12 = (*(*v11 + 16))(v11, a2);
      if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_19;
        }

        if ((*(*v11 + 16))(v11) == 1)
        {
          WebCore::FloatRect::FloatRect(v34, &v35);
          WebCore::StickyPositionViewportConstraints::anchorLayerPositionForConstrainingRect(v11, v34);
          v14 = v13;
          v16 = v15;
          [v10 bounds];
          v18 = v17;
          v20 = v19;
          [v10 anchorPoint];
          [v10 setPosition:{(v14 - v11[2]) + v21 * v18, (v16 - v11[3]) + v22 * v20}];
          goto LABEL_19;
        }

LABEL_25:
        __break(0xC471u);
        JUMPOUT(0x1C7AD38E4);
      }

      if ((*(*v11 + 16))(v11))
      {
        goto LABEL_25;
      }

      WebCore::FloatRect::FloatRect(v34, &v35);
      WebCore::ViewportConstraints::viewportRelativeLayerPosition(v11, v34);
      v24 = v23;
      v26 = v25;
      [v10 bounds];
      v28 = v27;
      v30 = v29;
      [v10 anchorPoint];
      [v10 setPosition:{(v24 - v11[2]) + v31 * v28, (v26 - v11[3]) + v32 * v30}];
LABEL_19:
      while (1)
      {
        v7 += 2;
        if (v7 == v9)
        {
          break;
        }

        if (*v7 + 1 > 1)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_8:
  v8 = 1;
  atomic_compare_exchange_strong_explicit(webFixedPositionContentDataLock, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow(webFixedPositionContentDataLock);
  }
}

- (void)overflowScrollPositionForLayer:(id)a3 changedTo:(CGPoint)a4
{
  v4 = 0;
  atomic_compare_exchange_strong_explicit(webFixedPositionContentDataLock, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v28 = a3;
    y = a4.y;
    x = a4.x;
    MEMORY[0x1CCA63990](webFixedPositionContentDataLock, a2);
    a4.x = x;
    a4.y = y;
    a3 = v28;
    v5 = *(self->_private + 1);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = *(self->_private + 1);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  if (*(v5 - 3))
  {
    v6 = *(v5 - 1);
    if (v6)
    {
      v7 = 16 * v6;
      v8 = v5;
      while (*v8 + 1 <= 1)
      {
        v8 += 2;
        v7 -= 16;
        if (!v7)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v8 = v5;
    }

    v9 = &v5[2 * v6];
    if (v8 != v9)
    {
      v10 = a4.x;
      v11 = a4.y;
LABEL_12:
      v12 = v8[1];
      if (*v12 == a3)
      {
        v13 = a3;
        v14 = *v8;
        v15 = v12[1];
        *v31 = v10;
        *&v31[1] = v11;
        v32 = *(v15 + 68);
        WebCore::StickyPositionViewportConstraints::anchorLayerPositionForConstrainingRect(v15, v31);
        v17 = v16;
        v19 = v18;
        [v14 bounds];
        v21 = v20;
        v23 = v22;
        [v14 anchorPoint];
        [v14 setPosition:{(v17 - *(v15 + 2)) + v24 * v21, (v19 - *(v15 + 3)) + v25 * v23}];
        a3 = v13;
      }

      while (1)
      {
        v8 += 2;
        if (v8 == v9)
        {
          break;
        }

        if (*v8 + 1 > 1)
        {
          if (v8 != v9)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }
  }

LABEL_17:
  v26 = 1;
  atomic_compare_exchange_strong_explicit(webFixedPositionContentDataLock, &v26, 0, memory_order_release, memory_order_relaxed);
  if (v26 != 1)
  {
    WTF::Lock::unlockSlow(webFixedPositionContentDataLock);
  }
}

uint64_t __54__WebFixedPositionContent_didFinishScrollingOrZooming__block_invoke(uint64_t a1)
{
  result = [**(*(a1 + 32) + 8) _mainCoreFrame];
  if (result)
  {

    return MEMORY[0x1EEE53E98]();
  }

  return result;
}

- (void)setViewportConstrainedLayers:(void *)a3 stickyContainerMap:(const void *)a4
{
  v7 = 0;
  atomic_compare_exchange_strong_explicit(webFixedPositionContentDataLock, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x1CCA63990](webFixedPositionContentDataLock, a2);
    v8 = self->_private;
    v9 = v8[1];
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = self->_private;
    v9 = v8[1];
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  v8[1] = 0;
  v10 = *(v9 - 4);
  if (v10)
  {
    v11 = v9;
    do
    {
      v12 = *v11;
      if (*v11 != -1)
      {
        v13 = *(v11 + 8);
        *(v11 + 8) = 0;
        if (v13)
        {
          v14 = *(v13 + 1);
          *(v13 + 1) = 0;
          if (v14)
          {
            (*(*v14 + 8))(v14, a2);
          }

          WTF::fastFree(v13, a2);
          v12 = *v11;
        }

        *v11 = 0;
        if (v12)
        {
        }
      }

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  WTF::fastFree((v9 - 16), a2);
LABEL_14:
  v15 = *a3;
  if (!*a3)
  {
    v17 = 0;
    v16 = 0;
LABEL_25:
    v19 = v17;
    v17 = &v15[2 * v16];
    if (v15)
    {
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  v16 = *(v15 - 1);
  v17 = &v15[2 * v16];
  if (!*(v15 - 3))
  {
    goto LABEL_25;
  }

  if (!v16)
  {
    goto LABEL_76;
  }

  v18 = 16 * v16;
  v19 = *a3;
  while (*v19 + 1 <= 1)
  {
    v19 += 2;
    v18 -= 16;
    if (!v18)
    {
      v19 = v17;
      break;
    }
  }

  if (!v15)
  {
LABEL_26:
    v20 = 0;
    if (!v19)
    {
      goto LABEL_76;
    }

    while (1)
    {
LABEL_31:
      v21 = *v19;
      v22 = WTF::fastMalloc(0x10);
      v23 = v22;
      *v22 = 0;
      v22[1] = 0;
      if (v21 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x1C7AD4140);
      }

      if (!v21)
      {
        __break(0xC471u);
        JUMPOUT(0x1C7AD4160);
      }

      v24 = *a4;
      v25 = ~(v21 << 32);
      if (!*a4)
      {
        goto LABEL_39;
      }

      v26 = *(v24 - 8);
      v27 = ((v21 + v25) ^ ((v21 + v25) >> 22)) + ~(((v21 + v25) ^ ((v21 + v25) >> 22)) << 13);
      v28 = (9 * (v27 ^ (v27 >> 8))) ^ ((9 * (v27 ^ (v27 >> 8))) >> 15);
      v29 = v26 & (((v28 + ~(v28 << 27)) >> 31) ^ (v28 + ~(v28 << 27)));
      v30 = *(v24 + 16 * v29);
      if (v30 == v21)
      {
        break;
      }

      v31 = 1;
      while (v30)
      {
        v29 = (v29 + v31) & v26;
        v30 = *(v24 + 16 * v29);
        ++v31;
        if (v30 == v21)
        {
          goto LABEL_38;
        }
      }

      v57 = v19[1];
      v19[1] = 0;
      v33 = v22[1];
      *v23 = 0;
      v23[1] = v57;
      if (v33)
      {
        goto LABEL_40;
      }

LABEL_41:
      v34 = self->_private;
      v35 = v21;
      v37 = v34[1];
      if (!v37)
      {
        WTF::HashTable<WTF::RetainPtr<CALayer>,WTF::KeyValuePair<WTF::RetainPtr<CALayer>,std::unique_ptr<ViewportConstrainedLayerData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<CALayer>,std::unique_ptr<ViewportConstrainedLayerData>>>,WTF::DefaultHash<WTF::RetainPtr<CALayer>>,WTF::HashMap<WTF::RetainPtr<CALayer>,std::unique_ptr<ViewportConstrainedLayerData>,WTF::DefaultHash<WTF::RetainPtr<CALayer>>,WTF::HashTraits<WTF::RetainPtr<CALayer>>,WTF::HashTraits<std::unique_ptr<ViewportConstrainedLayerData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<CALayer>>,WTF::FastMalloc>::rehash(v34 + 1, 8u);
        v37 = v34[1];
      }

      v38 = *(v37 - 8);
      v39 = ((v21 + v25) ^ ((v21 + v25) >> 22)) + ~(((v21 + v25) ^ ((v21 + v25) >> 22)) << 13);
      v40 = (9 * (v39 ^ (v39 >> 8))) ^ ((9 * (v39 ^ (v39 >> 8))) >> 15);
      v41 = v38 & (((v40 + ~(v40 << 27)) >> 31) ^ (v40 + ~(v40 << 27)));
      v42 = (v37 + 16 * v41);
      v43 = *v42;
      if (*v42)
      {
        v44 = 0;
        v45 = 1;
        do
        {
          if (v43 == v21)
          {
            v55 = v42[1];
            v42[1] = v23;
            if (v55)
            {
              v56 = *(v55 + 1);
              *(v55 + 1) = 0;
              if (v56)
              {
                (*(*v56 + 8))(v56);
              }

              WTF::fastFree(v55, v36);
            }

            goto LABEL_71;
          }

          if (v43 == -1)
          {
            v44 = v42;
          }

          v41 = (v41 + v45) & v38;
          v42 = (v37 + 16 * v41);
          v43 = *v42;
          ++v45;
        }

        while (*v42);
        if (!v44)
        {
          goto LABEL_52;
        }

        *v44 = 0;
        v44[1] = 0;
        --*(v34[1] - 16);
        v46 = *v44;
        *v44 = v21;
        if (v46)
        {
        }
      }

      else
      {
LABEL_52:
        *v42 = v21;
        v44 = v42;
      }

      v47 = v44[1];
      v44[1] = v23;
      if (v47)
      {
        v48 = *(v47 + 1);
        *(v47 + 1) = 0;
        if (v48)
        {
          (*(*v48 + 8))(v48);
        }

        WTF::fastFree(v47, v36);
      }

      v49 = v34[1];
      if (v49)
      {
        v50 = *(v49 - 16);
        v51 = *(v49 - 12) + 1;
        *(v49 - 12) = v51;
        v52 = (v50 + v51);
        v53 = *(v49 - 4);
        if (v53 > 0x400)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v51 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v52 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v53 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
        {
LABEL_68:
          if (v53 > 2 * v52)
          {
            goto LABEL_71;
          }

LABEL_69:
          v54 = v53 << (6 * v51 >= (2 * v53));
          goto LABEL_70;
        }
      }

      if (3 * v53 > 4 * v52)
      {
        goto LABEL_71;
      }

      if (v53)
      {
        goto LABEL_69;
      }

      v54 = 8;
LABEL_70:
      WTF::HashTable<WTF::RetainPtr<CALayer>,WTF::KeyValuePair<WTF::RetainPtr<CALayer>,std::unique_ptr<ViewportConstrainedLayerData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<CALayer>,std::unique_ptr<ViewportConstrainedLayerData>>>,WTF::DefaultHash<WTF::RetainPtr<CALayer>>,WTF::HashMap<WTF::RetainPtr<CALayer>,std::unique_ptr<ViewportConstrainedLayerData>,WTF::DefaultHash<WTF::RetainPtr<CALayer>>,WTF::HashTraits<WTF::RetainPtr<CALayer>>,WTF::HashTraits<std::unique_ptr<ViewportConstrainedLayerData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<CALayer>>,WTF::FastMalloc>::rehash(v34 + 1, v54);
      do
      {
LABEL_71:
        v19 += 2;
      }

      while (v19 != v17 && *v19 + 1 <= 1);
      if (v19 == v20)
      {
        goto LABEL_76;
      }
    }

LABEL_38:
    v24 = *(v24 + 16 * v29 + 8);
LABEL_39:
    v32 = v19[1];
    v19[1] = 0;
    v33 = v22[1];
    *v23 = v24;
    v23[1] = v32;
    if (!v33)
    {
      goto LABEL_41;
    }

LABEL_40:
    (*(*v33 + 8))(v33);
    goto LABEL_41;
  }

LABEL_22:
  v20 = &v15[2 * *(v15 - 1)];
  if (v19 != v20)
  {
    goto LABEL_31;
  }

LABEL_76:
  v58 = 1;
  atomic_compare_exchange_strong_explicit(webFixedPositionContentDataLock, &v58, 0, memory_order_release, memory_order_relaxed);
  if (v58 != 1)
  {

    WTF::Lock::unlockSlow(webFixedPositionContentDataLock);
  }
}

- (BOOL)hasFixedOrStickyPositionLayers
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(webFixedPositionContentDataLock, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x1CCA63990](webFixedPositionContentDataLock, a2);
    v3 = *(self->_private + 1);
    if (v3)
    {
LABEL_3:
      result = *(v3 - 12) != 0;
      v5 = 1;
      atomic_compare_exchange_strong_explicit(webFixedPositionContentDataLock, &v5, 0, memory_order_release, memory_order_relaxed);
      if (v5 == 1)
      {
        return result;
      }

LABEL_7:
      v8 = result;
      WTF::Lock::unlockSlow(webFixedPositionContentDataLock);
      return v8;
    }
  }

  else
  {
    v3 = *(self->_private + 1);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  result = 0;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(webFixedPositionContentDataLock, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_7;
  }

  return result;
}

@end