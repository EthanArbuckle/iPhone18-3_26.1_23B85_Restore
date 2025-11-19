@interface SUUserRatingView
+ (id)copyImageForRating:(float)a3 backgroundColor:(id)a4 style:(int64_t)a5;
- (CGRect)_foregroundImageClipBounds;
- (SUUserRatingView)initWithForeground:(id)a3 background:(id)a4;
- (SUUserRatingView)initWithStyle:(int64_t)a3;
- (float)heightWithoutReflection;
- (void)layoutSubviews;
- (void)setValue:(float)a3;
@end

@implementation SUUserRatingView

- (SUUserRatingView)initWithForeground:(id)a3 background:(id)a4
{
  if (a4)
  {
    [a4 size];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = [(SUUserRatingView *)self initWithFrame:0.0, 0.0, v8, v10];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:a4];
    v11->_backgroundImageView = v12;
    [(SUUserRatingView *)v11 bounds];
    [(UIImageView *)v12 setFrame:?];
    [(SUUserRatingView *)v11 addSubview:v11->_backgroundImageView];

    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:a3];
    v11->_foregroundImageView = v13;
    [(UIImageView *)v13 setContentsPosition:3];
    [(UIImageView *)v11->_foregroundImageView setClipsToBounds:1];
    foregroundImageView = v11->_foregroundImageView;
    [(SUUserRatingView *)v11 _foregroundImageClipBounds];
    [(UIImageView *)foregroundImageView setFrame:?];
    [(SUUserRatingView *)v11 addSubview:v11->_foregroundImageView];
  }

  return v11;
}

- (SUUserRatingView)initWithStyle:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (a3 == 1)
  {
    v6 = @"UserRatingBorderedStarsForeground.png";
    v7 = @"UserRatingBorderedStarsBackground.png";
    goto LABEL_5;
  }

  if (!a3)
  {
    v6 = @"UserRatingPlainWhiteStarsForeground.png";
    v7 = @"UserRatingPlainWhiteStarsBackground.png";
LABEL_5:
    v8 = [MEMORY[0x1E69DCAB8] imageNamed:v7 inBundle:v5];
    v9 = [MEMORY[0x1E69DCAB8] imageNamed:v6 inBundle:v5];
    goto LABEL_7;
  }

  v8 = 0;
  v9 = 0;
LABEL_7:

  return [(SUUserRatingView *)self initWithForeground:v9 background:v8];
}

+ (id)copyImageForRating:(float)a3 backgroundColor:(id)a4 style:(int64_t)a5
{
  v7 = [objc_alloc(objc_opt_class()) initWithStyle:a5];
  [v7 setBackgroundColor:a4];
  if (a4)
  {
    v8 = [MEMORY[0x1E69DC888] clearColor] != a4;
  }

  else
  {
    v8 = 0;
  }

  [v7 setOpaque:v8];
  *&v9 = a3;
  [v7 setValue:v9];
  [v7 bounds];
  v11 = v10;
  v13 = v12;
  v14 = [v7 isOpaque];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v16 = v15;
  v19.width = v11;
  v19.height = v13;
  UIGraphicsBeginImageContextWithOptions(v19, v14, v16);
  [objc_msgSend(v7 "layer")];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

- (float)heightWithoutReflection
{
  [(SUUserRatingView *)self frame];
  v3 = v2;
  [objc_opt_class() reflectionHeight];
  return v3 - v4;
}

- (void)setValue:(float)a3
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  v3 = fmaxf(a3, 0.0);
  if (self->_value != v3)
  {
    self->_value = rintf(v3 * 10.0) / 10.0;
    [(SUUserRatingView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  foregroundImageView = self->_foregroundImageView;
  [(SUUserRatingView *)self _foregroundImageClipBounds];

  [(UIImageView *)foregroundImageView setFrame:?];
}

- (CGRect)_foregroundImageClipBounds
{
  [(SUUserRatingView *)self bounds];
  v7 = v6 * self->_value;
  result.size.height = v5;
  result.size.width = v7;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end