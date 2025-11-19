@interface SBLoginAppContainerOverlayWrapperView
- (SBLoginAppContainerOverlayWrapperView)initWithFrame:(CGRect)a3 overlayView:(id)a4;
- (void)layoutSubviews;
@end

@implementation SBLoginAppContainerOverlayWrapperView

- (SBLoginAppContainerOverlayWrapperView)initWithFrame:(CGRect)a3 overlayView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = SBLoginAppContainerOverlayWrapperView;
  v11 = [(SBLoginAppContainerOverlayWrapperView *)&v23 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_overlayView, a4);
    v13 = [(SBUILockOverlayView *)v12->_overlayView underlayPropertiesFactory];
    v14 = [v13 propertiesWithDeviceDefaultGraphicsQuality];

    v15 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:-2];
    [v15 setBackdropVisible:1];
    v16 = [objc_alloc(MEMORY[0x277D75DE8]) initWithSettings:v15];
    backdropView = v12->_backdropView;
    v12->_backdropView = v16;

    v18 = [(_UIBackdropView *)v12->_backdropView inputSettings];
    [v14 blurRadius];
    [v18 setBlurRadius:?];

    v19 = [(_UIBackdropView *)v12->_backdropView inputSettings];
    v20 = [v14 tintColor];
    [v19 setColorTint:v20];

    v21 = [(_UIBackdropView *)v12->_backdropView inputSettings];
    [v14 tintAlpha];
    [v21 setColorTintAlpha:?];

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