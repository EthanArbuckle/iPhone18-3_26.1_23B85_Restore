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
  v6 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [v6 setContentsScale:v5];

  v7 = [(SHPaletteLayer *)self palette];
  v8 = [v7 listeningButtonBackgroundTransparentColor];
  v9 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [v9 setBackgroundColor:v8];

  v10 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [v10 setMasksToBounds:1];

  v11 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [(SHListeningAutoShadowLayer *)self setAutoShadowOuterLayer:v11];

  +[SHPalette contentsScale];
  v13 = v12;
  v14 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v14 setContentsScale:v13];

  v15 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v15 setFillColor:0];

  v16 = [(SHPaletteLayer *)self palette];
  v17 = [v16 listeningButtonBackgroundTransparentColor];
  v18 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v18 setStrokeColor:v17];

  v19 = [(SHPaletteLayer *)self palette];
  v20 = [v19 shadowColor];
  v21 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v21 setShadowColor:v20];

  v22 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v22 setShadowRadius:3.0];

  v23 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  LODWORD(v24) = 0.5;
  [v23 setShadowOpacity:v24];

  v25 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v25 setShadowOffset:{0.0, 0.0}];

  v26 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v26 setBorderWidth:1.0];

  v27 = [(SHPaletteLayer *)self palette];
  v28 = [v27 clearColor];
  v29 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v29 setBorderColor:v28];

  v30 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v30 setLineWidth:3.0];

  v31 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [(SHListeningAutoShadowLayer *)self addSublayer:v31];

  v33 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  v32 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v33 addSublayer:v32];
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
  v11 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [v12 frame];
  v14 = v13 * 0.5;
  v15 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [v15 setCornerRadius:v14];

  v16 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v25 setFrame:{v18, v20, v22, v24}];

  v26 = [(SHPaletteLayer *)self palette];
  v27 = [v26 listeningButtonBackgroundTransparentColor];
  v28 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [v28 setBackgroundColor:v27];

  v29 = [(SHPaletteLayer *)self palette];
  v30 = [v29 listeningButtonBackgroundTransparentColor];
  v31 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v31 setStrokeColor:v30];

  v32 = [(SHPaletteLayer *)self palette];
  v33 = [v32 shadowColor];
  v34 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v34 setShadowColor:v33];

  Mutable = CGPathCreateMutable();
  v36 = [(SHListeningAutoShadowLayer *)self autoShadowBackgroundLayer];
  [v36 bounds];
  CGPathAddEllipseInRect(Mutable, 0, v39);

  v37 = [(SHListeningAutoShadowLayer *)self autoShadowOuterLayer];
  [v37 setPath:Mutable];

  CGPathRelease(Mutable);
}

@end