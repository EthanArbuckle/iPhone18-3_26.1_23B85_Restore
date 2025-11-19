@interface WFFocusConfigurationContextualActionOptions
- (WFFocusConfigurationContextualActionOptions)initWithContextualAction:(id)a3 footerButtons:(id)a4 showsEnablementButton:(BOOL)a5 isEnabled:(BOOL)a6 mastheadTintColor:(id)a7;
@end

@implementation WFFocusConfigurationContextualActionOptions

- (WFFocusConfigurationContextualActionOptions)initWithContextualAction:(id)a3 footerButtons:(id)a4 showsEnablementButton:(BOOL)a5 isEnabled:(BOOL)a6 mastheadTintColor:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationOptions.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"contextualAction"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"WFFocusConfigurationOptions.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"footerButtons"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = WFFocusConfigurationContextualActionOptions;
  v17 = [(WFFocusConfigurationContextualActionOptions *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contextualAction, a3);
    objc_storeStrong(&v18->_footerButtons, a4);
    v18->_showsEnablementButton = a5;
    v18->_enabled = a6;
    objc_storeStrong(&v18->_mastheadTintColor, a7);
    v19 = v18;
  }

  return v18;
}

@end