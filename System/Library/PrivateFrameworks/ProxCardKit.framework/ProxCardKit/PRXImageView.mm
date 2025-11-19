@interface PRXImageView
+ (id)imageViewWithStyle:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (PRXImageView)initWithStyle:(int64_t)a3;
@end

@implementation PRXImageView

- (PRXImageView)initWithStyle:(int64_t)a3
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  if (a3 == 1)
  {
    v7 = 60.0;
    v6 = 60.0;
  }

  v19.receiver = self;
  v19.super_class = PRXImageView;
  v8 = [(PRXImageView *)&v19 initWithFrame:v4, v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    v8->_style = a3;
    if (a3 == 1)
    {
      [(PRXImageView *)v8 _setContinuousCornerRadius:12.0];
      v10 = [MEMORY[0x277D75348] blackColor];
      v11 = [v10 CGColor];
      v12 = [(PRXImageView *)v9 layer];
      [v12 setShadowColor:v11];

      v13 = [(PRXImageView *)v9 layer];
      LODWORD(v14) = 1045220557;
      [v13 setShadowOpacity:v14];

      v15 = [(PRXImageView *)v9 layer];
      [v15 setShadowRadius:10.0];

      v16 = [(PRXImageView *)v9 layer];
      [v16 setShadowOffset:{0.0, 8.0}];
    }

    v17 = v9;
  }

  return v9;
}

+ (id)imageViewWithStyle:(int64_t)a3
{
  v3 = [[a1 alloc] initWithStyle:a3];

  return v3;
}

- (CGSize)intrinsicContentSize
{
  if (self->_style == 1)
  {
    v4 = 60.0;
    v5 = 60.0;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PRXImageView;
    [(PRXImageView *)&v6 intrinsicContentSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

@end