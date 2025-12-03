@interface PKPhoneHeroImageView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPhoneHeroImageView)initWithImage:(id)image;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)mode;
@end

@implementation PKPhoneHeroImageView

- (PKPhoneHeroImageView)initWithImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    v10.receiver = self;
    v10.super_class = PKPhoneHeroImageView;
    v5 = [(PKPhoneHeroImageView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
      phoneView = v5->_phoneView;
      v5->_phoneView = v6;

      [(PKPhoneHeroImageView *)v5 addSubview:v5->_phoneView];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPhoneHeroImageView;
  [(PKPhoneHeroImageView *)&v4 layoutSubviews];
  phoneView = self->_phoneView;
  [(PKPhoneHeroImageView *)self bounds];
  [(UIImageView *)phoneView setFrame:?];
}

- (void)setContentMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = PKPhoneHeroImageView;
  [(PKPhoneHeroImageView *)&v5 setContentMode:?];
  [(UIImageView *)self->_phoneView setContentMode:mode];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  image = [(UIImageView *)self->_phoneView image];
  [image size];
  PKSizeAspectFit();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end