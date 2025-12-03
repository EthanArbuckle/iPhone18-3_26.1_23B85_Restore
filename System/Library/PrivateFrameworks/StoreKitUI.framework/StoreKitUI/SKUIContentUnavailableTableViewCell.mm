@interface SKUIContentUnavailableTableViewCell
- (SKUIContentUnavailableTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation SKUIContentUnavailableTableViewCell

- (SKUIContentUnavailableTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContentUnavailableTableViewCell initWithStyle:reuseIdentifier:];
  }

  v14.receiver = self;
  v14.super_class = SKUIContentUnavailableTableViewCell;
  v7 = [(SKUITableViewCell *)&v14 initWithStyle:style reuseIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    [(SKUIContentUnavailableTableViewCell *)v7 setUserInteractionEnabled:0];
    v9 = objc_alloc(MEMORY[0x277D75E78]);
    v10 = [v9 initWithFrame:0 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    view = v8->_view;
    v8->_view = v10;

    contentView = [(SKUIContentUnavailableTableViewCell *)v8 contentView];
    [contentView addSubview:v8->_view];
  }

  return v8;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SKUIContentUnavailableTableViewCell;
  [(SKUITableViewCell *)&v12 layoutSubviews];
  contentView = [(SKUIContentUnavailableTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(_UIContentUnavailableView *)self->_view setFrame:v5, v7, v9, v11];
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIContentUnavailableTableViewCell initWithStyle:reuseIdentifier:]";
}

@end