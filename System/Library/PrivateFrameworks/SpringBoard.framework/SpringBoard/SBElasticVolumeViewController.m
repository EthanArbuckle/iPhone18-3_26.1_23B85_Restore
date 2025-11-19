@interface SBElasticVolumeViewController
- (BOOL)updateActiveRouteDisplay:(id *)a3;
- (SBElasticVolumeViewController)initWithDataSource:(id)a3;
- (id)createSliderView;
- (id)dataSource;
- (unint64_t)layoutAxisForInterfaceOrientation:(int64_t)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation SBElasticVolumeViewController

- (SBElasticVolumeViewController)initWithDataSource:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBElasticVolumeViewController;
  v3 = [(SBElasticValueViewController *)&v11 initWithDataSource:a3];
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

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v23.receiver = self;
  v23.super_class = SBElasticVolumeViewController;
  [(SBElasticValueViewController *)&v23 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (v6)
  {
    v7 = [v6 windowScene];
    v8 = [v7 _FBSScene];
    v9 = [v8 identity];

    v10 = MEMORY[0x277D65F10];
    v11 = [MEMORY[0x277CF0CD0] processHandle];
    v12 = [v11 auditToken];
    v13 = [v10 targetWithPhysicalButton:1 generation:1 auditToken:v12 identifier:1];

    v14 = MEMORY[0x277D65F10];
    v15 = [MEMORY[0x277CF0CD0] processHandle];
    v16 = [v15 auditToken];
    v17 = [v14 targetWithPhysicalButton:2 generation:1 auditToken:v16 identifier:1];

    v18 = [MEMORY[0x277D65F00] targetWithSceneIdentity:v9];
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
    v9 = self->_physicalButtonSceneTargets;
    self->_physicalButtonSceneTargets = 0;
  }
}

- (id)dataSource
{
  v4.receiver = self;
  v4.super_class = SBElasticVolumeViewController;
  v2 = [(SBElasticValueViewController *)&v4 dataSource];

  return v2;
}

- (BOOL)updateActiveRouteDisplay:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = self->_routeDescriptionProvider;
  v6 = [(MRUVolumeHUDRouteDescriptionProvider *)v5 outputDeviceAsset];
  v7 = [v6 localizedDisplayTitle];
  if ([v6 kind])
  {
    v8 = [v6 icon];
    v9 = [v8 symbolConfiguration];
    v10 = [v9 configurationByApplyingConfiguration:self->_routeImageSymbolConfiguration];
    routeImageSymbolConfiguration = v10;
    if (!v10)
    {
      routeImageSymbolConfiguration = self->_routeImageSymbolConfiguration;
    }

    v12 = routeImageSymbolConfiguration;

    v13 = [v8 imageByApplyingSymbolConfiguration:v12];

    v14 = [SBElasticRouteDisplayContext routeContextWithName:v7 glyphImage:v13];
  }

  else
  {
    v13 = [v6 packageDescription];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__SBElasticVolumeViewController_updateActiveRouteDisplay___block_invoke;
    v21[3] = &unk_2783B6918;
    v22 = v5;
    v15 = MEMORY[0x223D6F7F0](v21);
    v14 = [SBElasticRouteDisplayContext routeContextWithName:v7 valueTransformer:v15 glyphPackage:v13];
  }

  v16 = v14;
  *a3 = v14;
  mediaProvidedRouteDisplayInfoNeedsUpdate = self->_mediaProvidedRouteDisplayInfoNeedsUpdate;
  self->_mediaProvidedRouteDisplayInfoNeedsUpdate = 0;
  v18 = [(SBElasticVolumeViewController *)self log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v6 type];
    *buf = 134218498;
    v24 = v19;
    v25 = 2112;
    v26 = v7;
    v27 = 1024;
    v28 = mediaProvidedRouteDisplayInfoNeedsUpdate;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Set route display info for audio route: (%li) named '%@'; updated: %{BOOL}u", buf, 0x1Cu);
  }

  return mediaProvidedRouteDisplayInfoNeedsUpdate;
}

- (unint64_t)layoutAxisForInterfaceOrientation:(int64_t)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1 && (a3 - 3) >= 2)
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
  v2 = [(SBElasticValueViewController *)&v4 createSliderView];
  [v2 setBehaviorIdentifier:1];
  [v2 setShouldIncludeVolumeButtonsInput:1];

  return v2;
}

@end