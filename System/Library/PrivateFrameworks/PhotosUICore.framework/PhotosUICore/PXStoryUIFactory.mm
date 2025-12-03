@interface PXStoryUIFactory
+ (id)feedViewControllerWithConfiguration:(id)configuration;
+ (id)thumbnailActionPerformerWithModel:(id)model;
+ (id)viewControllerWithConfiguration:(id)configuration contentViewController:(id *)controller;
@end

@implementation PXStoryUIFactory

+ (id)thumbnailActionPerformerWithModel:(id)model
{
  modelCopy = model;
  v4 = [NSClassFromString(&cfstr_Pustoryuiswift.isa) thumbnailActionPerformerWithModel:modelCopy];

  return v4;
}

+ (id)feedViewControllerWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[PXFeedViewController alloc] initWithConfiguration:configurationCopy];

  return v4;
}

+ (id)viewControllerWithConfiguration:(id)configuration contentViewController:(id *)controller
{
  v11 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6 = PLStoryGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = configurationCopy;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Create PXStory view controller with configuration: %@", &v9, 0xCu);
  }

  v7 = [NSClassFromString(&cfstr_Pustoryuiswift.isa) viewControllerWithConfiguration:configurationCopy contentViewController:controller];

  return v7;
}

@end