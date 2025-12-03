@interface SKUIItemTableViewCell
- (void)configureForItem:(id)item rowIndex:(int64_t)index;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
- (void)setCellLayoutNeedsLayout;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation SKUIItemTableViewCell

- (void)configureForItem:(id)item rowIndex:(int64_t)index
{
  itemCopy = item;
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

  [(SKUIItemTableViewCell *)self configureForItem:itemCopy clientContext:0 rowIndex:index];
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

  layout = [(SKUIItemTableViewCell *)self layout];
  [layout prepareForReuse];

  v12.receiver = self;
  v12.super_class = SKUIItemTableViewCell;
  [(SKUITableViewCell *)&v12 prepareForReuse];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
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

  layout = [(SKUIItemTableViewCell *)self layout];
  [layout setHighlighted:highlightedCopy];

  v16.receiver = self;
  v16.super_class = SKUIItemTableViewCell;
  [(SKUITableViewCell *)&v16 setHighlighted:highlightedCopy animated:animatedCopy];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
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

  layout = [(SKUIItemTableViewCell *)self layout];
  [layout setSelected:selectedCopy];

  v16.receiver = self;
  v16.super_class = SKUIItemTableViewCell;
  [(SKUITableViewCell *)&v16 setSelected:selectedCopy animated:animatedCopy];
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

  contentView = [(SKUIItemTableViewCell *)self contentView];
  [contentView frame];
  v13 = v12;
  v15 = v14;
  v19.receiver = self;
  v19.super_class = SKUIItemTableViewCell;
  [(SKUITableViewCell *)&v19 layoutSubviews];
  if (self->_layoutNeedsLayout || ([contentView frame], v18 != v13) || v17 != v15)
  {
    layout = [(SKUIItemTableViewCell *)self layout];
    [layout layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
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

  layout = [(SKUIItemTableViewCell *)self layout];
  [layout setBackgroundColor:colorCopy];

  v14.receiver = self;
  v14.super_class = SKUIItemTableViewCell;
  [(SKUIItemTableViewCell *)&v14 setBackgroundColor:colorCopy];
}

@end