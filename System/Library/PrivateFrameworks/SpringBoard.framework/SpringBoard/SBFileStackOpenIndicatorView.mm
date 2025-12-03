@interface SBFileStackOpenIndicatorView
- (SBFileStackOpenIndicatorView)init;
- (SBFileStackOpenIndicatorView)initWithFrame:(CGRect)frame;
- (SBFileStackOpenIndicatorView)initWithIconImageInfo:(SBIconImageInfo *)info frame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
@end

@implementation SBFileStackOpenIndicatorView

- (SBFileStackOpenIndicatorView)init
{
  SBIconImageInfoMake();

  return [SBFileStackOpenIndicatorView initWithIconImageInfo:"initWithIconImageInfo:frame:" frame:?];
}

- (SBFileStackOpenIndicatorView)initWithFrame:(CGRect)frame
{
  SBIconImageInfoMake();

  return [SBFileStackOpenIndicatorView initWithIconImageInfo:"initWithIconImageInfo:frame:" frame:?];
}

- (SBFileStackOpenIndicatorView)initWithIconImageInfo:(SBIconImageInfo *)info frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15.receiver = self;
  v15.super_class = SBFileStackOpenIndicatorView;
  v8 = [(SBFileStackOpenIndicatorView *)&v15 initWithFrame:info];
  v9 = v8;
  if (v8)
  {
    v8->_iconImageInfo.size.width = x;
    v8->_iconImageInfo.size.height = y;
    v8->_iconImageInfo.scale = width;
    v8->_iconImageInfo.continuousCornerRadius = height;
    v10 = objc_alloc(MEMORY[0x277CF0D48]);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v10 initWithPackageName:@"File-stack-chevron-open-indicator" inBundle:v11];
    packageView = v9->_packageView;
    v9->_packageView = v12;

    [(BSUICAPackageView *)v9->_packageView setState:@"Base State"];
    [(SBFileStackOpenIndicatorView *)v9 addSubview:v9->_packageView];
    [(SBFileStackOpenIndicatorView *)v9 _setContinuousCornerRadius:height];
    [(SBFileStackOpenIndicatorView *)v9 setClipsToBounds:1];
  }

  return v9;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBFileStackOpenIndicatorView;
  [(SBFileStackOpenIndicatorView *)&v5 layoutSubviews];
  [(SBFileStackOpenIndicatorView *)self bounds];
  v4 = v3;
  [(BSUICAPackageView *)self->_packageView setFrame:0.0, 0.0];
  [(SBFileStackOpenIndicatorView *)self _setContinuousCornerRadius:v4 * self->_iconImageInfo.continuousCornerRadius / self->_iconImageInfo.size.width];
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  self->_iconImageInfo.size.width = v3;
  self->_iconImageInfo.size.height = v4;
  self->_iconImageInfo.scale = v5;
  self->_iconImageInfo.continuousCornerRadius = v6;
}

@end