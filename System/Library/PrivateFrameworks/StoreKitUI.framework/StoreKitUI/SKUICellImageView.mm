@interface SKUICellImageView
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SKUICellImageView

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICellImageView setHighlighted:];
  }

  v9.receiver = self;
  v9.super_class = SKUICellImageView;
  if ([(SKUICellImageView *)&v9 isHighlighted]!= highlightedCopy)
  {
    if (highlightedCopy)
    {
      backgroundColor = [(SKUICellImageView *)self backgroundColor];
      cachedBackgroundColor = self->_cachedBackgroundColor;
      self->_cachedBackgroundColor = backgroundColor;

      clearColor = [MEMORY[0x277D75348] clearColor];
      [(SKUICellImageView *)self setBackgroundColor:clearColor];
    }

    else
    {
      [(SKUICellImageView *)self setBackgroundColor:self->_cachedBackgroundColor];
      clearColor = self->_cachedBackgroundColor;
      self->_cachedBackgroundColor = 0;
    }

    v8.receiver = self;
    v8.super_class = SKUICellImageView;
    [(SKUICellImageView *)&v8 setHighlighted:highlightedCopy];
  }
}

- (void)setHighlighted:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICellImageView setHighlighted:]";
}

@end