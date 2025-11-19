@interface SUTableCellContentView
- (id)_clipPath;
- (id)_clippedImageForImage:(id)a3;
- (void)_reloadSubviewAlphasAnimated:(BOOL)a3;
- (void)_reloadSubviewsForConfiguration;
- (void)_removeSubviewsForConfiguration;
- (void)_startUsingSubviewLayout;
- (void)_stopUsingSubviewLayout;
- (void)_updateDisabledStyleForSubviews;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)reloadView;
- (void)setClipCorners:(int)a3;
- (void)setConfiguration:(id)a3;
- (void)setDeleteConfirmationVisisble:(BOOL)a3;
- (void)setDrawAsDisabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlightsOnlyContentView:(BOOL)a3;
- (void)setUsesSubviews:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation SUTableCellContentView

- (void)dealloc
{
  self->_clipPath = 0;
  if ([(SUCellConfiguration *)self->_configuration view]== self)
  {
    [(SUCellConfiguration *)self->_configuration setView:0];
  }

  self->_configuration = 0;
  self->_overlayView = 0;

  self->_subviews = 0;
  v3.receiver = self;
  v3.super_class = SUTableCellContentView;
  [(SUTableCellContentView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)a3
{
  v52[3] = *MEMORY[0x1E69E9840];
  [(SUTableCellContentView *)self bounds:a3.origin.x];
  v5 = v4;
  [(SUCellConfiguration *)self->_configuration setLayoutSize:v6, v7];
  v8 = [(SUTableCellContentView *)self isHighlighted]& 0xFFFFFFF9 | (2 * (*(self + 432) & 1)) & 0xFB | (4 * (*(self + 456) & 1));
  if (self->_clipCorners)
  {
    c = UIGraphicsGetCurrentContext();
    CGContextSaveGState(c);
    [-[SUTableCellContentView _clipPath](self "_clipPath")];
    if (*(self + 456))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  c = 0;
  if ((*(self + 456) & 1) == 0)
  {
LABEL_3:
    [(SUCellConfiguration *)self->_configuration drawBackgroundWithModifiers:v8];
  }

LABEL_4:
  [(SUCellConfiguration *)self->_configuration drawWithModifiers:v8];
  if ((*(self + 456) & 1) == 0)
  {
    v9 = [(SUCellConfiguration *)self->_configuration numberOfLabels];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v48 = *MEMORY[0x1E69DB648];
      v47 = *MEMORY[0x1E69DB688];
      v12 = *MEMORY[0x1E69DB650];
      do
      {
        v13 = [(SUCellConfiguration *)self->_configuration stringForLabelAtIndex:v11];
        if ([v13 length])
        {
          [(SUCellConfiguration *)self->_configuration frameForLabelAtIndex:v11];
          v18 = v17;
          if (v15 > 0.00000011920929)
          {
            v19 = v14;
            v20 = v15;
            v21 = v16;
            v22 = [(SUCellConfiguration *)self->_configuration fontForLabelAtIndex:v11];
            v23 = [(SUCellConfiguration *)self->_configuration textAlignmentForLabelAtIndex:v11];
            v24 = v5 + v18;
            v50 = 0;
            *v49 = *MEMORY[0x1E695F060];
            if ([(SUCellConfiguration *)self->_configuration getShadowColor:&v50 offset:v49 forLabelAtIndex:v11 withModifiers:v8])
            {
              v25 = v24 + v49[0];
              v26 = v19 + v49[1];
              [v50 set];
              [v13 _legacy_drawInRect:v22 withFont:4 lineBreakMode:v23 alignment:{v25, v26, v20, v21}];
              v24 = v25 - v49[0];
              v19 = v26 - v49[1];
            }

            v27 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
            [v27 setLineBreakMode:4];
            [v27 setAlignment:v23];
            v51[0] = v48;
            v51[1] = v47;
            v52[0] = v22;
            v52[1] = v27;
            v51[2] = v12;
            v52[2] = [(SUCellConfiguration *)self->_configuration colorForLabelAtIndex:v11 withModifiers:v8];
            [v13 drawInRect:objc_msgSend(MEMORY[0x1E695DF20] withAttributes:{"dictionaryWithObjects:forKeys:count:", v52, v51, 3), v24, v19, v20, v21 + 5.0}];
          }
        }

        ++v11;
      }

      while (v10 != v11);
    }

    v28 = *(self + 432);
    v29 = [(SUCellConfiguration *)self->_configuration numberOfImages];
    if (v29)
    {
      v30 = v29;
      v31 = 0;
      v32 = *MEMORY[0x1E695F060];
      v33 = *(MEMORY[0x1E695F060] + 8);
      if (v28)
      {
        v34 = 0.330000013;
      }

      else
      {
        v34 = 1.0;
      }

      do
      {
        v35 = [(SUCellConfiguration *)self->_configuration imageAtIndex:v31 withModifiers:v8];
        if (v35)
        {
          v36 = v35;
          [(SUCellConfiguration *)self->_configuration frameForImageAtIndex:v31];
          v40 = v39;
          v42 = v41;
          if (v37 == v32 && v38 == v33)
          {
            [v36 size];
            v37 = v44;
            v38 = v45;
          }

          [v36 drawInRect:0 blendMode:v40 alpha:{v42, v37, v38, v34}];
        }

        ++v31;
      }

      while (v30 != v31);
    }
  }

  if (c)
  {
    CGContextRestoreGState(c);
  }
}

- (void)layoutSubviews
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(self + 456))
  {
    [(SUTableCellContentView *)self bounds];
    v4 = v3;
    [(SUCellConfiguration *)self->_configuration setLayoutSize:v5, v6];
    v7 = [(SUCellConfiguration *)self->_configuration numberOfImages];
    v8 = [(SUCellConfiguration *)self->_configuration numberOfLabels];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    subviews = self->_subviews;
    v10 = [(NSMutableArray *)subviews countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      v13 = *MEMORY[0x1E695F058];
      v14 = *(MEMORY[0x1E695F058] + 8);
      v15 = *(MEMORY[0x1E695F058] + 16);
      v16 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(subviews);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v18 tag];
          if (v19 < 51000)
          {
            v24 = v19 < 50000 || v19 - 50000 >= v8;
            v20 = v16;
            v21 = v15;
            v22 = v14;
            v23 = v13;
            if (!v24)
            {
              [(SUCellConfiguration *)self->_configuration frameForLabelAtIndex:v13, v14, v15, v16];
            }
          }

          else
          {
            v20 = v16;
            v21 = v15;
            v22 = v14;
            v23 = v13;
            if (v19 - 51000 < v7)
            {
              [(SUCellConfiguration *)self->_configuration frameForImageAtIndex:v13, v14, v15, v16];
            }
          }

          [v18 setFrame:{v4 + v23, v22, v21, v20}];
        }

        v11 = [(NSMutableArray *)subviews countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }
  }

  v25.receiver = self;
  v25.super_class = SUTableCellContentView;
  [(SUTableCellContentView *)&v25 layoutSubviews];
}

- (void)reloadView
{
  if (*(self + 456))
  {
    [(SUTableCellContentView *)self _reloadSubviewsForConfiguration];
  }

  else
  {
    [(SUTableCellContentView *)self setNeedsDisplay];
  }
}

- (void)setClipCorners:(int)a3
{
  if (self->_clipCorners != a3)
  {
    self->_clipCorners = a3;

    self->_clipPath = 0;
    if ((*(self + 456) & 1) == 0)
    {

      [(SUTableCellContentView *)self setNeedsDisplay];
    }
  }
}

- (void)setConfiguration:(id)a3
{
  configuration = self->_configuration;
  if (configuration == a3)
  {
    if (![(SUCellConfiguration *)configuration needsDisplay])
    {
      return;
    }
  }

  else
  {
    if ([(SUCellConfiguration *)configuration view]== self)
    {
      [(SUCellConfiguration *)self->_configuration setView:0];
    }

    v6 = a3;
    self->_configuration = v6;
    [(SUCellConfiguration *)v6 setView:self];
    if (![(SUCellConfiguration *)self->_configuration needsDisplay])
    {
      goto LABEL_8;
    }
  }

  [(SUCellConfiguration *)self->_configuration setNeedsDisplay:0];
  [(SUCellConfiguration *)self->_configuration reloadData];
LABEL_8:

  [(SUTableCellContentView *)self reloadView];
}

- (void)setDeleteConfirmationVisisble:(BOOL)a3
{
  v3 = a3;
  if ([(SUCellConfiguration *)self->_configuration isDeleteConfirmationVisible]!= a3)
  {
    [(SUCellConfiguration *)self->_configuration setIsDeleteConfirmationVisible:v3];

    [(SUTableCellContentView *)self _reloadSubviewAlphasAnimated:0];
  }
}

- (void)setDrawAsDisabled:(BOOL)a3
{
  v3 = *(self + 432);
  if ((v3 & 1) != a3)
  {
    *(self + 432) = v3 & 0xFE | a3;
    if (*(self + 456))
    {
      [(SUTableCellContentView *)self _updateDisabledStyleForSubviews];
    }

    else
    {
      [(SUTableCellContentView *)self setNeedsDisplay];
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SUTableCellContentView *)self frame];
  if (v9 != width || v8 != height)
  {
    if ((*(self + 456) & 1) == 0)
    {
      [(SUTableCellContentView *)self setNeedsDisplay];
    }

    self->_clipPath = 0;
  }

  v11.receiver = self;
  v11.super_class = SUTableCellContentView;
  [(SUTableCellContentView *)&v11 setFrame:x, y, width, height];
}

- (void)setHighlightsOnlyContentView:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 432) = *(self + 432) & 0xFB | v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = *(self + 432);
  if (((((v3 & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(self + 432) = v3 & 0xFD | v4;
    if ((*(self + 456) & 1) == 0)
    {
      [(SUTableCellContentView *)self setNeedsDisplay];
    }
  }
}

- (void)setUsesSubviews:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopUsingSubviewLayout object:0];
  if (v5)
  {

    [(SUTableCellContentView *)self _startUsingSubviewLayout];
  }

  else if (a4)
  {
    [(SUTableCellContentView *)self setDeleteConfirmationVisisble:0];

    [(SUTableCellContentView *)self performSelector:sel__stopUsingSubviewLayout withObject:0 afterDelay:0.4];
  }

  else
  {

    [(SUTableCellContentView *)self _stopUsingSubviewLayout];
  }
}

- (id)_clipPath
{
  result = self->_clipPath;
  if (!result)
  {
    if (self->_clipCorners)
    {
      [(SUTableCellContentView *)self bounds];
      v5 = CGRectInset(v4, -0.25, -0.25);
      result = [MEMORY[0x1E69DC728] roundedRectBezierPath:self->_clipCorners withRoundedCorners:v5.origin.x withCornerRadius:{v5.origin.y, v5.size.width, v5.size.height, 10.0}];
      self->_clipPath = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_clippedImageForImage:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [(SUTableCellContentView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v12 = v11;
  v15.width = v10;
  v15.height = v10;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v12);
  [-[SUTableCellContentView _clipPath](self "_clipPath")];
  [a3 drawInRect:{v6, v8, v10, v10}];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

- (void)_reloadSubviewAlphasAnimated:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_respondsToSelector();
  v22 = self;
  v6 = objc_opt_respondsToSelector();
  if (v6 & 1) != 0 || (v5)
  {
    v7 = *(self + 432);
    v8 = *(v22 + 456);
    v21 = [(SUCellConfiguration *)v22->_configuration numberOfImages];
    v20 = [(SUCellConfiguration *)v22->_configuration numberOfLabels];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    subviews = v22->_subviews;
    v10 = [(NSMutableArray *)subviews countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v19 = (v7 >> 1) & 1 | (4 * (v8 & 1));
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(subviews);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 tag];
          if (v15 < 51000)
          {
            v16 = 1.0;
            if (v15 >= 50000 && (v6 & 1) != 0 && v15 - 50000 < v20)
            {
              [SUCellConfiguration alphaForLabelAtIndex:"alphaForLabelAtIndex:fromAlpha:withModifiers:" fromAlpha:? withModifiers:?];
              goto LABEL_15;
            }
          }

          else
          {
            v16 = 1.0;
            if ((v5 & 1) != 0 && v15 - 51000 < v21)
            {
              [SUCellConfiguration alphaForImageAtIndex:"alphaForImageAtIndex:fromAlpha:withModifiers:" fromAlpha:? withModifiers:?];
LABEL_15:
              v16 = v17;
            }
          }

          [v14 alpha];
          if (vabdd_f64(v18, v16) > 0.00000011920929)
          {
            [v14 setAlpha:1.0];
            if (v3)
            {
              [MEMORY[0x1E69DD250] beginAnimations:@"subviewAlphaAnimation" context:0];
              [v14 setAlpha:v16];
              [MEMORY[0x1E69DD250] commitAnimations];
            }

            else
            {
              [v14 setAlpha:v16];
            }
          }
        }

        v11 = [(NSMutableArray *)subviews countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }
  }
}

- (void)_reloadSubviewsForConfiguration
{
  [(NSMutableArray *)self->_subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  self->_subviews = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = (2 * (*(self + 432) & 1)) | 4;
  [(SUTableCellContentView *)self bounds];
  [(SUCellConfiguration *)self->_configuration setLayoutSize:v4, v5];
  v6 = [(SUCellConfiguration *)self->_configuration numberOfLabels];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      Label = __CreateLabel(self->_configuration, i, v3);
      if (Label)
      {
        v10 = Label;
        [(SUTableCellContentView *)self addSubview:Label];
        [(NSMutableArray *)self->_subviews addObject:v10];
      }
    }
  }

  v11 = [(SUCellConfiguration *)self->_configuration numberOfImages];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 51000;
    do
    {
      v15 = [(SUCellConfiguration *)self->_configuration imageAtIndex:v13 withModifiers:v3];
      v16 = [(SUCellConfiguration *)self->_configuration imageAtIndex:v13 withModifiers:v3 | 1];
      if (self->_clipCorners)
      {
        v15 = [(SUTableCellContentView *)self _clippedImageForImage:v15];
        v16 = [(SUTableCellContentView *)self _clippedImageForImage:v16];
      }

      if (v15)
      {
        v17 = objc_alloc(MEMORY[0x1E69DCAE0]);
        [(SUCellConfiguration *)self->_configuration frameForImageAtIndex:v13];
        v18 = [v17 initWithFrame:?];
        v19 = v18;
        if (*(self + 432))
        {
          v20 = 0.330000013;
        }

        else
        {
          v20 = 1.0;
        }

        [v18 setAlpha:v20];
        if (v16 == v15)
        {
          v21 = 0;
        }

        else
        {
          v21 = v16;
        }

        [v19 setHighlightedImage:v21];
        [v19 setImage:v15];
        [v19 setTag:v14];
        [v19 setUserInteractionEnabled:0];
        [(SUTableCellContentView *)self addSubview:v19];
        [(NSMutableArray *)self->_subviews addObject:v19];
      }

      ++v13;
      ++v14;
      --v12;
    }

    while (v12);
  }

  [(SUTableCellContentView *)self _reloadSubviewAlphasAnimated:1];

  [(SUTableCellContentView *)self setNeedsLayout];
}

- (void)_removeSubviewsForConfiguration
{
  [(NSMutableArray *)self->_subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  self->_subviews = 0;
}

- (void)_startUsingSubviewLayout
{
  if ((*(self + 456) & 1) == 0)
  {
    *(self + 456) |= 1u;
    [(SUTableCellContentView *)self _reloadSubviewsForConfiguration];
    v3 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v3, sel_drawBackgroundWithModifiers_);
    if (InstanceMethod)
    {
      v5 = InstanceMethod;
      v6 = objc_opt_class();
      if (v5 != class_getInstanceMethod(v6, sel_drawBackgroundWithModifiers_))
      {
        v7 = [SUTableCellContentOverlayView alloc];
        [(SUTableCellContentView *)self bounds];
        v8 = [(SUTableCellContentOverlayView *)v7 initWithFrame:?];
        self->_overlayView = v8;
        -[UIView setBackgroundColor:](v8, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
        [(UIView *)self->_overlayView setConfiguration:self->_configuration];
        [(SUTableCellContentView *)self addSubview:self->_overlayView];
      }
    }

    [(SUTableCellContentView *)self setNeedsDisplay];
  }
}

- (void)_stopUsingSubviewLayout
{
  if (*(self + 456))
  {
    *(self + 456) &= ~1u;
    [(SUTableCellContentView *)self _removeSubviewsForConfiguration];
    [(UIView *)self->_overlayView removeFromSuperview];

    self->_overlayView = 0;

    [(SUTableCellContentView *)self setNeedsDisplay];
  }
}

- (void)_updateDisabledStyleForSubviews
{
  v3 = *(self + 432);
  v4 = [(SUCellConfiguration *)self->_configuration numberOfLabels];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 2 * (v3 & 1);
    do
    {
      if ([-[SUCellConfiguration stringForLabelAtIndex:](self->_configuration stringForLabelAtIndex:{v6), "length"}])
      {
        [-[NSMutableArray objectAtIndex:](self->_subviews objectAtIndex:{v7++), "setTextColor:", -[SUCellConfiguration colorForLabelAtIndex:withModifiers:](self->_configuration, "colorForLabelAtIndex:withModifiers:", v6, v8)}];
      }

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v7 = 0;
  }

  v9 = [(SUCellConfiguration *)self->_configuration numberOfImages];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      if ([(SUCellConfiguration *)self->_configuration imageAtIndex:i withModifiers:0])
      {
        v12 = [(NSMutableArray *)self->_subviews objectAtIndex:v7];
        if (*(self + 432))
        {
          v13 = 0.330000013;
        }

        else
        {
          v13 = 0.0;
        }

        [v12 setAlpha:v13];
        ++v7;
      }
    }
  }
}

@end