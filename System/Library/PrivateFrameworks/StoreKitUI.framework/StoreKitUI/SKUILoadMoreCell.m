@interface SKUILoadMoreCell
- (SKUILoadMoreCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SKUILoadMoreCell

- (SKUILoadMoreCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILoadMoreCell initWithStyle:reuseIdentifier:];
  }

  v21.receiver = self;
  v21.super_class = SKUILoadMoreCell;
  v7 = [(SKUITableViewCell *)&v21 initWithStyle:a3 reuseIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(SKUILoadMoreCell *)v7 contentView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v14 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    indicator = v8->_indicator;
    v8->_indicator = v14;

    [(UIActivityIndicatorView *)v8->_indicator setAutoresizingMask:45];
    [(UIActivityIndicatorView *)v8->_indicator sizeToFit];
    [(UIActivityIndicatorView *)v8->_indicator frame];
    v17 = (v11 - v16) * 0.5;
    v19 = (v13 - v18) * 0.5;
    [(UIActivityIndicatorView *)v8->_indicator setFrame:floorf(v17), floorf(v19)];
    [v9 addSubview:v8->_indicator];
  }

  return v8;
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadMoreCell initWithStyle:reuseIdentifier:]";
}

@end