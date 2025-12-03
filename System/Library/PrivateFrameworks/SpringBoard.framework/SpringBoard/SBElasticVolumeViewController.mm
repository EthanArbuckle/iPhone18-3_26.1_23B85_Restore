@interface SBElasticVolumeViewController
- (BOOL)updateActiveRouteDisplay:(id *)display;
- (SBElasticVolumeViewController)initWithDataSource:(id)source;
- (id)createSliderView;
- (id)dataSource;
- (unint64_t)layoutAxisForInterfaceOrientation:(int64_t)orientation;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation SBElasticVolumeViewController

- (SBElasticVolumeViewController)initWithDataSource:(id)source
{
  v11.receiver = self;
  v11.super_class = SBElasticVolumeViewController;
  v3 = [(SBElasticValueViewController *)&v11 initWithDataSource:source];
  if (v3)
  {
    v4 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:2 scale:26.0];
    v5 = [MEMORY[0x277D755D0] _configurationWithHierarchicalColors:MEMORY[0x277CBEBF8]];
    v6 = [v4 configurationByApplyingConfiguration:v5];
    routeImageSymbolConfiguration = v3->_routeImageSymbolConfiguration;
    v3->_routeImageSymbolConfiguration = v6;

    v8 = objc_alloc_init(MEMORY[0x277D268C8]);
    routeDescriptionProvider = v3->_routeDescriptionProvider;
    v3->_routeDescriptionProvider = v8;

    [(MRUVolumeHUDRouteDescriptionProvider *)v3->_routeDescriptionProvider setDelegate:v3];
    v3->_mediaProvidedRouteDisplayInfoNeedsUpdate = 1;
  }

  return v3;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v23.receiver = self;
  v23.super_class = SBElasticVolumeViewController;
  [(SBElasticValueViewController *)&v23 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    windowScene = [windowCopy windowScene];
    _FBSScene = [windowScene _FBSScene];
    identity = [_FBSScene identity];

    v10 = MEMORY[0x277D65F10];
    processHandle = [MEMORY[0x277CF0CD0] processHandle];
    auditToken = [processHandle auditToken];
    v13 = [v10 targetWithPhysicalButton:1 generation:1 auditToken:auditToken identifier:1];

    v14 = MEMORY[0x277D65F10];
    processHandle2 = [MEMORY[0x277CF0CD0] processHandle];
    auditToken2 = [processHandle2 auditToken];
    v17 = [v14 targetWithPhysicalButton:2 generation:1 auditToken:auditToken2 identifier:1];

    v18 = [MEMORY[0x277D65F00] targetWithSceneIdentity:identity];
    [v18 addButtonTarget:v13];
    [v18 addButtonTarget:v17];
    v19 = MEMORY[0x277CBEA60];
    v20 = [v18 copy];
    v21 = [v19 arrayWithObject:v20];
    physicalButtonSceneTargets = self->_physicalButtonSceneTargets;
    self->_physicalButtonSceneTargets = v21;
  }

  else
  {
    identity = self->_physicalButtonSceneTargets;
    self->_physicalButtonSceneTargets = 0;
  }
}

- (id)dataSource
{
  v4.receiver = self;
  v4.super_class = SBElasticVolumeViewController;
  dataSource = [(SBElasticValueViewController *)&v4 dataSource];

  return dataSource;
}

- (BOOL)updateActiveRouteDisplay:(id *)display
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = self->_routeDescriptionProvider;
  outputDeviceAsset = [(MRUVolumeHUDRouteDescriptionProvider *)v5 outputDeviceAsset];
  localizedDisplayTitle = [outputDeviceAsset localizedDisplayTitle];
  if ([outputDeviceAsset kind])
  {
    icon = [outputDeviceAsset icon];
    symbolConfiguration = [icon symbolConfiguration];
    v10 = [symbolConfiguration configurationByApplyingConfiguration:self->_routeImageSymbolConfiguration];
    routeImageSymbolConfiguration = v10;
    if (!v10)
    {
      routeImageSymbolConfiguration = self->_routeImageSymbolConfiguration;
    }

    v12 = routeImageSymbolConfiguration;

    packageDescription = [icon imageByApplyingSymbolConfiguration:v12];

    v14 = [SBElasticRouteDisplayContext routeContextWithName:localizedDisplayTitle glyphImage:packageDescription];
  }

  else
  {
    packageDescription = [outputDeviceAsset packageDescription];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__SBElasticVolumeViewController_updateActiveRouteDisplay___block_invoke;
    v21[3] = &unk_2783B6918;
    v22 = v5;
    v15 = MEMORY[0x223D6F7F0](v21);
    v14 = [SBElasticRouteDisplayContext routeContextWithName:localizedDisplayTitle valueTransformer:v15 glyphPackage:packageDescription];
  }

  v16 = v14;
  *display = v14;
  mediaProvidedRouteDisplayInfoNeedsUpdate = self->_mediaProvidedRouteDisplayInfoNeedsUpdate;
  self->_mediaProvidedRouteDisplayInfoNeedsUpdate = 0;
  v18 = [(SBElasticVolumeViewController *)self log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    type = [outputDeviceAsset type];
    *buf = 134218498;
    v24 = type;
    v25 = 2112;
    v26 = localizedDisplayTitle;
    v27 = 1024;
    v28 = mediaProvidedRouteDisplayInfoNeedsUpdate;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Set route display info for audio route: (%li) named '%@'; updated: %{BOOL}u", buf, 0x1Cu);
  }

  return mediaProvidedRouteDisplayInfoNeedsUpdate;
}

- (unint64_t)layoutAxisForInterfaceOrientation:(int64_t)orientation
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && (orientation - 3) >= 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)createSliderView
{
  v4.receiver = self;
  v4.super_class = SBElasticVolumeViewController;
  createSliderView = [(SBElasticValueViewController *)&v4 createSliderView];
  [createSliderView setBehaviorIdentifier:1];
  [createSliderView setShouldIncludeVolumeButtonsInput:1];

  return createSliderView;
}

@end