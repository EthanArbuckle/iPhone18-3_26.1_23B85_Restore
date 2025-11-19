@interface SKUICrossFadingTabBar
- (SKUICrossFadingTabBar)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTabBarButtons:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SKUICrossFadingTabBar

- (SKUICrossFadingTabBar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICrossFadingTabBar initWithFrame:];
  }

  v17.receiver = self;
  v17.super_class = SKUICrossFadingTabBar;
  v8 = [(SKUICrossFadingTabBar *)&v17 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(SKUICrossFadingTabBar *)v8 bounds];
    v14 = [[SKUIScrollingTabBarBackgroundView alloc] initWithFrame:v10, v11, v12, v13];
    backgroundView = v9->_backgroundView;
    v9->_backgroundView = v14;

    [(SKUIScrollingTabBarBackgroundView *)v9->_backgroundView setShowsBackdrop:1];
    [(SKUIScrollingTabBarBackgroundView *)v9->_backgroundView setShowsTopHairline:1];
    [(SKUICrossFadingTabBar *)v9 addSubview:v9->_backgroundView];
  }

  return v9;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SKUICrossFadingTabBar;
  [(SKUICrossFadingTabBar *)&v18 layoutSubviews];
  [(SKUICrossFadingTabBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUIScrollingTabBarBackgroundView *)self->_backgroundView setFrame:?];
  v11 = [(NSArray *)self->_tabBarButtons count];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  CGRectGetWidth(v19);
  UICeilToViewScale();
  v13 = v12;
  v14 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[SKUICrossFadingTabBar semanticContentAttribute](self, "semanticContentAttribute")}];
  tabBarButtons = self->_tabBarButtons;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__SKUICrossFadingTabBar_layoutSubviews__block_invoke;
  v16[3] = &__block_descriptor_97_e44_v32__0__SKUICrossFadingTabBarButton_8Q16_B24l;
  v17 = v14 == 0;
  v16[4] = v11;
  v16[5] = 0x4000000000000000;
  v16[6] = v13;
  v16[7] = 0x4010000000000000;
  *&v16[8] = v4;
  *&v16[9] = v6;
  *&v16[10] = v8;
  *&v16[11] = v10;
  [(NSArray *)tabBarButtons enumerateObjectsUsingBlock:v16];
}

void __39__SKUICrossFadingTabBar_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(MEMORY[0x277CBF3A0] + 24);
  if ((*(a1 + 96) & 1) == 0)
  {
    a3 = *(a1 + 32) + ~a3;
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 40) + (*(a1 + 48) + *(a1 + 56)) * a3;
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v13 = a2;
  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v8;
  v15.size.height = v9;
  v10 = CGRectGetMinY(v15) + -1.0;
  v11 = *(a1 + 48);
  MaxY = CGRectGetMaxY(*(a1 + 64));
  v16.origin.x = v6;
  v16.origin.y = v10;
  v16.size.width = v11;
  v16.size.height = v4;
  [v13 setFrame:{v6, v10, v11, MaxY - CGRectGetMinY(v16)}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = SKUICrossFadingTabBar;
  v4 = a3;
  [(SKUICrossFadingTabBar *)&v10 traitCollectionDidChange:v4];
  v5 = [(SKUICrossFadingTabBar *)self traitCollection:v10.receiver];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  v9 = v8;

  if (vabdd_f64(v7, v9) > 0.00000011920929)
  {
    [(SKUICrossFadingTabBar *)self setNeedsLayout];
  }
}

- (void)setTabBarButtons:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  tabBarButtons = self->_tabBarButtons;
  if (tabBarButtons != v4)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = tabBarButtons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          if (![(NSArray *)v4 containsObject:v11])
          {
            [v11 removeFromSuperview];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    v12 = [(NSArray *)v4 copy];
    v13 = self->_tabBarButtons;
    self->_tabBarButtons = v12;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = self->_tabBarButtons;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * j);
          v20 = [v19 superview];

          if (v20 != self)
          {
            [(SKUICrossFadingTabBar *)self addSubview:v19];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    [(SKUICrossFadingTabBar *)self setNeedsLayout];
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICrossFadingTabBar initWithFrame:]";
}

@end