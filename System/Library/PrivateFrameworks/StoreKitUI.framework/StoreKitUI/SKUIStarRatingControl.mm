@interface SKUIStarRatingControl
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_unfilledStarsMinX;
- (double)_unfilledStarsWidth;
- (float)starSpacing;
- (float)starWidth;
- (unint64_t)_ratingForUIDirection:(unint64_t)direction;
- (void)_updateUserRatingWithTouch:(id)touch;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setEmptyStarsImage:(id)image;
- (void)setFilledStarsImage:(id)image;
- (void)setUserRating:(int64_t)rating;
- (void)starSpacing;
@end

@implementation SKUIStarRatingControl

- (float)starSpacing
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIStarRatingControl starSpacing];
  }

  result = self->_starSpacing;
  if (result == 0.0)
  {
    return 10.0;
  }

  return result;
}

- (float)starWidth
{
  result = self->_starWidth;
  if (result == 0.0)
  {
    return 19.0;
  }

  return result;
}

- (void)setEmptyStarsImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_emptyStarsImageView image];

  v6 = imageCopy;
  if (image != imageCopy)
  {
    emptyStarsImageView = self->_emptyStarsImageView;
    if (!emptyStarsImageView)
    {
      v8 = objc_alloc_init(MEMORY[0x277D755E8]);
      v9 = self->_emptyStarsImageView;
      self->_emptyStarsImageView = v8;

      [(UIImageView *)self->_emptyStarsImageView setContentMode:4];
      v10 = self->_emptyStarsImageView;
      backgroundColor = [(SKUIStarRatingControl *)self backgroundColor];
      [(UIImageView *)v10 setBackgroundColor:backgroundColor];

      [(SKUIStarRatingControl *)self addSubview:self->_emptyStarsImageView];
      emptyStarsImageView = self->_emptyStarsImageView;
    }

    v5 = [(UIImageView *)emptyStarsImageView setImage:imageCopy];
    v6 = imageCopy;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setFilledStarsImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_filledStarsImageView image];

  v6 = imageCopy;
  if (image != imageCopy)
  {
    filledStarsImageView = self->_filledStarsImageView;
    if (!filledStarsImageView)
    {
      v8 = objc_alloc_init(MEMORY[0x277D755E8]);
      v9 = self->_filledStarsImageView;
      self->_filledStarsImageView = v8;

      v10 = self->_filledStarsImageView;
      backgroundColor = [(SKUIStarRatingControl *)self backgroundColor];
      [(UIImageView *)v10 setBackgroundColor:backgroundColor];

      [(UIImageView *)self->_filledStarsImageView setContentMode:7];
      [(UIImageView *)self->_filledStarsImageView setClipsToBounds:1];
      [(SKUIStarRatingControl *)self addSubview:self->_filledStarsImageView];
      filledStarsImageView = self->_filledStarsImageView;
    }

    v5 = [(UIImageView *)filledStarsImageView setImage:imageCopy];
    v6 = imageCopy;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setUserRating:(int64_t)rating
{
  if (self->_userRating != rating)
  {
    self->_userRating = rating;
    [(SKUIStarRatingControl *)self setNeedsLayout];
  }
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  self->_previousUserRating = self->_userRating;
  [(SKUIStarRatingControl *)self _updateUserRatingWithTouch:touch, event];
  return 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  [(SKUIStarRatingControl *)self _updateUserRatingWithTouch:touch, event];

  [(SKUIStarRatingControl *)self sendActionsForControlEvents:4096];
}

- (void)cancelTrackingWithEvent:(id)event
{
  if (event)
  {
    self->_userRating = self->_previousUserRating;
    [(SKUIStarRatingControl *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUIStarRatingControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_emptyStarsImageView setFrame:?];
  [(SKUIStarRatingControl *)self _unfilledStarsMinX];
  v12 = v11;
  userRating = self->_userRating;
  [(SKUIStarRatingControl *)self starWidth];
  v15 = (v14 * userRating);
  v16 = self->_userRating;
  v17 = v16 < 1;
  v18 = v16 - 1;
  if (!v17)
  {
    v19 = v18;
    [(SKUIStarRatingControl *)self starSpacing];
    v15 = v15 + (v20 * v19);
  }

  if ([(SKUIStarRatingControl *)self _isRTL])
  {
    v12 = CGRectWithFlippedOriginRelativeToBoundingRect(v12, v6, v15, v10, v4, v6, v8, v10);
    v6 = v21;
    v15 = v22;
    v10 = v23;
  }

  filledStarsImageView = self->_filledStarsImageView;

  [(UIImageView *)filledStarsImageView setFrame:v12, v6, v15, v10];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(SKUIStarRatingControl *)self bounds];
  v11 = CGRectInset(v10, -20.0, -20.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (void)setBackgroundColor:(id)color
{
  emptyStarsImageView = self->_emptyStarsImageView;
  colorCopy = color;
  [(UIImageView *)emptyStarsImageView setBackgroundColor:colorCopy];
  [(UIImageView *)self->_filledStarsImageView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIStarRatingControl;
  [(SKUIStarRatingControl *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(UIImageView *)self->_emptyStarsImageView image:fits.width];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (unint64_t)_ratingForUIDirection:(unint64_t)direction
{
  if ([(SKUIStarRatingControl *)self _isRTL])
  {
    return 6 - direction;
  }

  else
  {
    return direction;
  }
}

- (double)_unfilledStarsWidth
{
  [(SKUIStarRatingControl *)self starWidth];
  v4 = v3;
  [(SKUIStarRatingControl *)self starSpacing];
  return ((v5 * 4.0) + (v4 * 5.0));
}

- (double)_unfilledStarsMinX
{
  [(SKUIStarRatingControl *)self bounds];
  v4 = v3;
  [(SKUIStarRatingControl *)self _unfilledStarsWidth];
  return (v4 - v5) * 0.5;
}

- (void)_updateUserRatingWithTouch:(id)touch
{
  userRating = self->_userRating;
  [touch locationInView:self];
  v6 = v5;
  [(SKUIStarRatingControl *)self _unfilledStarsMinX];
  v8 = v7;
  [(SKUIStarRatingControl *)self starSpacing];
  if (v6 >= v8 - v9)
  {
    [(SKUIStarRatingControl *)self _unfilledStarsMinX];
    v12 = v11;
    [(SKUIStarRatingControl *)self _unfilledStarsWidth];
    if (v6 >= v12 + v13)
    {
      _lastStar = [(SKUIStarRatingControl *)self _lastStar];
    }

    else
    {
      [(SKUIStarRatingControl *)self _unfilledStarsMinX];
      v15 = v14;
      [(SKUIStarRatingControl *)self starWidth];
      v17 = v15 + v16;
      v18 = 1;
      while (v6 >= v17)
      {
        [(SKUIStarRatingControl *)self starWidth];
        v20 = v19;
        [(SKUIStarRatingControl *)self starSpacing];
        v17 = v17 + (v20 + v21);
        if (++v18 == 6)
        {
          goto LABEL_11;
        }
      }

      _lastStar = [(SKUIStarRatingControl *)self _ratingForUIDirection:v18];
    }
  }

  else
  {
    _lastStar = [(SKUIStarRatingControl *)self _firstStar];
  }

  userRating = _lastStar;
LABEL_11:

  [(SKUIStarRatingControl *)self setUserRating:userRating];
}

- (void)starSpacing
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStarRatingControl starSpacing]";
}

@end