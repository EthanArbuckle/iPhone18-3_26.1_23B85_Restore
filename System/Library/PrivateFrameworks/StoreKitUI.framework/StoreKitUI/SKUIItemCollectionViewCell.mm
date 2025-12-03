@interface SKUIItemCollectionViewCell
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBounds:(CGRect)bounds;
- (void)setCellLayoutNeedsLayout;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation SKUIItemCollectionViewCell

- (void)setCellLayoutNeedsLayout
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIItemCollectionViewCell *)v3 setCellLayoutNeedsLayout:v4];
      }
    }
  }

  self->_layoutNeedsLayout = 1;
  [(SKUIItemCollectionViewCell *)self setNeedsLayout];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemCollectionViewCell *)v5 applyLayoutAttributes:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUIItemCollectionViewCell;
  [(SKUICollectionViewCell *)&v15 applyLayoutAttributes:attributesCopy];
  layout = [(SKUIItemCollectionViewCell *)self layout];
  backgroundColor = [attributesCopy backgroundColor];

  [layout setBackgroundColor:backgroundColor];
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
        [(SKUIItemCollectionViewCell *)v3 prepareForReuse:v4];
      }
    }
  }

  layout = [(SKUIItemCollectionViewCell *)self layout];
  [layout prepareForReuse];

  v12.receiver = self;
  v12.super_class = SKUIItemCollectionViewCell;
  [(SKUIItemCollectionViewCell *)&v12 prepareForReuse];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemCollectionViewCell *)v5 setHighlighted:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  layout = [(SKUIItemCollectionViewCell *)self layout];
  [layout setHighlighted:highlightedCopy];

  v14.receiver = self;
  v14.super_class = SKUIItemCollectionViewCell;
  [(SKUICollectionViewCell *)&v14 setHighlighted:highlightedCopy];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemCollectionViewCell *)v5 setSelected:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  layout = [(SKUIItemCollectionViewCell *)self layout];
  [layout setSelected:selectedCopy];

  v14.receiver = self;
  v14.super_class = SKUIItemCollectionViewCell;
  [(SKUICollectionViewCell *)&v14 setSelected:selectedCopy];
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
        [(SKUIItemCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v12.receiver = self;
  v12.super_class = SKUIItemCollectionViewCell;
  [(SKUICollectionViewCell *)&v12 layoutSubviews];
  if (self->_layoutNeedsLayout)
  {
    layout = [(SKUIItemCollectionViewCell *)self layout];
    [layout layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIItemCollectionViewCell *)v8 setBounds:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  [(SKUIItemCollectionViewCell *)self bounds];
  if (v17 != width || v16 != height)
  {
    self->_layoutNeedsLayout = 1;
  }

  v19.receiver = self;
  v19.super_class = SKUIItemCollectionViewCell;
  [(SKUIItemCollectionViewCell *)&v19 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIItemCollectionViewCell *)v8 setFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  [(SKUIItemCollectionViewCell *)self frame];
  if (v17 != width || v16 != height)
  {
    self->_layoutNeedsLayout = 1;
  }

  v19.receiver = self;
  v19.super_class = SKUIItemCollectionViewCell;
  [(SKUIItemCollectionViewCell *)&v19 setFrame:x, y, width, height];
}

@end