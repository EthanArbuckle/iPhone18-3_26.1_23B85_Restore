@interface SKUIDownloadsView
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setOverlayView:(id)a3;
@end

@implementation SKUIDownloadsView

- (void)setContentView:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDownloadsView *)v5 setContentView:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UIView *)self->_contentView removeFromSuperview];
  contentView = self->_contentView;
  self->_contentView = v4;
  v14 = v4;

  [(SKUIDownloadsView *)self insertSubview:self->_contentView atIndex:0];
  [(SKUIDownloadsView *)self setNeedsLayout];
}

- (void)setOverlayView:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDownloadsView *)v5 setOverlayView:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UIView *)self->_overlayView removeFromSuperview];
  overlayView = self->_overlayView;
  self->_overlayView = v4;
  v14 = v4;

  [(SKUIDownloadsView *)self addSubview:self->_overlayView];
  [(SKUIDownloadsView *)self setNeedsLayout];
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
        [(SKUIDownloadsView *)v3 layoutSubviews:v4];
      }
    }
  }

  v19.receiver = self;
  v19.super_class = SKUIDownloadsView;
  [(SKUIDownloadsView *)&v19 layoutSubviews];
  [(SKUIDownloadsView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIView *)self->_contentView setFrame:?];
  [(UIView *)self->_overlayView setFrame:v12, v14, v16, v18];
}

@end