@interface _UIHighlightView
- (_UIHighlightView)initWithFrame:(CGRect)a3;
- (void)cleanUp;
- (void)drawRect:(CGRect)a3;
- (void)setColor:(id)a3;
- (void)setCornerRadii:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setFrames:(id)a3 boundaryRect:(CGRect)a4;
- (void)setQuads:(id)a3 boundaryRect:(CGRect)a4;
@end

@implementation _UIHighlightView

- (_UIHighlightView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UIHighlightView;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setNeedsDisplayOnBoundsChange:1];
    color = v4->_color;
    v4->_color = 0;
  }

  return v4;
}

- (void)cleanUp
{
  innerBounds = self->_innerBounds;
  self->_innerBounds = 0;

  innerQuads = self->_innerQuads;
  self->_innerQuads = 0;
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (self->_color != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_color, a3);
    v5 = v6;
  }
}

- (void)setCornerRadii:(id)a3
{
  v5 = a3;
  if (self->_cornerRadii != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cornerRadii, a3);
    v5 = v6;
  }
}

- (void)setFrames:(id)a3 boundaryRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v63 = *MEMORY[0x1E69E9840];
  v9 = a3;
  [(_UIHighlightView *)self cleanUp];
  if (v9 && [v9 count])
  {
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    [(_UIHighlightView *)self setFrame:*MEMORY[0x1E695F058], v11, v12, v13];
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v58;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v58 != v18)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v57 + 1) + 8 * i) rectValue];
        v24 = v20;
        v25 = v21;
        v26 = v22;
        v27 = v23;
        if (v17)
        {
          v64.origin.x = v10;
          v64.origin.y = v11;
          v64.size.width = v12;
          v64.size.height = v13;
          v28 = v24;
          v65 = CGRectUnion(v64, *(&v25 - 1));
        }

        else
        {
          v65 = CGRectInset(*&v20, -self->_cornerRadius, -self->_cornerRadius);
        }

        v10 = v65.origin.x;
        v11 = v65.origin.y;
        v12 = v65.size.width;
        v13 = v65.size.height;
        v17 = 1;
      }

      v16 = [v14 countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v16);
  }

  if (self->_invertHighlight)
  {
    v29 = height;
  }

  else
  {
    v29 = v13;
  }

  if (self->_invertHighlight)
  {
    v30 = width;
  }

  else
  {
    v30 = v12;
  }

  *&v52[16] = v30;
  *&v52[24] = v29;
  if (self->_invertHighlight)
  {
    v31 = y;
  }

  else
  {
    v31 = v11;
  }

  if (self->_invertHighlight)
  {
    v32 = x;
  }

  else
  {
    v32 = v10;
  }

  *v52 = v32;
  *&v52[8] = v31;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  innerBounds = self->_innerBounds;
  self->_innerBounds = v33;

  v55 = 0u;
  v56 = 0u;
  *&rect[3] = 0u;
  v54 = 0u;
  v35 = v14;
  v36 = [v35 countByEnumeratingWithState:&rect[3] objects:v61 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v54;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v54 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = self->_innerBounds;
        v41 = MEMORY[0x1E696B098];
        [*(rect[4] + 8 * j) rectValue];
        rect[0] = v42;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v49 = -CGRectGetMinX(*v52);
        v50 = -CGRectGetMinY(*v52);
        *&v66.origin.x = rect[0];
        v66.origin.y = v44;
        v66.size.width = v46;
        v66.size.height = v48;
        v67 = CGRectOffset(v66, v49, v50);
        v51 = [v41 valueWithCGRect:{v67.origin.x, v67.origin.y, v67.size.width, v67.size.height}];
        [(NSMutableArray *)v40 addObject:v51];
      }

      v37 = [v35 countByEnumeratingWithState:&rect[3] objects:v61 count:16];
    }

    while (v37);
  }

  rect[1] = self;
  rect[2] = _UIHighlightView;
  objc_msgSendSuper2(&rect[1], sel_setFrame_, *v52, *&v52[8], *&v52[16], *&v52[24]);
  if ([(UIView *)self needsDisplayOnBoundsChange])
  {
    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setQuads:(id)a3 boundaryRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  [(_UIHighlightView *)self cleanUp];
  if (!v9 || ![v9 count])
  {
    [(_UIHighlightView *)self setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v45;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v44 + 1) + 8 * i) CGPointValue];
        if (v13)
        {
          v22 = v15;
        }

        else
        {
          v22 = v21;
        }

        if (v13)
        {
          v23 = v16;
        }

        else
        {
          v23 = v21;
        }

        if (v13)
        {
          v24 = v17;
        }

        else
        {
          v24 = v20;
        }

        if (v13)
        {
          v25 = v18;
        }

        else
        {
          v25 = v20;
        }

        if (v20 >= v25)
        {
          v18 = v20;
        }

        else
        {
          v18 = v25;
        }

        if (v20 >= v24)
        {
          v17 = v24;
        }

        else
        {
          v17 = v20;
        }

        if (v21 >= v23)
        {
          v16 = v21;
        }

        else
        {
          v16 = v23;
        }

        if (v21 >= v22)
        {
          v15 = v22;
        }

        else
        {
          v15 = v21;
        }

        v13 = 1;
      }

      v12 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v12);
  }

  else
  {
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
  }

  if (!self->_invertHighlight)
  {
    v51.size.width = v18 - v17;
    v51.size.height = v16 - v15;
    v51.origin.x = v17;
    v51.origin.y = v15;
    v52 = CGRectInset(v51, self->_cornerRadius * -4.0, self->_cornerRadius * -4.0);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v53 = CGRectIntersection(v52, v56);
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
  }

  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  MinX = CGRectGetMinX(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  MinY = CGRectGetMinY(v55);
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  innerQuads = self->_innerQuads;
  self->_innerQuads = v28;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = v10;
  v31 = [v30 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v41;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v40 + 1) + 8 * j) CGPointValue];
        v37 = self->_innerQuads;
        v38 = [MEMORY[0x1E696B098] valueWithCGPoint:{v35 - MinX, v36 - MinY}];
        [(NSMutableArray *)v37 addObject:v38];
      }

      v32 = [v30 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v32);
  }

  v39.receiver = self;
  v39.super_class = _UIHighlightView;
  [(UIView *)&v39 setFrame:x, y, width, height];
  if ([(UIView *)self needsDisplayOnBoundsChange])
  {
    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_UIHighlightView *)self cleanUp];
  v8.receiver = self;
  v8.super_class = _UIHighlightView;
  [(UIView *)&v8 setFrame:x, y, width, height];
}

- (void)drawRect:(CGRect)a3
{
  v89 = *MEMORY[0x1E69E9840];
  if (self->_innerBounds || self->_innerQuads)
  {
    if (self->_invertHighlight)
    {
      v4 = [UIBezierPath bezierPath:a3.origin.x];
      [(UIView *)self bounds];
      [v4 appendBezierPathWithRect:?];
      v5 = [UIColor colorWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:0.3];
      [v5 set];

      [v4 fill];
    }

    v6 = +[UIBezierPath bezierPath];
    innerBounds = self->_innerBounds;
    if (innerBounds)
    {
      if ([(NSMutableArray *)innerBounds count]< 2)
      {
LABEL_24:
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v45 = self->_innerBounds;
        v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v79 objects:v87 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v80;
          do
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v80 != v48)
              {
                objc_enumerationMutation(v45);
              }

              [*(*(&v79 + 1) + 8 * i) rectValue];
              v50 = [UIBezierPath roundedRectBezierPath:-1 withRoundedCorners:self->_cornerRadii withCornerRadii:?];
              [v6 appendBezierPath:v50];
            }

            v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v79 objects:v87 count:16];
          }

          while (v47);
        }
      }

      else
      {
        v8 = self->_cornerRadii;
        v9 = [(NSArray *)v8 firstObject];
        [v9 CGSizeValue];
        v11 = v10;

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v12 = v8;
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v83 objects:v88 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v84;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v84 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v83 + 1) + 8 * j) CGSizeValue];
              if (v18 != v11 || v17 != v11)
              {

                goto LABEL_24;
              }
            }

            v14 = [(NSArray *)v12 countByEnumeratingWithState:&v83 objects:v88 count:16];
          }

          while (v14);
        }

        PathWithShrinkWrappedRects = WebKitCreatePathWithShrinkWrappedRects();
        v21 = [UIBezierPath bezierPathWithCGPath:PathWithShrinkWrappedRects];
        [v6 appendBezierPath:v21];

        CGPathRelease(PathWithShrinkWrappedRects);
      }
    }

    else
    {
      v22 = [(NSMutableArray *)self->_innerQuads objectEnumerator];
      v23 = [v22 nextObject];
      if (v23)
      {
        v24 = v23;
        do
        {
          [v24 CGPointValue];
          v26 = v25;
          v28 = v27;
          v29 = [v22 nextObject];

          [v29 CGPointValue];
          v31 = v30;
          v33 = v32;
          v34 = [v22 nextObject];

          [v34 CGPointValue];
          v36 = v35;
          v38 = v37;
          v39 = [v22 nextObject];

          [v39 CGPointValue];
          v41 = v40;
          v43 = v42;
          v44 = +[UIBezierPath bezierPath];
          [v44 moveToPoint:{v26, v28}];
          [v44 lineToPoint:{v31, v33}];
          [v44 lineToPoint:{v36, v38}];
          [v44 lineToPoint:{v41, v43}];
          [v44 closePath];
          [v6 appendBezierPath:v44];

          v24 = [v22 nextObject];
        }

        while (v24);
      }
    }

    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v52 = 0;
    }

    else
    {
      v52 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSaveGState(v52);
    if (self->_innerQuads)
    {
      CGContextSetLineWidth(v52, self->_cornerRadius * 4.0);
    }

    CGContextSetLineJoin(v52, kCGLineJoinRound);
    if (self->_invertHighlight)
    {
      v53 = +[UIColor clearColor];
      [v53 set];

      CGContextSetBlendMode(v52, kCGBlendModeClear);
      v54 = *MEMORY[0x1E695EFF8];
      v55 = *(MEMORY[0x1E695EFF8] + 8);
      v56 = [(UIView *)self _screen];
      [v56 bounds];
      v58 = v57;
      v60 = v59;

      v61 = [(UIView *)self window];
      v62 = __UIStatusBarManagerForWindow(v61);
      [v62 statusBarHeight];
      v64 = v63;

      v65 = [(UIView *)self window];
      v66 = [v65 windowScene];
      v67 = [v66 _interfaceOrientation];

      v68 = v58 - v64;
      v69 = v54 + v64;
      if (v67 == 4)
      {
        v70 = v58 - v64;
      }

      else
      {
        v70 = v58;
      }

      if (v67 != 4)
      {
        v69 = v54;
      }

      if (v67 == 3)
      {
        v71 = v54;
      }

      else
      {
        v68 = v70;
        v71 = v69;
      }

      v72 = v55 + v64;
      if (v67 == 2)
      {
        v73 = v60 - v64;
      }

      else
      {
        v73 = v60;
      }

      if (v67 == 1)
      {
        v73 = v60 - v64;
      }

      else
      {
        v72 = v55;
      }

      if (v67 <= 2)
      {
        v74 = v58;
      }

      else
      {
        v74 = v68;
      }

      if (v67 <= 2)
      {
        v75 = v54;
      }

      else
      {
        v73 = v60;
        v72 = v55;
        v75 = v71;
      }

      v91 = CGRectIntersection(*(&v72 - 1), self->_invertedHighlightClipRect);
      CGContextClipToRect(v52, v91);
      CGContextAddPath(v52, [v6 _pathRef]);
      CGContextDrawPath(v52, kCGPathFillStroke);
    }

    else
    {
      Alpha = CGColorGetAlpha([(UIColor *)self->_color CGColor]);
      v77 = [(UIColor *)self->_color colorWithAlphaComponent:1.0];
      [v77 set];

      CGContextSetAlpha(v52, Alpha);
      CGContextBeginTransparencyLayer(v52, 0);
      CGContextAddPath(v52, [v6 _pathRef]);
      CGContextDrawPath(v52, kCGPathFillStroke);
      CGContextEndTransparencyLayer(v52);
    }

    CGContextRestoreGState(v52);
  }

  else
  {
    [(UIColor *)self->_color set:a3.origin.x];
    [(UIView *)self bounds];
    v78 = [UIBezierPath roundedRectBezierPath:"roundedRectBezierPath:withRoundedCorners:withCornerRadius:" withRoundedCorners:-1 withCornerRadius:?];
    [v78 fill];
  }
}

@end