@interface _TVRUIDevicePickerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (TVRUIDevicePickerViewController)viewController;
- (id)_initWithViewController:(id)a3;
@end

@implementation _TVRUIDevicePickerView

- (id)_initWithViewController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _TVRUIDevicePickerView;
  v5 = [(_TVRUIDevicePickerView *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, v4);
    v7 = [(_TVRUIDevicePickerView *)v6 layer];
    [v7 setAllowsGroupOpacity:0];

    v8 = [(_TVRUIDevicePickerView *)v6 layer];
    [v8 setAllowsGroupBlending:0];
  }

  return v6;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v50 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(_TVRUIDevicePickerView *)self viewController];
  v9 = [v8 isDevicePickerShowing];

  if (v9)
  {
    v45.receiver = self;
    v45.super_class = _TVRUIDevicePickerView;
    v10 = [(_TVRUIDevicePickerView *)&v45 pointInside:v7 withEvent:x, y];
  }

  else
  {
    v11 = [(_TVRUIDevicePickerView *)self viewController];
    v12 = [v11 muteButton];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(_TVRUIDevicePickerView *)self viewController];
    v22 = [v21 deviceTitleView];
    [v22 frame];
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

    v31 = [(_TVRUIDevicePickerView *)self viewController];
    v32 = [v31 powerButton];
    [v32 frame];
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