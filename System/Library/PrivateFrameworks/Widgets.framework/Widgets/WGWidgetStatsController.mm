@interface WGWidgetStatsController
- (WGWidgetDiscoveryController)discoveryController;
- (WGWidgetStatsController)initWithDiscoveryController:(id)controller;
- (void)_setupLaunchStats;
- (void)_teardownLaunchStats;
- (void)_updateFavoriteWidgetIdentifiers;
- (void)dealloc;
- (void)launchStats:(id)stats incomingRecommendationForBundleIDs:(id)ds completion:(id)completion;
- (void)setBootstrapFavoriteWidgets:(BOOL)widgets;
@end

@implementation WGWidgetStatsController

- (WGWidgetStatsController)initWithDiscoveryController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    [(WGWidgetStatsController *)a2 initWithDiscoveryController:?];
  }

  v10.receiver = self;
  v10.super_class = WGWidgetStatsController;
  v6 = [(WGWidgetStatsController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_discoveryController, controllerCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__favoriteWidgetIdentifiersDidUpdate_ name:@"WGWidgetFavoritesDidChange" object:controllerCopy];

    [(WGWidgetStatsController *)v7 _setupLaunchStats];
  }

  return v7;
}

- (void)dealloc
{
  [(WGWidgetStatsController *)self _teardownLaunchStats];
  v3.receiver = self;
  v3.super_class = WGWidgetStatsController;
  [(WGWidgetStatsController *)&v3 dealloc];
}

- (void)setBootstrapFavoriteWidgets:(BOOL)widgets
{
  if (self->_bootstrapFavoriteWidgets != widgets)
  {
    self->_bootstrapFavoriteWidgets = widgets;
    [(WGWidgetStatsController *)self _updateFavoriteWidgetIdentifiers];
  }
}

- (void)_teardownLaunchStats
{
  [(NCLaunchStats *)self->_launchStats setNCLaunchRecommendationHandlerWithCompletion:0];
  [(NCLaunchStats *)self->_launchStats setBootstrapWidgetIDs:0];
  launchStats = self->_launchStats;
  self->_launchStats = 0;
}

- (void)_setupLaunchStats
{
  objc_initWeak(&location, self);
  if (!self->_launchStats)
  {
    v3 = objc_alloc_init(MEMORY[0x277D2B628]);
    launchStats = self->_launchStats;
    self->_launchStats = v3;

    objc_initWeak(&from, self->_launchStats);
    [(WGWidgetStatsController *)self _updateFavoriteWidgetIdentifiers];
    v5 = self->_launchStats;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__WGWidgetStatsController__setupLaunchStats__block_invoke;
    v6[3] = &unk_279ED1570;
    objc_copyWeak(&v7, &location);
    objc_copyWeak(&v8, &from);
    [(NCLaunchStats *)v5 setNCLaunchRecommendationHandlerWithCompletion:v6];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&from);
  }

  objc_destroyWeak(&location);
}

void __44__WGWidgetStatsController__setupLaunchStats__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained launchStats:v7 incomingRecommendationForBundleIDs:v6 completion:v5];
}

- (void)launchStats:(id)stats incomingRecommendationForBundleIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  discoveryController = [(WGWidgetStatsController *)self discoveryController];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__WGWidgetStatsController_launchStats_incomingRecommendationForBundleIDs_completion___block_invoke;
  block[3] = &unk_279ED15C0;
  v14 = discoveryController;
  v15 = dsCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = dsCopy;
  v12 = discoveryController;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __85__WGWidgetStatsController_launchStats_incomingRecommendationForBundleIDs_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__WGWidgetStatsController_launchStats_incomingRecommendationForBundleIDs_completion___block_invoke_2;
  v3[3] = &unk_279ED1598;
  v4 = *(a1 + 48);
  [v1 handleWidgetLaunchRecommendation:v2 completion:v3];
}

uint64_t __85__WGWidgetStatsController_launchStats_incomingRecommendationForBundleIDs_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateFavoriteWidgetIdentifiers
{
  if (self->_bootstrapFavoriteWidgets)
  {
    discoveryController = [(WGWidgetStatsController *)self discoveryController];
    favoriteWidgetIdentifiers = [discoveryController favoriteWidgetIdentifiers];

    launchStats = self->_launchStats;
    v5 = [MEMORY[0x277CBEB98] setWithArray:favoriteWidgetIdentifiers];
    [(NCLaunchStats *)launchStats setBootstrapWidgetIDs:v5];
  }

  else
  {
    v6 = self->_launchStats;
    favoriteWidgetIdentifiers = [MEMORY[0x277CBEB98] set];
    [(NCLaunchStats *)v6 setBootstrapWidgetIDs:?];
  }
}

- (WGWidgetDiscoveryController)discoveryController
{
  WeakRetained = objc_loadWeakRetained(&self->_discoveryController);

  return WeakRetained;
}

- (void)initWithDiscoveryController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WGWidgetStatsController.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"discoveryController"}];
}

@end