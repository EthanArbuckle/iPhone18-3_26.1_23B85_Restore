@interface SKUIContentUnavailableTableViewCell
- (SKUIContentUnavailableTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation SKUIContentUnavailableTableViewCell

- (SKUIContentUnavailableTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContentUnavailableTableViewCell initWithStyle:reuseIdentifier:];
  }

  v14.receiver = self;
  v14.super_class = SKUIContentUnavailableTableViewCell;
  v7 = [(SKUITableViewCell *)&v14 initWithStyle:a3 reuseIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    [(SKUIContentUnavailableTableViewCell *)v7 setUserInteractionEnabled:0];
    v9 = objc_alloc(MEMORY[0x277D75E78]);
    v10 = [v9 initWithFrame:0 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    view = v8->_view;
    v8->_view = v10;

    v12 = [(SKUIContentUnavailableTableViewCell *)v8 contentView];
    [v12 addSubview:v8->_view];
  }

  return v8;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SKUIContentUnavailableTableViewCell;
  [(SKUITableViewCell *)&v12 layoutSubviews];
  v3 = [(SKUIContentUnavailableTableViewCell *)self contentView];
  [v3 bounds];
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