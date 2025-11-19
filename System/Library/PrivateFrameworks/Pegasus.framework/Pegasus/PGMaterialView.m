@interface PGMaterialView
- (BOOL)PG_preferredVisibilityForView:(id)a3;
- (PGMaterialView)initWithFrame:(CGRect)a3 wantsGlassBackground:(BOOL)a4;
- (UIView)contentView;
- (double)_continuousCornerRadius;
- (double)_cornerRadius;
- (id)backgroundColor;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)addSubview:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation PGMaterialView

- (PGMaterialView)initWithFrame:(CGRect)a3 wantsGlassBackground:(BOOL)a4
{
  v4 = a4;
  v14.receiver = self;
  v14.super_class = PGMaterialView;
  v5 = [(PGLayoutContainerView *)&v14 initWithFrame:a3.origin.x wantsGlassBackground:a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_wantsGlassBackground = v4;
    if (v4)
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

- (void)addSubview:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_contentView != v5 && self->_backgroundMaterialView != v5)
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

- (void)setBackgroundColor:(id)a3
{
  v8 = a3;
  v4 = [(PGMaterialView *)self backgroundColor];
  if ([v8 isEqual:v4])
  {
  }

  else
  {
    v5 = [(PGMaterialView *)self backgroundColor];

    v6 = v8;
    if (v5 == v8)
    {
      goto LABEL_8;
    }

    backgroundMaterialView = self->_backgroundMaterialView;
    if (self->_wantsGlassBackground)
    {
      [(UIView *)backgroundMaterialView setBackgroundColor:v8];
    }

    else
    {
      [(UIView *)backgroundMaterialView setCustomBackgroundColor:v8];
    }
  }

  v6 = v8;
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

- (void)_setCornerRadius:(double)a3
{
  if (self->_wantsGlassBackground)
  {
    v5.receiver = self;
    v5.super_class = PGMaterialView;
    [(PGMaterialView *)&v5 _setCornerRadius:a3];
  }

  [(UIView *)self->_backgroundMaterialView _setCornerRadius:a3];
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

- (void)_setContinuousCornerRadius:(double)a3
{
  if (self->_wantsGlassBackground)
  {
    v5.receiver = self;
    v5.super_class = PGMaterialView;
    [(PGMaterialView *)&v5 _setContinuousCornerRadius:a3];
  }

  [(UIView *)self->_backgroundMaterialView _setContinuousCornerRadius:a3];
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
    v7 = [(PGMaterialView *)self subviews];
    -[PGMaterialView insertSubview:atIndex:](self, "insertSubview:atIndex:", v6, [v7 count]);

    if (!self->_wantsGlassBackground)
    {
      [(UIView *)self PG_recursivelyDisallowGroupBlending];
    }
  }

  v8 = self->_contentView;

  return v8;
}

- (BOOL)PG_preferredVisibilityForView:(id)a3
{
  v4 = a3;
  v5 = [(PGMaterialView *)self superview];
  v6 = v5;
  if (self->_backgroundMaterialView == v4)
  {
    v7 = self;
  }

  else
  {
    v7 = v4;
  }

  v8 = [v5 PG_preferredVisibilityForView:v7];

  return v8;
}

- (void)addSubview:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGMaterialView.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"view == _contentView || view == _backgroundMaterialView"}];
}

@end