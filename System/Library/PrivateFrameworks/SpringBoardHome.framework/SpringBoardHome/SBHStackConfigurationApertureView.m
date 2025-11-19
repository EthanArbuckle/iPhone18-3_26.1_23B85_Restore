@interface SBHStackConfigurationApertureView
- (SBHStackConfigurationApertureView)initWithFrame:(CGRect)a3 iconViewBackgroundType:(int64_t)a4;
- (void)layoutSubviews;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setUsesConcentricCorners:(BOOL)a3;
@end

@implementation SBHStackConfigurationApertureView

- (SBHStackConfigurationApertureView)initWithFrame:(CGRect)a3 iconViewBackgroundType:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = SBHStackConfigurationApertureView;
  v4 = [(SBHStackConfigurationApertureView *)&v8 initWithFrame:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(UIView *)v4 sbh_applyClearGlass];
    v6 = [(SBHStackConfigurationApertureView *)v5 layer];
    [v6 setCornerCurve:*MEMORY[0x1E69796E8]];

    v5->_usesConcentricCorners = 0;
  }

  return v5;
}

- (void)setUsesConcentricCorners:(BOOL)a3
{
  if (self->_usesConcentricCorners != a3)
  {
    self->_usesConcentricCorners = a3;
    [(SBHStackConfigurationApertureView *)self setNeedsLayout];
  }
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

    [(SBHStackConfigurationApertureView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SBHStackConfigurationApertureView;
  [(SBHStackConfigurationApertureView *)&v18 layoutSubviews];
  [(SBHStackConfigurationApertureView *)self bounds];
  v4 = v3;
  v6 = v5;
  width = self->_iconImageInfo.size.width;
  height = self->_iconImageInfo.size.height;
  continuousCornerRadius = self->_iconImageInfo.continuousCornerRadius;
  [(SBIconListView *)self->_iconListView iconContentScale];
  v11 = v10;
  if ([(SBHStackConfigurationApertureView *)self usesConcentricCorners])
  {
    v12 = [(SBHStackConfigurationApertureView *)self layer];
    v13 = v12;
    v14 = continuousCornerRadius + (v4 - width * v11) * 0.5;
  }

  else
  {
    if (width <= height)
    {
      v15 = width;
    }

    else
    {
      v15 = height;
    }

    if (v15 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = continuousCornerRadius / v15;
    }

    v12 = [(SBHStackConfigurationApertureView *)self layer];
    v13 = v12;
    if (v4 <= v6)
    {
      v17 = v4;
    }

    else
    {
      v17 = v6;
    }

    v14 = v16 * v17;
  }

  [v12 setCornerRadius:v14];

  UIEdgeInsetsMakeWithEdges();
  [(SBIconListView *)self->_iconListView setAdditionalLayoutInsets:?];
}

@end