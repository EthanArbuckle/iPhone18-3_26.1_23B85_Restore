@interface TSKTintLayer
- (void)dealloc;
- (void)layoutSublayers;
- (void)setContents:(id)contents;
- (void)setContentsLayer:(id)layer;
- (void)setNeedsDisplay;
@end

@implementation TSKTintLayer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKTintLayer;
  [(TSKTintLayer *)&v3 dealloc];
}

- (void)setContentsLayer:(id)layer
{
  contentsLayer = self->_contentsLayer;
  if (contentsLayer)
  {
    [(TSKTintLayer *)self replaceSublayer:contentsLayer with:layer];
  }

  else
  {
    [(TSKTintLayer *)self addSublayer:layer];
  }

  self->_contentsLayer = layer;

  [(TSKTintLayer *)self setNeedsLayout];
}

- (void)setContents:(id)contents
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKTintLayer setContents:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKTintLayer.m"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:44 description:@"Don't call -setContents: on TSKTintLayer"];
}

- (void)setNeedsDisplay
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKTintLayer setNeedsDisplay]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKTintLayer.m"];

  [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:49 description:@"Don't call -setNeedsDisplay on TSKTintLayer"];
}

- (void)layoutSublayers
{
  [(TSKTintLayer *)self bounds];
  contentsLayer = self->_contentsLayer;

  [(CALayer *)contentsLayer setFrame:?];
}

@end