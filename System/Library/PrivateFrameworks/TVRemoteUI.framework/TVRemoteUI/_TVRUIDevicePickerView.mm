@interface _TVRUIDevicePickerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (TVRUIDevicePickerViewController)viewController;
- (id)_initWithViewController:(id)controller;
@end

@implementation _TVRUIDevicePickerView

- (id)_initWithViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = _TVRUIDevicePickerView;
  v5 = [(_TVRUIDevicePickerView *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, controllerCopy);
    layer = [(_TVRUIDevicePickerView *)v6 layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(_TVRUIDevicePickerView *)v6 layer];
    [layer2 setAllowsGroupBlending:0];
  }

  return v6;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v50 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  viewController = [(_TVRUIDevicePickerView *)self viewController];
  isDevicePickerShowing = [viewController isDevicePickerShowing];

  if (isDevicePickerShowing)
  {
    v45.receiver = self;
    v45.super_class = _TVRUIDevicePickerView;
    v10 = [(_TVRUIDevicePickerView *)&v45 pointInside:eventCopy withEvent:x, y];
  }

  else
  {
    viewController2 = [(_TVRUIDevicePickerView *)self viewController];
    muteButton = [viewController2 muteButton];
    [muteButton frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    viewController3 = [(_TVRUIDevicePickerView *)self viewController];
    deviceTitleView = [viewController3 deviceTitleView];
    [deviceTitleView frame];
    v59.origin.x = v23;
    v59.origin.y = v24;
    v59.size.width = v25;
    v59.size.height = v26;
    v53.origin.x = v14;
    v53.origin.y = v16;
    v53.size.width = v18;
    v53.size.height = v20;
    v54 = CGRectUnion(v53, v59);
    v27 = v54.origin.x;
    v28 = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;

    viewController4 = [(_TVRUIDevicePickerView *)self viewController];
    powerButton = [viewController4 powerButton];
    [powerButton frame];
    v60.origin.x = v33;
    v60.origin.y = v34;
    v60.size.width = v35;
    v60.size.height = v36;
    v55.origin.x = v27;
    v55.origin.y = v28;
    v55.size.width = width;
    v55.size.height = height;
    v56 = CGRectUnion(v55, v60);
    v37 = v56.origin.x;
    v38 = v56.origin.y;
    v39 = v56.size.width;
    v40 = v56.size.height;

    v57.origin.x = v37;
    v57.origin.y = v38;
    v57.size.width = v39;
    v57.size.height = v40;
    v52.x = x;
    v52.y = y;
    if (CGRectContainsPoint(v57, v52))
    {
      v41 = _TVRUIDevicePickerLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v58.origin.x = v37;
        v58.origin.y = v38;
        v58.size.width = v39;
        v58.size.height = v40;
        v42 = NSStringFromCGRect(v58);
        v51.x = x;
        v51.y = y;
        v43 = NSStringFromCGPoint(v51);
        *buf = 138412546;
        v47 = v42;
        v48 = 2112;
        v49 = v43;
        _os_log_impl(&dword_26CFEB000, v41, OS_LOG_TYPE_DEFAULT, "boundingRect: %@ point: %@", buf, 0x16u);
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (TVRUIDevicePickerViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end