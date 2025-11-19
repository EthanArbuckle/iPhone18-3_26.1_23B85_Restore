@interface WFSelectableListOption
- (WFSelectableListOption)initWithDisplayTitle:(id)a3 value:(id)a4;
@end

@implementation WFSelectableListOption

- (WFSelectableListOption)initWithDisplayTitle:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFTriggerTableViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"displayTitle"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFTriggerTableViewController.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFSelectableListOption;
  v10 = [(WFSelectableListOption *)&v17 init];
  if (v10)
  {
    v11 = [v7 copy];
    displayTitle = v10->_displayTitle;
    v10->_displayTitle = v11;

    objc_storeStrong(&v10->_value, a4);
    v13 = v10;
  }

  return v10;
}

@end