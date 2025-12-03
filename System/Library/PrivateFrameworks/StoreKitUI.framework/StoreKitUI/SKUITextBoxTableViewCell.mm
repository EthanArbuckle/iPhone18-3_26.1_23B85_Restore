@interface SKUITextBoxTableViewCell
- (SKUITextBoxTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)textBoxInsets;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUITextBoxTableViewCell

- (SKUITextBoxTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITextBoxTableViewCell initWithStyle:reuseIdentifier:];
  }

  v15.receiver = self;
  v15.super_class = SKUITextBoxTableViewCell;
  v7 = [(SKUITableViewCell *)&v15 initWithStyle:style reuseIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    contentView = [(SKUITextBoxTableViewCell *)v7 contentView];
    v10 = *(MEMORY[0x277D768C8] + 16);
    *&v8->_textBoxInsets.top = *MEMORY[0x277D768C8];
    *&v8->_textBoxInsets.bottom = v10;
    v11 = [SKUITextBoxView alloc];
    [contentView bounds];
    v12 = [(SKUITextBoxView *)v11 initWithFrame:?];
    textBoxView = v8->_textBoxView;
    v8->_textBoxView = v12;

    [(SKUITextBoxView *)v8->_textBoxView setEnabled:0];
    [contentView addSubview:v8->_textBoxView];
  }

  return v8;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SKUITextBoxTableViewCell;
  [(SKUITableViewCell *)&v4 prepareForReuse];
  v3 = *(MEMORY[0x277D768C8] + 16);
  *&self->_textBoxInsets.top = *MEMORY[0x277D768C8];
  *&self->_textBoxInsets.bottom = v3;
}

- (void)setBackgroundColor:(id)color
{
  textBoxView = self->_textBoxView;
  colorCopy = color;
  [(SKUITextBoxView *)textBoxView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUITextBoxTableViewCell;
  [(SKUITextBoxTableViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SKUITextBoxTableViewCell;
  [(SKUITableViewCell *)&v8 layoutSubviews];
  textBoxView = self->_textBoxView;
  [(SKUITextBoxTableViewCell *)self bounds];
  [(SKUITextBoxView *)textBoxView setFrame:v4 + self->_textBoxInsets.left, v5 + self->_textBoxInsets.top, v6 - (self->_textBoxInsets.left + self->_textBoxInsets.right), v7 - (self->_textBoxInsets.top + self->_textBoxInsets.bottom)];
}

- (UIEdgeInsets)textBoxInsets
{
  top = self->_textBoxInsets.top;
  left = self->_textBoxInsets.left;
  bottom = self->_textBoxInsets.bottom;
  right = self->_textBoxInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITextBoxTableViewCell initWithStyle:reuseIdentifier:]";
}

@end