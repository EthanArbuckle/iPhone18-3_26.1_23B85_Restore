@interface SKUIRedeemIdTableViewCell
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)return;
- (SKUIRedeemIdTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SKUIRedeemIdTableViewCellDelegate)delegate;
- (void)_initializeTextField;
- (void)layoutSubviews;
- (void)setAutoCapitalizationType:(int64_t)type;
- (void)setKeyboardType:(int64_t)type;
- (void)setPlaceholderText:(id)text;
- (void)setReturnKeyType:(int64_t)type;
- (void)textFieldDidChange:(id)change;
@end

@implementation SKUIRedeemIdTableViewCell

- (SKUIRedeemIdTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemIdTableViewCell initWithStyle:reuseIdentifier:];
  }

  v10.receiver = self;
  v10.super_class = SKUIRedeemIdTableViewCell;
  v7 = [(SKUIRedeemIdTableViewCell *)&v10 initWithStyle:style reuseIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    [(SKUIRedeemIdTableViewCell *)v7 setSelectionStyle:0];
    [(SKUIRedeemIdTableViewCell *)v8 _initializeTextField];
  }

  return v8;
}

- (void)layoutSubviews
{
  contentView = [(SKUIRedeemIdTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SKUIRedeemIdTableViewCell *)self separatorInset];
  v13 = v12;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v21 = CGRectInset(v20, v13, 0.0);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;

  textField = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField setFrame:{x, y, width, height}];

  v19.receiver = self;
  v19.super_class = SKUIRedeemIdTableViewCell;
  [(SKUIRedeemIdTableViewCell *)&v19 layoutSubviews];
}

- (BOOL)becomeFirstResponder
{
  textField = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField setUserInteractionEnabled:1];

  textField2 = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField2 becomeFirstResponder];

  return 1;
}

- (BOOL)resignFirstResponder
{
  textField = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField setUserInteractionEnabled:0];

  textField2 = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField2 resignFirstResponder];

  return 1;
}

- (void)setPlaceholderText:(id)text
{
  textCopy = text;
  textField = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField setPlaceholder:textCopy];
}

- (void)setKeyboardType:(int64_t)type
{
  textField = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField setKeyboardType:type];
}

- (void)setReturnKeyType:(int64_t)type
{
  textField = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField setReturnKeyType:type];
}

- (void)setAutoCapitalizationType:(int64_t)type
{
  textField = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField setAutocapitalizationType:type];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  delegate = [(SKUIRedeemIdTableViewCell *)self delegate];
  text = [returnCopy text];

  [delegate redeemIdCell:self didReturnWithText:text];
  return 1;
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  delegate = [(SKUIRedeemIdTableViewCell *)self delegate];
  text = [changeCopy text];

  [delegate redeemIdCell:self didChangeToText:text];
}

- (void)_initializeTextField
{
  v3 = objc_alloc(MEMORY[0x277D75BB8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(SKUIRedeemIdTableViewCell *)self setTextField:v4];

  textField = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField setDelegate:self];

  textField2 = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField2 setUserInteractionEnabled:0];

  textField3 = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField3 setClearButtonMode:1];

  textField4 = [(SKUIRedeemIdTableViewCell *)self textField];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [textField4 setBackgroundColor:clearColor];

  textField5 = [(SKUIRedeemIdTableViewCell *)self textField];
  [textField5 addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];

  contentView = [(SKUIRedeemIdTableViewCell *)self contentView];
  textField6 = [(SKUIRedeemIdTableViewCell *)self textField];
  [contentView addSubview:textField6];
}

- (SKUIRedeemIdTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemIdTableViewCell initWithStyle:reuseIdentifier:]";
}

@end