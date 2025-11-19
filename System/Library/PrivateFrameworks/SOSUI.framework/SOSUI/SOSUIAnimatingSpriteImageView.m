@interface SOSUIAnimatingSpriteImageView
+ (id)_createNewSpriteArray:(id)a3 currentFrame:(unint64_t)a4 arraySize:(unint64_t)a5 interrupted:(BOOL)a6;
- (BOOL)isAnimating;
- (CGSize)_spriteFrameSize;
- (SOSUIAnimatingSpriteImageView)initWithFrame:(CGRect)a3;
- (id)_centerPointValues;
- (unint64_t)_findSpriteIndex:(CGPoint)a3 centerPoints:(id)a4;
- (void)animateOnce;
- (void)layoutSubviews;
- (void)setSpriteImage:(id)a3;
- (void)setTintColor:(id)a3;
- (void)startAnimating;
- (void)stopAnimatingFinishingCycle:(BOOL)a3;
- (void)updateLayerWithTintColor;
@end

@implementation SOSUIAnimatingSpriteImageView

- (SOSUIAnimatingSpriteImageView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SOSUIAnimatingSpriteImageView;
  v3 = [(SOSUIAnimatingSpriteImageView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SOSUIAnimatingSpriteImageView *)v3 setClipsToBounds:1];
    v4->_framesPerSecond = 60;
    v5 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    imageLayer = v4->_imageLayer;
    v4->_imageLayer = v5;

    v7 = [(SOSUIAnimatingSpriteImageView *)v4 layer];
    [v7 addSublayer:v4->_imageLayer];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  [(UIImage *)self->_spriteImage size];
  v6 = v5;
  v8 = v7;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(CALayer *)self->_imageLayer setFrame:v3, v4, v6, v8];
  v9 = MEMORY[0x277CD9FF0];

  [v9 commit];
}

- (CGSize)_spriteFrameSize
{
  spriteImage = self->_spriteImage;
  if (spriteImage)
  {
    spriteFrameCount = self->_spriteFrameCount;
    spriteColumnCount = self->_spriteColumnCount;
    if (spriteFrameCount % spriteColumnCount)
    {
      v6 = spriteFrameCount / spriteColumnCount + 1;
    }

    else
    {
      v6 = spriteFrameCount / spriteColumnCount;
    }

    [(UIImage *)spriteImage size];
    v8 = v7 / self->_spriteColumnCount;
    [(UIImage *)self->_spriteImage size];
    v10 = v9 / v6;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)setSpriteImage:(id)a3
{
  v4 = a3;
  [(SOSUIAnimatingSpriteImageView *)self stopAnimatingFinishingCycle:0];
  v5 = [(SOSUIAnimatingSpriteImageView *)self tintColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:2];

  spriteImage = self->_spriteImage;
  self->_spriteImage = v6;

  [(CALayer *)self->_imageLayer setContents:[(UIImage *)self->_spriteImage CGImage]];
  [(SOSUIAnimatingSpriteImageView *)self updateLayerWithTintColor];

  [(SOSUIAnimatingSpriteImageView *)self setNeedsLayout];
}

- (void)setTintColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = SOSUIAnimatingSpriteImageView;
  [(SOSUIAnimatingSpriteImageView *)&v4 setTintColor:a3];
  if (self->_spriteImage)
  {
    [(SOSUIAnimatingSpriteImageView *)self setSpriteImage:?];
  }
}

- (void)updateLayerWithTintColor
{
  imageLayer = self->_imageLayer;
  v4 = [(SOSUIAnimatingSpriteImageView *)self layer];
  [v4 setMask:imageLayer];

  v8 = [(SOSUIAnimatingSpriteImageView *)self tintColor];
  v5 = v8;
  v6 = [v8 CGColor];
  v7 = [(SOSUIAnimatingSpriteImageView *)self layer];
  [v7 setBackgroundColor:v6];
}

- (id)_centerPointValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(SOSUIAnimatingSpriteImageView *)self _spriteFrameSize];
  [(UIImage *)self->_spriteImage size];
  if (self->_spriteFrameCount >= 1)
  {
    v4 = 0;
    do
    {
      spriteColumnCount = self->_spriteColumnCount;
      v6 = MEMORY[0x277CCAE60];
      UIRectGetCenter();
      v7 = [v6 valueWithCGPoint:?];
      [v3 addObject:v7];

      ++v4;
    }

    while (v4 < self->_spriteFrameCount);
  }

  return v3;
}

- (unint64_t)_findSpriteIndex:(CGPoint)a3 centerPoints:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = MEMORY[0x277CCAE60];
  v7 = a4;
  v8 = [v6 valueWithCGPoint:{x, y}];
  v9 = [v7 indexOfObject:v8];

  return v9;
}

+ (id)_createNewSpriteArray:(id)a3 currentFrame:(unint64_t)a4 arraySize:(unint64_t)a5 interrupted:(BOOL)a6
{
  v9 = a3;
  v10 = v9;
  if (a5 - 1 == a4)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v9 subarrayWithRange:{a4 + 1, ~a4 + a5}];
    v13 = v12;
    if (a6)
    {
      v14 = [v10 subarrayWithRange:{0, a4 + 1}];
      v11 = [v13 arrayByAddingObjectsFromArray:v14];
    }

    else
    {
      v11 = v12;
    }
  }

  return v11;
}

- (void)startAnimating
{
  if (self->_spriteImage)
  {
    [(SOSUIAnimatingSpriteImageView *)self frame];
    if (!CGRectIsEmpty(v17))
    {
      if ([(SOSUIAnimatingSpriteImageView *)self isAnimating])
      {
        v3 = [(CALayer *)self->_imageLayer presentationLayer];
        [v3 position];
        v5 = v4;
        v7 = v6;

        v8 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
        v9 = [(SOSUIAnimatingSpriteImageView *)self _findSpriteIndex:v8 centerPoints:v5, v7];

        v10 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
        v11 = [v10 count];

        [(CALayer *)self->_imageLayer removeAnimationForKey:@"PositionKeyframeAnimation"];
        v12 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
        v15 = [SOSUIAnimatingSpriteImageView _createNewSpriteArray:v12 currentFrame:v9 arraySize:v11 interrupted:1];
      }

      else
      {
        v15 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
      }

      imageLayer = self->_imageLayer;
      v14 = _PositionAnimation(v15, self->_spriteFrameCount / self->_framesPerSecond, 3.4028e38);
      [(CALayer *)imageLayer addAnimation:v14 forKey:@"PositionKeyframeAnimation"];
    }
  }
}

- (void)stopAnimatingFinishingCycle:(BOOL)a3
{
  imageLayer = self->_imageLayer;
  if (a3)
  {
    v5 = [(CALayer *)imageLayer presentationLayer];
    [v5 position];
    v7 = v6;
    v9 = v8;

    v10 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
    v11 = [(SOSUIAnimatingSpriteImageView *)self _findSpriteIndex:v10 centerPoints:v7, v9];

    v12 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
    v13 = [v12 count];

    [(CALayer *)self->_imageLayer removeAnimationForKey:@"PositionKeyframeAnimation"];
    if (v11 != v13 - 1)
    {
      v14 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
      v18 = [SOSUIAnimatingSpriteImageView _createNewSpriteArray:v14 currentFrame:v11 arraySize:v13 interrupted:0];

      v15 = [v18 count];
      v16 = self->_imageLayer;
      v17 = _PositionAnimation(v18, v15 / self->_framesPerSecond, 0.0);
      [(CALayer *)v16 addAnimation:v17 forKey:@"PositionKeyframeAnimation"];
    }
  }

  else
  {

    [(CALayer *)imageLayer removeAnimationForKey:@"PositionKeyframeAnimation"];
  }
}

- (BOOL)isAnimating
{
  v2 = [(CALayer *)self->_imageLayer animationForKey:@"PositionKeyframeAnimation"];
  v3 = v2 != 0;

  return v3;
}

- (void)animateOnce
{
  if ([(SOSUIAnimatingSpriteImageView *)self isAnimating])
  {
    [(CALayer *)self->_imageLayer removeAnimationForKey:@"PositionKeyframeAnimation"];
  }

  v6 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
  imageLayer = self->_imageLayer;
  v4 = _PositionAnimation(v6, self->_spriteFrameCount / self->_framesPerSecond, 1.0);
  [(CALayer *)imageLayer addAnimation:v4 forKey:@"PositionKeyframeAnimation"];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v5 = [v6 lastObject];
  [v5 CGPointValue];
  [(CALayer *)self->_imageLayer setPosition:?];

  [MEMORY[0x277CD9FF0] commit];
}

@end