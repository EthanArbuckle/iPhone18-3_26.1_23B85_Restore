@interface SKUILoadingView
+ (id)defaultLoadingTextWithClientContext:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUILoadingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setLoadingText:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation SKUILoadingView

- (SKUILoadingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILoadingView initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUILoadingView;
  v8 = [(SKUILoadingView *)&v12 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v8->_spinner;
    v8->_spinner = v9;

    [(UIActivityIndicatorView *)v8->_spinner sizeToFit];
    [(SKUILoadingView *)v8 addSubview:v8->_spinner];
  }

  return v8;
}

+ (id)defaultLoadingTextWithClientContext:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUILoadingView defaultLoadingTextWithClientContext:];
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    v4 = [v3 localizedStringForKey:@"DEFAULT_LOADING_TEXT"];
    goto LABEL_8;
  }

  v4 = [SKUIClientContext localizedStringForKey:@"DEFAULT_LOADING_TEXT" inBundles:0];
LABEL_8:
  v5 = v4;

  return v5;
}

- (void)setColorScheme:(id)a3
{
  if (self->_colorScheme != a3)
  {
    v4 = [a3 copy];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v4;

    v6 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (!v6)
    {
      v6 = [MEMORY[0x277D75348] labelColor];
    }

    v7 = v6;
    [(UIActivityIndicatorView *)self->_spinner setColor:v6];
    [(UILabel *)self->_label setTextColor:v7];
  }
}

- (void)setLoadingText:(id)a3
{
  v4 = a3;
  label = self->_label;
  v16 = v4;
  if (v4)
  {
    if (!label)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      v7 = self->_label;
      self->_label = v6;

      v8 = self->_label;
      v9 = [(SKUILoadingView *)self backgroundColor];
      [(UILabel *)v8 setBackgroundColor:v9];

      v10 = self->_label;
      v11 = [MEMORY[0x277D74300] systemFontOfSize:11.0];
      [(UILabel *)v10 setFont:v11];

      v12 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
      v13 = self->_label;
      if (v12)
      {
        [(UILabel *)self->_label setTextColor:v12];
      }

      else
      {
        v15 = [MEMORY[0x277D75348] labelColor];
        [(UILabel *)v13 setTextColor:v15];
      }

      [(SKUILoadingView *)self addSubview:self->_label];

      label = self->_label;
      v4 = v16;
    }

    [(UILabel *)label setText:v4];
    [(UILabel *)self->_label sizeToFit];
    [(SKUILoadingView *)self setNeedsLayout];
  }

  else
  {
    [(UILabel *)label removeFromSuperview];
    v14 = self->_label;
    self->_label = 0;
  }
}

- (void)layoutSubviews
{
  [(SKUILoadingView *)self bounds];
  v4 = v3;
  v6 = v5;
  spinner = self->_spinner;
  if (spinner)
  {
    [(UIActivityIndicatorView *)spinner frame];
    v9 = (v4 - v8) * 0.5;
    [(UIActivityIndicatorView *)self->_spinner setFrame:floorf(v9), 0.0];
  }

  label = self->_label;
  if (label)
  {
    [(UILabel *)label frame];
    v13 = (v4 - v12) * 0.5;
    v14 = floorf(v13);
    v15 = self->_label;

    [(UILabel *)v15 setFrame:v14, v6 - v11];
  }
}

- (void)setBackgroundColor:(id)a3
{
  label = self->_label;
  v5 = a3;
  [(UILabel *)label setBackgroundColor:v5];
  [(UIActivityIndicatorView *)self->_spinner setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUILoadingView;
  [(SKUILoadingView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  spinner = self->_spinner;
  if (spinner)
  {
    [(UIActivityIndicatorView *)spinner frame:a3.width];
    width = v5;
    [(UIActivityIndicatorView *)self->_spinner frame];
    v8 = v7 + 0.0;
  }

  else
  {
    width = a3.width;
    v8 = 0.0;
  }

  label = self->_label;
  if (label)
  {
    [(UILabel *)label sizeThatFits:1.79769313e308, 1.79769313e308];
    if (width < v10)
    {
      width = v10;
    }

    v8 = v8 + 18.0;
  }

  v11 = width;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  v5 = [(UIActivityIndicatorView *)self->_spinner isAnimating];
  if (v4)
  {
    if (!v5)
    {
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }
  }

  else if (v5)
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  }

  v6.receiver = self;
  v6.super_class = SKUILoadingView;
  [(SKUILoadingView *)&v6 willMoveToSuperview:v4];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadingView initWithFrame:]";
}

+ (void)defaultLoadingTextWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUILoadingView defaultLoadingTextWithClientContext:]";
}

@end