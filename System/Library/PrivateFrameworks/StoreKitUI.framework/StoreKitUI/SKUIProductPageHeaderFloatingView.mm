@interface SKUIProductPageHeaderFloatingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIProductPageHeaderFloatingView)initWithSectionTitles:(id)a3 isPad:(BOOL)a4;
- (void)_reloadBackdropView;
- (void)layoutSubviews;
- (void)setBackdropAlpha:(double)a3;
- (void)setColorScheme:(id)a3;
@end

@implementation SKUIProductPageHeaderFloatingView

- (SKUIProductPageHeaderFloatingView)initWithSectionTitles:(id)a3 isPad:(BOOL)a4
{
  v6 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageHeaderFloatingView initWithSectionTitles:isPad:];
  }

  v19.receiver = self;
  v19.super_class = SKUIProductPageHeaderFloatingView;
  v7 = [(SKUIProductPageHeaderFloatingView *)&v19 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v7)
  {
    v8 = [[SKUIProductPageSegmentedControl alloc] initWithItems:v6];
    sectionControl = v7->_sectionControl;
    v7->_sectionControl = &v8->super;

    [(UISegmentedControl *)v7->_sectionControl setSelectedSegmentIndex:0];
    v10 = v7->_sectionControl;
    v11 = [(SKUIColorScheme *)v7->_colorScheme secondaryTextColor];
    if (v11)
    {
      [(UISegmentedControl *)v10 setTintColor:v11];
    }

    else
    {
      v12 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
      [(UISegmentedControl *)v10 setTintColor:v12];
    }

    [(SKUIProductPageHeaderFloatingView *)v7 addSubview:v7->_sectionControl];
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v7->_separatorView;
    v7->_separatorView = v13;

    v15 = v7->_separatorView;
    v16 = [(SKUIColorScheme *)v7->_colorScheme primaryTextColor];
    if (v16)
    {
      [(UIView *)v15 setBackgroundColor:v16];
    }

    else
    {
      v17 = [MEMORY[0x277D75348] colorWithWhite:0.70588237 alpha:1.0];
      [(UIView *)v15 setBackgroundColor:v17];
    }

    [(SKUIProductPageHeaderFloatingView *)v7 addSubview:v7->_separatorView];
    v7->_isPad = a4;
    [(SKUIProductPageHeaderFloatingView *)v7 _reloadBackdropView];
  }

  return v7;
}

- (void)setBackdropAlpha:(double)a3
{
  [(SKUIProductPageHeaderFloatingView *)self backdropAlpha];
  if (v5 != a3)
  {
    backdropAlphaView = self->_backdropAlphaView;

    [(UIView *)backdropAlphaView setAlpha:a3];
  }
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    sectionControl = self->_sectionControl;
    v7 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v7)
    {
      [(UISegmentedControl *)sectionControl setTintColor:v7];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
      [(UISegmentedControl *)sectionControl setTintColor:v8];
    }

    separatorView = self->_separatorView;
    v10 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v10)
    {
      [(UIView *)separatorView setBackgroundColor:v10];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.70588237 alpha:1.0];
      [(UIView *)separatorView setBackgroundColor:v11];
    }

    [(SKUIProductPageHeaderFloatingView *)self _reloadBackdropView];
    v5 = v12;
  }
}

- (void)layoutSubviews
{
  [(SKUIProductPageHeaderFloatingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sectionControl = self->_sectionControl;
  if (sectionControl)
  {
    [(UISegmentedControl *)sectionControl sizeToFit];
    [(UISegmentedControl *)self->_sectionControl frame];
    if (self->_isPad)
    {
      v12 = 290.0;
    }

    else
    {
      v12 = v8 + -30.0;
    }

    v13 = (v8 - v12) * 0.5;
    [(UISegmentedControl *)self->_sectionControl setFrame:roundf(v13), 10.0];
  }

  separatorView = self->_separatorView;
  if (separatorView)
  {
    [(UIView *)separatorView frame];
    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 scale];
    v17 = 1.0 / v16;

    [(UIView *)self->_separatorView setFrame:0.0, v10 - v17, v8, v17];
  }

  backdropView = self->_backdropView;
  if (backdropView)
  {
    [(_UIBackdropView *)backdropView setFrame:v4, v6, v8, v10];
  }

  backdropAlphaView = self->_backdropAlphaView;
  if (backdropAlphaView)
  {

    [(UIView *)backdropAlphaView setFrame:v4, v6, v8, v10];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UISegmentedControl *)self->_sectionControl sizeThatFits:a3.width, a3.height];
  v5 = v4 + 20.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_reloadBackdropView
{
  if (self->_colorScheme || self->_isPad)
  {
    [(_UIBackdropView *)self->_backdropView removeFromSuperview];
    backdropView = self->_backdropView;
    self->_backdropView = 0;

    [(UIView *)self->_backdropAlphaView removeFromSuperview];
    backdropAlphaView = self->_backdropAlphaView;
    self->_backdropAlphaView = 0;

    v5 = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    if (!v5)
    {
      v6 = [MEMORY[0x277D75348] whiteColor];
      [(SKUIProductPageHeaderFloatingView *)self setBackgroundColor:v6];

      goto LABEL_14;
    }
  }

  else
  {
    if (!self->_backdropView)
    {
      v7 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
      v8 = self->_backdropView;
      self->_backdropView = v7;

      [(SKUIProductPageHeaderFloatingView *)self insertSubview:self->_backdropView atIndex:0];
    }

    if (!self->_backdropAlphaView)
    {
      v9 = objc_alloc_init(MEMORY[0x277D75D18]);
      v10 = self->_backdropAlphaView;
      self->_backdropAlphaView = v9;

      v11 = self->_backdropAlphaView;
      v12 = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
      if (v12)
      {
        [(UIView *)v11 setBackgroundColor:v12];
      }

      else
      {
        v13 = [MEMORY[0x277D75348] whiteColor];
        [(UIView *)v11 setBackgroundColor:v13];
      }

      [(SKUIProductPageHeaderFloatingView *)self insertSubview:self->_backdropAlphaView atIndex:1];
    }

    v5 = [MEMORY[0x277D75348] clearColor];
  }

  [(SKUIProductPageHeaderFloatingView *)self setBackgroundColor:v5];
LABEL_14:

  [(SKUIProductPageHeaderFloatingView *)self setNeedsLayout];
}

- (void)initWithSectionTitles:isPad:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageHeaderFloatingView initWithSectionTitles:isPad:]";
}

@end