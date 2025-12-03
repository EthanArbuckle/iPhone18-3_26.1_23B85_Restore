@interface PKLinkedAppUserRatingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKLinkedAppUserRatingView)initWithFrame:(CGRect)frame;
- (id)_starImageViewWithImage:(id)image;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setUserRating:(float)rating;
@end

@implementation PKLinkedAppUserRatingView

- (PKLinkedAppUserRatingView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PKLinkedAppUserRatingView;
  v3 = [(PKLinkedAppUserRatingView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    starViews = v3->_starViews;
    v3->_starViews = v4;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKLinkedAppUserRatingView;
  [(PKLinkedAppUserRatingView *)&v2 dealloc];
}

- (void)setUserRating:(float)rating
{
  v35 = *MEMORY[0x1E69E9840];
  ratingCopy = 5.0;
  if (rating <= 5.0)
  {
    ratingCopy = rating;
  }

  self->_userRating = ratingCopy;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = self->_starViews;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v30 + 1) + 8 * i) removeFromSuperview];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_starViews removeAllObjects];
  userRating = self->_userRating;
  v12 = vcvtms_s32_f32(userRating);
  v13 = vcvtps_s32_f32(rating - floorf(userRating));
  v14 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:10.0];
  if (v12)
  {
    v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star.fill"];
    v16 = [v15 imageWithSymbolConfiguration:v14];

    if (v12 < 1)
    {
      v12 = 0;
    }

    else
    {
      v17 = v12;
      do
      {
        starViews = self->_starViews;
        v19 = [(PKLinkedAppUserRatingView *)self _starImageViewWithImage:v16, v30];
        [(NSMutableArray *)starViews addObject:v19];

        --v17;
      }

      while (v17);
    }
  }

  if (v13)
  {
    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star.leadinghalf.fill"];
    v21 = [v20 imageWithSymbolConfiguration:v14];

    if (v13 >= 1)
    {
      v22 = v13;
      do
      {
        v23 = self->_starViews;
        v24 = [(PKLinkedAppUserRatingView *)self _starImageViewWithImage:v21, v30];
        [(NSMutableArray *)v23 addObject:v24];

        --v22;
      }

      while (v22);
      v12 += v13;
    }
  }

  if (v12 != 5)
  {
    v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star"];
    v26 = [v25 imageWithSymbolConfiguration:v14];

    if (v12 <= 4)
    {
      if (5 - v12 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = 5 - v12;
      }

      do
      {
        v28 = self->_starViews;
        v29 = [(PKLinkedAppUserRatingView *)self _starImageViewWithImage:v26, v30];
        [(NSMutableArray *)v28 addObject:v29];

        --v27;
      }

      while (v27);
    }
  }
}

- (void)layoutSubviews
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_starViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        [(PKLinkedAppUserRatingView *)self addSubview:v9, v24];
        [v9 sizeToFit];
        [v9 frame];
        v11 = v10;
        [v9 frame];
        v30.origin.y = 0.0;
        v30.origin.x = v7;
        v30.size.width = v11;
        MaxX = CGRectGetMaxX(v30);
        [(PKLinkedAppUserRatingView *)self bounds];
        UIRectCenteredYInRect();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        if ([(PKLinkedAppUserRatingView *)self _shouldReverseLayoutDirection])
        {
          [(PKLinkedAppUserRatingView *)self bounds];
          v22 = v21 - v18;
          [(PKLinkedAppUserRatingView *)self bounds];
          v14 = v22 - (v14 - v23);
        }

        v7 = MaxX + 1.0;
        [v9 setFrame:{v14, v16, v18, v20}];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(NSMutableArray *)self->_starViews lastObject:fits.width];
  v4 = v3;
  if (v3)
  {
    [v3 frame];
  }

  else
  {
    v5 = *(MEMORY[0x1E695F058] + 16);
  }

  v6 = v5 * 5.0;

  v7 = 15.0;
  v8 = v6;
  result.height = v7;
  result.width = v8;
  return result;
}

- (id)_starImageViewWithImage:(id)image
{
  v3 = [image imageWithRenderingMode:2];
  v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v3];
  systemOrangeColor = [MEMORY[0x1E69DC888] systemOrangeColor];
  [v4 setTintColor:systemOrangeColor];

  return v4;
}

@end