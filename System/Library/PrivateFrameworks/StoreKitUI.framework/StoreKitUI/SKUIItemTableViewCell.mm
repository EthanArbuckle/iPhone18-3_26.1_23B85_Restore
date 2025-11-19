@interface SKUIItemTableViewCell
- (void)configureForItem:(id)a3 rowIndex:(int64_t)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
- (void)setCellLayoutNeedsLayout;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation SKUIItemTableViewCell

- (void)configureForItem:(id)a3 rowIndex:(int64_t)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIItemTableViewCell *)v7 configureForItem:v8 rowIndex:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  [(SKUIItemTableViewCell *)self configureForItem:v6 clientContext:0 rowIndex:a4];
}

- (void)setCellLayoutNeedsLayout
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIItemTableViewCell *)v3 setCellLayoutNeedsLayout:v4];
      }
    }
  }

  self->_layoutNeedsLayout = 1;
  [(SKUIItemTableViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIItemTableViewCell *)v3 prepareForReuse:v4];
      }
    }
  }

  v11 = [(SKUIItemTableViewCell *)self layout];
  [v11 prepareForReuse];

  v12.receiver = self;
  v12.super_class = SKUIItemTableViewCell;
  [(SKUITableViewCell *)&v12 prepareForReuse];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIItemTableViewCell *)v7 setHighlighted:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [(SKUIItemTableViewCell *)self layout];
  [v15 setHighlighted:v5];

  v16.receiver = self;
  v16.super_class = SKUIItemTableViewCell;
  [(SKUITableViewCell *)&v16 setHighlighted:v5 animated:v4];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIItemTableViewCell *)v7 setSelected:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [(SKUIItemTableViewCell *)self layout];
  [v15 setSelected:v5];

  v16.receiver = self;
  v16.super_class = SKUIItemTableViewCell;
  [(SKUITableViewCell *)&v16 setSelected:v5 animated:v4];
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIItemTableViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v11 = [(SKUIItemTableViewCell *)self contentView];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v19.receiver = self;
  v19.super_class = SKUIItemTableViewCell;
  [(SKUITableViewCell *)&v19 layoutSubviews];
  if (self->_layoutNeedsLayout || ([v11 frame], v18 != v13) || v17 != v15)
  {
    v16 = [(SKUIItemTableViewCell *)self layout];
    [v16 layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemTableViewCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIItemTableViewCell *)self layout];
  [v13 setBackgroundColor:v4];

  v14.receiver = self;
  v14.super_class = SKUIItemTableViewCell;
  [(SKUIItemTableViewCell *)&v14 setBackgroundColor:v4];
}

@end