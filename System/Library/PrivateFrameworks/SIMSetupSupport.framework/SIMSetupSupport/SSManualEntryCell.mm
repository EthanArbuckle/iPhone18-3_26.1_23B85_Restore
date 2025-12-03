@interface SSManualEntryCell
- (void)disablePredicativeTextForTextField:(id)field;
- (void)prepareForReuse;
- (void)setupConstraints;
- (void)setupViewsWithTag:(int64_t)tag delegate:(id)delegate;
- (void)setupWithDelegate:(id)delegate indexPath:(id)path;
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

- (void)setupWithDelegate:(id)delegate indexPath:(id)path
{
  delegateCopy = delegate;
  -[SSManualEntryCell setupViewsWithTag:delegate:](self, "setupViewsWithTag:delegate:", [path row], delegateCopy);

  [(SSManualEntryCell *)self setupConstraints];
}

- (void)disablePredicativeTextForTextField:(id)field
{
  fieldCopy = field;
  [fieldCopy setAutocorrectionType:1];
  [fieldCopy setSpellCheckingType:1];
  [fieldCopy setSmartInsertDeleteType:1];
  [fieldCopy setSmartQuotesType:1];
  [fieldCopy setSmartDashesType:1];
}

- (void)setupViewsWithTag:(int64_t)tag delegate:(id)delegate
{
  v6 = MEMORY[0x277D75BB8];
  delegateCopy = delegate;
  v8 = objc_alloc_init(v6);
  editableTextField = self->_editableTextField;
  self->_editableTextField = v8;

  [(UITextField *)self->_editableTextField setTag:tag];
  [(UITextField *)self->_editableTextField setDelegate:delegateCopy];

  [(UITextField *)self->_editableTextField setAutocapitalizationType:0];
  [(UITextField *)self->_editableTextField setAutocorrectionType:1];
  [(UITextField *)self->_editableTextField setUserInteractionEnabled:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UITextField *)self->_editableTextField setBackgroundColor:clearColor];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v13 = [uUIDString substringToIndex:6];
  [(UITextField *)self->_editableTextField setPlaceholder:v13];

  [(UITextField *)self->_editableTextField setClearButtonMode:1];
  [(UITextField *)self->_editableTextField setMinimumFontSize:8.0];
  [(UITextField *)self->_editableTextField setKeyboardType:1];
  [(UITextField *)self->_editableTextField setReturnKeyType:9];
  [(UITextField *)self->_editableTextField setEnablesReturnKeyAutomatically:1];
  [(UITextField *)self->_editableTextField setClipsToBounds:1];
  [(SSManualEntryCell *)self disablePredicativeTextForTextField:self->_editableTextField];
  contentView = [(SSManualEntryCell *)self contentView];
  [contentView addSubview:self->_editableTextField];

  textLabel = [(SSManualEntryCell *)self textLabel];
  font = [textLabel font];

  v17 = MEMORY[0x277D74300];
  fontDescriptor = [font fontDescriptor];
  v19 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
  [font pointSize];
  v24 = [v17 fontWithDescriptor:v19 size:?];

  textLabel2 = [(SSManualEntryCell *)self textLabel];
  [textLabel2 setFont:v24];

  editableTextField = [(SSManualEntryCell *)self editableTextField];
  [editableTextField setFont:v24];

  editableTextField2 = [(SSManualEntryCell *)self editableTextField];
  [editableTextField2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(SSManualEntryCell *)self contentView];
  [contentView2 setUserInteractionEnabled:1];
}

- (void)setupConstraints
{
  contentView = [(SSManualEntryCell *)self contentView];
  v4 = MEMORY[0x277CCAAD0];
  editableTextField = self->_editableTextField;
  contentView2 = [(SSManualEntryCell *)self contentView];
  v7 = [v4 constraintWithItem:editableTextField attribute:3 relatedBy:0 toItem:contentView2 attribute:3 multiplier:1.0 constant:15.0];
  [contentView addConstraint:v7];

  contentView3 = [(SSManualEntryCell *)self contentView];
  v9 = MEMORY[0x277CCAAD0];
  v10 = self->_editableTextField;
  contentView4 = [(SSManualEntryCell *)self contentView];
  v12 = [v9 constraintWithItem:v10 attribute:5 relatedBy:0 toItem:contentView4 attribute:5 multiplier:1.0 constant:15.0];
  [contentView3 addConstraint:v12];

  contentView5 = [(SSManualEntryCell *)self contentView];
  v14 = MEMORY[0x277CCAAD0];
  v15 = self->_editableTextField;
  contentView6 = [(SSManualEntryCell *)self contentView];
  v17 = [v14 constraintWithItem:v15 attribute:6 relatedBy:0 toItem:contentView6 attribute:6 multiplier:1.0 constant:-15.0];
  [contentView5 addConstraint:v17];

  contentView7 = [(SSManualEntryCell *)self contentView];
  v18 = MEMORY[0x277CCAAD0];
  v19 = self->_editableTextField;
  contentView8 = [(SSManualEntryCell *)self contentView];
  v21 = [v18 constraintWithItem:v19 attribute:4 relatedBy:0 toItem:contentView8 attribute:4 multiplier:1.0 constant:-15.0];
  [contentView7 addConstraint:v21];
}

@end