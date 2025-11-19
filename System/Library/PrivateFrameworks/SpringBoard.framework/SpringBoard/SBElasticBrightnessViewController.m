@interface SBElasticBrightnessViewController
- (BOOL)updateActiveRouteDisplay:(id *)a3;
- (SBElasticBrightnessViewController)initWithDataSource:(id)a3;
- (id)dataSource;
- (void)_debugHandleNextRoute;
- (void)noteContinuousValueInteractionDidEnd;
- (void)noteContinuousValueInteractionWillBegin;
- (void)viewDidLoad;
@end

@implementation SBElasticBrightnessViewController

- (SBElasticBrightnessViewController)initWithDataSource:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBElasticBrightnessViewController;
  result = [(SBElasticValueViewController *)&v4 initWithDataSource:a3];
  if (result)
  {
    result->_activeBrightnessRoute = 0;
    result->_debugOverrideBrightnessRoute = 0;
  }

  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = SBElasticBrightnessViewController;
  [(SBElasticValueViewController *)&v2 viewDidLoad];
}

- (id)dataSource
{
  v4.receiver = self;
  v4.super_class = SBElasticBrightnessViewController;
  v2 = [(SBElasticValueViewController *)&v4 dataSource];

  return v2;
}

- (BOOL)updateActiveRouteDisplay:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(SBElasticBrightnessViewController *)self dataSource];
  v6 = [v5 elasticBrightnessViewControllerBrightnessRouteType:self];

  if (SBBrightnessRouteTypeIsValid(v6))
  {
    debugOverrideBrightnessRoute = v6;
  }

  else
  {
    debugOverrideBrightnessRoute = 1;
  }

  if (SBBrightnessRouteTypeIsValid(self->_debugOverrideBrightnessRoute))
  {
    debugOverrideBrightnessRoute = self->_debugOverrideBrightnessRoute;
  }

  activeBrightnessRoute = self->_activeBrightnessRoute;
  self->_activeBrightnessRoute = debugOverrideBrightnessRoute;
  v9 = NSLocalizedStringFromSBBrightnessRouteType(debugOverrideBrightnessRoute);
  v10 = CCUICAPackageDescriptionForSBBrightnessRouteType(debugOverrideBrightnessRoute);
  if (v10)
  {
    v11 = SBGlyphStateValueTransformerForBrightnessRouteType();
    [SBElasticRouteDisplayContext routeContextWithName:v9 valueTransformer:v11 glyphPackage:v10];
  }

  else
  {
    v11 = UIImageSymbolForSBBrightnessRouteType();
    [SBElasticRouteDisplayContext routeContextWithName:v9 glyphImage:v11];
  }
  v12 = ;

  v13 = v12;
  *a3 = v12;
  v14 = [(SBElasticBrightnessViewController *)self log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = NSStringFromSBBrightnessRouteType(debugOverrideBrightnessRoute);
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "Updated route display info for brightness route (%@): '%@'", &v17, 0x16u);
  }

  return activeBrightnessRoute != debugOverrideBrightnessRoute;
}

- (void)noteContinuousValueInteractionWillBegin
{
  v3 = [(SBElasticBrightnessViewController *)self dataSource];
  [v3 elasticBrightnessViewControllerValueUpdatesWillBegin:self];
}

- (void)noteContinuousValueInteractionDidEnd
{
  v3 = [(SBElasticBrightnessViewController *)self dataSource];
  [v3 elasticBrightnessViewControllerValueUpdatesDidEnd:self];
}

- (void)_debugHandleNextRoute
{
  debugOverrideBrightnessRoute = self->_debugOverrideBrightnessRoute;
  if (!SBBrightnessRouteTypeIsValid(debugOverrideBrightnessRoute))
  {
    debugOverrideBrightnessRoute = self->_activeBrightnessRoute;
  }

  v4 = 1;
  if (debugOverrideBrightnessRoute <= 1)
  {
    v4 = debugOverrideBrightnessRoute + 1;
  }

  self->_debugOverrideBrightnessRoute = v4;
}

@end