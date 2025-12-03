@interface STSLoadMoreFooter
- (CGSize)sizeThatFits:(CGSize)fits;
- (STSLoadMoreFooter)initWithFrame:(CGRect)frame;
- (STSLoadMoreFooterDelegate)delegate;
- (void)_handleLogoTap:(id)tap;
- (void)layoutSubviews;
- (void)setLoading:(BOOL)loading;
- (void)setSearchProviderImage:(id)image;
@end

@implementation STSLoadMoreFooter

- (STSLoadMoreFooter)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = STSLoadMoreFooter;
  v3 = [(STSLoadMoreFooter *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [objc_opt_class() defaultHeight];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_handleLogoTap:(id)tap
{
  delegate = [(STSLoadMoreFooter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(STSLoadMoreFooter *)self delegate];
    [delegate2 loadMoreFooterDidTapLogo];
  }
}

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    self->_loading = loading;
    activityIndicator = self->_activityIndicator;
    if (loading)
    {
      [(UIActivityIndicatorView *)activityIndicator startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)activityIndicator stopAnimating];
    }
  }
}

- (void)setSearchProviderImage:(id)image
{
  imageCopy = image;
  if (self->_searchProviderImage != imageCopy)
  {
    v12 = imageCopy;
    objc_storeStrong(&self->_searchProviderImage, image);
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
      sts_providerImageColor = [MEMORY[0x277D75348] sts_providerImageColor];
      [(UIImageView *)v10 setTintColor:sts_providerImageColor];

      [(STSLoadMoreFooter *)self addSubview:self->_providerIconView];
    }

    [(STSLoadMoreFooter *)self setNeedsLayout];
    imageCopy = v12;
  }
}

- (STSLoadMoreFooterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end