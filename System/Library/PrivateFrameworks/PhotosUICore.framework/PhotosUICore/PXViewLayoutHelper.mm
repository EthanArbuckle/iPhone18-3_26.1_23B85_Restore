@interface PXViewLayoutHelper
+ (void)initialize;
+ (void)performLayoutWithinView:(id)view usingBlock:(id)block;
- (CGRect)_orientedFrameOfView:(id)view;
- (PXViewLayoutHelper)init;
- (double)bottomOfView:(id)view;
- (double)firstBaselineOfView:(id)view;
- (double)horizontalCenterOfView:(id)view;
- (double)lastBaselineOfView:(id)view;
- (double)leadingOfView:(id)view;
- (double)topOfView:(id)view;
- (double)trailingOfView:(id)view;
- (double)verticalCenterOfView:(id)view;
- (id)_init;
- (void)_getFirstBaseline:(double *)baseline lastBaseline:(double *)lastBaseline forView:(id)view withSize:(CGSize)size;
- (void)_setOrientedFrame:(CGRect)frame forView:(id)view;
- (void)_setUpWithView:(id)view;
- (void)_tearDown;
- (void)layoutView:(id)view withAttributes:(id *)attributes;
@end

@implementation PXViewLayoutHelper

- (void)_getFirstBaseline:(double *)baseline lastBaseline:(double *)lastBaseline forView:(id)view withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  v12 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
  objc_opt_class();
  rect = width;
  if (objc_opt_isKindOfClass())
  {
    font = [viewCopy font];
    v20 = height;
    v19 = v11;
    v18 = v12;
    if (baseline)
    {
LABEL_10:
      v32.origin.x = v12;
      v32.origin.y = v11;
      v32.size.width = width;
      v32.size.height = height;
      MinY = CGRectGetMinY(v32);
      [font ascender];
      v27 = MinY + v26;
      v33.origin.x = v18;
      v33.origin.y = v19;
      v33.size.width = rect;
      v33.size.height = v20;
      *baseline = v27 - CGRectGetMinY(v33);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      PXAssertGetLog();
    }

    v14 = viewCopy;
    v15 = [v14 attributedTitleForState:0];
    font = [v15 attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];

    titleLabel = [v14 titleLabel];
    v17 = titleLabel;
    if (!font)
    {
      font = [titleLabel font];
    }

    v18 = v12;
    v19 = v11;
    v20 = height;
    [v14 contentRectForBounds:{v12, v11, width, height}];
    [v14 titleRectForContentRect:?];
    v12 = v21;
    v11 = v22;
    width = v23;
    height = v24;

    if (baseline)
    {
      goto LABEL_10;
    }
  }

  if (lastBaseline)
  {
    v34.origin.x = v12;
    v34.origin.y = v11;
    v34.size.width = width;
    v34.size.height = height;
    MaxY = CGRectGetMaxY(v34);
    [font descender];
    v30 = v20 + MaxY + v29;
    v35.origin.x = v18;
    v35.origin.y = v19;
    v35.size.width = rect;
    v35.size.height = v20;
    *lastBaseline = v30 - CGRectGetMaxY(v35);
  }
}

- (void)_setOrientedFrame:(CGRect)frame forView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v25 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v10 = *&self->_transform.c;
  *&v24.a = *&self->_transform.a;
  *&v24.c = v10;
  *&v24.tx = *&self->_transform.tx;
  v11 = x;
  *&v10 = y;
  v12 = width;
  v13 = height;
  v26 = CGRectApplyAffineTransform(*(&v10 - 8), &v24);
  v14 = v26.origin.x;
  v15 = v26.origin.y;
  v16 = v26.size.width;
  v17 = v26.size.height;
  superview = [viewCopy superview];
  coordinateSpace = self->_coordinateSpace;
  if (superview != coordinateSpace)
  {
    if (!superview)
    {
      PXAssertGetLog();
    }

    [(UICoordinateSpace *)coordinateSpace convertRect:superview toCoordinateSpace:v14, v15, v16, v17];
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v23;
  }

  [viewCopy setFrame:{v14, v15, v16, v17}];
}

- (CGRect)_orientedFrameOfView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  coordinateSpace = self->_coordinateSpace;

  if (superview == coordinateSpace)
  {
    [viewCopy frame];
  }

  else
  {
    v20 = self->_coordinateSpace;
    [viewCopy bounds];
    [(UICoordinateSpace *)v20 convertRect:viewCopy fromCoordinateSpace:?];
  }

  v11 = *&self->_reverseTransform.c;
  *&v21.a = *&self->_reverseTransform.a;
  *&v21.c = v11;
  *&v21.tx = *&self->_reverseTransform.tx;
  v22 = CGRectApplyAffineTransform(*&v7, &v21);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_tearDown
{
  coordinateSpace = self->_coordinateSpace;
  self->_coordinateSpace = 0;
}

- (void)_setUpWithView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  self->_containerBounds.origin.x = v5;
  self->_containerBounds.origin.y = v6;
  self->_containerBounds.size.width = v7;
  self->_containerBounds.size.height = v8;
  coordinateSpace = self->_coordinateSpace;
  self->_coordinateSpace = viewCopy;
  v10 = viewCopy;

  v11 = +[PXViewLayoutHelper userInterfaceLayoutDirection];
  if (v11 == 1)
  {
    MidX = CGRectGetMidX(self->_containerBounds);
    CGAffineTransformMakeTranslation(&v25, -MidX, 0.0);
    v13 = *&v25.c;
    *&self->_transform.a = *&v25.a;
    *&self->_transform.c = v13;
    *&self->_transform.tx = *&v25.tx;
    CGAffineTransformMakeScale(&t2, -1.0, 1.0);
    v14 = *&self->_transform.c;
    *&v23.a = *&self->_transform.a;
    *&v23.c = v14;
    *&v23.tx = *&self->_transform.tx;
    CGAffineTransformConcat(&v25, &v23, &t2);
    v15 = *&v25.c;
    *&self->_transform.a = *&v25.a;
    *&self->_transform.c = v15;
    *&self->_transform.tx = *&v25.tx;
    CGAffineTransformMakeTranslation(&t2, MidX, 0.0);
    v16 = *&self->_transform.c;
    *&v23.a = *&self->_transform.a;
    *&v23.c = v16;
    *&v23.tx = *&self->_transform.tx;
    CGAffineTransformConcat(&v25, &v23, &t2);
    v17 = *&v25.c;
    *&self->_transform.a = *&v25.a;
    *&self->_transform.c = v17;
    v18 = *&v25.tx;
  }

  else
  {
    v19 = MEMORY[0x1E695EFD0];
    v20 = *(MEMORY[0x1E695EFD0] + 16);
    *&self->_transform.a = *MEMORY[0x1E695EFD0];
    *&self->_transform.c = v20;
    v18 = *(v19 + 32);
  }

  *&self->_transform.tx = v18;
  v21 = *&self->_transform.c;
  *&t2.a = *&self->_transform.a;
  *&t2.c = v21;
  *&t2.tx = *&self->_transform.tx;
  CGAffineTransformInvert(&v25, &t2);
  v22 = *&v25.c;
  *&self->_reverseTransform.a = *&v25.a;
  *&self->_reverseTransform.c = v22;
  *&self->_reverseTransform.tx = *&v25.tx;
}

- (double)lastBaselineOfView:(id)view
{
  viewCopy = view;
  [(PXViewLayoutHelper *)self _orientedFrameOfView:viewCopy];
  v6 = v5;
  v10 = 0.0;
  [(PXViewLayoutHelper *)self _getFirstBaseline:0 lastBaseline:&v10 forView:viewCopy withSize:v7, v8];

  return v6 + v10;
}

- (double)firstBaselineOfView:(id)view
{
  viewCopy = view;
  [(PXViewLayoutHelper *)self _orientedFrameOfView:viewCopy];
  v6 = v5;
  v10 = 0.0;
  [(PXViewLayoutHelper *)self _getFirstBaseline:&v10 lastBaseline:0 forView:viewCopy withSize:v7, v8];

  return v6 + v10;
}

- (double)bottomOfView:(id)view
{
  [(PXViewLayoutHelper *)self _orientedFrameOfView:view];

  return CGRectGetMaxY(*&v3);
}

- (double)verticalCenterOfView:(id)view
{
  [(PXViewLayoutHelper *)self _orientedFrameOfView:view];

  return CGRectGetMidY(*&v3);
}

- (double)topOfView:(id)view
{
  [(PXViewLayoutHelper *)self _orientedFrameOfView:view];

  return CGRectGetMinY(*&v3);
}

- (double)trailingOfView:(id)view
{
  [(PXViewLayoutHelper *)self _orientedFrameOfView:view];

  return CGRectGetMaxX(*&v3);
}

- (double)horizontalCenterOfView:(id)view
{
  [(PXViewLayoutHelper *)self _orientedFrameOfView:view];

  return CGRectGetMidX(*&v3);
}

- (double)leadingOfView:(id)view
{
  [(PXViewLayoutHelper *)self _orientedFrameOfView:view];

  return CGRectGetMinX(*&v3);
}

- (void)layoutView:(id)view withAttributes:(id *)attributes
{
  v92 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = viewCopy;
  if (!attributes)
  {
    goto LABEL_147;
  }

  v82 = viewCopy;
  selfCopy = self;
  [(PXViewLayoutHelper *)self _orientedFrameOfView:viewCopy];
  x = v93.origin.x;
  y = v93.origin.y;
  width = v93.size.width;
  height = v93.size.height;
  var0 = attributes->var0;
  v13 = attributes->var0;
  MinX = CGRectGetMinX(v93);
  v16 = var0 != -INFINITY && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v17 = MinX;
  }

  else
  {
    v17 = var0;
  }

  var2 = attributes->var2;
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = width;
  v94.size.height = height;
  MaxX = CGRectGetMaxX(v94);
  v21 = var2 != -INFINITY && (*&var2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&var2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    MaxX = var2;
  }

  v84 = MaxX;
  var3 = attributes->var3;
  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = width;
  v95.size.height = height;
  MinY = CGRectGetMinY(v95);
  v24 = (*&var3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 || var3 == -INFINITY;
  v85 = v24;
  if ((*&var3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    MinY = var3;
  }

  v88 = MinY;
  var5 = attributes->var5;
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = width;
  v96.size.height = height;
  MaxY = CGRectGetMaxY(v96);
  v27 = (*&var5 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 || var5 == -INFINITY;
  v86 = v27;
  if ((*&var5 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    MaxY = var5;
  }

  v87 = MaxY;
  var8 = attributes->var8;
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v29 = CGRectGetWidth(v97);
  v30 = (*&var8 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 || var8 == -INFINITY;
  if ((*&var8 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v29 = var8;
  }

  v90 = v29;
  var9 = attributes->var9;
  v98.origin.x = x;
  v98.origin.y = y;
  v98.size.width = width;
  v98.size.height = height;
  v32 = CGRectGetHeight(v98);
  v33 = (*&var9 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 || var9 == -INFINITY;
  if ((*&var9 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v32 = var9;
  }

  v89 = v32;
  var10 = attributes->var10;
  v99.origin.x = x;
  v99.origin.y = y;
  v99.size.width = width;
  v99.size.height = height;
  v35 = CGRectGetMinX(v99);
  v37 = var10 != -INFINITY && (*&var10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&var10 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v35 = var10;
  }

  v78 = v35;
  var11 = attributes->var11;
  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  v39 = CGRectGetMaxY(v100);
  v41 = var11 != -INFINITY && (*&var11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&var11 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v39 = var11;
  }

  v81 = v39;
  var12 = attributes->var12;
  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  v43 = CGRectGetMinY(v101);
  v45 = var12 != -INFINITY && (*&var12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  v80 = v45;
  if ((*&var12 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v43 = var12;
  }

  v79 = v43;
  var13 = attributes->var13;
  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  v47 = CGRectGetMaxY(v102);
  v49 = var13 != -INFINITY && (*&var13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&var13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v50 = v47;
  }

  else
  {
    v50 = var13;
  }

  v52 = attributes->var8;
  v51 = attributes->var9;
  v76 = v50;
  if (v52 == INFINITY || v51 == INFINITY)
  {
    v77 = v17;
    v54 = v90;
    if (!v30)
    {
      v55 = -1.79769313e307;
      if (!v37)
      {
        v55 = v78;
      }

      if (!v16)
      {
        v55 = v77;
      }

      v56 = 1.79769313e307;
      if (!v41)
      {
        v56 = v81;
      }

      if (!v21)
      {
        v56 = v84;
      }

      v54 = v56 - v55;
    }

    v57 = v89;
    v7 = v82;
    v53 = selfCopy;
    if (!v33)
    {
      v58 = -1.79769313e307;
      if (!v80)
      {
        v58 = v79;
      }

      if (v85)
      {
        v58 = v88;
      }

      v59 = 1.79769313e307;
      if (!v49)
      {
        v59 = v81;
      }

      if (v86)
      {
        v59 = v87;
      }

      v57 = v59 - v58;
    }

    [v82 sizeThatFits:{v54, v57, *&v76}];
    v62 = fmin(v61, v54);
    if (v52 == INFINITY)
    {
      v30 = 1;
    }

    v63 = v90;
    if (v52 == INFINITY)
    {
      v63 = v62;
    }

    v90 = v63;
    if (v51 == INFINITY)
    {
      v89 = fmin(v60, v57);
    }

    v17 = v77;
  }

  else
  {
    v7 = v82;
    v53 = selfCopy;
  }

  v65 = v87;
  v64 = v88;
  if (v16 || v21)
  {
    var1 = attributes->var1;
    v103.origin.x = x;
    v103.origin.y = y;
    v103.size.width = width;
    v103.size.height = height;
    MidY = CGRectGetMidY(v103);
    v68 = (*&var1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 || var1 == -INFINITY;
    if ((*&var1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      MidY = var1;
    }

    if (v16)
    {
      v69 = v84;
      v70 = v90;
      if (!v21)
      {
        v71 = v78;
        if (v84 - v90 >= v78)
        {
          v71 = v84 - v90;
        }

        if (v30 || v37)
        {
          v17 = v84 - v90;
        }

        else
        {
          v17 = v71;
        }

        v72 = v89;
        if (v68)
        {
          PXAssertGetLog();
        }

        goto LABEL_139;
      }
    }

    else
    {
      v69 = v84;
      v70 = v90;
      if (v21)
      {
        if (v30 || v41 || v17 + v90 < v81)
        {
          v69 = v17 + v90;
        }

        else
        {
          v69 = v81;
        }

        v72 = v89;
        if (v68)
        {
          PXAssertGetLog();
        }

        goto LABEL_139;
      }
    }

    v72 = v89;
    if (v68)
    {
      v17 = MidY + v70 * -0.5;
      if (!v37)
      {
        PXAssertGetLog();
      }

      v69 = v70 + v17;
      if (!v41)
      {
        PXAssertGetLog();
      }
    }

    else
    {
      v73 = v78;
      if (v17 >= v78)
      {
        v73 = v17;
      }

      if (!v37)
      {
        v69 = v73 + v70;
        v17 = v73;
      }

      if (!v41)
      {
        if (v69 >= v81)
        {
          v69 = v81;
        }

        v17 = v69 - v70;
        if (!v37 && v17 < v78)
        {
          v17 = v78;
        }
      }
    }

    goto LABEL_139;
  }

  v72 = v89;
  v69 = v84;
LABEL_139:
  v74 = v69 - v17;
  if (!v85 && attributes->var6 != -INFINITY)
  {
    *buf = 0;
    [(PXViewLayoutHelper *)v53 _getFirstBaseline:buf lastBaseline:0 forView:v7 withSize:v69 - v17, v72];
    v64 = attributes->var6 - *buf;
  }

  if (!v86 && attributes->var7 != -INFINITY)
  {
    *buf = 0;
    [(PXViewLayoutHelper *)v53 _getFirstBaseline:0 lastBaseline:buf forView:v7 withSize:v69 - v17, v72];
    v75 = attributes->var7 - *buf;
    v104.origin.x = v17;
    v104.origin.y = y;
    v104.size.width = v74;
    v104.size.height = v72;
    v65 = v75 + CGRectGetHeight(v104);
  }

  [(PXViewLayoutHelper *)v53 _setOrientedFrame:v7 forView:v17, v64, v74, v65 - v64, *&v76];
LABEL_147:
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PXViewLayoutHelper;
  return [(PXViewLayoutHelper *)&v3 init];
}

- (PXViewLayoutHelper)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXViewLayoutHelper.m" lineNumber:132 description:{@"%s is not available as initializer", "-[PXViewLayoutHelper init]"}];

  abort();
}

+ (void)performLayoutWithinView:(id)view usingBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  if (performLayoutWithinView_usingBlock__reentryCount)
  {
    _init = [[PXViewLayoutHelper alloc] _init];
  }

  else
  {
    if (performLayoutWithinView_usingBlock__onceToken != -1)
    {
      dispatch_once(&performLayoutWithinView_usingBlock__onceToken, &__block_literal_global_39_106972);
    }

    _init = performLayoutWithinView_usingBlock__defaultHelper;
  }

  v7 = _init;
  ++performLayoutWithinView_usingBlock__reentryCount;
  [_init _setUpWithView:viewCopy];
  blockCopy[2](blockCopy, v7);
  [v7 _tearDown];
  --performLayoutWithinView_usingBlock__reentryCount;
}

void __57__PXViewLayoutHelper_performLayoutWithinView_usingBlock___block_invoke()
{
  v0 = [[PXViewLayoutHelper alloc] _init];
  v1 = performLayoutWithinView_usingBlock__defaultHelper;
  performLayoutWithinView_usingBlock__defaultHelper = v0;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    _userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];
  }
}

@end