@interface PLImageView
+ (CGSize)badgeOffset;
+ (id)textBadgeForString:(id)string photoSize:(CGSize)size;
+ (void)initialize;
- (CGAffineTransform)_transformForFullSizeImageTiledLayer;
- (CGRect)_bottomRightAccessoryViewFrame;
- (CGRect)_leftAccessoryViewFrame;
- (CGSize)leftAccessoryViewOffset;
- (CGSize)placeholderSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits allowRounding:(BOOL)rounding;
- (PLImageView)initWithFrame:(CGRect)frame;
- (void)_setShadowEnabled:(BOOL)enabled force:(BOOL)force;
- (void)_updatePlaceholderAlpha;
- (void)_updatePlaceholderLayout;
- (void)_updateShadowPath;
- (void)dealloc;
- (void)layoutSubviews;
- (void)renderSnapshotInContext:(CGContext *)context;
- (void)setAccessoryViewsAlpha:(double)alpha;
- (void)setBorderAndAccessoriesAlpha:(float)alpha forced:(BOOL)forced;
- (void)setBorderAndAccessoriesVisible:(BOOL)visible;
- (void)setBottomRightAccessoryView:(id)view animated:(BOOL)animated;
- (void)setDimmed:(BOOL)dimmed;
- (void)setDrawsBorder:(BOOL)border;
- (void)setEdgeAntialiasingEnabled:(BOOL)enabled;
- (void)setFullSizeImageJPEGData:(id)data size:(CGSize)size orientation:(int64_t)orientation;
- (void)setImage:(id)image;
- (void)setLeftAccessoryView:(id)view animated:(BOOL)animated;
- (void)setLeftAccessoryViewOffset:(CGSize)offset;
- (void)setPlaceholderScale:(double)scale;
- (void)setShowsPlaceholder:(BOOL)placeholder;
- (void)setTextBadgeString:(id)string;
- (void)setTransitionProgress:(double)progress;
- (void)setVideoView:(id)view;
- (void)updateFullSizeImageVisibleArea;
@end

@implementation PLImageView

- (CGSize)leftAccessoryViewOffset
{
  width = self->_leftAccessoryViewOffset.width;
  height = self->_leftAccessoryViewOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setVideoView:(id)view
{
  videoView = self->_videoView;
  if (videoView != view)
  {
    if ([(PLVideoView *)videoView superview]== self)
    {
      [(PLVideoView *)self->_videoView removeFromSuperview];
    }

    viewCopy = view;
    self->_videoView = viewCopy;
    if (viewCopy)
    {
      [(PLVideoView *)viewCopy setAlpha:1.0];
      v7 = self->_videoView;
      if (self->_borderView)
      {

        [(PLImageView *)self insertSubview:v7 belowSubview:?];
      }

      else
      {

        [(PLImageView *)self addSubview:v7];
      }
    }
  }
}

- (void)setAccessoryViewsAlpha:(double)alpha
{
  if (self->_accessoryViewsAlpha != alpha)
  {
    self->_accessoryViewsAlpha = alpha;
    [(UIView *)self->_leftAccessoryView setAlpha:alpha];
    bottomRightAccessoryView = self->_bottomRightAccessoryView;

    [(UIView *)bottomRightAccessoryView setAlpha:alpha];
  }
}

- (void)setBottomRightAccessoryView:(id)view animated:(BOOL)animated
{
  bottomRightAccessoryView = self->_bottomRightAccessoryView;
  if (bottomRightAccessoryView != view)
  {
    animatedCopy = animated;
    v8 = bottomRightAccessoryView;

    viewCopy = view;
    self->_bottomRightAccessoryView = viewCopy;
    if (v8)
    {
      if (animatedCopy)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __52__PLImageView_setBottomRightAccessoryView_animated___block_invoke;
        v12[3] = &unk_2782A2020;
        v12[4] = v8;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __52__PLImageView_setBottomRightAccessoryView_animated___block_invoke_2;
        v11[3] = &unk_2782A1A10;
        v11[4] = v8;
        v11[5] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v12 animations:v11 completion:0.2];
      }

      else
      {
        [(UIView *)v8 removeFromSuperview];
      }

      if (!self->_bottomRightAccessoryView)
      {
        goto LABEL_11;
      }
    }

    else if (!viewCopy)
    {
LABEL_11:
      [(PLImageView *)self setNeedsLayout];
      return;
    }

    [(UIView *)self->_borderView addSubview:?];
    [(PLImageView *)self _bottomRightAccessoryViewFrame];
    [(UIView *)self->_bottomRightAccessoryView setFrame:?];
    [(UIView *)self->_bottomRightAccessoryView setAlpha:self->_accessoryViewsAlpha];
    if (animatedCopy)
    {
      [(UIView *)self->_bottomRightAccessoryView setAlpha:0.0];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __52__PLImageView_setBottomRightAccessoryView_animated___block_invoke_3;
      v10[3] = &unk_2782A2020;
      v10[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v10 animations:0.2];
    }

    goto LABEL_11;
  }
}

uint64_t __52__PLImageView_setBottomRightAccessoryView_animated___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isDescendantOfView:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 removeFromSuperview];
  }

  return result;
}

- (void)setLeftAccessoryViewOffset:(CGSize)offset
{
  if (offset.width != self->_leftAccessoryViewOffset.width || offset.height != self->_leftAccessoryViewOffset.height)
  {
    self->_leftAccessoryViewOffset = offset;
    [(PLImageView *)self setNeedsLayout];
  }
}

- (void)setLeftAccessoryView:(id)view animated:(BOOL)animated
{
  leftAccessoryView = self->_leftAccessoryView;
  if (leftAccessoryView != view)
  {
    animatedCopy = animated;
    v8 = leftAccessoryView;

    viewCopy = view;
    self->_leftAccessoryView = viewCopy;
    if (viewCopy)
    {
      [(UIView *)self->_borderView addSubview:viewCopy];
      [(CALayer *)[(UIView *)self->_borderView layer] setAllowsGroupOpacity:1];
      [(PLImageView *)self _leftAccessoryViewFrame];
      [(UIView *)self->_leftAccessoryView setFrame:?];
      [(UIView *)self->_leftAccessoryView setAlpha:self->_accessoryViewsAlpha];
      if (animatedCopy)
      {
        [(UIView *)self->_leftAccessoryView setAlpha:0.0];
        [(UIView *)self->_leftAccessoryView bounds];
        v10 = *(MEMORY[0x277CBF2C0] + 16);
        *&v17.a = *MEMORY[0x277CBF2C0];
        *&v17.c = v10;
        *&v17.tx = *(MEMORY[0x277CBF2C0] + 32);
        *&v16.a = *&v17.a;
        *&v16.c = v10;
        *&v16.tx = *&v17.tx;
        CGAffineTransformTranslate(&v17, &v16, v11 * -2.0, 0.0);
        v15 = v17;
        CGAffineTransformScale(&v16, &v15, 0.1, 1.0);
        v17 = v16;
        [(UIView *)self->_leftAccessoryView setTransform:&v16];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __45__PLImageView_setLeftAccessoryView_animated___block_invoke;
        v14[3] = &unk_2782A2020;
        v14[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v14 animations:0.4];
      }
    }

    else
    {
      if (animatedCopy)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __45__PLImageView_setLeftAccessoryView_animated___block_invoke_2;
        v13[3] = &unk_2782A2020;
        v13[4] = v8;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __45__PLImageView_setLeftAccessoryView_animated___block_invoke_3;
        v12[3] = &unk_2782A1A10;
        v12[4] = v8;
        v12[5] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v13 animations:v12 completion:0.4];
      }

      else
      {
        [(UIView *)v8 removeFromSuperview];
      }

      [(CALayer *)[(UIView *)self->_borderView layer] setAllowsGroupOpacity:0];
    }

    [(PLImageView *)self setNeedsLayout];
  }
}

uint64_t __45__PLImageView_setLeftAccessoryView_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 544) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 544);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __45__PLImageView_setLeftAccessoryView_animated___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isDescendantOfView:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 removeFromSuperview];
  }

  return result;
}

- (void)setTextBadgeString:(id)string
{
  textBadge = self->_textBadge;
  if (textBadge)
  {
    [(UILabel *)textBadge removeFromSuperview];

    self->_textBadge = 0;
  }

  if (string)
  {
    v6 = objc_opt_class();
    [(PLImageView *)self bounds];
    v9 = [v6 textBadgeForString:string photoSize:{v7, v8}];
    self->_textBadge = v9;
    v10 = v9;
    v11 = self->_textBadge;

    [(PLImageView *)self addSubview:v11];
  }
}

- (void)_updatePlaceholderAlpha
{
  [(UIView *)self->_borderView alpha];
  v4 = fmin(fmax(log(v3 + 0.08) * -0.4, 0.0), 1.0);
  placeholderView = self->_placeholderView;

  [(PLPhotoTilePlaceholderView *)placeholderView setAlpha:v4];
}

- (void)_updatePlaceholderLayout
{
  if (self->_placeholderView)
  {
    [(PLImageView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PLImageView *)self placeholderSize];
    placeholderScale = self->_placeholderScale;
    v13 = v12 / placeholderScale;
    memset(&v18, 0, sizeof(v18));
    v15 = v14 / placeholderScale;
    CGAffineTransformMakeScale(&v18, placeholderScale, placeholderScale);
    [(PLPhotoTilePlaceholderView *)self->_placeholderView setFrame:v4, v6, v13, v15];
    [(PLPhotoTilePlaceholderView *)self->_placeholderView setCenter:floor(v8 * 0.5), floor(v10 * 0.5)];
    placeholderView = self->_placeholderView;
    v17 = v18;
    [(PLPhotoTilePlaceholderView *)placeholderView setTransform:&v17];
  }
}

- (CGSize)placeholderSize
{
  [(PLImageView *)self bounds];
  v3 = v2 + 1.0;
  v5 = v4 + 1.0;
  result.height = v3;
  result.width = v5;
  return result;
}

- (void)setPlaceholderScale:(double)scale
{
  if (self->_placeholderScale != scale)
  {
    self->_placeholderScale = scale;
    [(PLImageView *)self _updatePlaceholderLayout];
  }
}

- (void)setShowsPlaceholder:(BOOL)placeholder
{
  v4 = self->_showsPlaceholder != placeholder || !placeholder;
  if (v4 || !self->_placeholderView)
  {
    self->_showsPlaceholder = placeholder;
    placeholderView = self->_placeholderView;
    if (placeholder)
    {

      v6 = [PLPhotoTilePlaceholderView alloc];
      [(PLImageView *)self bounds];
      v7 = [(PLPhotoTilePlaceholderView *)v6 initWithFrame:?];
      self->_placeholderView = v7;
      [(PLPhotoTilePlaceholderView *)v7 setAutoresizingMask:18];
      v8 = self->_placeholderView;
      if (self->_borderView)
      {
        [(PLImageView *)self insertSubview:v8 belowSubview:?];
      }

      else
      {
        [(PLImageView *)self addSubview:v8];
      }

      [(PLImageView *)self _updatePlaceholderLayout];

      [(PLImageView *)self _updatePlaceholderAlpha];
    }

    else
    {
      [(PLPhotoTilePlaceholderView *)placeholderView removeFromSuperview];

      self->_placeholderView = 0;
    }
  }
}

- (void)setEdgeAntialiasingEnabled:(BOOL)enabled
{
  if (self->_edgeAntialiasingEnabled != enabled)
  {
    v10 = v4;
    v11 = v3;
    self->_edgeAntialiasingEnabled = enabled;
    if (enabled)
    {
      v8 = 15;
    }

    else
    {
      v8 = 0;
    }

    [-[PLImageView layer](self layer];
    layer = [(UIView *)self->_borderView layer];

    [(CALayer *)layer setEdgeAntialiasingMask:v8];
  }
}

- (void)setDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  layer = [(PLImageView *)self layer];
  LODWORD(v5) = 1.0;
  if (dimmedCopy)
  {
    *&v5 = 0.5;
  }

  [layer setOpacity:v5];
}

- (void)setDrawsBorder:(BOOL)border
{
  v3 = *(self + 584);
  if (((((v3 & 8) == 0) ^ border) & 1) == 0)
  {
    if (border)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    *(self + 584) = v3 & 0xF7 | v5;
    layer = [(UIView *)self->_borderView layer];
    v7 = layer;
    if ((*(self + 584) & 8) != 0)
    {
      pl_dispatch_once();
      [(CALayer *)v7 setContents:__BorderImage___borderImage];
      PLPhysicalScreenScale();
      [(CALayer *)v7 setContentsScale:?];

      [(CALayer *)v7 setContentsCenter:0.5, 0.5, 0.0, 0.0];
    }

    else
    {

      [(CALayer *)layer setContents:0];
    }
  }
}

- (void)setBorderAndAccessoriesAlpha:(float)alpha forced:(BOOL)forced
{
  forcedCopy = forced;
  if ((*(self + 584) & 4) == 0)
  {
    [(PLImageView *)self setBorderAndAccessoriesVisible:1];
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (alpha == 1.0 || alpha == 0.0 || forcedCopy || ([(UIView *)self->_borderView alpha], *&v8 = v8, vabds_f32(*&v8, alpha) >= 0.035) || Current - self->_lastBorderAlphaTime >= 0.0333333333)
  {
    self->_lastBorderAlphaTime = Current;
    [(UIView *)self->_borderView setAlpha:alpha];

    [(PLImageView *)self _updatePlaceholderAlpha];
  }
}

- (void)setBorderAndAccessoriesVisible:(BOOL)visible
{
  v3 = *(self + 584);
  if (((((v3 & 4) == 0) ^ visible) & 1) == 0)
  {
    if (visible)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 584) = v3 & 0xFB | v4;
    [(UIView *)self->_borderView setHidden:!visible];
  }
}

- (void)_setShadowEnabled:(BOOL)enabled force:(BOOL)force
{
  enabledCopy = enabled;
  if ((*(self + 584) & 1) != enabled || force)
  {
    layer = [(PLImageView *)self layer];
    v8 = layer;
    if (enabledCopy && self->_transitionProgress < 1.0)
    {
      [layer setShadowColor:{objc_msgSend(__shadowColor, "CGColor")}];
      LODWORD(v9) = 1060320051;
      [v8 setShadowOpacity:v9];
      PLPhysicalScreenScale();
      v11 = v10 * 0.0;
      PLPhysicalScreenScale();
      [v8 setShadowOffset:{v11, v12 * 3.0}];
      PLPhysicalScreenScale();
      [v8 setShadowRadius:v13 * 4.0];
      if ([(PLImageView *)self image])
      {
        [(PLImageView *)self _updateShadowPath];
      }
    }

    else
    {
      [layer setShadowColor:0];
      [v8 setShadowOpacity:0.0];
    }
  }

  *(self + 584) = *(self + 584) & 0xFE | enabledCopy;
}

- (void)setTransitionProgress:(double)progress
{
  transitionProgress = self->_transitionProgress;
  v6 = progress < 1.0;
  if (transitionProgress < 1.0)
  {
    v6 = 0;
  }

  v8 = progress >= 1.0 && transitionProgress < 1.0 || v6;
  if (transitionProgress >= 1.0)
  {
    if (*(self + 584))
    {
      *(self + 584) |= 2u;
    }

    [(PLImageView *)self _setShadowEnabled:0 force:v8];
  }

  else
  {
    if (*(self + 584))
    {
      v9 = 1;
    }

    else
    {
      v9 = (*(self + 584) >> 1) & 1;
    }

    [(PLImageView *)self _setShadowEnabled:v9 force:v8];
    *(self + 584) &= ~2u;
    if (*(self + 584))
    {
      layer = [(PLImageView *)self layer];
      Current = CFAbsoluteTimeGetCurrent();
      if (self->_transitionProgress * -3.0 + 1.0 >= 0.0)
      {
        v12 = self->_transitionProgress * -3.0 + 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      [layer shadowOpacity];
      v14 = v13 - v12;
      v15 = fabsf(v14);
      if (v15 > 0.035 || (v15 = Current - self->_lastShadowAlphaTime, v15 > 0.0333333333))
      {
        self->_lastShadowAlphaTime = Current;
        *&v15 = v12;
        [layer setShadowOpacity:v15];
      }
    }
  }

  self->_transitionProgress = progress;
}

- (void)setImage:(id)image
{
  v4.receiver = self;
  v4.super_class = PLImageView;
  [(PLImageView *)&v4 setImage:image];
  if (*(self + 584))
  {
    [(PLImageView *)self _updateShadowPath];
  }
}

- (CGAffineTransform)_transformForFullSizeImageTiledLayer
{
  v5 = MEMORY[0x277CBF2C0];
  v22 = *(MEMORY[0x277CBF2C0] + 16);
  v23 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v22;
  v21 = *(v5 + 32);
  *&retstr->tx = v21;
  [(PLTiledLayer *)self->_fullSizeImageTiledLayer bounds];
  v7 = v6;
  v9 = v8;
  [(PLImageView *)self bounds];
  Width = CGRectGetWidth(v28);
  v11 = Width / v7;
  *&v27.a = v23;
  *&v27.c = v22;
  *&v27.tx = v21;
  CGAffineTransformTranslate(retstr, &v27, v7 * ((Width / v7 + -1.0) * 0.5), v9 * ((Width / v7 + -1.0) * 0.5));
  v12 = *&retstr->c;
  *&v26.a = *&retstr->a;
  *&v26.c = v12;
  *&v26.tx = *&retstr->tx;
  CGAffineTransformScale(&v27, &v26, v11, v11);
  v13 = *&v27.c;
  *&retstr->a = *&v27.a;
  *&retstr->c = v13;
  *&retstr->tx = *&v27.tx;
  memset(&v27, 0, sizeof(v27));
  PLTransformForImageOrientationAndSize(self->_fullSizeImageOrientation, &v27, v7, v9);
  v14 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v14;
  *&t1.tx = *&retstr->tx;
  CGAffineTransformTranslate(&v26, &t1, -(v7 * 0.5), -(v9 * 0.5));
  v15 = *&v26.c;
  *&retstr->a = *&v26.a;
  *&retstr->c = v15;
  *&retstr->tx = *&v26.tx;
  t1 = v27;
  v16 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v16;
  *&t2.tx = *&retstr->tx;
  CGAffineTransformConcat(&v26, &t1, &t2);
  v17 = *&v26.c;
  *&retstr->a = *&v26.a;
  *&retstr->c = v17;
  *&retstr->tx = *&v26.tx;
  v18 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v18;
  *&t1.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v26, &t1, v7 * 0.5, v9 * 0.5);
  v20 = *&v26.c;
  *&retstr->a = *&v26.a;
  *&retstr->c = v20;
  *&retstr->tx = *&v26.tx;
  return result;
}

- (void)updateFullSizeImageVisibleArea
{
  selfCopy = self;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    selfCopy = [(PLImageView *)selfCopy superview];
    if (!selfCopy)
    {
      return;
    }
  }

  [(PLImageView *)selfCopy bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PLTiledLayer *)self->_fullSizeImageTiledLayer convertRect:[(PLImageView *)selfCopy layer] fromLayer:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  Width = CGRectGetWidth(v25);
  v26.origin.x = v13;
  v26.origin.y = v15;
  v26.size.width = v17;
  v26.size.height = v19;
  v21 = Width / CGRectGetWidth(v26);
  PLPhysicalScreenScale();
  fullSizeImageTiledLayer = self->_fullSizeImageTiledLayer;

  [(PLTiledLayer *)fullSizeImageTiledLayer setVisibleRectangle:v13 zoomScale:v15, v17, v19, v21 * v22];
}

- (void)setFullSizeImageJPEGData:(id)data size:(CGSize)size orientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  PLPhysicalScreenScale();
  v11 = v10;
  window = [(PLImageView *)self window];
  if (!window)
  {
    window = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  }

  [objc_msgSend(window "screen")];
  v14 = v11 * v13;
  v16 = v11 * v15;
  [(PLTiledLayer *)self->_fullSizeImageTiledLayer removeFromSuperlayer];

  v17 = [[PLTiledLayer alloc] initWithJPEGData:data placeholderImage:0 screenSize:v14, v16];
  self->_fullSizeImageTiledLayer = v17;
  [(PLTiledLayer *)v17 setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), width, height];
  self->_fullSizeImageOrientation = orientation;
  [-[PLImageView layer](self "layer")];

  [(PLImageView *)self setNeedsLayout];
}

- (void)_updateShadowPath
{
  layer = [(PLImageView *)self layer];
  if (*(self + 584))
  {
    v4 = layer;
    [layer bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = +[PLCGPathCache sharedPathCache];
    Mutable = CGPathRetain([v13 pathForKey:{v6, v8, v10, v12}]);
    if (!Mutable)
    {
      Mutable = CGPathCreateMutable();
      v16.origin.x = v6;
      v16.origin.y = v8;
      v16.size.width = v10;
      v16.size.height = v12;
      CGPathAddRect(Mutable, 0, v16);
      [v13 setPath:Mutable forKey:{v6, v8, v10, v12}];
    }

    [v4 setShadowPath:Mutable];

    CGPathRelease(Mutable);
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PLImageView;
  [(PLImageView *)&v7 layoutSubviews];
  [(PLImageView *)self bounds];
  v8.origin.x = *MEMORY[0x277CBF348];
  v8.origin.y = *(MEMORY[0x277CBF348] + 8);
  v9 = CGRectInset(v8, -1.0, -1.0);
  [(UIView *)self->_borderView setFrame:v9.origin.x, v9.origin.y, v9.size.width, v9.size.height];
  if (self->_leftAccessoryView)
  {
    [(PLImageView *)self _leftAccessoryViewFrame];
    [(UIView *)self->_leftAccessoryView setFrame:?];
  }

  if (self->_bottomRightAccessoryView)
  {
    [(PLImageView *)self _bottomRightAccessoryViewFrame];
    [(UIView *)self->_bottomRightAccessoryView setFrame:?];
  }

  if (*(self + 584))
  {
    [(PLImageView *)self _updateShadowPath];
  }

  if (self->_fullSizeImageTiledLayer)
  {
    memset(&v6, 0, sizeof(v6));
    [(PLImageView *)self _transformForFullSizeImageTiledLayer];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
    fullSizeImageTiledLayer = self->_fullSizeImageTiledLayer;
    v4 = v6;
    CATransform3DMakeAffineTransform(&v5, &v4);
    [(PLTiledLayer *)fullSizeImageTiledLayer setTransform:&v5];
    [MEMORY[0x277CD9FF0] commit];
    [(PLImageView *)self updateFullSizeImageVisibleArea];
  }
}

- (CGRect)_bottomRightAccessoryViewFrame
{
  bottomRightAccessoryView = self->_bottomRightAccessoryView;
  if (bottomRightAccessoryView)
  {
    [(UIView *)bottomRightAccessoryView frame];
    v5 = v4;
    v7 = v6;
    rect_8 = v8;
    v10 = v9;
    [(UIView *)self->_borderView bounds];
    v12 = v11;
    rect = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    +[PLImageView badgeOffset];
    v20 = v19;
    rect_16 = v21;
    v34.origin.x = v12;
    v34.origin.y = v14;
    v34.size.width = v16;
    v34.size.height = v18;
    MaxX = CGRectGetMaxX(v34);
    v35.origin.x = v5;
    v23 = v7;
    v35.origin.y = v7;
    v24 = rect_8;
    v35.size.width = rect_8;
    v35.size.height = v10;
    v25 = MaxX - CGRectGetWidth(v35) - v20 + -1.0;
    v36.origin.x = rect;
    v36.origin.y = v14;
    v36.size.width = v16;
    v36.size.height = v18;
    MaxY = CGRectGetMaxY(v36);
    v37.origin.x = v25;
    v37.origin.y = v23;
    v37.size.width = rect_8;
    v37.size.height = v10;
    v27 = MaxY - CGRectGetHeight(v37) - rect_16 + -1.0;
  }

  else
  {
    v25 = *MEMORY[0x277CBF3A0];
    v27 = *(MEMORY[0x277CBF3A0] + 8);
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v28 = v25;
  v29 = v24;
  v30 = v10;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v27;
  result.origin.x = v28;
  return result;
}

- (CGRect)_leftAccessoryViewFrame
{
  leftAccessoryView = self->_leftAccessoryView;
  if (leftAccessoryView)
  {
    [(UIView *)leftAccessoryView frame];
    [(UIView *)self->_borderView bounds];
    CGRectGetMinX(v4);
    UIRectCenteredYInRect();
    return CGRectOffset(v5, self->_leftAccessoryViewOffset.width, self->_leftAccessoryViewOffset.height);
  }

  else
  {
    return **&MEMORY[0x277CBF3A0];
  }
}

- (void)renderSnapshotInContext:(CGContext *)context
{
  edgeAntialiasingEnabled = self->_edgeAntialiasingEnabled;
  if (!edgeAntialiasingEnabled)
  {
    [(PLImageView *)self setEdgeAntialiasingEnabled:1];
  }

  layer = [(PLImageView *)self layer];
  if (*(self + 584))
  {
    CGContextGetCTM(&t1, context);
    CGContextGetBaseCTM();
    CGAffineTransformInvert(&v13, &v15);
    CGAffineTransformConcat(&v15, &t1, &v13);
    a = v15.a;
    b = v15.b;
    c = v15.c;
    d = v15.d;
    PLPhysicalScreenScale();
    [layer setShadowRadius:sqrt((d * 0.0 + b * (v11 * 4.0)) * (d * 0.0 + b * (v11 * 4.0)) + (c * 0.0 + a * (v11 * 4.0)) * (c * 0.0 + a * (v11 * 4.0)))];
  }

  [layer renderInContext:context];
  if (*(self + 584))
  {
    PLPhysicalScreenScale();
    [layer setShadowRadius:v12 * 4.0];
  }

  [(PLImageView *)self setEdgeAntialiasingEnabled:edgeAntialiasingEnabled];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PLImageView *)self sizeThatFits:1 allowRounding:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits allowRounding:(BOOL)rounding
{
  roundingCopy = rounding;
  height = fits.height;
  width = fits.width;
  [-[PLImageView image](self "image")];
  v9 = v8 == *(MEMORY[0x277CBF3A8] + 8) && v7 == *MEMORY[0x277CBF3A8];
  v10 = v7 / v8;
  if (v9)
  {
    v10 = 1.5;
  }

  if (v10 > 1.0)
  {
    height = width / v10;
    if (!roundingCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  width = height * v10;
  if (roundingCopy)
  {
LABEL_10:
    PLPhysicalScreenScale();
    width = rint(width * v11) / v11;
    height = rint(height * v11) / v11;
  }

LABEL_11:
  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)dealloc
{
  [(PLImageView *)self setTextBadgeString:0];
  [(PLImageView *)self setVideoView:0];
  [(UIView *)self->_borderView removeFromSuperview];

  v3.receiver = self;
  v3.super_class = PLImageView;
  [(PLImageView *)&v3 dealloc];
}

- (PLImageView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PLImageView;
  v3 = [(PLImageView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLImageView *)v3 setContentMode:1];
    if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(PLImageView *)v4 bounds];
      v10 = CGRectInset(v9, -1.0, -1.0);
      v5 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
      v4->_borderView = v5;
      [(UIView *)v5 setAutoresizingMask:18];
      layer = [(UIView *)v4->_borderView layer];
      [(PLImageView *)v4 setDrawsBorder:1];
      [(CALayer *)layer setEdgeAntialiasingMask:0];
      [(CALayer *)layer setAllowsEdgeAntialiasing:1];
      [(PLImageView *)v4 addSubview:v4->_borderView];
      [(UIView *)v4->_borderView setHidden:1];
    }

    [-[PLImageView layer](v4 "layer")];
    [-[PLImageView layer](v4 "layer")];
    [-[PLImageView layer](v4 "layer")];
    [-[PLImageView layer](v4 "layer")];
    v4->_accessoryViewsAlpha = 1.0;
    v4->_placeholderScale = 1.0;
  }

  return v4;
}

+ (id)textBadgeForString:(id)string photoSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (!__textBadgeTextColor)
  {
    __textBadgeTextColor = [objc_alloc(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
    __textBadgeShadowColor = [objc_alloc(MEMORY[0x277D75348]) initWithWhite:0.25 alpha:1.0];
    __textBadgeBackgroundColor = [objc_alloc(MEMORY[0x277D75348]) initWithWhite:0.1 alpha:0.5];
    if (string)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (!string)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v7 setTextAlignment:1];
  [v7 setLineBreakMode:5];
  [v7 setBaselineAdjustment:1];
  [v7 setTextColor:__textBadgeTextColor];
  [v7 setBackgroundColor:__textBadgeBackgroundColor];
  [v7 setShadowColor:__textBadgeShadowColor];
  [v7 setShadowOffset:{1.0, 1.0}];
  [v7 setFont:UISystemFontBoldForSize()];
  [v7 setMinimumScaleFactor:0.7];
  [objc_msgSend(v7 "layer")];
  [v7 setAutoresizingMask:13];
  [v7 setText:string];
  [v7 sizeToFit];
  [v7 frame];
  v9 = v8;
  v11 = v10 + 6.0;
  if (v11 > width + -12.0 + -6.0)
  {
    [v7 setAdjustsFontSizeToFitWidth:1];
    v11 = width + -12.0 + -6.0;
  }

  v12 = (width - v11) * 0.5;
  v13 = height - v9 + -6.0 + -3.0;
  v14 = v9;
  v17 = CGRectIntegral(*(&v11 - 2));
  [v7 setFrame:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
LABEL_8:

  return v7;
}

+ (CGSize)badgeOffset
{
  v2 = 6.0;
  v3 = 6.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (void)initialize
{
  if (MGGetBoolAnswer())
  {
    if (objc_opt_class() == self)
    {
      __shadowColor = [MEMORY[0x277D75348] blackColor];
    }
  }
}

@end