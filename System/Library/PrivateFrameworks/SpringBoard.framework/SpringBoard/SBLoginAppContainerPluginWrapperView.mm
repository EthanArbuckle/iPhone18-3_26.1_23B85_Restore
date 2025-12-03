@interface SBLoginAppContainerPluginWrapperView
- (SBLoginAppContainerPluginWrapperView)initWithFrame:(CGRect)frame overlayWrapperView:(id)view pluginView:(id)pluginView;
- (void)layoutSubviews;
@end

@implementation SBLoginAppContainerPluginWrapperView

- (SBLoginAppContainerPluginWrapperView)initWithFrame:(CGRect)frame overlayWrapperView:(id)view pluginView:(id)pluginView
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  pluginViewCopy = pluginView;
  v17.receiver = self;
  v17.super_class = SBLoginAppContainerPluginWrapperView;
  height = [(SBLoginAppContainerPluginWrapperView *)&v17 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_overlayWrapperView, view);
    objc_storeStrong(&v15->_pluginView, pluginView);
    [(SBLoginAppContainerPluginWrapperView *)v15 addSubview:viewCopy];
    [(SBLoginAppContainerPluginWrapperView *)v15 addSubview:pluginViewCopy];
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