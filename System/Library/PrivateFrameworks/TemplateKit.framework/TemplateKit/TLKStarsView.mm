@interface TLKStarsView
- (TLKStarsView)init;
- (void)setFont:(id)a3;
- (void)setStarRating:(double)a3;
- (void)setUseCompactMode:(BOOL)a3;
- (void)updateStarImages;
@end

@implementation TLKStarsView

- (TLKStarsView)init
{
  v6.receiver = self;
  v6.super_class = TLKStarsView;
  v2 = [(TLKStarsView *)&v6 init];
  if (v2)
  {
    v3 = 5;
    do
    {
      v4 = objc_opt_new();
      [TLKLayoutUtilities requireIntrinsicSizeForView:v4];
      [(TLKStackView *)v2 addArrangedSubview:v4];

      --v3;
    }

    while (v3);
    [TLKLayoutUtilities requireIntrinsicSizeForView:v2];
  }

  return v2;
}

- (void)setStarRating:(double)a3
{
  if (self->_starRating != a3)
  {
    self->_starRating = a3;
    [(TLKStarsView *)self updateStarImages];
  }
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_font] & 1) == 0)
  {
    objc_storeStrong(&self->_font, a3);
    [(TLKStarsView *)self updateStarImages];
  }
}

- (void)setUseCompactMode:(BOOL)a3
{
  if (self->_useCompactMode != a3)
  {
    self->_useCompactMode = a3;
    [(TLKStarsView *)self updateStarImages];
  }
}

- (void)updateStarImages
{
  for (i = 1; i != 6; ++i)
  {
    [(TLKStarsView *)self starRating];
    v4 = @"star.fill";
    if (v5 < i)
    {
      [(TLKStarsView *)self starRating];
      if (v6 >= i || ([(TLKStarsView *)self starRating], v4 = @"star.leadinghalf.fill", v7 <= (i - 1)))
      {
        v4 = @"star";
      }
    }

    v8 = [(TLKStarsView *)self arrangedSubviews];
    v9 = [v8 objectAtIndexedSubscript:i - 1];

    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
    [v9 setSymbolScale:1];
    v11 = [(TLKStarsView *)self font];
    [v9 setSymbolFont:v11];

    v12 = [[TLKImage alloc] initWithImage:v10];
    [(TLKImage *)v12 setIsTemplate:1];
    [v9 setTlkImage:v12];
  }
}

@end