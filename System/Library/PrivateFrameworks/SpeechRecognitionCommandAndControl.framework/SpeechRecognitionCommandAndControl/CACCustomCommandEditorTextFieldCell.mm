@interface CACCustomCommandEditorTextFieldCell
- (CACCustomCommandEditorTextFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CACCustomCommandEditorTextFieldCell

- (CACCustomCommandEditorTextFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v41[8] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = CACCustomCommandEditorTextFieldCell;
  v4 = [(CACCustomCommandEditorTextFieldCell *)&v40 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75BB8]);
    textField = v4->_textField;
    v4->_textField = v5;

    [(UITextField *)v4->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextField *)v4->_textField setFont:v7];

    v8 = [(CACCustomCommandEditorTextFieldCell *)v4 contentView];
    [v8 addSubview:v4->_textField];
    v9 = objc_alloc_init(MEMORY[0x277D756D0]);
    [v8 addLayoutGuide:v9];
    v29 = MEMORY[0x277CCAAD0];
    v39 = [(UITextField *)v4->_textField firstBaselineAnchor];
    v38 = [v9 topAnchor];
    v37 = [v39 constraintEqualToSystemSpacingBelowAnchor:v38 multiplier:1.0];
    v41[0] = v37;
    v36 = [v9 bottomAnchor];
    v35 = [(UITextField *)v4->_textField lastBaselineAnchor];
    v34 = [v36 constraintEqualToSystemSpacingBelowAnchor:v35 multiplier:1.0];
    v41[1] = v34;
    v32 = [(UITextField *)v4->_textField leadingAnchor];
    v33 = [v8 layoutMarginsGuide];
    v31 = [v33 leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v41[2] = v30;
    v27 = [(UITextField *)v4->_textField trailingAnchor];
    v28 = [v8 layoutMarginsGuide];
    v26 = [v28 trailingAnchor];
    v24 = [v27 constraintEqualToAnchor:v26];
    v41[3] = v24;
    v23 = [v8 heightAnchor];
    v22 = [v23 constraintGreaterThanOrEqualToConstant:44.0];
    v41[4] = v22;
    v21 = [v9 topAnchor];
    v20 = [v8 topAnchor];
    v10 = [v21 constraintGreaterThanOrEqualToAnchor:v20];
    v41[5] = v10;
    v11 = v9;
    v25 = v9;
    v12 = [v9 bottomAnchor];
    v13 = [v8 bottomAnchor];
    v14 = [v12 constraintLessThanOrEqualToAnchor:v13];
    v41[6] = v14;
    v15 = [v11 centerYAnchor];
    v16 = [v8 centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v41[7] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:8];
    [v29 activateConstraints:v18];
  }

  return v4;
}

@end