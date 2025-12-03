@interface PGMaterialView
- (BOOL)PG_preferredVisibilityForView:(id)view;
- (PGMaterialView)initWithFrame:(CGRect)frame wantsGlassBackground:(BOOL)background;
- (UIView)contentView;
- (double)_continuousCornerRadius;
- (double)_cornerRadius;
- (id)backgroundColor;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)addSubview:(id)subview;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation PGMaterialView

- (PGMaterialView)initWithFrame:(CGRect)frame wantsGlassBackground:(BOOL)background
{
  backgroundCopy = background;
  v14.receiver = self;
  v14.super_class = PGMaterialView;
  v5 = [(PGLayoutContainerView *)&v14 initWithFrame:frame.origin.x wantsGlassBackground:frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_wantsGlassBackground = backgroundCopy;
    if (backgroundCopy)
    {
      v7 = objc_alloc(MEMORY[0x1E69DD250]);
      [(PGMaterialView *)v6 bounds];
      v8 = [v7 initWithFrame:?];
      backgroundMaterialView = v6->_backgroundMaterialView;
      v6->_backgroundMaterialView = v8;

      [(UIView *)v6->_backgroundMaterialView setUserInteractionEnabled:0];
    }

    else
    {
      v10 = [PGCABackdropLayerView alloc];
      [(PGMaterialView *)v6 bounds];
      v11 = [(PGCABackdropLayerView *)v10 initWithFrame:0 captureOnly:?];
      v12 = v6->_backgroundMaterialView;
      v6->_backgroundMaterialView = v11;
    }

    [(PGMaterialView *)v6 insertSubview:v6->_backgroundMaterialView atIndex:0];
  }

  return v6;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PGMaterialView;
  [(PGMaterialView *)&v5 layoutSubviews];
  backgroundMaterialView = self->_backgroundMaterialView;
  [(PGMaterialView *)self bounds];
  [(UIView *)backgroundMaterialView setFrame:?];
  contentView = self->_contentView;
  [(PGMaterialView *)self bounds];
  [(UIView *)contentView setFrame:?];
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  v6 = subviewCopy;
  if (self->_contentView != subviewCopy && self->_backgroundMaterialView != subviewCopy)
  {
    [(PGMaterialView *)a2 addSubview:?];
  }

  v7.receiver = self;
  v7.super_class = PGMaterialView;
  [(PGMaterialView *)&v7 addSubview:v6];
}

- (id)backgroundColor
{
  wantsGlassBackground = self->_wantsGlassBackground;
  backgroundMaterialView = self->_backgroundMaterialView;
  if (wantsGlassBackground)
  {
    [(UIView *)backgroundMaterialView backgroundColor];
  }

  else
  {
    [(UIView *)backgroundMaterialView customBackgroundColor];
  }
  v4 = ;

  return v4;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundColor = [(PGMaterialView *)self backgroundColor];
  if ([colorCopy isEqual:backgroundColor])
  {
  }

  else
  {
    backgroundColor2 = [(PGMaterialView *)self backgroundColor];

    v6 = colorCopy;
    if (backgroundColor2 == colorCopy)
    {
      goto LABEL_8;
    }

    backgroundMaterialView = self->_backgroundMaterialView;
    if (self->_wantsGlassBackground)
    {
      [(UIView *)backgroundMaterialView setBackgroundColor:colorCopy];
    }

    else
    {
      [(UIView *)backgroundMaterialView setCustomBackgroundColor:colorCopy];
    }
  }

  v6 = colorCopy;
LABEL_8:
}

- (double)_cornerRadius
{
  if (self->_wantsGlassBackground)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PGMaterialView;
    [(PGMaterialView *)&v6 _cornerRadius];
  }

  else
  {
    backgroundMaterialView = self->_backgroundMaterialView;

    [(UIView *)backgroundMaterialView _cornerRadius];
  }

  return result;
}

- (void)_setCornerRadius:(double)radius
{
  if (self->_wantsGlassBackground)
  {
    v5.receiver = self;
    v5.super_class = PGMaterialView;
    [(PGMaterialView *)&v5 _setCornerRadius:radius];
  }

  [(UIView *)self->_backgroundMaterialView _setCornerRadius:radius];
}

- (double)_continuousCornerRadius
{
  if (self->_wantsGlassBackground)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PGMaterialView;
    [(PGMaterialView *)&v6 _continuousCornerRadius];
  }

  else
  {
    backgroundMaterialView = self->_backgroundMaterialView;

    [(UIView *)backgroundMaterialView _continuousCornerRadius];
  }

  return result;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  if (self->_wantsGlassBackground)
  {
    v5.receiver = self;
    v5.super_class = PGMaterialView;
    [(PGMaterialView *)&v5 _setContinuousCornerRadius:radius];
  }

  [(UIView *)self->_backgroundMaterialView _setContinuousCornerRadius:radius];
}

- (UIView)contentView
{
  if (!self->_contentView)
  {
    v3 = [PGLayoutContainerView alloc];
    [(PGMaterialView *)self bounds];
    v4 = [(PGLayoutContainerView *)v3 initWithFrame:self->_wantsGlassBackground wantsGlassBackground:?];
    contentView = self->_contentView;
    self->_contentView = v4;

    v6 = self->_contentView;
    subviews = [(PGMaterialView *)self subviews];
    -[PGMaterialView insertSubview:atIndex:](self, "insertSubview:atIndex:", v6, [subviews count]);

    if (!self->_wantsGlassBackground)
    {
      [(UIView *)self PG_recursivelyDisallowGroupBlending];
    }
  }

  v8 = self->_contentView;

  return v8;
}

- (BOOL)PG_preferredVisibilityForView:(id)view
{
  viewCopy = view;
  superview = [(PGMaterialView *)self superview];
  v6 = superview;
  if (self->_backgroundMaterialView == viewCopy)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = viewCopy;
  }

  v8 = [superview PG_preferredVisibilityForView:selfCopy];

  return v8;
}

- (void)addSubview:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGMaterialView.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"view == _contentView || view == _backgroundMaterialView"}];
}

@end