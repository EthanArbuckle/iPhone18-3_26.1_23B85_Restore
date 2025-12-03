@interface WFFocusConfigurationHostContext
+ (id)_allowedItemPayloadClasses;
- (WFFocusConfigurationHostContextDelegate)focusConfigurationDelegate;
- (void)configurationUIStateDidUpdate:(id)update;
- (void)didPressButtonWithIdentifier:(id)identifier cellFrame:(CGRect)frame;
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

- (void)didPressButtonWithIdentifier:(id)identifier cellFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  identifierCopy = identifier;
  focusConfigurationDelegate = [(WFFocusConfigurationHostContext *)self focusConfigurationDelegate];
  [focusConfigurationDelegate focusConfigurationHostContext:self didPressButtonWithIdentifier:identifierCopy cellFrame:{x, y, width, height}];
}

- (void)configurationUIStateDidUpdate:(id)update
{
  updateCopy = update;
  focusConfigurationDelegate = [(WFFocusConfigurationHostContext *)self focusConfigurationDelegate];
  [focusConfigurationDelegate focusConfigurationHostContext:self configurationUIStateDidChange:updateCopy];
}

@end