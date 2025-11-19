@interface SiriUIBackgroundBlurView
- (SiriUIBackgroundBlurView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setVisible:(BOOL)a3;
@end

@implementation SiriUIBackgroundBlurView

- (SiriUIBackgroundBlurView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SiriUIBackgroundBlurView;
  v3 = [(SiriUIBackgroundBlurView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SiriUIBackgroundBlurView *)v3 setAutoresizingMask:18];
    v5 = [MEMORY[0x277D26718] materialViewWithRecipeNamed:@"knowledgeBackground" inBundle:0 configuration:1 initialWeighting:&__block_literal_global_4 scaleAdjustment:1.0];
    materialView = v4->_materialView;
    v4->_materialView = v5;

    v7 = [(MTMaterialView *)v4->_materialView layer];
    [v7 setAllowsHitTesting:0];

    [(MTMaterialView *)v4->_materialView setOverrideUserInterfaceStyle:2];
    [(MTMaterialView *)v4->_materialView setRecipeDynamic:0];
    [(MTMaterialView *)v4->_materialView setShouldCrossfade:1];
    [(MTMaterialView *)v4->_materialView setWeighting:0.0];
    [(SiriUIBackgroundBlurView *)v4 addSubview:v4->_materialView];
    v8 = [(SiriUIBackgroundBlurView *)v4 layer];
    [v8 setAllowsGroupBlending:0];
  }

  return v4;
}

- (void)setVisible:(BOOL)a3
{
  materialView = self->_materialView;
  v4 = 0.0;
  if (a3)
  {
    v4 = 1.0;
  }

  [(MTMaterialView *)materialView setWeighting:v4];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriUIBackgroundBlurView;
  [(SiriUIBackgroundBlurView *)&v4 layoutSubviews];
  materialView = self->_materialView;
  [(SiriUIBackgroundBlurView *)self bounds];
  [(MTMaterialView *)materialView setFrame:?];
}

@end