@interface PKPhoneHeroImageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPhoneHeroImageView)initWithImage:(id)a3;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)a3;
@end

@implementation PKPhoneHeroImageView

- (PKPhoneHeroImageView)initWithImage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = PKPhoneHeroImageView;
    v5 = [(PKPhoneHeroImageView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
      phoneView = v5->_phoneView;
      v5->_phoneView = v6;

      [(PKPhoneHeroImageView *)v5 addSubview:v5->_phoneView];
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

- (void)setContentMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKPhoneHeroImageView;
  [(PKPhoneHeroImageView *)&v5 setContentMode:?];
  [(UIImageView *)self->_phoneView setContentMode:a3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(UIImageView *)self->_phoneView image];
  [v3 size];
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