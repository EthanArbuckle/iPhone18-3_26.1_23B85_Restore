@interface SSManualEntryCell
- (void)disablePredicativeTextForTextField:(id)a3;
- (void)prepareForReuse;
- (void)setupConstraints;
- (void)setupViewsWithTag:(int64_t)a3 delegate:(id)a4;
- (void)setupWithDelegate:(id)a3 indexPath:(id)a4;
@end

@implementation SSManualEntryCell

- (void)prepareForReuse
{
  if ([(UITextField *)self->_editableTextField isFirstResponder])
  {
    [(UITextField *)self->_editableTextField resignFirstResponder];
  }

  [(UITextField *)self->_editableTextField setText:&stru_28753DF48];
  [(UITextField *)self->_editableTextField setPlaceholder:&stru_28753DF48];
  [(UITextField *)self->_editableTextField setDelegate:0];
  [(UITextField *)self->_editableTextField setUserInteractionEnabled:1];
  [(SSManualEntryCell *)self disablePredicativeTextForTextField:self->_editableTextField];
  v3.receiver = self;
  v3.super_class = SSManualEntryCell;
  [(SSManualEntryCell *)&v3 prepareForReuse];
}

- (void)setupWithDelegate:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  -[SSManualEntryCell setupViewsWithTag:delegate:](self, "setupViewsWithTag:delegate:", [a4 row], v6);

  [(SSManualEntryCell *)self setupConstraints];
}

- (void)disablePredicativeTextForTextField:(id)a3
{
  v3 = a3;
  [v3 setAutocorrectionType:1];
  [v3 setSpellCheckingType:1];
  [v3 setSmartInsertDeleteType:1];
  [v3 setSmartQuotesType:1];
  [v3 setSmartDashesType:1];
}

- (void)setupViewsWithTag:(int64_t)a3 delegate:(id)a4
{
  v6 = MEMORY[0x277D75BB8];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  editableTextField = self->_editableTextField;
  self->_editableTextField = v8;

  [(UITextField *)self->_editableTextField setTag:a3];
  [(UITextField *)self->_editableTextField setDelegate:v7];

  [(UITextField *)self->_editableTextField setAutocapitalizationType:0];
  [(UITextField *)self->_editableTextField setAutocorrectionType:1];
  [(UITextField *)self->_editableTextField setUserInteractionEnabled:1];
  v10 = [MEMORY[0x277D75348] clearColor];
  [(UITextField *)self->_editableTextField setBackgroundColor:v10];

  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v11 UUIDString];
  v13 = [v12 substringToIndex:6];
  [(UITextField *)self->_editableTextField setPlaceholder:v13];

  [(UITextField *)self->_editableTextField setClearButtonMode:1];
  [(UITextField *)self->_editableTextField setMinimumFontSize:8.0];
  [(UITextField *)self->_editableTextField setKeyboardType:1];
  [(UITextField *)self->_editableTextField setReturnKeyType:9];
  [(UITextField *)self->_editableTextField setEnablesReturnKeyAutomatically:1];
  [(UITextField *)self->_editableTextField setClipsToBounds:1];
  [(SSManualEntryCell *)self disablePredicativeTextForTextField:self->_editableTextField];
  v14 = [(SSManualEntryCell *)self contentView];
  [v14 addSubview:self->_editableTextField];

  v15 = [(SSManualEntryCell *)self textLabel];
  v16 = [v15 font];

  v17 = MEMORY[0x277D74300];
  v18 = [v16 fontDescriptor];
  v19 = [v18 fontDescriptorWithSymbolicTraits:2];
  [v16 pointSize];
  v24 = [v17 fontWithDescriptor:v19 size:?];

  v20 = [(SSManualEntryCell *)self textLabel];
  [v20 setFont:v24];

  v21 = [(SSManualEntryCell *)self editableTextField];
  [v21 setFont:v24];

  v22 = [(SSManualEntryCell *)self editableTextField];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(SSManualEntryCell *)self contentView];
  [v23 setUserInteractionEnabled:1];
}

- (void)setupConstraints
{
  v3 = [(SSManualEntryCell *)self contentView];
  v4 = MEMORY[0x277CCAAD0];
  editableTextField = self->_editableTextField;
  v6 = [(SSManualEntryCell *)self contentView];
  v7 = [v4 constraintWithItem:editableTextField attribute:3 relatedBy:0 toItem:v6 attribute:3 multiplier:1.0 constant:15.0];
  [v3 addConstraint:v7];

  v8 = [(SSManualEntryCell *)self contentView];
  v9 = MEMORY[0x277CCAAD0];
  v10 = self->_editableTextField;
  v11 = [(SSManualEntryCell *)self contentView];
  v12 = [v9 constraintWithItem:v10 attribute:5 relatedBy:0 toItem:v11 attribute:5 multiplier:1.0 constant:15.0];
  [v8 addConstraint:v12];

  v13 = [(SSManualEntryCell *)self contentView];
  v14 = MEMORY[0x277CCAAD0];
  v15 = self->_editableTextField;
  v16 = [(SSManualEntryCell *)self contentView];
  v17 = [v14 constraintWithItem:v15 attribute:6 relatedBy:0 toItem:v16 attribute:6 multiplier:1.0 constant:-15.0];
  [v13 addConstraint:v17];

  v22 = [(SSManualEntryCell *)self contentView];
  v18 = MEMORY[0x277CCAAD0];
  v19 = self->_editableTextField;
  v20 = [(SSManualEntryCell *)self contentView];
  v21 = [v18 constraintWithItem:v19 attribute:4 relatedBy:0 toItem:v20 attribute:4 multiplier:1.0 constant:-15.0];
  [v22 addConstraint:v21];
}

@end