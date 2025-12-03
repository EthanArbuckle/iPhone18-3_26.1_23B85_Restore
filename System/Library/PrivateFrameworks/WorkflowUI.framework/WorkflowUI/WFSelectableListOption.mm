@interface WFSelectableListOption
- (WFSelectableListOption)initWithDisplayTitle:(id)title value:(id)value;
@end

@implementation WFSelectableListOption

- (WFSelectableListOption)initWithDisplayTitle:(id)title value:(id)value
{
  titleCopy = title;
  valueCopy = value;
  v9 = valueCopy;
  if (titleCopy)
  {
    if (valueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerTableViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"displayTitle"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTriggerTableViewController.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFSelectableListOption;
  v10 = [(WFSelectableListOption *)&v17 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    displayTitle = v10->_displayTitle;
    v10->_displayTitle = v11;

    objc_storeStrong(&v10->_value, value);
    v13 = v10;
  }

  return v10;
}

@end