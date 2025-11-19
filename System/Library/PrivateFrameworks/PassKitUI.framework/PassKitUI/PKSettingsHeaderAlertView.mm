@interface PKSettingsHeaderAlertView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKSettingsHeaderAlertView)initWithSpecifier:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKSettingsHeaderAlertView

- (PKSettingsHeaderAlertView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PKSettingsHeaderAlertView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD168]);
    textView = v5->_textView;
    v5->_textView = v6;

    v8 = [v4 propertyForKey:@"settingsAlertHeaderText"];
    headerText = v5->_headerText;
    v5->_headerText = v8;

    v10 = [v4 propertyForKey:@"settingsAlertDescriptionText"];
    descriptionText = v5->_descriptionText;
    v5->_descriptionText = v10;

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v5->_headerText, v5->_descriptionText];
    [(UITextView *)v5->_textView setText:v12];
    v13 = v5->_textView;
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v13 setBackgroundColor:v14];

    [(UITextView *)v5->_textView setShowsVerticalScrollIndicator:0];
    [(UITextView *)v5->_textView setEditable:0];
    [(UITextView *)v5->_textView setSelectable:0];
    [(UITextView *)v5->_textView setScrollEnabled:0];
    v15 = v5->_textView;
    v16 = [MEMORY[0x1E69DC888] systemDarkRedColor];
    [(UITextView *)v15 setTextColor:v16];

    v17 = v5->_textView;
    v18 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [(UITextView *)v17 setFont:v18];

    [(PKSettingsHeaderAlertView *)v5 addSubview:v5->_textView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = PKSettingsHeaderAlertView;
  [(PKSettingsHeaderAlertView *)&v22 layoutSubviews];
  PSTextViewInsets();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  PSTableSectionFooterTopPad();
  v10 = v9 - v4;
  PreferencesTableViewCellLeftPad();
  v12 = v11 - v6;
  PSTableSectionFooterBottomPad();
  PreferencesTableViewCellRightPad();
  v14 = v13 - v8;
  [(PKSettingsHeaderAlertView *)self bounds];
  v16 = v12 + v15;
  v18 = v10 + v17;
  v20 = v19 - (v12 + v14);
  [(UITextView *)self->_textView frame];
  [(UITextView *)self->_textView sizeThatFits:v20, 1.79769313e308];
  [(UITextView *)self->_textView setFrame:v16, v18, v20, v21];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  PreferencesTableViewCellLeftPad();
  v6 = v5;
  PreferencesTableViewCellRightPad();
  v8 = (v6 + v7);
  PSTableSectionFooterTopPad();
  v10 = v9;
  PSTableSectionFooterBottomPad();
  v12 = v10 + v11;
  v13 = width - v8;
  [(UITextView *)self->_textView sizeThatFits:v13, 1.79769313e308];
  v15 = v12 + v14;
  PSTableSectionFooterTopPad();
  v17 = v16 + v15;
  v18 = v13 + v8;
  result.height = v17;
  result.width = v18;
  return result;
}

@end