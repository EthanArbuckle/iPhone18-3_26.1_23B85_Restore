@interface SKUIMessageBannerCloseButton
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SKUIMessageBannerCloseButton

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIMessageBannerCloseButton *)self imageView];
  v6 = v5;
  v7 = 0.5;
  if (v3)
  {
    v7 = 1.0;
  }

  [v5 setAlpha:v7];

  v8.receiver = self;
  v8.super_class = SKUIMessageBannerCloseButton;
  [(SKUIMessageBannerCloseButton *)&v8 setHighlighted:v3];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SKUIMessageBannerCloseButton;
  [(SKUIMessageBannerCloseButton *)&v6 layoutSubviews];
  v3 = [(SKUIMessageBannerCloseButton *)self imageView];
  v4 = [(SKUIMessageBannerCloseButton *)self isHighlighted];
  v5 = 0.5;
  if (v4)
  {
    v5 = 1.0;
  }

  [v3 setAlpha:v5];
}

@end