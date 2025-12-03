@interface SOSUIAnimatingSpriteImageView
+ (id)_createNewSpriteArray:(id)array currentFrame:(unint64_t)frame arraySize:(unint64_t)size interrupted:(BOOL)interrupted;
- (BOOL)isAnimating;
- (CGSize)_spriteFrameSize;
- (SOSUIAnimatingSpriteImageView)initWithFrame:(CGRect)frame;
- (id)_centerPointValues;
- (unint64_t)_findSpriteIndex:(CGPoint)index centerPoints:(id)points;
- (void)animateOnce;
- (void)layoutSubviews;
- (void)setSpriteImage:(id)image;
- (void)setTintColor:(id)color;
- (void)startAnimating;
- (void)stopAnimatingFinishingCycle:(BOOL)cycle;
- (void)updateLayerWithTintColor;
@end

@implementation SOSUIAnimatingSpriteImageView

- (SOSUIAnimatingSpriteImageView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SOSUIAnimatingSpriteImageView;
  v3 = [(SOSUIAnimatingSpriteImageView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SOSUIAnimatingSpriteImageView *)v3 setClipsToBounds:1];
    v4->_framesPerSecond = 60;
    v5 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    imageLayer = v4->_imageLayer;
    v4->_imageLayer = v5;

    layer = [(SOSUIAnimatingSpriteImageView *)v4 layer];
    [layer addSublayer:v4->_imageLayer];
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

- (void)setSpriteImage:(id)image
{
  imageCopy = image;
  [(SOSUIAnimatingSpriteImageView *)self stopAnimatingFinishingCycle:0];
  tintColor = [(SOSUIAnimatingSpriteImageView *)self tintColor];
  v6 = [imageCopy imageWithTintColor:tintColor renderingMode:2];

  spriteImage = self->_spriteImage;
  self->_spriteImage = v6;

  [(CALayer *)self->_imageLayer setContents:[(UIImage *)self->_spriteImage CGImage]];
  [(SOSUIAnimatingSpriteImageView *)self updateLayerWithTintColor];

  [(SOSUIAnimatingSpriteImageView *)self setNeedsLayout];
}

- (void)setTintColor:(id)color
{
  v4.receiver = self;
  v4.super_class = SOSUIAnimatingSpriteImageView;
  [(SOSUIAnimatingSpriteImageView *)&v4 setTintColor:color];
  if (self->_spriteImage)
  {
    [(SOSUIAnimatingSpriteImageView *)self setSpriteImage:?];
  }
}

- (void)updateLayerWithTintColor
{
  imageLayer = self->_imageLayer;
  layer = [(SOSUIAnimatingSpriteImageView *)self layer];
  [layer setMask:imageLayer];

  tintColor = [(SOSUIAnimatingSpriteImageView *)self tintColor];
  v5 = tintColor;
  cGColor = [tintColor CGColor];
  layer2 = [(SOSUIAnimatingSpriteImageView *)self layer];
  [layer2 setBackgroundColor:cGColor];
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

- (unint64_t)_findSpriteIndex:(CGPoint)index centerPoints:(id)points
{
  y = index.y;
  x = index.x;
  v6 = MEMORY[0x277CCAE60];
  pointsCopy = points;
  v8 = [v6 valueWithCGPoint:{x, y}];
  v9 = [pointsCopy indexOfObject:v8];

  return v9;
}

+ (id)_createNewSpriteArray:(id)array currentFrame:(unint64_t)frame arraySize:(unint64_t)size interrupted:(BOOL)interrupted
{
  arrayCopy = array;
  v10 = arrayCopy;
  if (size - 1 == frame)
  {
    v11 = arrayCopy;
  }

  else
  {
    v12 = [arrayCopy subarrayWithRange:{frame + 1, ~frame + size}];
    v13 = v12;
    if (interrupted)
    {
      v14 = [v10 subarrayWithRange:{0, frame + 1}];
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
        presentationLayer = [(CALayer *)self->_imageLayer presentationLayer];
        [presentationLayer position];
        v5 = v4;
        v7 = v6;

        _centerPointValues = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
        v9 = [(SOSUIAnimatingSpriteImageView *)self _findSpriteIndex:_centerPointValues centerPoints:v5, v7];

        _centerPointValues2 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
        v11 = [_centerPointValues2 count];

        [(CALayer *)self->_imageLayer removeAnimationForKey:@"PositionKeyframeAnimation"];
        _centerPointValues3 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
        _centerPointValues4 = [SOSUIAnimatingSpriteImageView _createNewSpriteArray:_centerPointValues3 currentFrame:v9 arraySize:v11 interrupted:1];
      }

      else
      {
        _centerPointValues4 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
      }

      imageLayer = self->_imageLayer;
      v14 = _PositionAnimation(_centerPointValues4, self->_spriteFrameCount / self->_framesPerSecond, 3.4028e38);
      [(CALayer *)imageLayer addAnimation:v14 forKey:@"PositionKeyframeAnimation"];
    }
  }
}

- (void)stopAnimatingFinishingCycle:(BOOL)cycle
{
  imageLayer = self->_imageLayer;
  if (cycle)
  {
    presentationLayer = [(CALayer *)imageLayer presentationLayer];
    [presentationLayer position];
    v7 = v6;
    v9 = v8;

    _centerPointValues = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
    v11 = [(SOSUIAnimatingSpriteImageView *)self _findSpriteIndex:_centerPointValues centerPoints:v7, v9];

    _centerPointValues2 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
    v13 = [_centerPointValues2 count];

    [(CALayer *)self->_imageLayer removeAnimationForKey:@"PositionKeyframeAnimation"];
    if (v11 != v13 - 1)
    {
      _centerPointValues3 = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
      v18 = [SOSUIAnimatingSpriteImageView _createNewSpriteArray:_centerPointValues3 currentFrame:v11 arraySize:v13 interrupted:0];

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

  _centerPointValues = [(SOSUIAnimatingSpriteImageView *)self _centerPointValues];
  imageLayer = self->_imageLayer;
  v4 = _PositionAnimation(_centerPointValues, self->_spriteFrameCount / self->_framesPerSecond, 1.0);
  [(CALayer *)imageLayer addAnimation:v4 forKey:@"PositionKeyframeAnimation"];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  lastObject = [_centerPointValues lastObject];
  [lastObject CGPointValue];
  [(CALayer *)self->_imageLayer setPosition:?];

  [MEMORY[0x277CD9FF0] commit];
}

@end