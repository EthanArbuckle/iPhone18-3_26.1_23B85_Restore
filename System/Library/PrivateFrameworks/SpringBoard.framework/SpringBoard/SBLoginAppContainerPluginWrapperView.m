@interface SBLoginAppContainerPluginWrapperView
- (SBLoginAppContainerPluginWrapperView)initWithFrame:(CGRect)a3 overlayWrapperView:(id)a4 pluginView:(id)a5;
- (void)layoutSubviews;
@end

@implementation SBLoginAppContainerPluginWrapperView

- (SBLoginAppContainerPluginWrapperView)initWithFrame:(CGRect)a3 overlayWrapperView:(id)a4 pluginView:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = SBLoginAppContainerPluginWrapperView;
  v14 = [(SBLoginAppContainerPluginWrapperView *)&v17 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_overlayWrapperView, a4);
    objc_storeStrong(&v15->_pluginView, a5);
    [(SBLoginAppContainerPluginWrapperView *)v15 addSubview:v12];
    [(SBLoginAppContainerPluginWrapperView *)v15 addSubview:v13];
  }

  return v15;
}

- (void)layoutSubviews
{
  [(SBLoginAppContainerPluginWrapperView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_overlayWrapperView setFrame:?];
  pluginView = self->_pluginView;

  [(UIView *)pluginView setFrame:v4, v6, v8, v10];
}

@end