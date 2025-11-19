@interface STSLoadMoreFooter
- (CGSize)sizeThatFits:(CGSize)a3;
- (STSLoadMoreFooter)initWithFrame:(CGRect)a3;
- (STSLoadMoreFooterDelegate)delegate;
- (void)_handleLogoTap:(id)a3;
- (void)layoutSubviews;
- (void)setLoading:(BOOL)a3;
- (void)setSearchProviderImage:(id)a3;
@end

@implementation STSLoadMoreFooter

- (STSLoadMoreFooter)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = STSLoadMoreFooter;
  v3 = [(STSLoadMoreFooter *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:4];
    activityIndicator = v3->_activityIndicator;
    v3->_activityIndicator = v4;

    [(STSLoadMoreFooter *)v3 addSubview:v3->_activityIndicator];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(STSLoadMoreFooter *)self bounds];
  [(UIActivityIndicatorView *)self->_activityIndicator bounds];
  UIRectCenteredIntegralRectScale();
  [(UIActivityIndicatorView *)self->_activityIndicator setFrame:0x3FF0000000000000];
  providerIconView = self->_providerIconView;
  if (providerIconView)
  {
    [(UIImageView *)providerIconView bounds];
    UIRectCenteredYInRectScale();
    v4 = self->_providerIconView;

    [(UIImageView *)v4 setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [objc_opt_class() defaultHeight];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_handleLogoTap:(id)a3
{
  v4 = [(STSLoadMoreFooter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(STSLoadMoreFooter *)self delegate];
    [v6 loadMoreFooterDidTapLogo];
  }
}

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    self->_loading = a3;
    activityIndicator = self->_activityIndicator;
    if (a3)
    {
      [(UIActivityIndicatorView *)activityIndicator startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)activityIndicator stopAnimating];
    }
  }
}

- (void)setSearchProviderImage:(id)a3
{
  v5 = a3;
  if (self->_searchProviderImage != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_searchProviderImage, a3);
    providerIconView = self->_providerIconView;
    if (providerIconView)
    {
      [(UIImageView *)providerIconView setImage:self->_searchProviderImage];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_searchProviderImage];
      v8 = self->_providerIconView;
      self->_providerIconView = v7;

      v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleLogoTap_];
      [(UIImageView *)self->_providerIconView addGestureRecognizer:v9];
      [(UIImageView *)self->_providerIconView setUserInteractionEnabled:1];
      v10 = self->_providerIconView;
      v11 = [MEMORY[0x277D75348] sts_providerImageColor];
      [(UIImageView *)v10 setTintColor:v11];

      [(STSLoadMoreFooter *)self addSubview:self->_providerIconView];
    }

    [(STSLoadMoreFooter *)self setNeedsLayout];
    v5 = v12;
  }
}

- (STSLoadMoreFooterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end