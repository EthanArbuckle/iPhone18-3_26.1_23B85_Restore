@interface CACCustomCommandEditorTextFieldCell
- (CACCustomCommandEditorTextFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CACCustomCommandEditorTextFieldCell

- (CACCustomCommandEditorTextFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v41[8] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = CACCustomCommandEditorTextFieldCell;
  v4 = [(CACCustomCommandEditorTextFieldCell *)&v40 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75BB8]);
    textField = v4->_textField;
    v4->_textField = v5;

    [(UITextField *)v4->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextField *)v4->_textField setFont:v7];

    contentView = [(CACCustomCommandEditorTextFieldCell *)v4 contentView];
    [contentView addSubview:v4->_textField];
    v9 = objc_alloc_init(MEMORY[0x277D756D0]);
    [contentView addLayoutGuide:v9];
    v29 = MEMORY[0x277CCAAD0];
    firstBaselineAnchor = [(UITextField *)v4->_textField firstBaselineAnchor];
    topAnchor = [v9 topAnchor];
    v37 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:1.0];
    v41[0] = v37;
    bottomAnchor = [v9 bottomAnchor];
    lastBaselineAnchor = [(UITextField *)v4->_textField lastBaselineAnchor];
    v34 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    v41[1] = v34;
    leadingAnchor = [(UITextField *)v4->_textField leadingAnchor];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v41[2] = v30;
    trailingAnchor = [(UITextField *)v4->_textField trailingAnchor];
    layoutMarginsGuide2 = [contentView layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v41[3] = v24;
    heightAnchor = [contentView heightAnchor];
    v22 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
    v41[4] = v22;
    topAnchor2 = [v9 topAnchor];
    topAnchor3 = [contentView topAnchor];
    v10 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3];
    v41[5] = v10;
    v11 = v9;
    v25 = v9;
    bottomAnchor2 = [v9 bottomAnchor];
    bottomAnchor3 = [contentView bottomAnchor];
    v14 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
    v41[6] = v14;
    centerYAnchor = [v11 centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v41[7] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:8];
    [v29 activateConstraints:v18];
  }

  return v4;
}

@end