@interface PRXImageView
+ (id)imageViewWithStyle:(int64_t)style;
- (CGSize)intrinsicContentSize;
- (PRXImageView)initWithStyle:(int64_t)style;
@end

@implementation PRXImageView

- (PRXImageView)initWithStyle:(int64_t)style
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  if (style == 1)
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
    v8->_style = style;
    if (style == 1)
    {
      [(PRXImageView *)v8 _setContinuousCornerRadius:12.0];
      blackColor = [MEMORY[0x277D75348] blackColor];
      cGColor = [blackColor CGColor];
      layer = [(PRXImageView *)v9 layer];
      [layer setShadowColor:cGColor];

      layer2 = [(PRXImageView *)v9 layer];
      LODWORD(v14) = 1045220557;
      [layer2 setShadowOpacity:v14];

      layer3 = [(PRXImageView *)v9 layer];
      [layer3 setShadowRadius:10.0];

      layer4 = [(PRXImageView *)v9 layer];
      [layer4 setShadowOffset:{0.0, 8.0}];
    }

    v17 = v9;
  }

  return v9;
}

+ (id)imageViewWithStyle:(int64_t)style
{
  v3 = [[self alloc] initWithStyle:style];

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