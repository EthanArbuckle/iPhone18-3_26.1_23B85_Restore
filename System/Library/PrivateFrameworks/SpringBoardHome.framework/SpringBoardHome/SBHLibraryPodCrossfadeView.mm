@interface SBHLibraryPodCrossfadeView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBHLibraryPodCrossfadeView)initWithBackgroundView:(id)a3 podIconView:(id)a4;
- (SBHLibraryPodCrossfadeView)initWithForegroundView:(id)a3 podIconView:(id)a4;
- (void)layoutSubviews;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setPodIconViewCrossfadeFraction:(double)a3;
- (void)setSourceViewCrossfadeFraction:(double)a3;
@end

@implementation SBHLibraryPodCrossfadeView

- (SBHLibraryPodCrossfadeView)initWithForegroundView:(id)a3 podIconView:(id)a4
{
  v7 = a3;
  v8 = a4;
  [v8 bounds];
  v16.receiver = self;
  v16.super_class = SBHLibraryPodCrossfadeView;
  v9 = [(SBHLibraryPodCrossfadeView *)&v16 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_podIconView, a4);
    objc_storeStrong(&v10->_foregroundView, a3);
    [v8 iconImageInfo];
    v10->_iconImageInfo.size.width = v11;
    v10->_iconImageInfo.size.height = v12;
    v10->_iconImageInfo.scale = v13;
    v10->_iconImageInfo.continuousCornerRadius = v14;
  }

  return v10;
}

- (SBHLibraryPodCrossfadeView)initWithBackgroundView:(id)a3 podIconView:(id)a4
{
  v7 = a3;
  v8 = a4;
  [v8 bounds];
  v16.receiver = self;
  v16.super_class = SBHLibraryPodCrossfadeView;
  v9 = [(SBHLibraryPodCrossfadeView *)&v16 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_podIconView, a4);
    objc_storeStrong(&v10->_backgroundView, a3);
    [v8 iconImageInfo];
    v10->_iconImageInfo.size.width = v11;
    v10->_iconImageInfo.size.height = v12;
    v10->_iconImageInfo.scale = v13;
    v10->_iconImageInfo.continuousCornerRadius = v14;
  }

  return v10;
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius, v3, v4, v5, v6))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;

    [(SBHLibraryPodCrossfadeView *)self setNeedsLayout];
  }
}

- (void)setPodIconViewCrossfadeFraction:(double)a3
{
  if (self->_foregroundView)
  {
    [(SBIconView *)self->_podIconView setIconImageAlpha:a3];
  }
}

- (void)setSourceViewCrossfadeFraction:(double)a3
{
  foregroundView = self->_foregroundView;
  if (!foregroundView)
  {
    foregroundView = self->_backgroundView;
  }

  [(SBHLibraryCategoryStackView *)foregroundView setAlpha:1.0 - a3];
}

- (CGSize)intrinsicContentSize
{
  [(SBIconView *)self->_podIconView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SBIconView *)self->_podIconView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SBHLibraryPodCrossfadeView;
  [(SBHLibraryPodCrossfadeView *)&v25 layoutSubviews];
  v3 = self->_backgroundView;
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 superview];

    if (v5 != self)
    {
      [(SBHLibraryPodCrossfadeView *)self addSubview:v4];
    }
  }

  v6 = self->_podIconView;
  v7 = [(SBIconView *)v6 superview];

  if (v7 != self)
  {
    [(SBHLibraryPodCrossfadeView *)self addSubview:v6];
  }

  v8 = self->_foregroundView;
  v9 = v8;
  v10 = v4;
  if (v8)
  {
    v11 = [(SBHLibraryCategoryStackView *)v8 superview];

    v10 = v9;
    if (v11 != self)
    {
      [(SBHLibraryPodCrossfadeView *)self addSubview:v9];
      v10 = v9;
    }
  }

  [(SBHLibraryPodCrossfadeView *)self bounds];
  UIRectGetCenter();
  v13 = v12;
  v15 = v14;
  [(SBIconView *)v6 setCenter:?];
  [(SBHLibraryCategoryStackView *)v9 setCenter:v13, v15];
  [(UIView *)v4 setCenter:v13, v15];
  v16 = v10;
  [(SBIconView *)v6 bounds];
  v18 = v17;
  [(SBHLibraryCategoryStackView *)v16 bounds];
  v20 = v18 / v19;
  CGAffineTransformMakeScale(&v24, v20, v20);
  [(SBHLibraryCategoryStackView *)v16 setTransform:&v24];
  continuousCornerRadius = self->_iconImageInfo.continuousCornerRadius;
  [(SBIconView *)v6 setIconImageInfo:self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, continuousCornerRadius];
  v22 = continuousCornerRadius / v20;
  if (v9)
  {
    v23 = v9;
    [(SBHLibraryCategoryStackView *)v23 iconImageInfo];
    [(SBHLibraryCategoryStackView *)v23 setIconImageInfo:?];
  }

  else
  {
    [(UIView *)v4 _setContinuousCornerRadius:v22];
  }
}

@end