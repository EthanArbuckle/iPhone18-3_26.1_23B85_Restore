@interface SBLoginAppContainerView
- (SBLoginAppContainerView)initWithFrame:(CGRect)frame;
- (void)_showOrHidePluginViewAppropriately;
- (void)layoutSubviews;
- (void)setBatteryChargingView:(id)view;
- (void)setContentHidden:(BOOL)hidden forRequester:(id)requester;
- (void)setContentView:(id)view;
- (void)setLegibilitySettings:(id)settings;
- (void)setPluginView:(id)view;
- (void)setThermalWarningView:(id)view;
@end

@implementation SBLoginAppContainerView

- (SBLoginAppContainerView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SBLoginAppContainerView;
  v3 = [(SBLoginAppContainerView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBLoginAppContainerView *)v3 setBackgroundColor:clearColor];

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

- (void)setBatteryChargingView:(id)view
{
  viewCopy = view;
  batteryChargingView = self->_batteryChargingView;
  if (batteryChargingView)
  {
    [(CSBatteryChargingView *)batteryChargingView removeFromSuperview];
  }

  objc_storeStrong(&self->_batteryChargingView, view);
  if (self->_batteryChargingView)
  {
    [(SBLoginAppContainerView *)self addSubview:?];
    v6 = self->_batteryChargingView;
    legibilitySettings = [(SBLoginAppContainerView *)self legibilitySettings];
    [(CSBatteryChargingView *)v6 setLegibilitySettings:legibilitySettings];
  }

  [(SBLoginAppContainerView *)self setNeedsLayout];
  [(SBLoginAppContainerView *)self setNeedsDisplay];
}

- (void)setThermalWarningView:(id)view
{
  viewCopy = view;
  thermalWarningView = self->_thermalWarningView;
  if (thermalWarningView)
  {
    [(SBLoginAppContainerOverlayWrapperView *)thermalWarningView removeFromSuperview];
  }

  objc_storeStrong(&self->_thermalWarningView, view);
  if (self->_thermalWarningView)
  {
    [(SBLoginAppContainerView *)self addSubview:?];
  }

  [(SBLoginAppContainerView *)self _showOrHidePluginViewAppropriately];
  [(SBLoginAppContainerView *)self setNeedsLayout];
  [(SBLoginAppContainerView *)self setNeedsDisplay];
}

- (void)setPluginView:(id)view
{
  viewCopy = view;
  pluginView = self->_pluginView;
  if (pluginView)
  {
    [(UIView *)pluginView removeFromSuperview];
  }

  objc_storeStrong(&self->_pluginView, view);
  if (self->_pluginView)
  {
    [(SBLoginAppContainerView *)self addSubview:?];
  }

  [(SBLoginAppContainerView *)self _showOrHidePluginViewAppropriately];
  [(SBLoginAppContainerView *)self setNeedsLayout];
  [(SBLoginAppContainerView *)self setNeedsDisplay];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView)
  {
    [(UIView *)contentView removeFromSuperview];
  }

  objc_storeStrong(&self->_contentView, view);
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

- (void)setContentHidden:(BOOL)hidden forRequester:(id)requester
{
  hiddenCopy = hidden;
  requesterCopy = requester;
  v6 = [(NSMutableSet *)self->_contentHiddenRequesters containsObject:?];
  if (hiddenCopy)
  {
    if (v6)
    {
      goto LABEL_8;
    }

    [(NSMutableSet *)self->_contentHiddenRequesters addObject:requesterCopy];
    v7 = 0.0;
    goto LABEL_7;
  }

  if (v6)
  {
    [(NSMutableSet *)self->_contentHiddenRequesters removeObject:requesterCopy];
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

- (void)setLegibilitySettings:(id)settings
{
  objc_storeStrong(&self->_legibilitySettings, settings);
  settingsCopy = settings;
  [(CSBatteryChargingView *)self->_batteryChargingView setLegibilitySettings:settingsCopy];
}

@end