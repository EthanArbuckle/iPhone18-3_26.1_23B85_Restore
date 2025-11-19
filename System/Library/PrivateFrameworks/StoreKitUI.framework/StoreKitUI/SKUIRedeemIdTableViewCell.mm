@interface SKUIRedeemIdTableViewCell
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)a3;
- (SKUIRedeemIdTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (SKUIRedeemIdTableViewCellDelegate)delegate;
- (void)_initializeTextField;
- (void)layoutSubviews;
- (void)setAutoCapitalizationType:(int64_t)a3;
- (void)setKeyboardType:(int64_t)a3;
- (void)setPlaceholderText:(id)a3;
- (void)setReturnKeyType:(int64_t)a3;
- (void)textFieldDidChange:(id)a3;
@end

@implementation SKUIRedeemIdTableViewCell

- (SKUIRedeemIdTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemIdTableViewCell initWithStyle:reuseIdentifier:];
  }

  v10.receiver = self;
  v10.super_class = SKUIRedeemIdTableViewCell;
  v7 = [(SKUIRedeemIdTableViewCell *)&v10 initWithStyle:a3 reuseIdentifier:v6];
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
  v3 = [(SKUIRedeemIdTableViewCell *)self contentView];
  [v3 bounds];
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

  v18 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v18 setFrame:{x, y, width, height}];

  v19.receiver = self;
  v19.super_class = SKUIRedeemIdTableViewCell;
  [(SKUIRedeemIdTableViewCell *)&v19 layoutSubviews];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v3 setUserInteractionEnabled:1];

  v4 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v4 becomeFirstResponder];

  return 1;
}

- (BOOL)resignFirstResponder
{
  v3 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v3 setUserInteractionEnabled:0];

  v4 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v4 resignFirstResponder];

  return 1;
}

- (void)setPlaceholderText:(id)a3
{
  v4 = a3;
  v5 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v5 setPlaceholder:v4];
}

- (void)setKeyboardType:(int64_t)a3
{
  v4 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v4 setKeyboardType:a3];
}

- (void)setReturnKeyType:(int64_t)a3
{
  v4 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v4 setReturnKeyType:a3];
}

- (void)setAutoCapitalizationType:(int64_t)a3
{
  v4 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v4 setAutocapitalizationType:a3];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(SKUIRedeemIdTableViewCell *)self delegate];
  v6 = [v4 text];

  [v5 redeemIdCell:self didReturnWithText:v6];
  return 1;
}

- (void)textFieldDidChange:(id)a3
{
  v4 = a3;
  v6 = [(SKUIRedeemIdTableViewCell *)self delegate];
  v5 = [v4 text];

  [v6 redeemIdCell:self didChangeToText:v5];
}

- (void)_initializeTextField
{
  v3 = objc_alloc(MEMORY[0x277D75BB8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(SKUIRedeemIdTableViewCell *)self setTextField:v4];

  v5 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v5 setDelegate:self];

  v6 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v6 setUserInteractionEnabled:0];

  v7 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v7 setClearButtonMode:1];

  v8 = [(SKUIRedeemIdTableViewCell *)self textField];
  v9 = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v10 addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];

  v12 = [(SKUIRedeemIdTableViewCell *)self contentView];
  v11 = [(SKUIRedeemIdTableViewCell *)self textField];
  [v12 addSubview:v11];
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