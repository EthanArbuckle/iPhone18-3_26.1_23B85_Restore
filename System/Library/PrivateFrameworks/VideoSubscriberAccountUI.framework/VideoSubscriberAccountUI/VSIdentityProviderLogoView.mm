@interface VSIdentityProviderLogoView
- (CGRect)_imageViewFrame;
- (CGSize)preferredImageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIImage)logo;
- (VSIdentityProviderLogoView)initWithCoder:(id)coder;
- (VSIdentityProviderLogoView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setLogo:(id)logo;
@end

@implementation VSIdentityProviderLogoView

- (VSIdentityProviderLogoView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VSIdentityProviderLogoView;
  v3 = [(VSIdentityProviderLogoView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit_5(v3);
  }

  return v4;
}

- (VSIdentityProviderLogoView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VSIdentityProviderLogoView;
  v3 = [(VSIdentityProviderLogoView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit_5(v3);
  }

  return v4;
}

- (CGRect)_imageViewFrame
{
  [(VSIdentityProviderLogoView *)self _height];
  v4 = v3 + v3;
  [(VSIdentityProviderLogoView *)self _height];
  v6 = v5;
  contentView = [(VSIdentityProviderLogoView *)self contentView];
  [contentView frame];
  v9 = (v8 - v4) * 0.5;

  contentView2 = [(VSIdentityProviderLogoView *)self contentView];
  [contentView2 frame];
  v12 = (v11 - v6) * 0.5;

  v13 = v9;
  v14 = v12;
  v15 = v4;
  v16 = v6;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setLogo:(id)logo
{
  logoCopy = logo;
  imageView = [(VSIdentityProviderLogoView *)self imageView];
  [imageView setImage:logoCopy];

  [(VSIdentityProviderLogoView *)self invalidateIntrinsicContentSize];
}

- (UIImage)logo
{
  imageView = [(VSIdentityProviderLogoView *)self imageView];
  image = [imageView image];

  return image;
}

- (CGSize)preferredImageSize
{
  [(VSIdentityProviderLogoView *)self _imageViewFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = VSIdentityProviderLogoView;
  [(VSIdentityProviderLogoView *)&v4 layoutSubviews];
  imageView = [(VSIdentityProviderLogoView *)self imageView];
  [(VSIdentityProviderLogoView *)self _imageViewFrame];
  [imageView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(VSIdentityProviderLogoView *)self _height:fits.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end