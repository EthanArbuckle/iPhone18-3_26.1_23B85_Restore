@interface SHListeningOuterCircleLayer
- (void)layoutSublayers;
- (void)setup;
@end

@implementation SHListeningOuterCircleLayer

- (void)setup
{
  +[SHPalette contentsScale];
  [(SHListeningOuterCircleLayer *)self setContentsScale:?];
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningOuterCircleLayer *)self setCircleContainerLayer:v3];

  +[SHPalette contentsScale];
  v5 = v4;
  circleContainerLayer = [(SHListeningOuterCircleLayer *)self circleContainerLayer];
  [circleContainerLayer setContentsScale:v5];

  v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningOuterCircleLayer *)self setCircleLayer:v7];

  +[SHPalette contentsScale];
  v9 = v8;
  circleLayer = [(SHListeningOuterCircleLayer *)self circleLayer];
  [circleLayer setContentsScale:v9];

  circleLayer2 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [circleLayer2 setBorderWidth:4.0];

  palette = [(SHPaletteLayer *)self palette];
  listeningCircleColor = [palette listeningCircleColor];
  circleLayer3 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [circleLayer3 setBorderColor:listeningCircleColor];

  circleContainerLayer2 = [(SHListeningOuterCircleLayer *)self circleContainerLayer];
  [(SHListeningOuterCircleLayer *)self addSublayer:circleContainerLayer2];

  circleContainerLayer3 = [(SHListeningOuterCircleLayer *)self circleContainerLayer];
  circleLayer4 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [circleContainerLayer3 addSublayer:circleLayer4];
}

- (void)layoutSublayers
{
  v29.receiver = self;
  v29.super_class = SHListeningOuterCircleLayer;
  [(SHListeningOuterCircleLayer *)&v29 layoutSublayers];
  [(SHListeningOuterCircleLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  circleContainerLayer = [(SHListeningOuterCircleLayer *)self circleContainerLayer];
  [circleContainerLayer setFrame:{v4, v6, v8, v10}];

  circleContainerLayer2 = [(SHListeningOuterCircleLayer *)self circleContainerLayer];
  [circleContainerLayer2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  circleLayer = [(SHListeningOuterCircleLayer *)self circleLayer];
  [circleLayer setFrame:{v14, v16, v18, v20}];

  circleLayer2 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [circleLayer2 frame];
  v24 = v23 * 0.5;
  circleLayer3 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [circleLayer3 setCornerRadius:v24];

  palette = [(SHPaletteLayer *)self palette];
  listeningCircleColor = [palette listeningCircleColor];
  circleLayer4 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [circleLayer4 setBorderColor:listeningCircleColor];
}

@end