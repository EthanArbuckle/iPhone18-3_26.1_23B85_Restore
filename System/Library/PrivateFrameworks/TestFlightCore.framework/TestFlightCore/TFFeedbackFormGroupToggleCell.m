@interface TFFeedbackFormGroupToggleCell
- (TFFeedbackFormGroupToggleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)applyContentsOfEntry:(id)a3;
- (void)didUpdateToggleSwitchValue:(id)a3;
- (void)prepareForReuse;
- (void)setDisplayedDataGroupInclusionBool:(BOOL)a3;
@end

@implementation TFFeedbackFormGroupToggleCell

- (TFFeedbackFormGroupToggleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = TFFeedbackFormGroupToggleCell;
  v4 = [(TFFeedbackFormBaseCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
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

- (void)applyContentsOfEntry:(id)a3
{
  v7 = a3;
  if ([v7 type] == 2)
  {
    [(TFFeedbackFormGroupToggleCell *)self setGroupToggleEntry:v7];
    v4 = [(TFFeedbackFormGroupToggleCell *)self groupToggleEntry];
    v5 = [v4 title];
    v6 = [(TFFeedbackFormGroupToggleCell *)self textLabel];
    [v6 setText:v5];
  }
}

- (void)setDisplayedDataGroupInclusionBool:(BOOL)a3
{
  v3 = a3;
  v4 = [(TFFeedbackFormGroupToggleCell *)self toggleSwitch];
  [v4 setOn:v3];
}

- (void)didUpdateToggleSwitchValue:(id)a3
{
  v4 = [(TFFeedbackFormGroupToggleCell *)self groupToggleEntry];

  if (v4)
  {
    v7 = [(TFFeedbackFormBaseCell *)self updateProxy];
    v5 = [(TFFeedbackFormGroupToggleCell *)self groupToggleEntry];
    v6 = [(TFFeedbackFormGroupToggleCell *)self toggleSwitch];
    [v7 didUpdateEntry:v5 toGroupInclusionBool:{objc_msgSend(v6, "isOn")}];
  }
}

@end