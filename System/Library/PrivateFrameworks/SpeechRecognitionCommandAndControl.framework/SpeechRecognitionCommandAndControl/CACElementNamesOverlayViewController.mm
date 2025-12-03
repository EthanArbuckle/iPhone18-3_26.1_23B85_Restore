@interface CACElementNamesOverlayViewController
- (NSArray)items;
- (void)loadView;
- (void)setItems:(id)items;
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

- (void)setItems:(id)items
{
  itemsCopy = items;
  view = [(CACElementNamesOverlayViewController *)self view];
  [view setItems:itemsCopy];
}

- (NSArray)items
{
  view = [(CACElementNamesOverlayViewController *)self view];
  items = [view items];

  return items;
}

@end