@interface STSSuggestionFooter
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setSearchProviderImage:(id)a3;
@end

@implementation STSSuggestionFooter

- (void)layoutSubviews
{
  if (self->_imageView)
  {
    [(STSSuggestionFooter *)self bounds];
    v4 = v3 + 0.0;
    v6 = v5 + 4.0;
    imageView = self->_imageView;

    [(UIImageView *)imageView setFrame:v4, v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIImageView *)self->_imageView bounds:a3.width];
  v4 = v3 + 0.0;
  v6 = v5 + 18.0;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)setSearchProviderImage:(id)a3
{
  v5 = a3;
  if (self->_searchProviderImage != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_searchProviderImage, a3);
    imageView = self->_imageView;
    if (imageView)
    {
      [(UIImageView *)imageView setImage:self->_searchProviderImage];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_searchProviderImage];
      v8 = self->_imageView;
      self->_imageView = v7;

      v9 = self->_imageView;
      v10 = [MEMORY[0x277D75348] sts_providerImageColor];
      [(UIImageView *)v9 setTintColor:v10];

      [(STSSuggestionFooter *)self addSubview:self->_imageView];
    }

    [(UIImageView *)self->_imageView bounds];
    [(STSSuggestionFooter *)self setBounds:0.0, 0.0, v11 + 0.0, v12 + 18.0];
    [(STSSuggestionFooter *)self setNeedsLayout];
    v5 = v13;
  }
}

@end