@interface PUCinematicSubjectIndicator
- (PUCinematicSubjectIndicator)initWithFrame:(CGRect)a3;
- (void)_startPulseAnimation;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)setIsPulsing:(BOOL)a3;
- (void)setShape:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation PUCinematicSubjectIndicator

- (void)_startPulseAnimation
{
  v3 = [(PUCinematicSubjectIndicator *)self superview];

  if (v3)
  {
    v8 = [(PUCinematicSubjectIndicator *)self layer];
    v4 = [v8 animationForKey:@"pulse"];
    if (!v4)
    {
      [v8 removeAllAnimations];
      v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
      [v5 setDuration:0.75];
      v6 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v5 setTimingFunction:v6];

      [v5 setToValue:&unk_1F2B7F378];
      LODWORD(v7) = 2139095040;
      [v5 setRepeatCount:v7];
      [v5 setAutoreverses:1];
      [v8 addAnimation:v5 forKey:@"pulse"];
    }
  }
}

- (void)setIsPulsing:(BOOL)a3
{
  if (self->_isPulsing != a3)
  {
    self->_isPulsing = a3;
    if (a3)
    {

      [(PUCinematicSubjectIndicator *)self _startPulseAnimation];
    }

    else
    {
      v4 = [(PUCinematicSubjectIndicator *)self layer];
      [v4 removeAllAnimations];
    }
  }
}

- (void)setShape:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_shape = a3;
  v7 = a3 == 3;
  [(CEKSubjectIndicatorView *)self->_fixedFocusView setHidden:a3 != 3 animated:?];
  [(CEKCinematicSubjectIndicatorView *)self->_subjectView setHidden:v7];
  if (a3 <= 2)
  {
    subjectView = self->_subjectView;

    [(CEKCinematicSubjectIndicatorView *)subjectView setShape:a3 animated:v4];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PUCinematicSubjectIndicator;
  [(PUCinematicSubjectIndicator *)&v11 layoutSubviews];
  [(PUCinematicSubjectIndicator *)self bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (!CGRectIsNull(v12))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    if (!CGRectIsInfinite(v13))
    {
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      if (!CGRectIsEmpty(v14))
      {
        v15.origin.x = x;
        v15.origin.y = y;
        v15.size.width = width;
        v15.size.height = height;
        MidX = CGRectGetMidX(v15);
        v16.origin.x = x;
        v16.origin.y = y;
        v16.size.width = width;
        v16.size.height = height;
        MidY = CGRectGetMidY(v16);
        [MEMORY[0x1E6993838] minimumSuggestedBounds];
        if (width >= v9)
        {
          v9 = width;
        }

        if (height >= v10)
        {
          v10 = height;
        }

        [(CEKCinematicSubjectIndicatorView *)self->_subjectView setBounds:0.0, 0.0, v9, v10];
        [(CEKCinematicSubjectIndicatorView *)self->_subjectView setCenter:MidX, MidY];
        [(CEKSubjectIndicatorView *)self->_fixedFocusView setBounds:0.0, 0.0, self->_fixedFocusSize.width, self->_fixedFocusSize.height];
        [(CEKSubjectIndicatorView *)self->_fixedFocusView setCenter:MidX, MidY];
        if ([(PUCinematicSubjectIndicator *)self isPulsing])
        {
          [(PUCinematicSubjectIndicator *)self _startPulseAnimation];
        }
      }
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PUCinematicSubjectIndicator;
  [(PUCinematicSubjectIndicator *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PUCinematicSubjectIndicator *)self setNeedsLayout];
}

- (PUCinematicSubjectIndicator)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = PUCinematicSubjectIndicator;
  v3 = [(PUCinematicSubjectIndicator *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E6993898]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    v10 = *(v3 + 51);
    *(v3 + 51) = v9;

    [*(v3 + 51) setShape:3];
    [v3 addSubview:*(v3 + 51)];
    v11 = [objc_alloc(MEMORY[0x1E6993838]) initWithFrame:{v5, v6, v7, v8}];
    v12 = *(v3 + 52);
    *(v3 + 52) = v11;

    [v3 addSubview:*(v3 + 52)];
    [v3 setShape:0];
    *(v3 + 424) = vdupq_n_s64(0x4052C00000000000uLL);
    v3[440] = 0;
  }

  return v3;
}

@end