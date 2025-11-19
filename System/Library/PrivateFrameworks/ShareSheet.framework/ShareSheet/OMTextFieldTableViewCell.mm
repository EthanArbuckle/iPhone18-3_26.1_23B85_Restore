@interface OMTextFieldTableViewCell
- (void)setTextField:(id)a3;
@end

@implementation OMTextFieldTableViewCell

- (void)setTextField:(id)a3
{
  v33[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(OMTextFieldTableViewCell *)self textField];

  if (v6 != v5)
  {
    obj = a3;
    v7 = [(OMTextFieldTableViewCell *)self textField];

    if (v7)
    {
      v8 = [(OMTextFieldTableViewCell *)self textField];
      [v8 removeFromSuperview];
    }

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(OMTextFieldTableViewCell *)self contentView];
    [v9 addSubview:v5];

    v23 = MEMORY[0x1E696ACD8];
    v30 = [v5 topAnchor];
    v31 = [(OMTextFieldTableViewCell *)self contentView];
    v29 = [v31 safeAreaLayoutGuide];
    v28 = [v29 topAnchor];
    v27 = [v30 constraintEqualToAnchor:v28 constant:12.0];
    v33[0] = v27;
    v25 = [v5 bottomAnchor];
    v26 = [(OMTextFieldTableViewCell *)self contentView];
    v24 = [v26 safeAreaLayoutGuide];
    v22 = [v24 bottomAnchor];
    v21 = [v25 constraintEqualToAnchor:v22 constant:-12.0];
    v33[1] = v21;
    v19 = [v5 leadingAnchor];
    v20 = [(OMTextFieldTableViewCell *)self contentView];
    v18 = [v20 safeAreaLayoutGuide];
    v10 = [v18 leadingAnchor];
    v11 = [v19 constraintEqualToAnchor:v10 constant:20.0];
    v33[2] = v11;
    v12 = [v5 trailingAnchor];
    v13 = [(OMTextFieldTableViewCell *)self contentView];
    v14 = [v13 safeAreaLayoutGuide];
    v15 = [v14 trailingAnchor];
    v16 = [v12 constraintEqualToAnchor:v15 constant:-20.0];
    v33[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v23 activateConstraints:v17];

    objc_storeStrong(&self->_textField, obj);
  }
}

@end