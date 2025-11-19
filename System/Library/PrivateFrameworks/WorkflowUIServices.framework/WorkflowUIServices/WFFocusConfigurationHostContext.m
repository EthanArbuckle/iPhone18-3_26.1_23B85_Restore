@interface WFFocusConfigurationHostContext
+ (id)_allowedItemPayloadClasses;
- (WFFocusConfigurationHostContextDelegate)focusConfigurationDelegate;
- (void)configurationUIStateDidUpdate:(id)a3;
- (void)didPressButtonWithIdentifier:(id)a3 cellFrame:(CGRect)a4;
@end

@implementation WFFocusConfigurationHostContext

+ (id)_allowedItemPayloadClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (WFFocusConfigurationHostContextDelegate)focusConfigurationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_focusConfigurationDelegate);

  return WeakRetained;
}

- (void)didPressButtonWithIdentifier:(id)a3 cellFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(WFFocusConfigurationHostContext *)self focusConfigurationDelegate];
  [v10 focusConfigurationHostContext:self didPressButtonWithIdentifier:v9 cellFrame:{x, y, width, height}];
}

- (void)configurationUIStateDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(WFFocusConfigurationHostContext *)self focusConfigurationDelegate];
  [v5 focusConfigurationHostContext:self configurationUIStateDidChange:v4];
}

@end