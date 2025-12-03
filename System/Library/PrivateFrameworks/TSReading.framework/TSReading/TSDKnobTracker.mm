@interface TSDKnobTracker
- (CGAffineTransform)transformInRootForStandardKnobs;
- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)currentPosition;
- (CGPoint)knobOffset;
- (CGRect)currentBoundsForStandardKnobs;
- (TSDKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (unint64_t)enabledKnobMask;
- (void)changeDynamicLayoutsForReps:(id)reps;
- (void)dealloc;
- (void)endMovingKnob;
- (void)i_resetCurrentPositionToKnobPositionIfAppropriate;
- (void)moveKnobToCanvasPosition:(CGPoint)position;
- (void)setRep:(id)rep;
@end

@implementation TSDKnobTracker

- (TSDKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  v12.receiver = self;
  v12.super_class = TSDKnobTracker;
  v6 = [(TSDKnobTracker *)&v12 init];
  if (v6)
  {
    if (rep)
    {
      if (knob)
      {
LABEL_4:
        [(TSDKnobTracker *)v6 setKnob:knob];
        [(TSDKnobTracker *)v6 setRep:rep];
        return v6;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobTracker initWithRep:knob:]"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobTracker.m"), 27, @"invalid nil value for '%s'", "rep"}];
      if (knob)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnobTracker initWithRep:knob:]"];
    [currentHandler2 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnobTracker.m"), 28, @"invalid nil value for '%s'", "knob"}];
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

- (void)setRep:(id)rep
{
  mRep = self->mRep;
  if (mRep != rep)
  {
    if ([(TSDRep *)mRep currentKnobTracker]== self)
    {
      [(TSDRep *)self->mRep setCurrentKnobTracker:0];
    }

    repCopy = rep;
    self->mRep = repCopy;

    [(TSDRep *)repCopy setCurrentKnobTracker:self];
  }
}

- (void)moveKnobToCanvasPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v6 = [(TSDKnobTracker *)self rep];
  if (v6)
  {
    [(TSDRep *)v6 convertNaturalPointFromUnscaledCanvas:x, y];

    [(TSDKnobTracker *)self moveKnobToRepPosition:?];
  }
}

- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
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

- (void)changeDynamicLayoutsForReps:(id)reps
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