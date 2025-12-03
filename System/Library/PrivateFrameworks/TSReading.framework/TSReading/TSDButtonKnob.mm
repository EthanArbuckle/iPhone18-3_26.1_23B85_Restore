@interface TSDButtonKnob
- (BOOL)isHitByUnscaledPoint:(CGPoint)point andRep:(id)rep returningDistance:(double *)distance;
- (TSDButtonKnob)initWithImage:(id)image tag:(unint64_t)tag onRep:(id)rep;
- (id)knobImage;
- (void)dealloc;
- (void)p_updateLayerImage;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
@end

@implementation TSDButtonKnob

- (TSDButtonKnob)initWithImage:(id)image tag:(unint64_t)tag onRep:(id)rep
{
  if (image)
  {
    [image size];
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v13.receiver = self;
  v13.super_class = TSDButtonKnob;
  v11 = [(TSDKnob *)&v13 initWithType:0 position:tag radius:rep tag:*MEMORY[0x277CBF348] onRep:*(MEMORY[0x277CBF348] + 8), fmax(v9, v10) * 0.5];
  if (v11)
  {
    v11->mImage = image;
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

- (BOOL)isHitByUnscaledPoint:(CGPoint)point andRep:(id)rep returningDistance:(double *)distance
{
  y = point.y;
  x = point.x;
  layer = [(TSDKnob *)self layer];
  if ([(CALayer *)layer isHidden])
  {
    return 0;
  }

  [(CALayer *)layer opacity];
  if (v11 <= 0.0)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = TSDButtonKnob;
  return [(TSDKnob *)&v13 isHitByUnscaledPoint:rep andRep:distance returningDistance:x, y];
}

- (id)knobImage
{
  if ([(TSDButtonKnob *)self isEnabled])
  {
    if (![(TSDButtonKnob *)self isHighlighted])
    {
      return self->mImage;
    }

    blackColor = [MEMORY[0x277D6C2A8] blackColor];
    mImage = self->mImage;
    v5 = 0.466666669;
    v6 = kCGBlendModeSourceAtop;
  }

  else
  {
    blackColor = [MEMORY[0x277D6C2A8] lightGrayColor];
    mImage = self->mImage;
    v5 = 0.5;
    v6 = kCGBlendModeDestinationOut;
  }

  return TSUCompositeImageWithColor(mImage, blackColor, v6, v5);
}

- (void)setImage:(id)image
{
  mImage = self->mImage;
  if (mImage != image)
  {

    self->mImage = image;

    [(TSDButtonKnob *)self p_updateLayerImage];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->mEnabled != enabled)
  {
    self->mEnabled = enabled;
    [(TSDButtonKnob *)self p_updateLayerImage];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->mHighlighted != highlighted)
  {
    self->mHighlighted = highlighted;
    [(TSDButtonKnob *)self p_updateLayerImage];
  }
}

- (void)p_updateLayerImage
{
  knobImage = [(TSDButtonKnob *)self knobImage];
  [(TSDCanvas *)[(TSDRep *)[(TSDKnob *)self rep] canvas] contentsScale];
  v4 = [knobImage CGImageForContentsScale:?];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(CALayer *)[(TSDKnob *)self layer] setContents:v4];
  v5 = MEMORY[0x277CD9FF0];

  [v5 commit];
}

@end