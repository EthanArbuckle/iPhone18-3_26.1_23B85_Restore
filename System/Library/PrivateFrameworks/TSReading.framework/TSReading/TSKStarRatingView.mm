@interface TSKStarRatingView
+ (void)renderRating:(int64_t)rating intoContext:(CGContext *)context rect:(CGRect)rect style:(int)style showDots:(BOOL)dots;
- (TSKStarRatingView)initWithCoder:(id)coder;
- (TSKStarRatingView)initWithFrame:(CGRect)frame;
- (int64_t)p_starRatingForGesture:(id)gesture;
- (int64_t)p_starRatingForLocation:(double)location;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)p_horizontalDrag:(id)drag;
- (void)p_setupGestureRecognizers;
- (void)p_tapped:(id)p_tapped;
- (void)setValue:(int64_t)value;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)willMoveToSuperview:(id)superview;
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

- (TSKStarRatingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TSKStarRatingView;
  v3 = [(TSKStarRatingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TSKStarRatingView *)v3 p_setupGestureRecognizers];
    [(TSKStarRatingView *)v4 setShowsDots:1];
    -[TSKStarRatingView setColor:](v4, "setColor:", [MEMORY[0x277D6C2A8] blackColor]);
  }

  return v4;
}

- (TSKStarRatingView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TSKStarRatingView;
  v3 = [(TSKStarRatingView *)&v6 initWithCoder:coder];
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

- (int64_t)p_starRatingForLocation:(double)location
{
  [(TSKStarRatingView *)self bounds];
  v5 = location / v4;
  if (location / v4 < 0.0500000007)
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

- (int64_t)p_starRatingForGesture:(id)gesture
{
  [gesture locationOfTouch:0 inView:self];

  return [(TSKStarRatingView *)self p_starRatingForLocation:?];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  [objc_msgSend(began "anyObject")];
  [(TSKStarRatingView *)self setValue:[(TSKStarRatingView *)self p_starRatingForLocation:?]];

  [(TSKStarRatingView *)self sendActionsForControlEvents:4097];
}

- (void)p_tapped:(id)p_tapped
{
  [(TSKStarRatingView *)self setValue:[(TSKStarRatingView *)self p_starRatingForGesture:p_tapped]];

  [(TSKStarRatingView *)self sendActionsForControlEvents:64];
}

- (void)p_horizontalDrag:(id)drag
{
  state = [drag state];
  if (state > 2)
  {
    if (state == 3)
    {
      v7 = 64;
      goto LABEL_12;
    }

    if (state != 4)
    {
      return;
    }

    mRatingOnFingerDown = self->mRatingOnFingerDown;
    v7 = 256;
  }

  else if (state == 1)
  {
    self->mRatingOnFingerDown = self->mRating;
    mRatingOnFingerDown = [(TSKStarRatingView *)self p_starRatingForGesture:drag];
    v7 = 1;
  }

  else
  {
    if (state != 2)
    {
      return;
    }

    mRatingOnFingerDown = [(TSKStarRatingView *)self p_starRatingForGesture:drag];
    v7 = 4096;
  }

  [(TSKStarRatingView *)self setValue:mRatingOnFingerDown];
LABEL_12:

  [(TSKStarRatingView *)self sendActionsForControlEvents:v7];
}

- (void)willMoveToSuperview:(id)superview
{
  while (1)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      break;
    }

    superview = [superview superview];
    if (!superview)
    {
      return;
    }
  }

  v6 = v5;
  mDragGesture = self->mDragGesture;

  [(TSKHorizontalDragRecognizer *)mDragGesture setContainingScrollView:v6];
}

- (void)setValue:(int64_t)value
{
  TSUClamp();
  self->mRating = v4;

  [(TSKStarRatingView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  renderClass = [(TSKStarRatingView *)self renderClass];
  mRating = self->mRating;
  CurrentContext = UIGraphicsGetCurrentContext();
  style = [(TSKStarRatingView *)self style];
  showsDots = [(TSKStarRatingView *)self showsDots];
  color = [(TSKStarRatingView *)self color];

  [(objc_class *)renderClass renderRating:mRating intoContext:CurrentContext rect:style style:showsDots showDots:color color:x, y, width, height];
}

+ (void)renderRating:(int64_t)rating intoContext:(CGContext *)context rect:(CGRect)rect style:(int)style showDots:(BOOL)dots
{
  dotsCopy = dots;
  v8 = *&style;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blackColor = [MEMORY[0x277D6C2A8] blackColor];

  [TSKStarRatingViewRenderer renderRating:rating intoContext:context rect:v8 style:dotsCopy showDots:blackColor color:x, y, width, height];
}

@end