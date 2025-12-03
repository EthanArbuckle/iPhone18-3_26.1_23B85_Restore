@interface _UIUserDefaultsHostActivity
- (id)activityViewController;
- (void)_prepareActivityViewControllerIfNeeded;
- (void)activityDidFinish:(BOOL)finish items:(id)items error:(id)error;
@end

@implementation _UIUserDefaultsHostActivity

- (id)activityViewController
{
  [(_UIUserDefaultsHostActivity *)self _prepareActivityViewControllerIfNeeded];

  return [(_UIUserDefaultsHostActivity *)self presentableActivityViewController];
}

- (void)activityDidFinish:(BOOL)finish items:(id)items error:(id)error
{
  v8.receiver = self;
  v8.super_class = _UIUserDefaultsHostActivity;
  [(UIActivity *)&v8 activityDidFinish:finish items:items error:error];
  presentableActivityViewController = [(_UIUserDefaultsHostActivity *)self presentableActivityViewController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___UIUserDefaultsHostActivity_activityDidFinish_items_error___block_invoke;
  v7[3] = &unk_1E71F9510;
  v7[4] = self;
  [presentableActivityViewController dismissViewControllerAnimated:1 completion:v7];
}

- (void)_prepareActivityViewControllerIfNeeded
{
  presentableActivityViewController = [(_UIUserDefaultsHostActivity *)self presentableActivityViewController];

  if (!presentableActivityViewController)
  {
    v4 = [_UIActivityUserDefaultsViewController alloc];
    availableActivities = [(_UIUserDefaultsActivity *)self availableActivities];
    userDefaults = [(_UIUserDefaultsActivity *)self userDefaults];
    v12 = [(_UIActivityUserDefaultsViewController *)v4 initWithActivities:availableActivities userDefaults:userDefaults];

    v7 = _ShareSheetBundle();
    v8 = [v7 localizedStringForKey:@"Activities" value:@"Activities" table:@"Localizable"];
    [(_UIActivityUserDefaultsViewController *)v12 setTitle:v8];

    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__settingsViewControllerDidDismiss_];
    navigationItem = [(_UIActivityUserDefaultsViewController *)v12 navigationItem];
    [navigationItem setRightBarButtonItem:v9];

    v11 = [[_UIUserDefaultsActivityPresentableViewController alloc] initWithUserDefaultsViewController:v12];
    [(_UIUserDefaultsHostActivity *)self setPresentableActivityViewController:v11];
  }
}

@end