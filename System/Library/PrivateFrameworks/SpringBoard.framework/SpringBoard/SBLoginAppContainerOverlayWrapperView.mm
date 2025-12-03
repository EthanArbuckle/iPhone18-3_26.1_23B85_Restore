@interface SBLoginAppContainerOverlayWrapperView
- (SBLoginAppContainerOverlayWrapperView)initWithFrame:(CGRect)frame overlayView:(id)view;
- (void)layoutSubviews;
@end

@implementation SBLoginAppContainerOverlayWrapperView

- (SBLoginAppContainerOverlayWrapperView)initWithFrame:(CGRect)frame overlayView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v23.receiver = self;
  v23.super_class = SBLoginAppContainerOverlayWrapperView;
  height = [(SBLoginAppContainerOverlayWrapperView *)&v23 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_overlayView, view);
    underlayPropertiesFactory = [(SBUILockOverlayView *)v12->_overlayView underlayPropertiesFactory];
    propertiesWithDeviceDefaultGraphicsQuality = [underlayPropertiesFactory propertiesWithDeviceDefaultGraphicsQuality];

    v15 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:-2];
    [v15 setBackdropVisible:1];
    v16 = [objc_alloc(MEMORY[0x277D75DE8]) initWithSettings:v15];
    backdropView = v12->_backdropView;
    v12->_backdropView = v16;

    inputSettings = [(_UIBackdropView *)v12->_backdropView inputSettings];
    [propertiesWithDeviceDefaultGraphicsQuality blurRadius];
    [inputSettings setBlurRadius:?];

    inputSettings2 = [(_UIBackdropView *)v12->_backdropView inputSettings];
    tintColor = [propertiesWithDeviceDefaultGraphicsQuality tintColor];
    [inputSettings2 setColorTint:tintColor];

    inputSettings3 = [(_UIBackdropView *)v12->_backdropView inputSettings];
    [propertiesWithDeviceDefaultGraphicsQuality tintAlpha];
    [inputSettings3 setColorTintAlpha:?];

    [(SBLoginAppContainerOverlayWrapperView *)v12 addSubview:v12->_backdropView];
    [(SBLoginAppContainerOverlayWrapperView *)v12 addSubview:v12->_overlayView];
  }

  return v12;
}

- (void)layoutSubviews
{
  [(SBLoginAppContainerOverlayWrapperView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  overlayView = self->_overlayView;

  [(SBLockOverlayView *)overlayView setFrame:v4, v6, v8, v10];
}

@end