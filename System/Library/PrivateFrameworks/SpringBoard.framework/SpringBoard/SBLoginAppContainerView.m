@interface SBLoginAppContainerView
- (SBLoginAppContainerView)initWithFrame:(CGRect)a3;
- (void)_showOrHidePluginViewAppropriately;
- (void)layoutSubviews;
- (void)setBatteryChargingView:(id)a3;
- (void)setContentHidden:(BOOL)a3 forRequester:(id)a4;
- (void)setContentView:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setPluginView:(id)a3;
- (void)setThermalWarningView:(id)a3;
@end

@implementation SBLoginAppContainerView

- (SBLoginAppContainerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SBLoginAppContainerView;
  v3 = [(SBLoginAppContainerView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(SBLoginAppContainerView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    contentHiddenRequesters = v3->_contentHiddenRequesters;
    v3->_contentHiddenRequesters = v5;
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SBLoginAppContainerView;
  [(SBLoginAppContainerView *)&v11 layoutSubviews];
  [(SBLoginAppContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_contentView setFrame:?];
  [(SBLoginAppContainerOverlayWrapperView *)self->_thermalWarningView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_pluginView setFrame:v4, v6, v8, v10];
  [(CSBatteryChargingView *)self->_batteryChargingView frame];
  [(CSBatteryChargingView *)self->_batteryChargingView setFrame:v4, v6, v8, 150.0];
}

- (void)setBatteryChargingView:(id)a3
{
  v8 = a3;
  batteryChargingView = self->_batteryChargingView;
  if (batteryChargingView)
  {
    [(CSBatteryChargingView *)batteryChargingView removeFromSuperview];
  }

  objc_storeStrong(&self->_batteryChargingView, a3);
  if (self->_batteryChargingView)
  {
    [(SBLoginAppContainerView *)self addSubview:?];
    v6 = self->_batteryChargingView;
    v7 = [(SBLoginAppContainerView *)self legibilitySettings];
    [(CSBatteryChargingView *)v6 setLegibilitySettings:v7];
  }

  [(SBLoginAppContainerView *)self setNeedsLayout];
  [(SBLoginAppContainerView *)self setNeedsDisplay];
}

- (void)setThermalWarningView:(id)a3
{
  v6 = a3;
  thermalWarningView = self->_thermalWarningView;
  if (thermalWarningView)
  {
    [(SBLoginAppContainerOverlayWrapperView *)thermalWarningView removeFromSuperview];
  }

  objc_storeStrong(&self->_thermalWarningView, a3);
  if (self->_thermalWarningView)
  {
    [(SBLoginAppContainerView *)self addSubview:?];
  }

  [(SBLoginAppContainerView *)self _showOrHidePluginViewAppropriately];
  [(SBLoginAppContainerView *)self setNeedsLayout];
  [(SBLoginAppContainerView *)self setNeedsDisplay];
}

- (void)setPluginView:(id)a3
{
  v6 = a3;
  pluginView = self->_pluginView;
  if (pluginView)
  {
    [(UIView *)pluginView removeFromSuperview];
  }

  objc_storeStrong(&self->_pluginView, a3);
  if (self->_pluginView)
  {
    [(SBLoginAppContainerView *)self addSubview:?];
  }

  [(SBLoginAppContainerView *)self _showOrHidePluginViewAppropriately];
  [(SBLoginAppContainerView *)self setNeedsLayout];
  [(SBLoginAppContainerView *)self setNeedsDisplay];
}

- (void)setContentView:(id)a3
{
  v6 = a3;
  contentView = self->_contentView;
  if (contentView)
  {
    [(UIView *)contentView removeFromSuperview];
  }

  objc_storeStrong(&self->_contentView, a3);
  if (self->_contentView)
  {
    [(SBLoginAppContainerView *)self addSubview:?];
  }

  if ([(NSMutableSet *)self->_contentHiddenRequesters count])
  {
    [(UIView *)self->_contentView setAlpha:0.0];
  }

  [(SBLoginAppContainerView *)self setNeedsLayout];
  [(SBLoginAppContainerView *)self setNeedsDisplay];
}

- (void)setContentHidden:(BOOL)a3 forRequester:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [(NSMutableSet *)self->_contentHiddenRequesters containsObject:?];
  if (v4)
  {
    if (v6)
    {
      goto LABEL_8;
    }

    [(NSMutableSet *)self->_contentHiddenRequesters addObject:v8];
    v7 = 0.0;
    goto LABEL_7;
  }

  if (v6)
  {
    [(NSMutableSet *)self->_contentHiddenRequesters removeObject:v8];
    if (![(NSMutableSet *)self->_contentHiddenRequesters count])
    {
      v7 = 1.0;
LABEL_7:
      [(UIView *)self->_contentView setAlpha:v7];
    }
  }

LABEL_8:
}

- (void)_showOrHidePluginViewAppropriately
{
  v2 = 0.0;
  if (!self->_thermalWarningView)
  {
    v2 = 1.0;
  }

  [(UIView *)self->_pluginView setAlpha:v2];
}

- (void)setLegibilitySettings:(id)a3
{
  objc_storeStrong(&self->_legibilitySettings, a3);
  v5 = a3;
  [(CSBatteryChargingView *)self->_batteryChargingView setLegibilitySettings:v5];
}

@end