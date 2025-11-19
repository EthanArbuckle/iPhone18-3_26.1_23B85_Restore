@interface TSKStarRatingView
+ (void)renderRating:(int64_t)a3 intoContext:(CGContext *)a4 rect:(CGRect)a5 style:(int)a6 showDots:(BOOL)a7;
- (TSKStarRatingView)initWithCoder:(id)a3;
- (TSKStarRatingView)initWithFrame:(CGRect)a3;
- (int64_t)p_starRatingForGesture:(id)a3;
- (int64_t)p_starRatingForLocation:(double)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)p_horizontalDrag:(id)a3;
- (void)p_setupGestureRecognizers;
- (void)p_tapped:(id)a3;
- (void)setValue:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation TSKStarRatingView

- (void)p_setupGestureRecognizers
{
  v3 = [[TSKHorizontalDragRecognizer alloc] initWithTarget:self action:sel_p_horizontalDrag_];
  self->mDragGesture = v3;
  [(TSKStarRatingView *)self addGestureRecognizer:v3];
  v4 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_p_horizontalDrag_];
  [v4 setMinimumPressDuration:0.2];
  [(TSKStarRatingView *)self addGestureRecognizer:v4];

  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_p_tapped_];
  [(TSKStarRatingView *)self addGestureRecognizer:v5];
}

- (TSKStarRatingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TSKStarRatingView;
  v3 = [(TSKStarRatingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TSKStarRatingView *)v3 p_setupGestureRecognizers];
    [(TSKStarRatingView *)v4 setShowsDots:1];
    -[TSKStarRatingView setColor:](v4, "setColor:", [MEMORY[0x277D6C2A8] blackColor]);
  }

  return v4;
}

- (TSKStarRatingView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSKStarRatingView;
  v3 = [(TSKStarRatingView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TSKStarRatingView *)v3 p_setupGestureRecognizers];
    [(TSKStarRatingView *)v4 setShowsDots:1];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKStarRatingView;
  [(TSKStarRatingView *)&v3 dealloc];
}

- (int64_t)p_starRatingForLocation:(double)a3
{
  [(TSKStarRatingView *)self bounds];
  v5 = a3 / v4;
  if (a3 / v4 < 0.0500000007)
  {
    return 0;
  }

  if (v5 < 0.200000003)
  {
    return 1;
  }

  if (v5 < 0.400000006)
  {
    return 2;
  }

  if (v5 < 0.600000024)
  {
    return 3;
  }

  if (v5 >= 0.800000012)
  {
    return 5;
  }

  return 4;
}

- (int64_t)p_starRatingForGesture:(id)a3
{
  [a3 locationOfTouch:0 inView:self];

  return [(TSKStarRatingView *)self p_starRatingForLocation:?];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  [objc_msgSend(a3 "anyObject")];
  [(TSKStarRatingView *)self setValue:[(TSKStarRatingView *)self p_starRatingForLocation:?]];

  [(TSKStarRatingView *)self sendActionsForControlEvents:4097];
}

- (void)p_tapped:(id)a3
{
  [(TSKStarRatingView *)self setValue:[(TSKStarRatingView *)self p_starRatingForGesture:a3]];

  [(TSKStarRatingView *)self sendActionsForControlEvents:64];
}

- (void)p_horizontalDrag:(id)a3
{
  v5 = [a3 state];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v7 = 64;
      goto LABEL_12;
    }

    if (v5 != 4)
    {
      return;
    }

    mRatingOnFingerDown = self->mRatingOnFingerDown;
    v7 = 256;
  }

  else if (v5 == 1)
  {
    self->mRatingOnFingerDown = self->mRating;
    mRatingOnFingerDown = [(TSKStarRatingView *)self p_starRatingForGesture:a3];
    v7 = 1;
  }

  else
  {
    if (v5 != 2)
    {
      return;
    }

    mRatingOnFingerDown = [(TSKStarRatingView *)self p_starRatingForGesture:a3];
    v7 = 4096;
  }

  [(TSKStarRatingView *)self setValue:mRatingOnFingerDown];
LABEL_12:

  [(TSKStarRatingView *)self sendActionsForControlEvents:v7];
}

- (void)willMoveToSuperview:(id)a3
{
  while (1)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      break;
    }

    a3 = [a3 superview];
    if (!a3)
    {
      return;
    }
  }

  v6 = v5;
  mDragGesture = self->mDragGesture;

  [(TSKHorizontalDragRecognizer *)mDragGesture setContainingScrollView:v6];
}

- (void)setValue:(int64_t)a3
{
  TSUClamp();
  self->mRating = v4;

  [(TSKStarRatingView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(TSKStarRatingView *)self renderClass];
  mRating = self->mRating;
  CurrentContext = UIGraphicsGetCurrentContext();
  v11 = [(TSKStarRatingView *)self style];
  v12 = [(TSKStarRatingView *)self showsDots];
  v13 = [(TSKStarRatingView *)self color];

  [(objc_class *)v8 renderRating:mRating intoContext:CurrentContext rect:v11 style:v12 showDots:v13 color:x, y, width, height];
}

+ (void)renderRating:(int64_t)a3 intoContext:(CGContext *)a4 rect:(CGRect)a5 style:(int)a6 showDots:(BOOL)a7
{
  v7 = a7;
  v8 = *&a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = [MEMORY[0x277D6C2A8] blackColor];

  [TSKStarRatingViewRenderer renderRating:a3 intoContext:a4 rect:v8 style:v7 showDots:v15 color:x, y, width, height];
}

@end