@interface PXStoryUIFactory
+ (id)feedViewControllerWithConfiguration:(id)a3;
+ (id)thumbnailActionPerformerWithModel:(id)a3;
+ (id)viewControllerWithConfiguration:(id)a3 contentViewController:(id *)a4;
@end

@implementation PXStoryUIFactory

+ (id)thumbnailActionPerformerWithModel:(id)a3
{
  v3 = a3;
  v4 = [NSClassFromString(&cfstr_Pustoryuiswift.isa) thumbnailActionPerformerWithModel:v3];

  return v4;
}

+ (id)feedViewControllerWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[PXFeedViewController alloc] initWithConfiguration:v3];

  return v4;
}

+ (id)viewControllerWithConfiguration:(id)a3 contentViewController:(id *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLStoryGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Create PXStory view controller with configuration: %@", &v9, 0xCu);
  }

  v7 = [NSClassFromString(&cfstr_Pustoryuiswift.isa) viewControllerWithConfiguration:v5 contentViewController:a4];

  return v7;
}

@end