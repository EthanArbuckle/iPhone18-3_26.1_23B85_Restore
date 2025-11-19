@interface TSDKnobTracker
- (CGAffineTransform)transformInRootForStandardKnobs;
- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)a3;
- (CGPoint)currentPosition;
- (CGPoint)knobOffset;
- (CGRect)currentBoundsForStandardKnobs;
- (TSDKnobTracker)initWithRep:(id)a3 knob:(id)a4;
- (unint64_t)enabledKnobMask;
- (void)changeDynamicLayoutsForReps:(id)a3;
- (void)dealloc;
- (void)endMovingKnob;
- (void)i_resetCurrentPositionToKnobPositionIfAppropriate;
- (void)moveKnobToCanvasPosition:(CGPoint)a3;
- (void)setRep:(id)a3;
@end

@implementation TSDKnobTracker

- (TSDKnobTracker)initWithRep:(id)a3 knob:(id)a4
{
  v12.receiver = self;
  v12.super_class = TSDKnobTracker;
  v6 = [(TSDKnobTracker *)&v12 init];
  if (v6)
  {
    if (a3)
    {
      if (a4)
      {
LABEL_4:
        [(TSDKnobTracker *)v6 setKnob:a4];
        [(TSDKnobTracker *)v6 setRep:a3];
        return v6;
      }
    }

    else
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobTracker initWithRep:knob:]"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobTracker.m"), 27, @"invalid nil value for '%s'", "rep"}];
      if (a4)
      {
        goto LABEL_4;
      }
    }

    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobTracker initWithRep:knob:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobTracker.m"), 28, @"invalid nil value for '%s'", "knob"}];
    goto LABEL_4;
  }

  return v6;
}

- (void)dealloc
{
  if ([(TSDRep *)self->mRep currentKnobTracker]== self)
  {
    [(TSDRep *)self->mRep setCurrentKnobTracker:0];
  }

  v3.receiver = self;
  v3.super_class = TSDKnobTracker;
  [(TSDKnobTracker *)&v3 dealloc];
}

- (void)setRep:(id)a3
{
  mRep = self->mRep;
  if (mRep != a3)
  {
    if ([(TSDRep *)mRep currentKnobTracker]== self)
    {
      [(TSDRep *)self->mRep setCurrentKnobTracker:0];
    }

    v6 = a3;
    self->mRep = v6;

    [(TSDRep *)v6 setCurrentKnobTracker:self];
  }
}

- (void)moveKnobToCanvasPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TSDKnobTracker *)self rep];
  if (v6)
  {
    [(TSDRep *)v6 convertNaturalPointFromUnscaledCanvas:x, y];

    [(TSDKnobTracker *)self moveKnobToRepPosition:?];
  }
}

- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(TSDKnobTracker *)self rep];

  [(TSDRep *)v5 convertNaturalPointToUnscaledCanvas:x, y];
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)endMovingKnob
{
  if ([(TSDRep *)self->mRep currentKnobTracker]== self)
  {
    mRep = self->mRep;

    [(TSDRep *)mRep setCurrentKnobTracker:0];
  }
}

- (CGRect)currentBoundsForStandardKnobs
{
  [(TSDRep *)self->mRep boundsForStandardKnobs];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGAffineTransform)transformInRootForStandardKnobs
{
  result = [(TSDRep *)self->mRep layout];
  if (result)
  {

    return [(CGAffineTransform *)result transformInRoot];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (unint64_t)enabledKnobMask
{
  if (![(TSDKnobTracker *)self shouldHideOtherKnobs])
  {
    return -1;
  }

  v3 = [[(TSDKnobTracker *)self knob] tag];

  return TSDMaskForKnob(v3);
}

- (void)i_resetCurrentPositionToKnobPositionIfAppropriate
{
  if (![(TSDKnobTracker *)self didDrag]&& [(TSDKnobTracker *)self dragEnding])
  {
    v3 = [(TSDKnobTracker *)self rep];
    [[(TSDKnobTracker *)self knob] position];
    [(TSDRep *)v3 convertNaturalPointToUnscaledCanvas:?];

    [(TSDKnobTracker *)self setCurrentPosition:?];
  }
}

- (void)changeDynamicLayoutsForReps:(id)a3
{
  [(TSDKnobTracker *)self i_resetCurrentPositionToKnobPositionIfAppropriate];
  mDidBegin = self->mDidBegin;
  if (!mDidBegin)
  {
    self->mDidBegin = 1;
    [(TSDKnobTracker *)self beginMovingKnob];
  }

  if (![(TSDKnobTracker *)self didDrag]&& ![(TSDKnobTracker *)self dragEnding])
  {
    [[(TSDKnobTracker *)self knob] position];
    v6 = v5;
    v8 = v7;
    v9 = [(TSDKnobTracker *)self rep];
    [(TSDKnobTracker *)self currentPosition];
    [(TSDRep *)v9 convertNaturalPointFromUnscaledCanvas:?];
    if (!TSDNearlyEqualPoints(v6, v8, v10, v11))
    {
      [(TSDKnobTracker *)self setDidDrag:1];
    }
  }

  if (!mDidBegin || [(TSDKnobTracker *)self didDrag])
  {
    [(TSDKnobTracker *)self currentPosition];

    [(TSDKnobTracker *)self moveKnobToCanvasPosition:?];
  }
}

- (CGPoint)currentPosition
{
  x = self->mCurrentPosition.x;
  y = self->mCurrentPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)knobOffset
{
  x = self->mKnobOffset.x;
  y = self->mKnobOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end