@interface SUReviewsButton
- (CGRect)contentRectForBounds:(CGRect)a3;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (SUReviewsButton)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadView;
- (void)setUserRatingCountString:(id)a3;
@end

@implementation SUReviewsButton

- (SUReviewsButton)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SUReviewsButton;
  v3 = [(SUGradientButton *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUReviewsButton *)v3 setAdjustsImageWhenDisabled:0];
    [(SUReviewsButton *)v4 setAdjustsImageWhenHighlighted:0];
    [(SUReviewsButton *)v4 setContentHorizontalAlignment:1];
    [-[SUReviewsButton titleLabel](v4 "titleLabel")];
    [(SUReviewsButton *)v4 contentEdgeInsets];
    [(SUReviewsButton *)v4 setContentEdgeInsets:?];
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    TableNext = UIImageGetTableNext();
    v7 = [v5 initWithImage:TableNext highlightedImage:UIImageGetTableNextSelected()];
    v4->_disclosureView = v7;
    [(SUReviewsButton *)v4 addSubview:v7];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUReviewsButton;
  [(SUReviewsButton *)&v3 dealloc];
}

- (void)reloadView
{
  v3 = [(SUReviewsButton *)self userRatingCountString];
  if (![(NSString *)v3 length])
  {

    v3 = SUCopyLocalizedReviewsStringForCount(self->_userRatingCount, 1);
  }

  [(SUReviewsButton *)self setTitle:v3 forState:0];

  if (self->_userRatingCount)
  {
    userRating = self->_userRating;
    v5 = [MEMORY[0x1E69DC888] clearColor];
    *&v6 = userRating;
    v7 = [SUUserRatingView copyImageForRating:v5 backgroundColor:1 style:v6];
    [(SUReviewsButton *)self setImage:v7 forState:0];
  }

  else
  {

    [(SUReviewsButton *)self setImage:0 forState:0];
  }
}

- (void)setUserRatingCountString:(id)a3
{
  userRatingCountString = self->_userRatingCountString;
  if (userRatingCountString != a3)
  {

    self->_userRatingCountString = a3;

    [(SUReviewsButton *)self reloadView];
  }
}

- (CGRect)contentRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24.receiver = self;
  v24.super_class = SUReviewsButton;
  [(SUReviewsButton *)&v24 contentRectForBounds:?];
  v9 = v8;
  v23 = v10;
  v12 = v11;
  v14 = v13;
  [(SUReviewsButton *)self contentEdgeInsets];
  v16 = v15;
  if ([(SUReviewsButton *)self titleForState:0]&& [(SUReviewsButton *)self imageForState:0])
  {
    v12 = v12 + 10.0;
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v17 = CGRectGetMaxX(v25) - v16;
  [(UIImageView *)self->_disclosureView frame];
  if (v12 >= v17 - v18 + -10.0 - v9)
  {
    v19 = v17 - v18 + -10.0 - v9;
  }

  else
  {
    v19 = v12;
  }

  v20 = v9;
  v21 = v23;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v19;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)layoutSubviews
{
  if (self->_disclosureView)
  {
    [(SUReviewsButton *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(SUReviewsButton *)self contentEdgeInsets];
    v12 = v11;
    [(UIImageView *)self->_disclosureView frame];
    v14 = v13;
    v16 = v15;
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    [(UIImageView *)self->_disclosureView setFrame:CGRectGetMaxX(v20) - v12 - v14, 17.0, v14, v16];
    disclosureView = self->_disclosureView;
    if (([(SUReviewsButton *)self isHighlighted]& 1) != 0)
    {
      v18 = 1;
    }

    else
    {
      v18 = [(SUReviewsButton *)self isSelected];
    }

    [(UIImageView *)disclosureView setHighlighted:v18];
  }

  v19.receiver = self;
  v19.super_class = SUReviewsButton;
  [(SUReviewsButton *)&v19 layoutSubviews];
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24.receiver = self;
  v24.super_class = SUReviewsButton;
  [(SUReviewsButton *)&v24 imageRectForContentRect:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v23.receiver = self;
  v23.super_class = SUReviewsButton;
  [(SUReviewsButton *)&v23 titleRectForContentRect:x, y, width, height];
  v15 = x + v14 + 10.0;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v16 = CGRectGetMaxX(v25) - v11;
  if (v15 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  +[SUUserRatingView reflectionHeight];
  *&v18 = v18 * 0.5;
  v19 = v9 + floorf(*&v18);
  v20 = v17;
  v21 = v11;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v19;
  result.origin.x = v20;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = SUReviewsButton;
  [(SUReviewsButton *)&v8 titleRectForContentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = x;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

@end