@interface CACElementNamesOverlayViewController
- (NSArray)items;
- (void)loadView;
- (void)setItems:(id)a3;
@end

@implementation CACElementNamesOverlayViewController

- (void)loadView
{
  v5 = objc_opt_new();
  v3 = objc_opt_new();
  [v3 setItemBackgroundViewCreationHandler:&__block_literal_global_12];
  [v5 setStyleProvider:v3];
  v4 = CACLogGeneral();
  [v5 setLoggingFacility:v4];

  [(CACElementNamesOverlayViewController *)self setView:v5];
}

id __48__CACElementNamesOverlayViewController_loadView__block_invoke()
{
  if (_UISolariumEnabled() && [MEMORY[0x277D79880] glassOverlaysEnabled])
  {
    v0 = objc_opt_new();
    [v0 vc_setWantsGlassAppearance:1];
    [v0 setOverrideUserInterfaceStyle:2];
  }

  else
  {
    v0 = objc_opt_new();
  }

  return v0;
}

- (void)setItems:(id)a3
{
  v4 = a3;
  v5 = [(CACElementNamesOverlayViewController *)self view];
  [v5 setItems:v4];
}

- (NSArray)items
{
  v2 = [(CACElementNamesOverlayViewController *)self view];
  v3 = [v2 items];

  return v3;
}

@end