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
  v6 = [(SHListeningOuterCircleLayer *)self circleContainerLayer];
  [v6 setContentsScale:v5];

  v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningOuterCircleLayer *)self setCircleLayer:v7];

  +[SHPalette contentsScale];
  v9 = v8;
  v10 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [v10 setContentsScale:v9];

  v11 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [v11 setBorderWidth:4.0];

  v12 = [(SHPaletteLayer *)self palette];
  v13 = [v12 listeningCircleColor];
  v14 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [v14 setBorderColor:v13];

  v15 = [(SHListeningOuterCircleLayer *)self circleContainerLayer];
  [(SHListeningOuterCircleLayer *)self addSublayer:v15];

  v17 = [(SHListeningOuterCircleLayer *)self circleContainerLayer];
  v16 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [v17 addSublayer:v16];
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
  v11 = [(SHListeningOuterCircleLayer *)self circleContainerLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(SHListeningOuterCircleLayer *)self circleContainerLayer];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [v22 frame];
  v24 = v23 * 0.5;
  v25 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [v25 setCornerRadius:v24];

  v26 = [(SHPaletteLayer *)self palette];
  v27 = [v26 listeningCircleColor];
  v28 = [(SHListeningOuterCircleLayer *)self circleLayer];
  [v28 setBorderColor:v27];
}

@end