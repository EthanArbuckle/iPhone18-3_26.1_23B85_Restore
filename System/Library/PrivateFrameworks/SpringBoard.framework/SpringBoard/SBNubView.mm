@interface SBNubView
+ (double)height;
- (CGSize)intrinsicContentSize;
- (SBNubView)initWithCoder:(id)coder;
- (SBNubView)initWithDeviceApplicationSceneHandle:(id)handle;
- (SBNubView)initWithNibName:(id)name bundle:(id)bundle;
- (void)_updateNubViewBackgroundColor;
- (void)_updateNubViewOverrideUserInterfaceStyleAndBackgroundColor;
- (void)dealloc;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBNubView

+ (double)height
{
  if (height_onceToken != -1)
  {
    +[SBNubView height];
  }

  return *&height___height;
}

- (SBNubView)initWithDeviceApplicationSceneHandle:(id)handle
{
  handleCopy = handle;
  v25.receiver = self;
  v25.super_class = SBNubView;
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(SBNubView *)&v25 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_deviceApplicationSceneHandle, handle);
    v11->_highlighted = 0;
    v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
    nubView = v11->_nubView;
    v11->_nubView = v12;

    [(UIView *)v11->_nubView _setCornerRadius:2.5];
    [(UIView *)v11->_nubView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBNubView *)v11 addSubview:v11->_nubView];
    [(SBNubView *)v11 _updateNubViewOverrideUserInterfaceStyleAndBackgroundColor];
    widthAnchor = [(UIView *)v11->_nubView widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:36.0];
    [v15 setActive:1];

    heightAnchor = [(UIView *)v11->_nubView heightAnchor];
    v17 = [heightAnchor constraintEqualToConstant:5.0];
    [v17 setActive:1];

    centerXAnchor = [(UIView *)v11->_nubView centerXAnchor];
    centerXAnchor2 = [(SBNubView *)v11 centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v20 setActive:1];

    centerYAnchor = [(UIView *)v11->_nubView centerYAnchor];
    centerYAnchor2 = [(SBNubView *)v11 centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v23 setActive:1];

    [(SBDeviceApplicationSceneHandle *)v11->_deviceApplicationSceneHandle addObserver:v11];
  }

  return v11;
}

- (SBNubView)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE648];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 raise:v6 format:{@"%s is not a valid initializer. You must call -[%@ initWithDeviceApplicationSceneHandle:].", "-[SBNubView initWithNibName:bundle:]", v8}];

  return [(SBNubView *)self initWithDeviceApplicationSceneHandle:0];
}

- (void)dealloc
{
  [(UIApplicationSceneClientSettingsDiffInspector *)self->_applicationSceneClientSettingsDiffInspector removeAllObservers];
  [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBNubView;
  [(SBNubView *)&v3 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = SBNubView;
  changeCopy = change;
  [(SBNubView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(SBNubView *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(SBNubView *)self _updateNubViewOverrideUserInterfaceStyleAndBackgroundColor];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  [objc_opt_class() height];
  v4 = v3;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

- (SBNubView)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  coderCopy = coder;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBNubView;
  v9 = [(SBNubView *)&v11 initWithCoder:coderCopy];

  return v9;
}

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  handleCopy = handle;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  applicationSceneClientSettingsDiffInspector = self->_applicationSceneClientSettingsDiffInspector;
  if (!applicationSceneClientSettingsDiffInspector)
  {
    objc_initWeak(&location, self);
    v10 = objc_alloc_init(MEMORY[0x277D75160]);
    v11 = self->_applicationSceneClientSettingsDiffInspector;
    self->_applicationSceneClientSettingsDiffInspector = v10;

    v12 = self->_applicationSceneClientSettingsDiffInspector;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __49__SBNubView_sceneHandle_didUpdateClientSettings___block_invoke;
    v16 = &unk_2783AC8A0;
    objc_copyWeak(&v17, &location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v12 observeStatusBarStyleWithBlock:&v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    applicationSceneClientSettingsDiffInspector = self->_applicationSceneClientSettingsDiffInspector;
  }

  [settingsDiff evaluateWithInspector:applicationSceneClientSettingsDiffInspector context:{0, v13, v14, v15, v16}];
}

void __49__SBNubView_sceneHandle_didUpdateClientSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateNubViewOverrideUserInterfaceStyleAndBackgroundColor];
    WeakRetained = v2;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(SBNubView *)self _updateNubViewBackgroundColor];
  }
}

uint64_t __19__SBNubView_height__block_invoke()
{
  result = [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
  height___height = v1;
  return result;
}

- (void)_updateNubViewBackgroundColor
{
  if (self->_highlighted)
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] tertiaryLabelColor];
  }
  v3 = ;
  backgroundColor = [(UIView *)self->_nubView backgroundColor];
  v5 = [v3 isEqual:backgroundColor];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CF0CF0] settingsWithMass:2.0 stiffness:400.0 damping:45.0];
    v7 = MEMORY[0x277CF0D38];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__SBNubView__updateNubViewBackgroundColor__block_invoke;
    v8[3] = &unk_2783A92D8;
    v8[4] = self;
    v9 = v3;
    [v7 animateWithSettings:v6 actions:v8];
  }
}

- (void)_updateNubViewOverrideUserInterfaceStyleAndBackgroundColor
{
  deviceApplicationSceneHandle = [(SBNubView *)self deviceApplicationSceneHandle];
  sceneIfExists = [deviceApplicationSceneHandle sceneIfExists];
  clientSettings = [sceneIfExists clientSettings];

  if (clientSettings)
  {
    nubView = self->_nubView;
    if (_SBStatusBarColorStyleFromStyle([clientSettings statusBarModernStyle]) == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    [(UIView *)nubView _setOverrideUserInterfaceStyle:v6];
  }

  [(SBNubView *)self _updateNubViewBackgroundColor];
}

@end