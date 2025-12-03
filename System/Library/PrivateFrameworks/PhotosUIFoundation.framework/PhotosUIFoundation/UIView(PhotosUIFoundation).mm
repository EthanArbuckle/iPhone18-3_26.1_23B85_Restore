@interface UIView(PhotosUIFoundation)
+ (id)px_circularGlyphViewWithName:()PhotosUIFoundation prefersMulticolor:backgroundColor:;
+ (id)px_contentLoadingView;
+ (uint64_t)px_animateView:()PhotosUIFoundation toCenter:bounds:transform:usingDefaultDampedSpringWithDelay:initialVelocity:options:completion:;
+ (uint64_t)px_animateView:()PhotosUIFoundation toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:;
+ (void)_px_animateView:()PhotosUIFoundation toCenter:bounds:transform:withInitialVelocity:usingSpringAnimation:completion:;
+ (void)px_animateUsingDefaultDampedEaseInEaseOutWithDuration:()PhotosUIFoundation animations:completion:;
- (BOOL)px_intersectsWindowBounds;
- (BOOL)px_isAncestorOfFocusEnvironment:()PhotosUIFoundation;
- (double)currentDynamicRangeHeadroom;
- (double)maximumDynamicRangeHeadroom;
- (double)px_peripheryInsets;
- (double)px_windowReferenceSize;
- (id)px_ancestorViewOfClass:()PhotosUIFoundation;
- (id)px_ancestorViewPassingTest:()PhotosUIFoundation;
- (id)px_rootView;
- (id)px_screen;
- (uint64_t)px_convertTransform3D:()PhotosUIFoundation toView:;
- (uint64_t)px_convertTransform:()PhotosUIFoundation toView:;
- (uint64_t)px_hasHiddenAncestor;
- (uint64_t)px_layoutDirection;
- (uint64_t)px_leadingEdge;
- (uint64_t)px_trailingEdge;
- (void)px_addFullBoundsSubview:()PhotosUIFoundation;
- (void)px_convertTransform3D:()PhotosUIFoundation fromView:;
- (void)px_convertTransform:()PhotosUIFoundation fromView:;
- (void)px_enumerateDescendantSubviewsPassingTest:()PhotosUIFoundation usingBlock:;
- (void)px_enumerateSelfAndDescendantViewsPassingTest:()PhotosUIFoundation usingBlock:;
- (void)px_enumerateSelfAndDescendantViewsUsingBlock:()PhotosUIFoundation;
- (void)px_screenScale;
- (void)px_transferToSuperview:()PhotosUIFoundation;
@end

@implementation UIView(PhotosUIFoundation)

- (double)px_peripheryInsets
{
  px_screen = [self px_screen];
  if (objc_opt_respondsToSelector())
  {
    [px_screen _peripheryInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x1E69DDCE0];
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  [px_screen bounds];
  v45 = v4;
  v12 = v6 + v11;
  v14 = v4 + v13;
  v16 = v15 - (v10 + v6);
  v18 = v17 - (v8 + v4);
  coordinateSpace = [px_screen coordinateSpace];
  [coordinateSpace convertRect:self toCoordinateSpace:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [self bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v46.origin.x = v21;
  v46.origin.y = v23;
  v46.size.width = v25;
  v46.size.height = v27;
  v53.origin.x = v29;
  v53.origin.y = v31;
  v44 = v33;
  v53.size.width = v33;
  v53.size.height = v35;
  v47 = CGRectIntersection(v46, v53);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  CGRectGetMinX(v47);
  v48.origin.x = v29;
  v48.origin.y = v31;
  v48.size.width = v33;
  v48.size.height = v35;
  CGRectGetMaxX(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  CGRectGetMaxX(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MinY = CGRectGetMinY(v50);
  v51.origin.x = v29;
  v51.size.width = v44;
  v51.origin.y = v31;
  v51.size.height = v35;
  CGRectGetMaxY(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  CGRectGetMaxY(v52);
  v41 = v45;
  if (MinY < v45)
  {
    v41 = MinY;
  }

  v42 = fmax(v41, 0.0);

  return v42;
}

- (void)px_screenScale
{
  px_screen = [self px_screen];
  [px_screen scale];
}

- (double)maximumDynamicRangeHeadroom
{
  px_screen = [self px_screen];
  [px_screen maximumDynamicRangeHeadroom];
  v3 = v2;

  return v3;
}

- (void)px_transferToSuperview:()PhotosUIFoundation
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  superview = [selfCopy superview];
  if (superview)
  {
    [selfCopy center];
    [v4 convertPoint:superview fromView:?];
    [selfCopy setCenter:?];
    if (selfCopy)
    {
      [selfCopy transform3D];
      if (CATransform3DIsIdentity(&v22))
      {
        memset(&v22, 0, 48);
        [selfCopy transform];
        if (v4)
        {
LABEL_5:
          [v4 px_convertTransform:&v14 fromView:superview];
LABEL_12:
          *&v13.m11 = *&v22.m11;
          *&v13.m13 = *&v22.m13;
          *&v13.m21 = *&v22.m21;
          [selfCopy setTransform:&v13];
LABEL_18:
          layer = [v4 layer];
          flipsHorizontalAxis = [layer flipsHorizontalAxis];

          if (flipsHorizontalAxis)
          {
            layer2 = [selfCopy layer];
            flipsHorizontalAxis2 = [layer2 flipsHorizontalAxis];
            layer3 = [selfCopy layer];
            [layer3 setFlipsHorizontalAxis:flipsHorizontalAxis2 ^ 1u];
          }

          [v4 addSubview:selfCopy];
          goto LABEL_21;
        }

LABEL_11:
        memset(&v22, 0, 48);
        goto LABEL_12;
      }

      memset(&v22, 0, sizeof(v22));
      [selfCopy transform3D];
      if (v4)
      {
LABEL_14:
        [v4 px_convertTransform3D:&v14 fromView:superview];
LABEL_17:
        v13 = v22;
        [selfCopy setTransform3D:&v13];
        goto LABEL_18;
      }
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
      if (CATransform3DIsIdentity(&v22))
      {
        memset(&v22, 0, 48);
        v15 = 0uLL;
        v16 = 0uLL;
        v14 = 0uLL;
        if (v4)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }

      memset(&v22, 0, sizeof(v22));
      v20 = 0uLL;
      v21 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      if (v4)
      {
        goto LABEL_14;
      }
    }

    memset(&v22, 0, sizeof(v22));
    goto LABEL_17;
  }

  v7 = PXAssertGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v22.m11) = 138412546;
    *(&v22.m11 + 4) = selfCopy;
    WORD2(v22.m12) = 2112;
    *(&v22.m12 + 6) = v4;
    _os_log_error_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_ERROR, "requested to transfer orphaned view %@ to superview %@, which is undefined", &v22, 0x16u);
  }

LABEL_21:
}

- (uint64_t)px_convertTransform:()PhotosUIFoundation toView:
{
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  if (a3)
  {
    v4 = a2[1];
    v5[0] = *a2;
    v5[1] = v4;
    v5[2] = a2[2];
    return [a3 px_convertTransform:v5 fromView:result];
  }

  return result;
}

- (void)px_convertTransform:()PhotosUIFoundation fromView:
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  layer = [self layer];
  layer2 = [v7 layer];
  v10 = [layer ancestorSharedWithLayer:layer2];

  delegate = [v10 delegate];
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = PXAssertGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.a) = 138413058;
        *(&buf.a + 4) = self;
        WORD2(buf.b) = 2112;
        *(&buf.b + 6) = v7;
        HIWORD(buf.c) = 2112;
        *&buf.d = v10;
        LOWORD(buf.tx) = 2112;
        *(&buf.tx + 2) = delegate;
        _os_log_error_impl(&dword_1B3F73000, v19, OS_LOG_TYPE_ERROR, "Ancestor layer's delegate is not a UIView. self=%@ view=%@ ancestorLayer=%@ ancestorView=%@", &buf, 0x2Au);
      }

      goto LABEL_8;
    }
  }

  if (!delegate)
  {
LABEL_8:
    v20 = a2[1];
    *a4 = *a2;
    *(a4 + 16) = v20;
    *(a4 + 32) = a2[2];
    goto LABEL_9;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__UIView_PhotosUIFoundation__px_convertTransform_fromView___block_invoke;
  aBlock[3] = &unk_1E7BB74E8;
  v26 = delegate;
  v12 = delegate;
  v13 = _Block_copy(aBlock);
  memset(&buf, 0, sizeof(buf));
  (v13)[2](&buf);
  memset(&v24, 0, sizeof(v24));
  (v13[2])(&t1, v13, self);
  CGAffineTransformInvert(&v24, &t1);
  v14 = a2[1];
  *a4 = *a2;
  *(a4 + 16) = v14;
  v16 = *a2;
  v15 = a2[1];
  *(a4 + 32) = a2[2];
  t1 = buf;
  *&t2.a = v16;
  *&t2.c = v15;
  *&t2.tx = a2[2];
  CGAffineTransformConcat(a4, &t1, &t2);
  t2 = v24;
  v17 = *(a4 + 16);
  *&v21.a = *a4;
  *&v21.c = v17;
  *&v21.tx = *(a4 + 32);
  CGAffineTransformConcat(&t1, &t2, &v21);
  v18 = *&t1.c;
  *a4 = *&t1.a;
  *(a4 + 16) = v18;
  *(a4 + 32) = *&t1.tx;

LABEL_9:
}

- (void)px_convertTransform3D:()PhotosUIFoundation fromView:
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  layer = [self layer];
  layer2 = [v7 layer];
  v10 = [layer ancestorSharedWithLayer:layer2];

  delegate = [v10 delegate];
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v34 = PXAssertGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.m11) = 138413058;
        *(&buf.m11 + 4) = self;
        WORD2(buf.m12) = 2112;
        *(&buf.m12 + 6) = v7;
        HIWORD(buf.m13) = 2112;
        *&buf.m14 = v10;
        LOWORD(buf.m21) = 2112;
        *(&buf.m21 + 2) = delegate;
        _os_log_error_impl(&dword_1B3F73000, v34, OS_LOG_TYPE_ERROR, "Ancestor layer's delegate is not a UIView. self=%@ view=%@ ancestorLayer=%@ ancestorView=%@", &buf, 0x2Au);
      }

      goto LABEL_8;
    }
  }

  if (!delegate)
  {
LABEL_8:
    v35 = a2[5];
    *(a4 + 64) = a2[4];
    *(a4 + 80) = v35;
    v36 = a2[7];
    *(a4 + 96) = a2[6];
    *(a4 + 112) = v36;
    v37 = a2[1];
    *a4 = *a2;
    *(a4 + 16) = v37;
    v38 = a2[3];
    *(a4 + 32) = a2[2];
    *(a4 + 48) = v38;
    goto LABEL_9;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__UIView_PhotosUIFoundation__px_convertTransform3D_fromView___block_invoke;
  aBlock[3] = &unk_1E7BB74C0;
  v44 = delegate;
  v12 = delegate;
  v13 = _Block_copy(aBlock);
  memset(&buf, 0, sizeof(buf));
  (v13)[2](&buf);
  memset(&v42, 0, sizeof(v42));
  (v13[2])(&a, v13, self);
  CATransform3DInvert(&v42, &a);
  v15 = a2[4];
  v14 = a2[5];
  v16 = a2[3];
  *(a4 + 64) = v15;
  *(a4 + 80) = v14;
  v17 = a2[5];
  v19 = a2[6];
  v18 = a2[7];
  *(a4 + 96) = v19;
  *(a4 + 112) = v18;
  v20 = a2[1];
  *a4 = *a2;
  *(a4 + 16) = v20;
  v21 = a2[3];
  v23 = *a2;
  v22 = a2[1];
  v24 = a2[2];
  *(a4 + 32) = v24;
  *(a4 + 48) = v21;
  a = buf;
  *&b.m31 = v15;
  *&b.m33 = v17;
  v25 = a2[7];
  *&b.m41 = v19;
  *&b.m43 = v25;
  *&b.m11 = v23;
  *&b.m13 = v22;
  *&b.m21 = v24;
  *&b.m23 = v16;
  CATransform3DConcat(a4, &a, &b);
  b = v42;
  v26 = *(a4 + 80);
  *&v39.m31 = *(a4 + 64);
  *&v39.m33 = v26;
  v27 = *(a4 + 112);
  *&v39.m41 = *(a4 + 96);
  *&v39.m43 = v27;
  v28 = *(a4 + 16);
  *&v39.m11 = *a4;
  *&v39.m13 = v28;
  v29 = *(a4 + 48);
  *&v39.m21 = *(a4 + 32);
  *&v39.m23 = v29;
  CATransform3DConcat(&a, &b, &v39);
  v30 = *&a.m33;
  *(a4 + 64) = *&a.m31;
  *(a4 + 80) = v30;
  v31 = *&a.m43;
  *(a4 + 96) = *&a.m41;
  *(a4 + 112) = v31;
  v32 = *&a.m13;
  *a4 = *&a.m11;
  *(a4 + 16) = v32;
  v33 = *&a.m23;
  *(a4 + 32) = *&a.m21;
  *(a4 + 48) = v33;

LABEL_9:
}

- (uint64_t)px_convertTransform3D:()PhotosUIFoundation toView:
{
  a4[6] = 0u;
  a4[7] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  if (a3)
  {
    v4 = a2[5];
    v8[4] = a2[4];
    v8[5] = v4;
    v5 = a2[7];
    v8[6] = a2[6];
    v8[7] = v5;
    v6 = a2[1];
    v8[0] = *a2;
    v8[1] = v6;
    v7 = a2[3];
    v8[2] = a2[2];
    v8[3] = v7;
    return [a3 px_convertTransform3D:v8 fromView:result];
  }

  return result;
}

- (id)px_ancestorViewPassingTest:()PhotosUIFoundation
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      if ((*(a3 + 16))(a3, selfCopy))
      {
        break;
      }

      superview = [selfCopy superview];

      selfCopy = superview;
    }

    while (superview);
  }

  return selfCopy;
}

- (id)px_ancestorViewOfClass:()PhotosUIFoundation
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__UIView_PhotosUIFoundation__px_ancestorViewOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e16_B16__0__UIView_8lu32l8;
  v5[4] = a3;
  v3 = [self px_ancestorViewPassingTest:v5];

  return v3;
}

- (id)px_rootView
{
  window = [self window];
  v3 = window;
  if (window)
  {
    v4 = window;
  }

  else
  {
    v4 = [self px_ancestorViewPassingTest:&__block_literal_global_6];
  }

  v5 = v4;

  return v5;
}

- (uint64_t)px_hasHiddenAncestor
{
  selfCopy = self;
  if (selfCopy)
  {
    v2 = selfCopy;
    v3 = 0;
    do
    {
      isHidden = [v2 isHidden];
      if (isHidden)
      {
        break;
      }

      objc_opt_class();
      v3 |= objc_opt_isKindOfClass();
      superview = [v2 superview];

      v2 = superview;
    }

    while (superview);
    v6 = isHidden | v3 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (void)px_addFullBoundsSubview:()PhotosUIFoundation
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [self addSubview:v4];
  v15 = MEMORY[0x1E696ACD8];
  topAnchor = [v4 topAnchor];
  topAnchor2 = [self topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[0] = v16;
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[1] = v7;
  trailingAnchor = [self trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[2] = v10;
  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];

  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v15 activateConstraints:v14];
}

- (BOOL)px_intersectsWindowBounds
{
  window = [self window];
  if (window)
  {
    [self frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    superview = [self superview];
    [window convertRect:superview fromView:{v4, v6, v8, v10}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [window bounds];
    v27.origin.x = v20;
    v27.origin.y = v21;
    v27.size.width = v22;
    v27.size.height = v23;
    v26.origin.x = v13;
    v26.origin.y = v15;
    v26.size.width = v17;
    v26.size.height = v19;
    v24 = CGRectIntersectsRect(v26, v27);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (double)currentDynamicRangeHeadroom
{
  px_screen = [self px_screen];
  [px_screen currentDynamicRangeHeadroom];
  v3 = v2;

  return v3;
}

- (BOOL)px_isAncestorOfFocusEnvironment:()PhotosUIFoundation
{
  v4 = a3;
  parentFocusEnvironment = v4;
  for (i = v4 != 0; parentFocusEnvironment != self && parentFocusEnvironment; i = parentFocusEnvironment != 0)
  {
    v7 = parentFocusEnvironment;
    parentFocusEnvironment = [parentFocusEnvironment parentFocusEnvironment];
  }

  return i;
}

- (void)px_enumerateDescendantSubviewsPassingTest:()PhotosUIFoundation usingBlock:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subviews = [self subviews];
  v9 = [subviews countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(subviews);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if (v6[2](v6, v12))
      {
        v7[2](v7, v12, (v22 + 3));
        if (v22[3])
        {
          break;
        }

        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __83__UIView_PhotosUIFoundation__px_enumerateDescendantSubviewsPassingTest_usingBlock___block_invoke;
        v14[3] = &unk_1E7BB7398;
        v15 = v7;
        v16 = &v21;
        [v12 px_enumerateDescendantSubviewsPassingTest:v6 usingBlock:v14];
        v13 = *(v22 + 24);

        if (v13)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [subviews countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v21, 8);
}

- (void)px_enumerateSelfAndDescendantViewsPassingTest:()PhotosUIFoundation usingBlock:
{
  v6 = a3;
  v7 = a4;
  if (v6[2](v6, self))
  {
    v8 = 0;
    v7[2](v7, self, &v8);
    if ((v8 & 1) == 0)
    {
      [self px_enumerateDescendantSubviewsPassingTest:v6 usingBlock:v7];
    }
  }
}

- (void)px_enumerateSelfAndDescendantViewsUsingBlock:()PhotosUIFoundation
{
  v4 = a3;
  v5 = 0;
  v4[2](v4, self, &v5);
  if ((v5 & 1) == 0)
  {
    [self px_enumerateDescendantSubviewsUsingBlock:v4];
  }
}

- (double)px_windowReferenceSize
{
  window = [self window];
  v2 = window;
  if (window)
  {
    [window bounds];
    v4 = v3;
  }

  else
  {
    v4 = INFINITY;
  }

  return v4;
}

- (id)px_screen
{
  window = [self window];
  screen = [window screen];
  v3 = screen;
  if (screen)
  {
    px_mainScreen = screen;
  }

  else
  {
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  }

  v5 = px_mainScreen;

  return v5;
}

- (uint64_t)px_trailingEdge
{
  v1 = PXFlipLayoutDirection([self px_layoutDirection]);

  return PXLeadingRectEdge(v1);
}

- (uint64_t)px_leadingEdge
{
  px_layoutDirection = [self px_layoutDirection];

  return PXLeadingRectEdge(px_layoutDirection);
}

- (uint64_t)px_layoutDirection
{
  effectiveUserInterfaceLayoutDirection = [self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection)
  {
    return 2 * (effectiveUserInterfaceLayoutDirection == 1);
  }

  else
  {
    return 1;
  }
}

+ (id)px_contentLoadingView
{
  loadingConfiguration = [MEMORY[0x1E69DC8C8] loadingConfiguration];
  v1 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:loadingConfiguration];

  return v1;
}

+ (id)px_circularGlyphViewWithName:()PhotosUIFoundation prefersMulticolor:backgroundColor:
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  if (a4)
  {
    configurationPreferringMulticolor = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
    v11 = [v9 configurationByApplyingConfiguration:configurationPreferringMulticolor];

    v9 = v11;
  }

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
  v13 = [v12 imageByApplyingSymbolConfiguration:v9];

  [v13 size];
  v15 = v14;
  v17 = v16;
  v18 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v18 setTintColor:whiteColor];

  [v18 setFrame:{0.0, 0.0, v15, v17}];
  if ((a4 & 1) == 0)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v21 = [v8 isEqual:clearColor];

    if ((v21 & 1) == 0)
    {
      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      v23 = [v13 px_tintedCircularImageWithColor:whiteColor2 backgroundColor:v8];

      v13 = v23;
    }
  }

  [v18 setImage:v13];

  return v18;
}

+ (void)px_animateUsingDefaultDampedEaseInEaseOutWithDuration:()PhotosUIFoundation animations:completion:
{
  v7 = a4;
  v8 = a5;
  if (px_animateUsingDefaultDampedEaseInEaseOutWithDuration_animations_completion__onceToken != -1)
  {
    dispatch_once(&px_animateUsingDefaultDampedEaseInEaseOutWithDuration_animations_completion__onceToken, &__block_literal_global_31);
  }

  v9 = objc_alloc(MEMORY[0x1E69DD278]);
  v10 = [v9 initWithDuration:px_animateUsingDefaultDampedEaseInEaseOutWithDuration_animations_completion__timingParameters timingParameters:self];
  v11 = v10;
  if (v7)
  {
    [v10 addAnimations:v7];
  }

  if (v8)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __106__UIView_PhotosUIFoundation__px_animateUsingDefaultDampedEaseInEaseOutWithDuration_animations_completion___block_invoke_2;
    v12[3] = &unk_1E7BB7498;
    v13 = v8;
    [v11 addCompletion:v12];
  }

  [v11 startAnimation];
}

+ (void)_px_animateView:()PhotosUIFoundation toCenter:bounds:transform:withInitialVelocity:usingSpringAnimation:completion:
{
  v144 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v30 = a5;
  v31 = a6;
  if (v29)
  {
    if (v30)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIView+PhotosUIFoundation.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

    if (v30)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIView+PhotosUIFoundation.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"springAnimation != NULL"}];

LABEL_3:
  [v29 center];
  v33 = v32;
  v35 = v34;
  [v29 bounds];
  v79 = v37;
  v81 = v36;
  v75 = v39;
  v77 = v38;
  memset(&v142, 0, sizeof(v142));
  if (v29)
  {
    [v29 transform];
  }

  v140[0] = 0;
  v140[1] = v140;
  v140[2] = 0x2020000000;
  v141 = 1;
  v40 = dispatch_group_create();
  dispatch_group_enter(v40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke;
  block[3] = &unk_1E7BB8830;
  v41 = v31;
  v138 = v41;
  v139 = v140;
  dispatch_group_notify(v40, MEMORY[0x1E69E96A0], block);
  if (a7 == v33)
  {
    a7 = v33;
  }

  else
  {
    dispatch_group_enter(v40);
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2;
    v133[3] = &unk_1E7BB7420;
    v134 = v29;
    v135 = a7;
    v136 = v35;
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3;
    v130[3] = &unk_1E7BB7448;
    v132 = v140;
    v131 = v40;
    (*(v30 + 2))(v30, v133, v130, a15 / (a7 - v33));
  }

  if (a8 != v35)
  {
    dispatch_group_enter(v40);
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4;
    v126[3] = &unk_1E7BB7420;
    v127 = v29;
    v128 = a7;
    v129 = a8;
    v123[0] = MEMORY[0x1E69E9820];
    v123[1] = 3221225472;
    v123[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5;
    v123[3] = &unk_1E7BB7448;
    v125 = v140;
    v124 = v40;
    (*(v30 + 2))(v30, v126, v123, a16 / (a8 - v35));
  }

  v145.origin.x = a9;
  v145.origin.y = a10;
  v145.size.width = a11;
  v145.size.height = a12;
  v150.origin.y = v79;
  v150.origin.x = v81;
  v150.size.height = v75;
  v150.size.width = v77;
  if (!CGRectEqualToRect(v145, v150))
  {
    v146.origin.x = a9;
    v146.origin.y = a10;
    v146.size.width = a11;
    v146.size.height = a12;
    Width = CGRectGetWidth(v146);
    v147.origin.y = v79;
    v147.origin.x = v81;
    v147.size.height = v75;
    v147.size.width = v77;
    v43 = CGRectGetWidth(v147);
    v148.origin.x = a9;
    v148.origin.y = a10;
    v148.size.width = a11;
    v148.size.height = a12;
    Height = CGRectGetHeight(v148);
    v149.origin.y = v79;
    v149.origin.x = v81;
    v149.size.height = v75;
    v149.size.width = v77;
    v45 = Height / CGRectGetHeight(v149);
    v46 = 0.0;
    v47 = 0.0;
    if (Width / v43 != 1.0)
    {
      v47 = a17 / (Width / v43 + -1.0);
    }

    if (v45 != 1.0)
    {
      v46 = a17 / (v45 + -1.0);
    }

    v48 = (v47 + v46) * 0.5;
    dispatch_group_enter(v40);
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6;
    v117[3] = &unk_1E7BB78D0;
    v118 = v29;
    v119 = a9;
    v120 = a10;
    v121 = a11;
    v122 = a12;
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_7;
    v114[3] = &unk_1E7BB7448;
    v116 = v140;
    v115 = v40;
    (*(v30 + 2))(v30, v117, v114, v48);
  }

  v49 = *(a4 + 16);
  *&t1.a = *a4;
  *&t1.c = v49;
  *&t1.tx = *(a4 + 32);
  t2 = v142;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v50 = *&v142.a;
    ty = v142.ty;
    tx = v142.tx;
    v51 = atan2(v142.b, v142.a);
    v52 = __sincos_stret(v51);
    if (fabs(v52.__cosval) <= fabs(v52.__sinval))
    {
      v53 = *(&v50 + 1) / v52.__sinval;
      v54 = -v142.c / v52.__sinval;
    }

    else
    {
      v53 = *&v50 / v52.__cosval;
      v54 = v142.d / v52.__cosval;
    }

    v55 = *a4;
    v56 = *(a4 + 8);
    v57 = *(a4 + 32);
    v58 = *(a4 + 40);
    v59 = atan2(v56, *a4);
    v60 = __sincos_stret(v59);
    if (fabs(v60.__cosval) <= fabs(v60.__sinval))
    {
      v61 = v56 / v60.__sinval;
      v62 = -*(a4 + 16) / v60.__sinval;
    }

    else
    {
      v61 = v55 / v60.__cosval;
      v62 = *(a4 + 24) / v60.__cosval;
    }

    if (vabdd_f64(tx, v57) > 0.00000999999975 || vabdd_f64(ty, v58) > 0.00000999999975)
    {
      v63 = PFUIGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        t1 = v142;
        v64 = NSStringFromCGAffineTransform(&t1);
        v65 = *(a4 + 16);
        *&t1.a = *a4;
        *&t1.c = v65;
        *&t1.tx = *(a4 + 32);
        v66 = NSStringFromCGAffineTransform(&t1);
        LODWORD(t2.a) = 138412546;
        *(&t2.a + 4) = v64;
        WORD2(t2.b) = 2112;
        *(&t2.b + 6) = v66;
        _os_log_impl(&dword_1B3F73000, v63, OS_LOG_TYPE_DEFAULT, "animation of translational transforms is not supported (%@ => %@)", &t2, 0x16u);
      }
    }

    if (v61 == v53 && v62 == v54)
    {
      v61 = v53;
    }

    else
    {
      v78 = v62;
      v67 = v62 / v54;
      v68 = 0.0;
      v69 = 0.0;
      if (v61 / v53 != 1.0)
      {
        v69 = a17 / (v61 / v53 + -1.0);
      }

      if (v67 != 1.0)
      {
        v68 = a17 / (v67 + -1.0);
      }

      v76 = v68;
      v70 = vabdd_f64(v69, v68);
      if (v70 <= 0.00000999999975)
      {
        v54 = v78;
      }

      dispatch_group_enter(v40);
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_24;
      v106[3] = &unk_1E7BB7470;
      v71 = v29;
      v107 = v71;
      v108 = tx;
      v109 = ty;
      v110 = v61;
      v111 = v54;
      v112 = v51;
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2_25;
      v103[3] = &unk_1E7BB7448;
      v105 = v140;
      v72 = v40;
      v104 = v72;
      (*(v30 + 2))(v30, v106, v103, v69);
      if (v70 > 0.00000999999975)
      {
        dispatch_group_enter(v72);
        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3_26;
        v96[3] = &unk_1E7BB7470;
        v97 = v71;
        v98 = tx;
        v99 = ty;
        v100 = v61;
        v101 = v78;
        v102 = v51;
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4_27;
        v93[3] = &unk_1E7BB7448;
        v95 = v140;
        v94 = v72;
        (*(v30 + 2))(v30, v96, v93, v76);

        v54 = v78;
      }
    }

    if (v59 != v51)
    {
      dispatch_group_enter(v40);
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5_28;
      v86[3] = &unk_1E7BB7470;
      v87 = v29;
      v88 = tx;
      v89 = ty;
      v90 = v61;
      v91 = v54;
      v92 = v59;
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __124__UIView_PhotosUIFoundation___px_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6_29;
      v83[3] = &unk_1E7BB7448;
      v85 = v140;
      v84 = v40;
      (*(v30 + 2))(v30, v86, v83, a18 / (v59 - v51));
    }
  }

  dispatch_group_leave(v40);

  _Block_object_dispose(v140, 8);
}

+ (uint64_t)px_animateView:()PhotosUIFoundation toCenter:bounds:transform:usingDefaultDampedSpringWithDelay:initialVelocity:options:completion:
{
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __140__UIView_PhotosUIFoundation__px_animateView_toCenter_bounds_transform_usingDefaultDampedSpringWithDelay_initialVelocity_options_completion___block_invoke;
  v21[3] = &__block_descriptor_48_e27_v32__0d8___v___16___v__B_24l;
  *&v21[4] = a8;
  v21[5] = a12;
  v18 = a11[1];
  v20[0] = *a11;
  v20[1] = v18;
  v20[2] = a11[2];
  return [self _px_animateView:a10 toCenter:v20 bounds:v21 transform:a16 withInitialVelocity:a17 usingSpringAnimation:a18 completion:?];
}

+ (uint64_t)px_animateView:()PhotosUIFoundation toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:
{
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __148__UIView_PhotosUIFoundation__px_animateView_toCenter_bounds_transform_withDuration_delay_usingSpringWithDamping_initialVelocity_options_completion___block_invoke;
  v23[3] = &__block_descriptor_64_e27_v32__0d8___v___16___v__B_24l;
  *&v23[4] = a8;
  *&v23[5] = a9;
  v23[6] = a17;
  v23[7] = a13;
  v20 = a12[1];
  v22[0] = *a12;
  v22[1] = v20;
  v22[2] = a12[2];
  return [self _px_animateView:a11 toCenter:v22 bounds:v23 transform:a18 withInitialVelocity:a19 usingSpringAnimation:a20 completion:?];
}

@end