@interface PSCapacityBarView
- (PSCapacityBarView)initWithFrame:(CGRect)frame;
- (id)bezierPathWithLineFrom:(CGPoint)from to:(CGPoint)to;
- (void)drawRect:(CGRect)rect;
- (void)setBarBackgroundColor:(id)color;
- (void)setBarData:(id)data;
- (void)setBarOtherDataColor:(id)color;
- (void)setBarSeparatorColor:(id)color;
@end

@implementation PSCapacityBarView

- (PSCapacityBarView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PSCapacityBarView;
  v3 = [(PSCapacityBarView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PSCapacityBarView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (id)bezierPathWithLineFrom:(CGPoint)from to:(CGPoint)to
{
  y = to.y;
  x = to.x;
  v6 = from.y;
  v7 = from.x;
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [bezierPath moveToPoint:{v7, v6}];
  [bezierPath addLineToPoint:{x, y}];

  return bezierPath;
}

- (void)drawRect:(CGRect)rect
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = [(PSCapacityBarView *)self traitCollection:rect.origin.x];
  userInterfaceStyle = [v4 userInterfaceStyle];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  barData = [(PSCapacityBarView *)self barData];
  adjustedCategories = [barData adjustedCategories];
  v9 = [adjustedCategories mutableCopy];

  capacity = [barData capacity];
  v68 = barData;
  bytesUsed = [barData bytesUsed];
  v82 = 0u;
  v83 = 0u;
  if (bytesUsed >= capacity)
  {
    v12 = capacity;
  }

  else
  {
    v12 = bytesUsed;
  }

  v84 = 0uLL;
  v85 = 0uLL;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v83;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v83 != v17)
        {
          objc_enumerationMutation(v13);
        }

        bytes = [*(*(&v82 + 1) + 8 * i) bytes];
        v16 += bytes & ~(bytes >> 63);
      }

      v15 = [v13 countByEnumeratingWithState:&v82 objects:v87 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v20 = v12 - v16;
  if (v12 > v16)
  {
    barOtherDataColor = self->_barOtherDataColor;
    if (barOtherDataColor)
    {
      v22 = barOtherDataColor;
    }

    else
    {
      if (userInterfaceStyle == 2)
      {
        [MEMORY[0x1E69DC888] systemDarkLightMidGrayColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] systemLightMidGrayColor];
      }
      v22 = ;
    }

    v23 = v22;
    v24 = [[PSCapacityBarCategory alloc] initWithIdentifier:@"_CAT_OTHER_" title:&stru_1EFE45030 color:v22 bytes:v20];
    [v13 addObject:v24];
  }

  c = UIGraphicsGetCurrentContext();
  CGContextSaveGState(c);
  [(PSCapacityBarView *)self bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [clearColor setFill];
  v33 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v26, v28, v30, v32}];
  [v33 fill];

  v34 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v26 cornerRadius:{v28, v30, v32, 5.0}];
  [v34 addClip];

  v35 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v26 cornerRadius:{v28, v30, v32, 5.0}];
  [v35 setLineWidth:1.0];
  v73 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  barBackgroundColor = self->_barBackgroundColor;
  if (barBackgroundColor)
  {
    _externalSystemExtraDarkGrayColor = barBackgroundColor;
    p_barSeparatorColor = &self->_barSeparatorColor;
    barSeparatorColor = self->_barSeparatorColor;
    if (!barSeparatorColor)
    {
      if (userInterfaceStyle != 2)
      {
        goto LABEL_30;
      }

LABEL_27:
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      goto LABEL_31;
    }

LABEL_29:
    blackColor = barSeparatorColor;
    goto LABEL_31;
  }

  if (userInterfaceStyle == 2)
  {
    _externalSystemExtraDarkGrayColor = [MEMORY[0x1E69DC888] _externalSystemExtraDarkGrayColor];
    p_barSeparatorColor = &self->_barSeparatorColor;
    barSeparatorColor = self->_barSeparatorColor;
    if (!barSeparatorColor)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  _externalSystemExtraDarkGrayColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  p_barSeparatorColor = &self->_barSeparatorColor;
  barSeparatorColor = self->_barSeparatorColor;
  if (barSeparatorColor)
  {
    goto LABEL_29;
  }

LABEL_30:
  blackColor = [MEMORY[0x1E69DC888] whiteColor];
LABEL_31:
  selfCopy = self;
  v72 = blackColor;
  v76 = v30 + -1.0;
  [(UIColor *)_externalSystemExtraDarkGrayColor setFill];
  [v35 fill];
  v65 = _externalSystemExtraDarkGrayColor;
  [(UIColor *)_externalSystemExtraDarkGrayColor setStroke];
  [v35 stroke];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v40 = v13;
  v41 = [v40 countByEnumeratingWithState:&v78 objects:v86 count:16];
  v63 = v32;
  v64 = v28;
  if (v41)
  {
    v42 = v41;
    v43 = 0;
    v44 = *v79;
    v74 = v26 + v30;
    v75 = capacity;
    v45 = v32 + 1.0;
    v70 = v28 + v32 + 0.5;
    v46 = 0.0;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v79 != v44)
        {
          objc_enumerationMutation(v40);
        }

        v48 = *(*(&v78 + 1) + 8 * j);
        bytes2 = [v48 bytes];
        if (bytes2 >= 1)
        {
          v43 += bytes2;
          v50 = floor(v76 * (v43 / v75));
          if (v50 - v46 == 0.0)
          {
            v51 = 1.0;
          }

          else
          {
            v51 = v50 - v46;
          }

          if (v50 - v46 != 0.0 || v50 <= 0.0)
          {
            v53 = v50;
          }

          else
          {
            v53 = v50 + -1.0;
          }

          if (userInterfaceLayoutDirection == 1)
          {
            v54 = v74 - v46 - v51;
          }

          else
          {
            v54 = v26 + v46;
          }

          CurrentContext = UIGraphicsGetCurrentContext();
          CGContextSaveGState(CurrentContext);
          v56 = MEMORY[0x1E69DC728];
          v89.origin.x = v54;
          v89.origin.y = v28 + -0.5;
          v89.size.width = v51;
          v89.size.height = v45;
          v90 = CGRectInset(v89, -0.5, -0.5);
          v57 = [v56 bezierPathWithRect:{v90.origin.x, v90.origin.y, v90.size.width, v90.size.height}];
          [v57 addClip];

          color = [v48 color];
          [color setFill];

          [v35 fill];
          if (v46 > 0.0)
          {
            v59 = v51 + v74 - v46 - v51;
            if (userInterfaceLayoutDirection != 1)
            {
              v59 = v26 + v46;
            }

            v60 = [(PSCapacityBarView *)selfCopy bezierPathWithLineFrom:v59 to:v28 + -0.5, v59, v70];
            [(UIColor *)v72 setStroke];
            [v60 stroke];
            if (userInterfaceStyle == 2 && *p_barSeparatorColor)
            {
              [v73 setStroke];
              [v60 stroke];
            }
          }

          if (userInterfaceStyle == 2)
          {
            [v73 setFill];
            [v35 fill];
          }

          CGContextRestoreGState(CurrentContext);
          v46 = v53;
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v42);
  }

  else
  {
    v46 = 0.0;
  }

  if (v76 > v46 && [v40 count])
  {
    v61 = v76 - v46;
    if (userInterfaceLayoutDirection != 1)
    {
      v61 = v46;
    }

    v62 = [(PSCapacityBarView *)selfCopy bezierPathWithLineFrom:v26 + v61 to:v64 + -0.5, v26 + v61, v64 + v63 + 0.5, *&v63, *&v64];
    [(UIColor *)v72 setStroke];
    [v62 stroke];
    if (userInterfaceStyle == 2 && *p_barSeparatorColor)
    {
      [v73 setStroke];
      [v62 stroke];
    }
  }

  CGContextRestoreGState(c);
}

- (void)setBarData:(id)data
{
  v4 = [data copy];
  barData = self->_barData;
  self->_barData = v4;

  [(PSCapacityBarView *)self setNeedsDisplay];
}

- (void)setBarBackgroundColor:(id)color
{
  objc_storeStrong(&self->_barBackgroundColor, color);

  [(PSCapacityBarView *)self setNeedsDisplay];
}

- (void)setBarSeparatorColor:(id)color
{
  objc_storeStrong(&self->_barSeparatorColor, color);

  [(PSCapacityBarView *)self setNeedsDisplay];
}

- (void)setBarOtherDataColor:(id)color
{
  objc_storeStrong(&self->_barOtherDataColor, color);

  [(PSCapacityBarView *)self setNeedsDisplay];
}

@end