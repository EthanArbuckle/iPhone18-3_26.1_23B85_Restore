@interface OMTextFieldTableViewCell
- (void)setTextField:(id)field;
@end

@implementation OMTextFieldTableViewCell

- (void)setTextField:(id)field
{
  v33[4] = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  textField = [(OMTextFieldTableViewCell *)self textField];

  if (textField != fieldCopy)
  {
    obj = field;
    textField2 = [(OMTextFieldTableViewCell *)self textField];

    if (textField2)
    {
      textField3 = [(OMTextFieldTableViewCell *)self textField];
      [textField3 removeFromSuperview];
    }

    [fieldCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(OMTextFieldTableViewCell *)self contentView];
    [contentView addSubview:fieldCopy];

    v23 = MEMORY[0x1E696ACD8];
    topAnchor = [fieldCopy topAnchor];
    contentView2 = [(OMTextFieldTableViewCell *)self contentView];
    safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    v33[0] = v27;
    bottomAnchor = [fieldCopy bottomAnchor];
    contentView3 = [(OMTextFieldTableViewCell *)self contentView];
    safeAreaLayoutGuide2 = [contentView3 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
    v33[1] = v21;
    leadingAnchor = [fieldCopy leadingAnchor];
    contentView4 = [(OMTextFieldTableViewCell *)self contentView];
    safeAreaLayoutGuide3 = [contentView4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v33[2] = v11;
    trailingAnchor = [fieldCopy trailingAnchor];
    contentView5 = [(OMTextFieldTableViewCell *)self contentView];
    safeAreaLayoutGuide4 = [contentView5 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v33[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v23 activateConstraints:v17];

    objc_storeStrong(&self->_textField, obj);
  }
}

@end