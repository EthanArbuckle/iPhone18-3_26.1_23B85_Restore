@interface SHListeningInnerCircleLayer
- (CGPath)circlePathForRect:(CGRect)a3;
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
  v7 = [(SHListeningInnerCircleLayer *)self circle];
  [v7 setContentsScale:v6];

  v8 = [(SHListeningInnerCircleLayer *)self circle];
  [v8 setNeedsDisplayOnBoundsChange:1];

  v9 = [(SHPaletteLayer *)self palette];
  v10 = [v9 listeningCircleColor];
  v11 = [(SHListeningInnerCircleLayer *)self circle];
  [v11 setFillColor:v10];

  v12 = [(SHListeningInnerCircleLayer *)self circleContainerLayer];
  [(SHListeningInnerCircleLayer *)self addSublayer:v12];

  v14 = [(SHListeningInnerCircleLayer *)self circleContainerLayer];
  v13 = [(SHListeningInnerCircleLayer *)self circle];
  [v14 addSublayer:v13];
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
  v11 = [(SHListeningInnerCircleLayer *)self circleContainerLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(SHListeningInnerCircleLayer *)self circleContainerLayer];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(SHListeningInnerCircleLayer *)self circle];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [(SHListeningInnerCircleLayer *)self circle];
  [v22 bounds];
  v23 = [(SHListeningInnerCircleLayer *)self circlePathForRect:?];

  v24 = [(SHListeningInnerCircleLayer *)self circle];
  [v24 setPath:v23];

  v25 = [(SHPaletteLayer *)self palette];
  v26 = [v25 listeningCircleColor];
  v27 = [(SHListeningInnerCircleLayer *)self circle];
  [v27 setFillColor:v26];

  v28 = [(SHListeningInnerCircleLayer *)self circle];
  [v28 setNeedsDisplay];
}

- (CGPath)circlePathForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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