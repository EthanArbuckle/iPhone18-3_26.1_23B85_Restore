@interface TSWPTextMagnifierRanged
- (BOOL)shouldHideCanvasLayer;
- (BOOL)terminalPointPlacedCarefully;
- (CGPoint)animationPoint;
- (CGPoint)magnificationPoint;
- (CGPoint)offset;
- (CGPoint)terminalPoint;
- (NSString)maskImageName;
- (NSString)overlayImageName;
- (NSString)underlayImageName;
- (TSWPTextMagnifierRanged)initWithFrame:(CGRect)frame;
- (double)currentOffset;
- (double)horizontalMovementAtTime:(double)time;
- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated;
- (void)dealloc;
- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context;
- (void)setFrame:(CGRect)frame;
- (void)setMagnificationPoint:(CGPoint)point;
- (void)setNeedsDisplay;
- (void)stopMagnifying:(BOOL)magnifying;
- (void)updateFrame;
@end

@implementation TSWPTextMagnifierRanged

- (TSWPTextMagnifierRanged)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = TSWPTextMagnifierRanged;
  v7 = [(TSWPTextMagnifierRanged *)&v10 initWithFrame:?];
  if (v7)
  {
    -[TSWPTextMagnifierRanged setBackgroundColor:](v7, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    v7->_weightedPoint = objc_alloc_init(TSWPTextMagnifierTimeWeightedPoint);
    height = [[TSWPTextMagnifierRenderer alloc] initWithFrame:x, y, width, height];
    v7->_magnifierRenderer = height;
    [(TSWPTextMagnifierRenderer *)height setDelegate:v7];
    [(TSWPTextMagnifierRanged *)v7 addSubview:v7->_magnifierRenderer];
  }

  return v7;
}

- (void)dealloc
{
  [(TSWPTextMagnifierRenderer *)self->_magnifierRenderer setDelegate:0];
  [(TSWPTextMagnifierRenderer *)self->_magnifierRenderer tearDown];

  v3.receiver = self;
  v3.super_class = TSWPTextMagnifierRanged;
  [(TSWPTextMagnifierRanged *)&v3 dealloc];
}

- (double)horizontalMovementAtTime:(double)time
{
  [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint distanceCoveredInInterval:3.40282347e38];
  v5 = v4;
  [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint displacementInInterval:0.5];
  v7 = fabs(result);
  v9 = fabs(v8) * 4.0;
  if (v7 < 16.0 || v5 > v7 * 1.5 || v9 > v7)
  {
    return 0.0;
  }

  return result;
}

- (double)currentOffset
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextMagnifierRanged currentOffset]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextMagnifierRanged.mm"), 97, @"Abstract method"}];
  return 0.0;
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = TSWPTextMagnifierRanged;
  [(TSWPTextMagnifierRanged *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  magnifierRenderer = self->_magnifierRenderer;
  [(TSWPTextMagnifierRanged *)self bounds];
  [(TSWPTextMagnifierRenderer *)magnifierRenderer setFrame:?];
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = TSWPTextMagnifierRanged;
  [(TSWPTextMagnifierRanged *)&v3 setNeedsDisplay];
  [(TSWPTextMagnifierRenderer *)self->_magnifierRenderer setNeedsDisplay];
}

- (void)updateFrame
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextMagnifierRanged updateFrame]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextMagnifierRanged.mm"];

  [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:115 description:@"Abstract method"];
}

- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextMagnifierRanged beginMagnifyingTarget:magnificationPoint:offset:animated:]"];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextMagnifierRanged.mm"];

  [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:122 description:@"Abstract method"];
}

- (void)stopMagnifying:(BOOL)magnifying
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextMagnifierRanged stopMagnifying:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextMagnifierRanged.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:127 description:@"Abstract method"];
}

- (CGPoint)terminalPoint
{
  [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint weightedPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)terminalPointPlacedCarefully
{
  v3 = [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint historyCovers:0.5];
  [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint distanceCoveredInInterval:0.5];
  return v4 < 10.0 && v3;
}

- (CGPoint)magnificationPoint
{
  x = self->_magnificationPoint.x;
  y = self->_magnificationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setMagnificationPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint addPoint:?];
  if (x != self->_magnificationPoint.x || y != self->_magnificationPoint.y)
  {
    self->_magnificationPoint.x = x;
    self->_magnificationPoint.y = y;
    [(TSWPTextMagnifierRanged *)self updateFrame];
    [(TSWPTextMagnifierRenderer *)self->_magnifierRenderer canvasNeedsDisplay];
  }

  [(TSWPTextMagnifierRanged *)self setAnimationPoint:x, y];
}

- (NSString)underlayImageName
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextMagnifierRanged underlayImageName]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextMagnifierRanged.mm"), 180, @"Abstract method"}];
  return &stru_287D36338;
}

- (NSString)overlayImageName
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextMagnifierRanged overlayImageName]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextMagnifierRanged.mm"), 186, @"Abstract method"}];
  return &stru_287D36338;
}

- (NSString)maskImageName
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextMagnifierRanged maskImageName]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextMagnifierRanged.mm"), 192, @"Abstract method"}];
  return &stru_287D36338;
}

- (BOOL)shouldHideCanvasLayer
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextMagnifierRanged shouldHideCanvasLayer]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextMagnifierRanged.mm"), 198, @"Abstract method"}];
  return 1;
}

- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextMagnifierRanged drawMagnifierClippedCanvasLayer:inContext:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextMagnifierRanged.mm"];

  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:204 description:@"Abstract method"];
}

- (CGPoint)animationPoint
{
  x = self->_animationPoint.x;
  y = self->_animationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end