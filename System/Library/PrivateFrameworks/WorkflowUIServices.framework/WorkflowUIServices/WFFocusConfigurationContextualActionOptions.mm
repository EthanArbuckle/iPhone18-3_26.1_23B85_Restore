@interface WFFocusConfigurationContextualActionOptions
- (WFFocusConfigurationContextualActionOptions)initWithContextualAction:(id)action footerButtons:(id)buttons showsEnablementButton:(BOOL)button isEnabled:(BOOL)enabled mastheadTintColor:(id)color;
@end

@implementation WFFocusConfigurationContextualActionOptions

- (WFFocusConfigurationContextualActionOptions)initWithContextualAction:(id)action footerButtons:(id)buttons showsEnablementButton:(BOOL)button isEnabled:(BOOL)enabled mastheadTintColor:(id)color
{
  actionCopy = action;
  buttonsCopy = buttons;
  colorCopy = color;
  if (actionCopy)
  {
    if (buttonsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationOptions.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"contextualAction"}];

    if (buttonsCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationOptions.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"footerButtons"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = WFFocusConfigurationContextualActionOptions;
  v17 = [(WFFocusConfigurationContextualActionOptions *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contextualAction, action);
    objc_storeStrong(&v18->_footerButtons, buttons);
    v18->_showsEnablementButton = button;
    v18->_enabled = enabled;
    objc_storeStrong(&v18->_mastheadTintColor, color);
    v19 = v18;
  }

  return v18;
}

@end