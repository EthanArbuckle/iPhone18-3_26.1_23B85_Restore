@interface TSKTintLayer
- (void)dealloc;
- (void)layoutSublayers;
- (void)setContents:(id)a3;
- (void)setContentsLayer:(id)a3;
- (void)setNeedsDisplay;
@end

@implementation TSKTintLayer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKTintLayer;
  [(TSKTintLayer *)&v3 dealloc];
}

- (void)setContentsLayer:(id)a3
{
  contentsLayer = self->_contentsLayer;
  if (contentsLayer)
  {
    [(TSKTintLayer *)self replaceSublayer:contentsLayer with:a3];
  }

  else
  {
    [(TSKTintLayer *)self addSublayer:a3];
  }

  self->_contentsLayer = a3;

  [(TSKTintLayer *)self setNeedsLayout];
}

- (void)setContents:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKTintLayer setContents:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKTintLayer.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:44 description:@"Don't call -setContents: on TSKTintLayer"];
}

- (void)setNeedsDisplay
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKTintLayer setNeedsDisplay]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKTintLayer.m"];

  [v2 handleFailureInFunction:v3 file:v4 lineNumber:49 description:@"Don't call -setNeedsDisplay on TSKTintLayer"];
}

- (void)layoutSublayers
{
  [(TSKTintLayer *)self bounds];
  contentsLayer = self->_contentsLayer;

  [(CALayer *)contentsLayer setFrame:?];
}

@end