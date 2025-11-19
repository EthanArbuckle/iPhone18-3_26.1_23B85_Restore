@interface SKUIItemCollectionViewCell
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBounds:(CGRect)a3;
- (void)setCellLayoutNeedsLayout;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
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

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
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
  [(SKUICollectionViewCell *)&v15 applyLayoutAttributes:v4];
  v13 = [(SKUIItemCollectionViewCell *)self layout];
  v14 = [v4 backgroundColor];

  [v13 setBackgroundColor:v14];
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

  v11 = [(SKUIItemCollectionViewCell *)self layout];
  [v11 prepareForReuse];

  v12.receiver = self;
  v12.super_class = SKUIItemCollectionViewCell;
  [(SKUIItemCollectionViewCell *)&v12 prepareForReuse];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
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

  v13 = [(SKUIItemCollectionViewCell *)self layout];
  [v13 setHighlighted:v3];

  v14.receiver = self;
  v14.super_class = SKUIItemCollectionViewCell;
  [(SKUICollectionViewCell *)&v14 setHighlighted:v3];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
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

  v13 = [(SKUIItemCollectionViewCell *)self layout];
  [v13 setSelected:v3];

  v14.receiver = self;
  v14.super_class = SKUIItemCollectionViewCell;
  [(SKUICollectionViewCell *)&v14 setSelected:v3];
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
    v11 = [(SKUIItemCollectionViewCell *)self layout];
    [v11 layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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