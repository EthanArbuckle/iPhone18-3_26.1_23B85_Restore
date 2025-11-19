@interface UISnapshotView
- (CGPoint)_contentOffset;
- (CGRect)_contentsCenterForEdgePadding:(UIEdgeInsets)a3 withContentSize:(CGSize)a4;
- (CGRect)_snapshotRect;
- (CGSize)_contentSize;
- (UIEdgeInsets)_edgePadding;
- (UIEdgeInsets)edgeInsets;
- (UIEdgeInsets)edgePadding;
- (UISnapshotView)initWithFrame:(CGRect)a3;
- (void)_addEdgePaddingViewInRect:(CGRect)a3;
- (void)_drawEdges:(UIEdgeInsets)a3 withContentSize:(CGSize)a4;
- (void)_positionImageView;
- (void)_setContentOffset:(CGPoint)a3;
- (void)_updateContentsRect;
- (void)captureSnapshotOfView:(id)a3 withSnapshotType:(int)a4;
- (void)captureSnapshotRect:(CGRect)a3 fromView:(id)a4 withSnapshotType:(int)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setContentStretch:(CGRect)a3;
- (void)setEdgeAntialiasingEnabled:(BOOL)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setEdgePadding:(UIEdgeInsets)a3;
- (void)setFrame:(CGRect)a3;
- (void)setShadowView:(id)a3;
- (void)setVerticalStretchEnabled:(BOOL)a3;
@end

@implementation UISnapshotView

- (UISnapshotView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UISnapshotView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    [(UIView *)v3 bounds];
    v3->_imageView = [(UIView *)v4 initWithFrame:?];
    [(UISnapshotView *)v3 setEdgeAntialiasingEnabled:1];
    [(UIView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)dealloc
{
  [(UIView *)self->_imageView removeFromSuperview];

  self->_imageView = 0;
  [(UIView *)self->_shadowView removeFromSuperview];

  self->_shadowView = 0;
  self->_edgePaddingColor = 0;

  self->_edgePaddingViews = 0;
  v3.receiver = self;
  v3.super_class = UISnapshotView;
  [(UIView *)&v3 dealloc];
}

- (void)setEdgePadding:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_edgePadding.top), vceqq_f64(v4, *&self->_edgePadding.bottom)))) & 1) == 0)
  {
    self->_edgePadding = a3;
    [(UISnapshotView *)self _positionImageView];
  }
}

- (void)setEdgeAntialiasingEnabled:(BOOL)a3
{
  v3 = *(self + 600);
  if ((v3 & 1) == a3)
  {
    *(self + 600) = v3 & 0xFE | !a3;
    [(UISnapshotView *)self _positionImageView];
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_edgeInsets.top), vceqq_f64(v4, *&self->_edgeInsets.bottom)))) & 1) == 0)
  {
    self->_edgeInsets = a3;
    [(UISnapshotView *)self _positionImageView];
  }
}

- (void)_setContentOffset:(CGPoint)a3
{
  if (a3.x != self->_contentOffset.x || a3.y != self->_contentOffset.y)
  {
    self->_contentOffset = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setVerticalStretchEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  *(self + 600) = *(self + 600) & 0xFD | v4;
  [(UIView *)self setNeedsLayout];

  [(UIView *)self layoutIfNeeded];
}

- (CGRect)_snapshotRect
{
  x = self->_snapshotRect.origin.x;
  y = self->_snapshotRect.origin.y;
  width = self->_snapshotRect.size.width;
  height = self->_snapshotRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setShadowView:(id)a3
{
  shadowView = self->_shadowView;
  if (shadowView != a3)
  {
    [(UIView *)shadowView removeFromSuperview];

    v6 = a3;
    self->_shadowView = v6;
    if (v6)
    {

      [(UIView *)self addSubview:v6];
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UISnapshotView;
  [(UIView *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UIView *)self setNeedsLayout];
    [(UIView *)self layoutBelowIfNeeded];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UISnapshotView;
  [(UIView *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UIView *)self setNeedsLayout];
    [(UIView *)self layoutBelowIfNeeded];
  }
}

- (void)setContentStretch:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = UISnapshotView;
  [(UIView *)&v8 setContentStretch:?];
  [(CALayer *)[(UIView *)self->_imageView layer] setContentsCenter:x, y, width, height];
}

- (void)_positionImageView
{
  [(UIView *)self setNeedsLayout];

  [(UIView *)self layoutBelowIfNeeded];
}

- (void)_updateContentsRect
{
  p_snapshotRect = &self->_snapshotRect;
  if (CGRectIsEmpty(self->_snapshotRect))
  {
    width = self->_contentSize.width;
    v32 = 1.0;
    v34 = 1.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    width = self->_contentSize.width;
    v5 = p_snapshotRect->origin.x / width;
    v6 = 0.0;
    v32 = 1.0;
    v34 = p_snapshotRect->size.width / width;
  }

  height = self->_contentSize.height;
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  [(UIView *)self->_imageView bounds:*&v32];
  v13 = *&self->_edgeInsets.top;
  v14 = self->_contentSize.width;
  v15 = self->_contentSize.height;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v13), vceqzq_f64(*&self->_edgeInsets.bottom))))))
  {
    v16 = 1.0 / v14;
    v5 = vmuld_lane_f64(v16, v13, 1);
    v17 = 1.0 / v15;
    v6 = 1.0 / v15 * v13.f64[0];
    v18 = (width - left - right) * v16;
    v19 = (height - top - bottom) * (1.0 / v15);
  }

  else
  {
    v17 = 1.0 / v15;
    v16 = 1.0 / v14;
    v19 = v33;
    v18 = v35;
  }

  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  v22 = y * v17;
  v23 = v12 < v15;
  if (y <= 0.0)
  {
    v24 = y * v17;
  }

  else
  {
    v24 = -(y * v17);
  }

  v25 = v19 + v24;
  v26 = v12 * v17;
  if (y <= 0.0)
  {
    v6 = v6 - v22;
  }

  if ((*&v23 & (*(self + 600) >> 1)) != 0)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  v28 = x * v16;
  if (x <= 0.0)
  {
    v5 = v5 - x * v16;
  }

  v29 = -(x * v16);
  if (x <= 0.0)
  {
    v29 = v28;
  }

  v30 = v18 + v29;
  v31 = [(UIView *)self->_imageView layer];

  [(CALayer *)v31 setContentsRect:v5, v6, v30, v27];
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = UISnapshotView;
  [(UIView *)&v29 layoutSubviews];
  height = self->_contentSize.height;
  top = self->_edgeInsets.top;
  bottom = self->_edgeInsets.bottom;
  y = self->_contentOffset.y;
  [(UISnapshotView *)self _edgePadding];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UIView *)self bounds];
  left = self->_edgeInsets.left;
  v17 = self->_contentBeyondBounds.left;
  x = self->_contentOffset.x;
  v20 = self->_contentOffset.y;
  v21 = self->_contentBeyondBounds.bottom + self->_contentBeyondBounds.top + v12 + v8 + v18 - self->_edgeInsets.top - self->_edgeInsets.bottom - v20;
  v22 = -v20;
  if (v20 <= 0.0)
  {
    v22 = self->_contentOffset.y;
  }

  v23 = v22 + v21;
  if ((*(self + 600) & 2) != 0 && v23 > self->_contentSize.height)
  {
    v23 = height - top - bottom - fabs(y);
  }

  v24 = self->_edgeInsets.top - v8 - self->_contentBeyondBounds.top;
  if (v20 > 0.0)
  {
    v24 = v24 + v20;
  }

  v25 = self->_contentBeyondBounds.right + v17 + v14 + v10 + v15 - left - self->_edgeInsets.right;
  v26 = -x;
  if (x <= 0.0)
  {
    v26 = self->_contentOffset.x;
  }

  v27 = v25 + v26;
  v28 = left - v10 - v17;
  if (x > 0.0)
  {
    v28 = v28 + x;
  }

  [(UIView *)self->_imageView setFrame:v28, v24, v27, v23];
  [(UISnapshotView *)self _updateContentsRect];
}

- (UIEdgeInsets)_edgePadding
{
  top = self->_edgePadding.top;
  if (*(self + 600))
  {
    v8 = *&self->_edgePadding.left;
    right = self->_edgePadding.right;
  }

  else
  {
    top = top + 1.0;
    __asm { FMOV            V3.2D, #1.0 }

    v8 = vaddq_f64(*&self->_edgePadding.left, _Q3);
    right = self->_edgePadding.right + 1.0;
  }

  v10 = v8.f64[1];
  result.left = v8.f64[0];
  result.right = right;
  result.bottom = v10;
  result.top = top;
  return result;
}

- (void)_drawEdges:(UIEdgeInsets)a3 withContentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (*(self + 600))
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  [(UIColor *)self->_edgePaddingColor set];
  v12 = left + width;
  v13 = v11 + v11;
  if (top - v11 > 0.0)
  {
    UIRectFillUsingOperation(1, v11, v11, right + v12 - v13, top - v11);
  }

  v14 = top + height;
  if (left - v11 > 0.0)
  {
    UIRectFillUsingOperation(1, v11, v11, left - v11, bottom + v14 - v13);
  }

  if (bottom - v11 > 0.0)
  {
    UIRectFillUsingOperation(1, v11, v14, right + v12 - v13, bottom - v11);
  }

  if (right - v11 > 0.0)
  {
    UIRectFillUsingOperation(1, v12, v11, right - v11, bottom + v14 - v13);
  }

  if ((*(self + 600) & 1) == 0)
  {
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    v17 = right + v12;
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.height = 1.0;
    v24.size.width = v17;
    CGContextClearRect(v16, v24);
    v18 = bottom + v14;
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = 1.0;
    v25.size.height = v18;
    CGContextClearRect(v16, v25);
    v26.origin.y = v18 + -1.0;
    v26.origin.x = 0.0;
    v26.size.height = 1.0;
    v26.size.width = v17;
    CGContextClearRect(v16, v26);
    v20 = 0;
    v21 = 1.0;
    v22 = v18;

    v19 = v17 + -1.0;
    CGContextClearRect(v16, *(&v20 - 1));
  }
}

- (CGRect)_contentsCenterForEdgePadding:(UIEdgeInsets)a3 withContentSize:(CGSize)a4
{
  v4 = a3.left / a4.width;
  v5 = a3.top / a4.height;
  v6 = (a4.width - a3.left - a3.right) / a4.width;
  v7 = (a4.height - a3.top - a3.bottom) / a4.height;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v7;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_addEdgePaddingViewInRect:(CGRect)a3
{
  v4 = [[UIView alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)v4 setBackgroundColor:self->_edgePaddingColor];
  [(NSMutableArray *)self->_edgePaddingViews addObject:v4];
  [(UIView *)self->_imageView addSubview:v4];
}

- (void)captureSnapshotRect:(CGRect)a3 fromView:(id)a4 withSnapshotType:(int)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = +[UIView areAnimationsEnabled];
  [a4 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  self->_contentBeyondBounds.top = fmax(v15 - y, 0.0);
  self->_contentBeyondBounds.left = fmax(v13 - x, 0.0);
  self->_contentBeyondBounds.bottom = fmax(y + height - (v15 + v19), 0.0);
  self->_contentBeyondBounds.right = fmax(x + width - (v13 + v17), 0.0);
  [(UISnapshotView *)self _edgePadding];
  v79 = v22;
  rect = v21;
  v76 = v23;
  v78 = v24;
  v25 = [objc_msgSend(a4 "window")];
  v26 = a4;
  if (v25)
  {
    v26 = [a4 window];
  }

  [v26 _currentScreenScale];
  v77 = v27;
  [UIView setAnimationsEnabled:0];
  [(NSMutableArray *)self->_edgePaddingViews makeObjectsPerformSelector:sel_removeFromSuperview];
  [(NSMutableArray *)self->_edgePaddingViews removeAllObjects];
  if (a5 == 2)
  {
    if (*(self + 600))
    {
      v28 = 0.0;
    }

    else
    {
      v28 = 1.0;
    }

    [(UISnapshotView *)self _edgePadding];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [(UIView *)self->_imageView addSubview:a4];
    [a4 setFrame:{v32, v30, width, height}];
    v37 = width + v32;
    v38 = v28 + v28;
    if (self->_edgePadding.top != 0.0)
    {
      [(UISnapshotView *)self _addEdgePaddingViewInRect:v28, v28, v36 + v37 - v38, v30 - v28];
    }

    v39 = height + v30;
    if (self->_edgePadding.left != 0.0)
    {
      [(UISnapshotView *)self _addEdgePaddingViewInRect:v28, v28, v32 - v28, v34 + v39 - v38];
    }

    if (self->_edgePadding.bottom != 0.0)
    {
      [(UISnapshotView *)self _addEdgePaddingViewInRect:v28, v39, v36 + v37 - v38, v34 - v28];
    }

    if (self->_edgePadding.right != 0.0)
    {
      [(UISnapshotView *)self _addEdgePaddingViewInRect:v37, v28, v36 - v28, v34 + v39 - v38];
    }

    v40 = 1.0;
    _UIGraphicsBeginImageContextWithOptions(0, 0, 1.0, 1.0, 1.0);
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    v52 = 0.0;
    v82.origin.x = 0.0;
    v82.origin.y = 0.0;
    v82.size.width = 1.0;
    v82.size.height = 1.0;
    CGContextClearRect(v42, v82);
    v43 = [_UIGraphicsGetImageFromCurrentImageContext(0) CGImage];
    UIGraphicsEndImageContext();
    self->_contentSize = *MEMORY[0x1E695F060];
    v53 = 0.0;
    v54 = 1.0;
    v55 = 1.0;
  }

  else if (a5 == 1)
  {
    v43 = [(UIView *)a4 _createRenderingBufferFromRect:x padding:y gamut:width, height, rect, v76, v78, v79];
    v44 = IOSurfaceGetWidth(v43);
    v45 = IOSurfaceGetHeight(v43);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_edgePadding.top), vceqzq_f64(*&self->_edgePadding.bottom))))) & 1) != 0 || (*(self + 600) & 1) == 0 && (v83.origin.x = v14, v83.origin.y = v16, v83.size.width = v18, v83.size.height = v20, v85.origin.x = x, v85.origin.y = y, v85.size.width = width, v85.size.height = height, !CGRectEqualToRect(v83, v85)))
    {
      IOSurfaceLock(v43, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v43);
      BytesPerRow = IOSurfaceGetBytesPerRow(v43);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      if ([+[UIDevice _supportsDeepColor] currentDevice]
      {
        v49 = CGIOSurfaceContextCreate();
      }

      else
      {
        v49 = CGBitmapContextCreate(BaseAddress, v44, v45, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
      }

      v69 = v49;
      CGColorSpaceRelease(DeviceRGB);
      if (v69)
      {
        CGContextTranslateCTM(v69, 0.0, v45);
        CGContextScaleCTM(v69, v77, -v77);
        CGAffineTransformMakeScale(&v81, v77, -v77);
        CGContextSetBaseCTM();
        UIGraphicsPushContext(v69);
        [(UISnapshotView *)self _drawEdges:rect withContentSize:v76, v78, v79, width, height];
        v70 = GetContextStack(0);
        PopContextFromStack(v70);
        CGContextRelease(v69);
      }

      IOSurfaceUnlock(v43, 0, 0);
    }

    v55 = v77;
    self->_contentSize.width = v44 / v77;
    self->_contentSize.height = v45 / v77;
    [(UISnapshotView *)self _contentsCenterForEdgePadding:rect withContentSize:v76, v78, v79];
    v52 = v71;
    v53 = v72;
    v54 = v73;
    v40 = v74;
  }

  else
  {
    _UIGraphicsBeginImageContextWithOptions(0, 0, v79 + width + v76, v78 + height + rect, v77);
    [(UISnapshotView *)self _drawEdges:rect withContentSize:v76, v78, v79, width, height];
    v50 = GetContextStack(0);
    if (*v50 < 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = v50[3 * (*v50 - 1) + 1];
    }

    v84.origin.x = v76;
    v84.origin.y = rect;
    v84.size.width = width;
    v84.size.height = height;
    CGContextClipToRect(v51, v84);
    v56 = GetContextStack(0);
    v55 = v77;
    if (*v56 < 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = v56[3 * (*v56 - 1) + 1];
    }

    CGContextTranslateCTM(v57, -x, -y);
    v58 = GetContextStack(0);
    if (*v58 < 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = v58[3 * (*v58 - 1) + 1];
    }

    CGContextTranslateCTM(v59, v76, rect);
    v60 = [a4 layer];
    v61 = GetContextStack(0);
    if (*v61 < 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = v61[3 * (*v61 - 1) + 1];
    }

    [v60 renderInContext:v62];
    v43 = [_UIGraphicsGetImageFromCurrentImageContext(0) CGImage];
    v63 = CGImageGetWidth(v43) / v77;
    v64 = CGImageGetHeight(v43);
    self->_contentSize.width = v63;
    self->_contentSize.height = v64 / v77;
    [(UISnapshotView *)self _contentsCenterForEdgePadding:rect withContentSize:v76, v78, v79, v63];
    v52 = v65;
    v53 = v66;
    v54 = v67;
    v40 = v68;
    UIGraphicsEndImageContext();
  }

  v75 = a5 == 2;
  [(CALayer *)[(UIView *)self->_imageView layer] setContents:v43];
  [(CALayer *)[(UIView *)self->_imageView layer] setContentsCenter:v52, v53, v54, v40];
  [(UIView *)self->_imageView setContentScaleFactor:v55];
  [(UIView *)self layoutBelowIfNeeded];
  [(UISnapshotView *)self _updateContentsRect];
  [(CALayer *)[(UIView *)self->_imageView layer] setShouldRasterize:v75];
  [(CALayer *)[(UIView *)self->_imageView layer] setFrozen:v75];

  [UIView setAnimationsEnabled:v12];
}

- (void)captureSnapshotOfView:(id)a3 withSnapshotType:(int)a4
{
  v4 = *&a4;
  [a3 bounds];

  [(UISnapshotView *)self captureSnapshotRect:a3 fromView:v4 withSnapshotType:?];
}

- (UIEdgeInsets)edgePadding
{
  top = self->_edgePadding.top;
  left = self->_edgePadding.left;
  bottom = self->_edgePadding.bottom;
  right = self->_edgePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)_contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)_contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end