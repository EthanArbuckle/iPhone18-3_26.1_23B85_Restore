@interface TSDButtonKnob
- (BOOL)isHitByUnscaledPoint:(CGPoint)a3 andRep:(id)a4 returningDistance:(double *)a5;
- (TSDButtonKnob)initWithImage:(id)a3 tag:(unint64_t)a4 onRep:(id)a5;
- (id)knobImage;
- (void)dealloc;
- (void)p_updateLayerImage;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
@end

@implementation TSDButtonKnob

- (TSDButtonKnob)initWithImage:(id)a3 tag:(unint64_t)a4 onRep:(id)a5
{
  if (a3)
  {
    [a3 size];
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v13.receiver = self;
  v13.super_class = TSDButtonKnob;
  v11 = [(TSDKnob *)&v13 initWithType:0 position:a4 radius:a5 tag:*MEMORY[0x277CBF348] onRep:*(MEMORY[0x277CBF348] + 8), fmax(v9, v10) * 0.5];
  if (v11)
  {
    v11->mImage = a3;
    v11->mEnabled = 1;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDButtonKnob;
  [(TSDKnob *)&v3 dealloc];
}

- (BOOL)isHitByUnscaledPoint:(CGPoint)a3 andRep:(id)a4 returningDistance:(double *)a5
{
  y = a3.y;
  x = a3.x;
  v10 = [(TSDKnob *)self layer];
  if ([(CALayer *)v10 isHidden])
  {
    return 0;
  }

  [(CALayer *)v10 opacity];
  if (v11 <= 0.0)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = TSDButtonKnob;
  return [(TSDKnob *)&v13 isHitByUnscaledPoint:a4 andRep:a5 returningDistance:x, y];
}

- (id)knobImage
{
  if ([(TSDButtonKnob *)self isEnabled])
  {
    if (![(TSDButtonKnob *)self isHighlighted])
    {
      return self->mImage;
    }

    v3 = [MEMORY[0x277D6C2A8] blackColor];
    mImage = self->mImage;
    v5 = 0.466666669;
    v6 = kCGBlendModeSourceAtop;
  }

  else
  {
    v3 = [MEMORY[0x277D6C2A8] lightGrayColor];
    mImage = self->mImage;
    v5 = 0.5;
    v6 = kCGBlendModeDestinationOut;
  }

  return TSUCompositeImageWithColor(mImage, v3, v6, v5);
}

- (void)setImage:(id)a3
{
  mImage = self->mImage;
  if (mImage != a3)
  {

    self->mImage = a3;

    [(TSDButtonKnob *)self p_updateLayerImage];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->mEnabled != a3)
  {
    self->mEnabled = a3;
    [(TSDButtonKnob *)self p_updateLayerImage];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->mHighlighted != a3)
  {
    self->mHighlighted = a3;
    [(TSDButtonKnob *)self p_updateLayerImage];
  }
}

- (void)p_updateLayerImage
{
  v3 = [(TSDButtonKnob *)self knobImage];
  [(TSDCanvas *)[(TSDRep *)[(TSDKnob *)self rep] canvas] contentsScale];
  v4 = [v3 CGImageForContentsScale:?];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(CALayer *)[(TSDKnob *)self layer] setContents:v4];
  v5 = MEMORY[0x277CD9FF0];

  [v5 commit];
}

@end