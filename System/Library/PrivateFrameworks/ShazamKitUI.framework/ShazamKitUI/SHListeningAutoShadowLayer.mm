@interface SHListeningAutoShadowLayer
- (void)layoutSublayers;
- (void)setup;
@end

@implementation SHListeningAutoShadowLayer

- (void)setup
{
  +[SHPalette contentsScale];
  [(SHListeningAutoShadowLayer *)self setContentsScale:?];
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHListeningAutoShadowLayer *)self setAutoShadowBackgroundLayer:v3];

  +[SHPalette contentsScale];
  v5 = v4;
  autoShadowBackgroundLayer = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [autoShadowBackgroundLayer setContentsScale:v5];

  palette = [(SHPaletteLayer *)self palette];
  listeningButtonBackgroundTransparentColor = [palette listeningButtonBackgroundTransparentColor];
  autoShadowBackgroundLayer2 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [autoShadowBackgroundLayer2 setBackgroundColor:listeningButtonBackgroundTransparentColor];

  autoShadowBackgroundLayer3 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [autoShadowBackgroundLayer3 setMasksToBounds:1];

  v11 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [(SHListeningAutoShadowLayer *)self setAutoShadowOuterLayer:v11];

  +[SHPalette contentsScale];
  v13 = v12;
  autoShadowOuterLayer = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer setContentsScale:v13];

  autoShadowOuterLayer2 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer2 setFillColor:0];

  palette2 = [(SHPaletteLayer *)self palette];
  listeningButtonBackgroundTransparentColor2 = [palette2 listeningButtonBackgroundTransparentColor];
  autoShadowOuterLayer3 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer3 setStrokeColor:listeningButtonBackgroundTransparentColor2];

  palette3 = [(SHPaletteLayer *)self palette];
  shadowColor = [palette3 shadowColor];
  autoShadowOuterLayer4 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer4 setShadowColor:shadowColor];

  autoShadowOuterLayer5 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer5 setShadowRadius:3.0];

  autoShadowOuterLayer6 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  LODWORD(v24) = 0.5;
  [autoShadowOuterLayer6 setShadowOpacity:v24];

  autoShadowOuterLayer7 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer7 setShadowOffset:{0.0, 0.0}];

  autoShadowOuterLayer8 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer8 setBorderWidth:1.0];

  palette4 = [(SHPaletteLayer *)self palette];
  clearColor = [palette4 clearColor];
  autoShadowOuterLayer9 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer9 setBorderColor:clearColor];

  autoShadowOuterLayer10 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer10 setLineWidth:3.0];

  autoShadowBackgroundLayer4 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [(SHListeningAutoShadowLayer *)self addSublayer:autoShadowBackgroundLayer4];

  autoShadowBackgroundLayer5 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  autoShadowOuterLayer11 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowBackgroundLayer5 addSublayer:autoShadowOuterLayer11];
}

- (void)layoutSublayers
{
  v38.receiver = self;
  v38.super_class = SHListeningAutoShadowLayer;
  [(SHListeningAutoShadowLayer *)&v38 layoutSublayers];
  [(SHListeningAutoShadowLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  autoShadowBackgroundLayer = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [autoShadowBackgroundLayer setFrame:{v4, v6, v8, v10}];

  autoShadowBackgroundLayer2 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [autoShadowBackgroundLayer2 frame];
  v14 = v13 * 0.5;
  autoShadowBackgroundLayer3 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [autoShadowBackgroundLayer3 setCornerRadius:v14];

  autoShadowBackgroundLayer4 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [autoShadowBackgroundLayer4 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  autoShadowOuterLayer = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer setFrame:{v18, v20, v22, v24}];

  palette = [(SHPaletteLayer *)self palette];
  listeningButtonBackgroundTransparentColor = [palette listeningButtonBackgroundTransparentColor];
  autoShadowBackgroundLayer5 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [autoShadowBackgroundLayer5 setBackgroundColor:listeningButtonBackgroundTransparentColor];

  palette2 = [(SHPaletteLayer *)self palette];
  listeningButtonBackgroundTransparentColor2 = [palette2 listeningButtonBackgroundTransparentColor];
  autoShadowOuterLayer2 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer2 setStrokeColor:listeningButtonBackgroundTransparentColor2];

  palette3 = [(SHPaletteLayer *)self palette];
  shadowColor = [palette3 shadowColor];
  autoShadowOuterLayer3 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer3 setShadowColor:shadowColor];

  Mutable = CGPathCreateMutable();
  autoShadowBackgroundLayer6 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [autoShadowBackgroundLayer6 bounds];
  CGPathAddEllipseInRect(Mutable, 0, v39);

  autoShadowOuterLayer4 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [autoShadowOuterLayer4 setPath:Mutable];

  CGPathRelease(Mutable);
}

@end