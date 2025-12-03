@interface DBSListControllerAppearanceProvider
- (void)listController:(id)controller updateSectionContentInsetAnimated:(BOOL)animated isRegularWidth:(BOOL)width contentInsetInitialized:(BOOL)initialized contentInsetInitializedApplicator:(id)applicator;
@end

@implementation DBSListControllerAppearanceProvider

- (void)listController:(id)controller updateSectionContentInsetAnimated:(BOOL)animated isRegularWidth:(BOOL)width contentInsetInitialized:(BOOL)initialized contentInsetInitializedApplicator:(id)applicator
{
  initializedCopy = initialized;
  widthCopy = width;
  animatedCopy = animated;
  applicatorCopy = applicator;
  v13 = MEMORY[0x277D75418];
  controllerCopy = controller;
  currentDevice = [v13 currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if ((sf_isiPad & 1) != 0 || widthCopy)
  {
    v26.receiver = self;
    v26.super_class = DBSListControllerAppearanceProvider;
    [(PSListControllerDefaultAppearanceProvider *)&v26 listController:controllerCopy updateSectionContentInsetAnimated:animatedCopy isRegularWidth:widthCopy contentInsetInitialized:initializedCopy contentInsetInitializedApplicator:applicatorCopy];
  }

  else
  {
    v17 = *MEMORY[0x277D76F30];
    table = [controllerCopy table];

    if (animatedCopy && initializedCopy)
    {
      [table _setSectionContentInset:{v17, v17, v17, v17}];
      controllerCopy = table;
    }

    else
    {
      v19 = MEMORY[0x277D75D18];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __161__DBSListControllerAppearanceProvider_listController_updateSectionContentInsetAnimated_isRegularWidth_contentInsetInitialized_contentInsetInitializedApplicator___block_invoke;
      v20[3] = &unk_278459580;
      controllerCopy = table;
      v21 = controllerCopy;
      v22 = v17;
      v23 = v17;
      v24 = v17;
      v25 = v17;
      [v19 performWithoutAnimation:v20];
      applicatorCopy[2](applicatorCopy);
    }
  }
}

@end