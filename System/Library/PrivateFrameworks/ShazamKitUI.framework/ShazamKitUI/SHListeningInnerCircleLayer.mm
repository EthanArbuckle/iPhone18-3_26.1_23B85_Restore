@interface SHListeningInnerCircleLayer
- (CGPath)circlePathForRect:(CGRect)rect;
- (void)layoutSublayers;
- (void)setup;
@end

@implementation SHListeningInnerCircleLayer

- (void)setup
{
  +[SHPalette contentsScale];
  [(SHListeningInnerCircleLayer *)self setContentsScale:?];
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningInnerCircleLayer *)self setCircleContainerLayer:v3];

  v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [(SHListeningInnerCircleLayer *)self setCircle:v4];

  +[SHPalette contentsScale];
  v6 = v5;
  circle = [(SHListeningInnerCircleLayer *)self circle];
  [circle setContentsScale:v6];

  circle2 = [(SHListeningInnerCircleLayer *)self circle];
  [circle2 setNeedsDisplayOnBoundsChange:1];

  palette = [(SHPaletteLayer *)self palette];
  listeningCircleColor = [palette listeningCircleColor];
  circle3 = [(SHListeningInnerCircleLayer *)self circle];
  [circle3 setFillColor:listeningCircleColor];

  circleContainerLayer = [(SHListeningInnerCircleLayer *)self circleContainerLayer];
  [(SHListeningInnerCircleLayer *)self addSublayer:circleContainerLayer];

  circleContainerLayer2 = [(SHListeningInnerCircleLayer *)self circleContainerLayer];
  circle4 = [(SHListeningInnerCircleLayer *)self circle];
  [circleContainerLayer2 addSublayer:circle4];
}

- (void)layoutSublayers
{
  v29.receiver = self;
  v29.super_class = SHListeningInnerCircleLayer;
  [(SHListeningInnerCircleLayer *)&v29 layoutSublayers];
  [(SHListeningInnerCircleLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  circleContainerLayer = [(SHListeningInnerCircleLayer *)self circleContainerLayer];
  [circleContainerLayer setFrame:{v4, v6, v8, v10}];

  circleContainerLayer2 = [(SHListeningInnerCircleLayer *)self circleContainerLayer];
  [circleContainerLayer2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  circle = [(SHListeningInnerCircleLayer *)self circle];
  [circle setFrame:{v14, v16, v18, v20}];

  circle2 = [(SHListeningInnerCircleLayer *)self circle];
  [circle2 bounds];
  v23 = [(SHListeningInnerCircleLayer *)self circlePathForRect:?];

  circle3 = [(SHListeningInnerCircleLayer *)self circle];
  [circle3 setPath:v23];

  palette = [(SHPaletteLayer *)self palette];
  listeningCircleColor = [palette listeningCircleColor];
  circle4 = [(SHListeningInnerCircleLayer *)self circle];
  [circle4 setFillColor:listeningCircleColor];

  circle5 = [(SHListeningInnerCircleLayer *)self circle];
  [circle5 setNeedsDisplay];
}

- (CGPath)circlePathForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Mutable = CGPathCreateMutable();
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGPathAddEllipseInRect(Mutable, 0, v9);
  CFAutorelease(Mutable);
  return Mutable;
}

@end