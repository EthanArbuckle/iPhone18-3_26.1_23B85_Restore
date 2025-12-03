@interface PXSnapStripView
- (PXSnapStripView)initWithFrame:(CGRect)frame;
- (id)cubeGlyph;
- (void)_updateSnapStripImage;
- (void)_updateStripView:(BOOL)view;
- (void)layoutSubviews;
- (void)setIndicatorInfos:(id)infos animated:(BOOL)animated;
@end

@implementation PXSnapStripView

- (id)cubeGlyph
{
  if (cubeGlyph_onceToken != -1)
  {
    dispatch_once(&cubeGlyph_onceToken, &__block_literal_global_96671);
  }

  v3 = cubeGlyph_glyph;

  return v3;
}

void __28__PXSnapStripView_cubeGlyph__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:10.0];
  v1 = MEMORY[0x1E69DCAD8];
  v2 = [MEMORY[0x1E69DC888] labelColor];
  v3 = [v1 configurationWithHierarchicalColor:v2];

  v8 = [v0 configurationByApplyingConfiguration:v3];

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"f.cursive.circle.fill" withConfiguration:v8];
  v5 = cubeGlyph_glyph;
  cubeGlyph_glyph = v4;

  v6 = [cubeGlyph_glyph imageWithRenderingMode:2];
  v7 = cubeGlyph_glyph;
  cubeGlyph_glyph = v6;
}

- (void)_updateSnapStripImage
{
  v44 = *MEMORY[0x1E69E9840];
  [(PXSnapStripView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PXSnapStripView *)self px_screenScale];
  v8 = v7;
  v9 = vcvtpd_s64_f64(v7 * v4);
  v10 = vcvtpd_s64_f64(v7 * v6);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(0, v9, v10, 8uLL, 0, DeviceRGB, 2u);
  CGColorSpaceRelease(DeviceRGB);
  if (v12)
  {
    v45.size.width = v9;
    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    v45.size.height = v10;
    CGContextClearRect(v12, v45);
    CGContextTranslateCTM(v12, 0.0, v10);
    CGContextScaleCTM(v12, v8, -v8);
    CGContextGetCTM(&v42, v12);
    CGContextSetBaseCTM();
    indicatorInfos = [(PXSnapStripView *)self indicatorInfos];
    [(PXSnapStripView *)self bounds];
    Height = CGRectGetHeight(v46);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = indicatorInfos;
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = Height + -6.0;
      v19 = *v39;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v38 + 1) + 8 * i);
          [v21 offset];
          v23 = v22;
          color = [v21 color];
          traitCollection = [(PXSnapStripView *)self traitCollection];
          v26 = [color resolvedColorWithTraitCollection:traitCollection];

          cGColor = [v26 CGColor];
          style = [v21 style];
          if (style)
          {
            if (style == 2)
            {
              cubeGlyph = [(PXSnapStripView *)self cubeGlyph];
              [cubeGlyph size];
              v31 = v30;
              v33 = v32;
              v34 = v23 + v30 * -0.5;
              UIGraphicsPushContext(v12);
              v35 = [cubeGlyph imageWithTintColor:v26];

              [v35 drawInRect:{v34, 0.0, v31, v33}];
              UIGraphicsPopContext();
            }

            else if (style == 1)
            {
              CGContextSetStrokeColorWithColor(v12, cGColor);
              v47.size.width = 2.0;
              v47.size.height = 6.0;
              v47.origin.x = v23 + -1.0;
              v47.origin.y = v18;
              CGContextStrokeEllipseInRect(v12, v47);
            }
          }

          else
          {
            CGContextSetFillColorWithColor(v12, cGColor);
            v48.size.width = 6.0;
            v48.size.height = 6.0;
            v48.origin.x = v23 + -3.0;
            v48.origin.y = v18;
            CGContextFillEllipseInRect(v12, v48);
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v17);
    }

    Image = CGBitmapContextCreateImage(v12);
    CGContextRelease(v12);
    v37 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:v8];
    CGImageRelease(Image);
    [(UIImageView *)self->_stripImageView setImage:v37];
  }

  else
  {
    v15 = PLUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v42.a) = 0;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "PXSnapStripView _updateSnapStripImage: could not allocate context", &v42, 2u);
    }
  }
}

- (void)_updateStripView:(BOOL)view
{
  if (self->_stripImageView)
  {

    [(PXSnapStripView *)self _updateSnapStripImage];
  }

  else
  {
    viewCopy = view;
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(PXSnapStripView *)self bounds];
    v6 = [v5 initWithFrame:?];
    stripImageView = self->_stripImageView;
    self->_stripImageView = v6;

    [(UIImageView *)self->_stripImageView setAlpha:0.0];
    [(UIImageView *)self->_stripImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXSnapStripView *)self addSubview:self->_stripImageView];
    leftAnchor = [(UIImageView *)self->_stripImageView leftAnchor];
    leftAnchor2 = [(PXSnapStripView *)self leftAnchor];
    v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v10 setActive:1];

    topAnchor = [(UIImageView *)self->_stripImageView topAnchor];
    topAnchor2 = [(PXSnapStripView *)self topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v13 setActive:1];

    bottomAnchor = [(UIImageView *)self->_stripImageView bottomAnchor];
    bottomAnchor2 = [(PXSnapStripView *)self bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v16 setActive:1];

    [(PXSnapStripView *)self _updateSnapStripImage];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__PXSnapStripView__updateStripView___block_invoke;
    aBlock[3] = &unk_1E774C620;
    aBlock[4] = self;
    v22 = 0;
    v17 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __36__PXSnapStripView__updateStripView___block_invoke_2;
    v19[3] = &unk_1E774B308;
    v20 = 0;
    v18 = _Block_copy(v19);
    if (viewCopy)
    {
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v17 completion:v18];
    }

    else
    {
      v17[2](v17);
      v18[2](v18, 1);
    }
  }
}

uint64_t __36__PXSnapStripView__updateStripView___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

- (void)setIndicatorInfos:(id)infos animated:(BOOL)animated
{
  animatedCopy = animated;
  infosCopy = infos;
  v7 = infosCopy;
  if (self->_indicatorInfos != infosCopy)
  {
    v11 = infosCopy;
    v8 = [(NSArray *)infosCopy isEqualToArray:?];
    v7 = v11;
    if (!v8)
    {
      v9 = [(NSArray *)v11 copy];
      indicatorInfos = self->_indicatorInfos;
      self->_indicatorInfos = v9;

      [(PXSnapStripView *)self _updateStripView:animatedCopy];
      v7 = v11;
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXSnapStripView;
  [(PXSnapStripView *)&v3 layoutSubviews];
  [(PXSnapStripView *)self _updateSnapStripImage];
}

- (PXSnapStripView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PXSnapStripView;
  v3 = [(PXSnapStripView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    indicatorInfos = v3->_indicatorInfos;
    v3->_indicatorInfos = MEMORY[0x1E695E0F0];

    [(PXSnapStripView *)v4 setOpaque:0];
  }

  return v4;
}

@end