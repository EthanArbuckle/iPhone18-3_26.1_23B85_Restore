@interface TFFeedbackFormGroupToggleCell
- (TFFeedbackFormGroupToggleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)applyContentsOfEntry:(id)entry;
- (void)didUpdateToggleSwitchValue:(id)value;
- (void)prepareForReuse;
- (void)setDisplayedDataGroupInclusionBool:(BOOL)bool;
@end

@implementation TFFeedbackFormGroupToggleCell

- (TFFeedbackFormGroupToggleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = TFFeedbackFormGroupToggleCell;
  v4 = [(TFFeedbackFormBaseCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75AE8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    toggleSwitch = v4->_toggleSwitch;
    v4->_toggleSwitch = v6;

    [(UISwitch *)v4->_toggleSwitch addTarget:v4 action:sel_didUpdateToggleSwitchValue_ forControlEvents:4096];
    [(TFFeedbackFormGroupToggleCell *)v4 setAccessoryView:v4->_toggleSwitch];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TFFeedbackFormGroupToggleCell;
  [(TFFeedbackFormGroupToggleCell *)&v3 prepareForReuse];
  [(TFFeedbackFormGroupToggleCell *)self setGroupToggleEntry:0];
}

- (void)applyContentsOfEntry:(id)entry
{
  entryCopy = entry;
  if ([entryCopy type] == 2)
  {
    [(TFFeedbackFormGroupToggleCell *)self setGroupToggleEntry:entryCopy];
    groupToggleEntry = [(TFFeedbackFormGroupToggleCell *)self groupToggleEntry];
    title = [groupToggleEntry title];
    textLabel = [(TFFeedbackFormGroupToggleCell *)self textLabel];
    [textLabel setText:title];
  }
}

- (void)setDisplayedDataGroupInclusionBool:(BOOL)bool
{
  boolCopy = bool;
  toggleSwitch = [(TFFeedbackFormGroupToggleCell *)self toggleSwitch];
  [toggleSwitch setOn:boolCopy];
}

- (void)didUpdateToggleSwitchValue:(id)value
{
  groupToggleEntry = [(TFFeedbackFormGroupToggleCell *)self groupToggleEntry];

  if (groupToggleEntry)
  {
    updateProxy = [(TFFeedbackFormBaseCell *)self updateProxy];
    groupToggleEntry2 = [(TFFeedbackFormGroupToggleCell *)self groupToggleEntry];
    toggleSwitch = [(TFFeedbackFormGroupToggleCell *)self toggleSwitch];
    [updateProxy didUpdateEntry:groupToggleEntry2 toGroupInclusionBool:{objc_msgSend(toggleSwitch, "isOn")}];
  }
}

@end