@interface SBAnalyticsEventsControllerForIconController
- (SBAnalyticsEventsControllerForIconController)initWithIconModel:(id)model;
- (void)_analyticsLoggingForDisplayZoomMode;
- (void)_analyticsLoggingForFixedIconLocation;
- (void)_analyticsLoggingForOptimizedHomeScreen;
- (void)significantTimeChanged;
- (void)updateIconModel:(id)model;
@end

@implementation SBAnalyticsEventsControllerForIconController

- (SBAnalyticsEventsControllerForIconController)initWithIconModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = SBAnalyticsEventsControllerForIconController;
  v6 = [(SBAnalyticsEventsControllerForIconController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconModel, model);
    v8 = objc_alloc(MEMORY[0x277D66118]);
    v9 = [v8 initWithEventsControllerDomain:*MEMORY[0x277D66498]];
    analyticsEventsController = v7->_analyticsEventsController;
    v7->_analyticsEventsController = v9;

    [(SBHAnalyticsEventsController *)v7->_analyticsEventsController addProvider:v7];
  }

  return v7;
}

- (void)updateIconModel:(id)model
{
  modelCopy = model;
  iconModel = self->_iconModel;
  p_iconModel = &self->_iconModel;
  if (iconModel != modelCopy)
  {
    v8 = modelCopy;
    objc_storeStrong(p_iconModel, model);
    modelCopy = v8;
  }
}

- (void)significantTimeChanged
{
  [(SBAnalyticsEventsControllerForIconController *)self _analyticsLoggingForOptimizedHomeScreen];
  [(SBAnalyticsEventsControllerForIconController *)self _analyticsLoggingForDisplayZoomMode];

  [(SBAnalyticsEventsControllerForIconController *)self _analyticsLoggingForFixedIconLocation];
}

- (void)_analyticsLoggingForOptimizedHomeScreen
{
  v3 = +[SBDefaults localDefaults];
  homeScreenDefaults = [v3 homeScreenDefaults];
  [homeScreenDefaults automaticallyAddsNewApplications];

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  rootFolder = [(SBAnalyticsEventsControllerForIconController *)self rootFolder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__SBAnalyticsEventsControllerForIconController__analyticsLoggingForOptimizedHomeScreen__block_invoke;
  v9[3] = &unk_2783B0060;
  v9[4] = v10;
  [rootFolder enumerateAllIconsUsingBlock:v9];

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  rootFolder2 = [(SBAnalyticsEventsControllerForIconController *)self rootFolder];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__SBAnalyticsEventsControllerForIconController__analyticsLoggingForOptimizedHomeScreen__block_invoke_2;
  v7[3] = &unk_2783B0060;
  v7[4] = v8;
  [rootFolder2 enumerateAllIconsWithOptions:3 usingBlock:v7];

  AnalyticsSendEventLazy();
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
}

uint64_t __87__SBAnalyticsEventsControllerForIconController__analyticsLoggingForOptimizedHomeScreen__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isApplicationIcon];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t __87__SBAnalyticsEventsControllerForIconController__analyticsLoggingForOptimizedHomeScreen__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isApplicationIcon];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

id __87__SBAnalyticsEventsControllerForIconController__analyticsLoggingForOptimizedHomeScreen__block_invoke_3(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D664B0];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[0] = v2;
  v6[1] = *MEMORY[0x277D664A8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)_analyticsLoggingForDisplayZoomMode
{
  SBHScreenTypeForCurrentDevice();
  if ((SBHScreenTypeIsMoreSpace() & 1) == 0)
  {
    SBHScreenTypeForCurrentDevice();
    SBHScreenTypeIsZoomed();
  }

  AnalyticsSendEventLazy();
}

id __83__SBAnalyticsEventsControllerForIconController__analyticsLoggingForDisplayZoomMode__block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D66488];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v7[0] = v2;
  v6[1] = *MEMORY[0x277D66490];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)_analyticsLoggingForFixedIconLocation
{
  rootFolder = [(SBAnalyticsEventsControllerForIconController *)self rootFolder];
  [rootFolder enumerateListsWithOptions:4 usingBlock:&__block_literal_global_166];
}

void __85__SBAnalyticsEventsControllerForIconController__analyticsLoggingForFixedIconLocation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  AnalyticsSendEventLazy();
}

id __85__SBAnalyticsEventsControllerForIconController__analyticsLoggingForFixedIconLocation__block_invoke_2(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D664C0];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v7[0] = v2;
  v6[1] = *MEMORY[0x277D664C8];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "hasFixedIconLocations")}];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end