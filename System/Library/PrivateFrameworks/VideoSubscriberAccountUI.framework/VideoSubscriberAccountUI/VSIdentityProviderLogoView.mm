@interface VSIdentityProviderLogoView
- (CGRect)_imageViewFrame;
- (CGSize)preferredImageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIImage)logo;
- (VSIdentityProviderLogoView)initWithCoder:(id)a3;
- (VSIdentityProviderLogoView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setLogo:(id)a3;
@end

@implementation VSIdentityProviderLogoView

- (VSIdentityProviderLogoView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VSIdentityProviderLogoView;
  v3 = [(VSIdentityProviderLogoView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit_5(v3);
  }

  return v4;
}

- (VSIdentityProviderLogoView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = VSIdentityProviderLogoView;
  v3 = [(VSIdentityProviderLogoView *)&v6 initWithCoder:a3];
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
  v7 = [(VSIdentityProviderLogoView *)self contentView];
  [v7 frame];
  v9 = (v8 - v4) * 0.5;

  v10 = [(VSIdentityProviderLogoView *)self contentView];
  [v10 frame];
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

- (void)setLogo:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderLogoView *)self imageView];
  [v5 setImage:v4];

  [(VSIdentityProviderLogoView *)self invalidateIntrinsicContentSize];
}

- (UIImage)logo
{
  v2 = [(VSIdentityProviderLogoView *)self imageView];
  v3 = [v2 image];

  return v3;
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
  v3 = [(VSIdentityProviderLogoView *)self imageView];
  [(VSIdentityProviderLogoView *)self _imageViewFrame];
  [v3 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(VSIdentityProviderLogoView *)self _height:a3.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end