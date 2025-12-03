@interface WFAutomationSwitchCell
- (WFAutomationSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation WFAutomationSwitchCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WFAutomationSwitchCell;
  [(WFAutomationSwitchCell *)&v4 prepareForReuse];
  textLabel = [(WFAutomationSwitchCell *)self textLabel];
  [textLabel setText:0];
}

- (WFAutomationSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = WFAutomationSwitchCell;
  v4 = [(WFAutomationSwitchCell *)&v10 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WFAutomationSwitchCell *)v4 setAccessoryType:0];
    v6 = objc_alloc_init(MEMORY[0x277D75AE8]);
    switchControl = v5->_switchControl;
    v5->_switchControl = v6;

    [(WFAutomationSwitchCell *)v5 setAccessoryView:v5->_switchControl];
    v8 = v5;
  }

  return v5;
}

@end