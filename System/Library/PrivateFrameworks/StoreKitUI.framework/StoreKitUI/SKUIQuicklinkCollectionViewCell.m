@interface SKUIQuicklinkCollectionViewCell
- (id)_linkButton;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_linkButtonAction:(id)a3;
- (void)configureForLink:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)a3;
@end

@implementation SKUIQuicklinkCollectionViewCell

- (void)dealloc
{
  [(UIButton *)self->_linkButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIQuicklinkCollectionViewCell;
  [(SKUIQuicklinkCollectionViewCell *)&v3 dealloc];
}

- (void)configureForLink:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIQuicklinkCollectionViewCell *)v5 configureForLink:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 title];
  if ([v13 length])
  {
    v14 = [(SKUIQuicklinkCollectionViewCell *)self _linkButton];
    [v14 setHidden:0];
    v15 = [v4 title];
    [v14 setTitle:v15 forState:0];

    [(SKUIQuicklinkCollectionViewCell *)self setNeedsLayout];
  }

  else
  {
    [(UIButton *)self->_linkButton setHidden:1];
  }
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIQuicklinkCollectionViewCell *)v5 setColoringWithColorScheme:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 secondaryTextColor];
  if (!v13)
  {
    v13 = [v4 primaryTextColor];
  }

  v14 = [(SKUIQuicklinkCollectionViewCell *)self _linkButton];
  [v14 setTintColor:v13];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SKUIQuicklinkCollectionViewCell;
  v5 = [(SKUIQuicklinkCollectionViewCell *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if ([v5 isDescendantOfView:self])
  {
    v6 = self->_linkButton;

    v5 = v6;
  }

  return v5;
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
        [(SKUIQuicklinkCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v21.receiver = self;
  v21.super_class = SKUIQuicklinkCollectionViewCell;
  [(SKUICollectionViewCell *)&v21 layoutSubviews];
  if (self->_linkButton)
  {
    v11 = [(SKUIQuicklinkCollectionViewCell *)self contentView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;

    [(UIButton *)self->_linkButton sizeThatFits:v13 + -15.0 + -15.0, 1.79769313e308];
    if (v13 + -15.0 + -15.0 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13 + -15.0 + -15.0;
    }

    v19 = (v13 - v18) * 0.5;
    v20 = (v15 - v17) * 0.5;
    [(UIButton *)self->_linkButton setFrame:floorf(v19), floorf(v20)];
  }
}

- (void)_linkButtonAction:(id)a3
{
  v6 = SKUICollectionViewForView(self);
  v4 = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 indexPathForCell:self];
    [v4 collectionView:v6 didSelectItemAtIndexPath:v5];
  }
}

- (id)_linkButton
{
  linkButton = self->_linkButton;
  if (!linkButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    v5 = self->_linkButton;
    self->_linkButton = v4;

    [(UIButton *)self->_linkButton addTarget:self action:sel__linkButtonAction_ forControlEvents:64];
    v6 = [(UIButton *)self->_linkButton titleLabel];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [v6 setFont:v7];

    v8 = [(SKUIQuicklinkCollectionViewCell *)self contentView];
    [v8 addSubview:self->_linkButton];

    linkButton = self->_linkButton;
  }

  return linkButton;
}

@end