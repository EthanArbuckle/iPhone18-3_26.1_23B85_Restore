@interface MRTransitionPhaseInOut
- (BOOL)isAlphaFriendly;
- (BOOL)isInfinite;
- (BOOL)isNative3D;
- (BOOL)isOpaque;
- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (id)retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
@end

@implementation MRTransitionPhaseInOut

- (BOOL)isNative3D
{
  v3 = [(MRLayer *)self->super.mSourceLayer isActivated];
  v4 = 32;
  if (v3)
  {
    v4 = 24;
  }

  v5 = *(&self->super.super.isa + v4);

  return [v5 isNative3D];
}

- (BOOL)isOpaque
{
  v3 = [(MRLayer *)self->super.mSourceLayer isActivated];
  v4 = 32;
  if (v3)
  {
    v4 = 24;
  }

  v5 = *(&self->super.super.isa + v4);

  return [v5 isOpaque];
}

- (BOOL)isAlphaFriendly
{
  v3 = [(MRLayer *)self->super.mSourceLayer isActivated];
  v4 = 32;
  if (v3)
  {
    v4 = 24;
  }

  v5 = *(&self->super.super.isa + v4);

  return [v5 isAlphaFriendly];
}

- (BOOL)isInfinite
{
  v3 = [(MRLayer *)self->super.mSourceLayer isActivated];
  v4 = 32;
  if (v3)
  {
    v4 = 24;
  }

  v5 = *(&self->super.super.isa + v4);

  return [v5 isInfinite];
}

- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  self->super._progress = a3;
  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] phaseOutDuration];
  v10 = v9;
  [(MRLayerClock *)[(MRLayer *)self->super.mTargetLayer clock] phaseInDuration];
  v12 = v10 + v11;
  v13 = v10 / (v10 + v11);
  [(MRLayer *)self->super.mSourceLayer duration];
  v15 = v10 - v12 * a3;
  if (v15 < 0.001)
  {
    v15 = 0.001;
  }

  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] setContainerTime:v14 - v15];
  [(MRLayerClock *)[(MRLayer *)self->super.mTargetLayer clock] setContainerTime:-(v10 - v12 * a3)];
  mSourceLayer = self->super.mSourceLayer;
  [(MRLayerClock *)[(MRLayer *)mSourceLayer clock] externalTime];
  v17 = [(MRLayer *)mSourceLayer prerenderForTime:a4 inContext:a5 withArguments:?];
  mTargetLayer = self->super.mTargetLayer;
  [(MRLayerClock *)[(MRLayer *)mTargetLayer clock] externalTime];
  result = [(MRLayer *)mTargetLayer prerenderForTime:a4 inContext:a5 withArguments:?];
  if (v13 > a3)
  {
    return v17;
  }

  return result;
}

- (void)renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] phaseOutDuration];
  v10 = v9;
  [(MRLayerClock *)[(MRLayer *)self->super.mTargetLayer clock] phaseInDuration];
  v12 = v10 + v11;
  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] phaseOutDuration];
  v14 = 32;
  if (v13 / v12 > a3)
  {
    v14 = 24;
  }

  v15 = *(&self->super.super.isa + v14);
  [objc_msgSend(v15 "clock")];

  [v15 renderAtTime:a4 inContext:a5 withArguments:?];
}

- (id)retainedByUserRenderedImageAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] phaseOutDuration];
  v10 = v9;
  [(MRLayerClock *)[(MRLayer *)self->super.mTargetLayer clock] phaseInDuration];
  v12 = v10 + v11;
  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] phaseOutDuration];
  v14 = 32;
  if (v13 / v12 > a3)
  {
    v14 = 24;
  }

  v15 = *(&self->super.super.isa + v14);
  [objc_msgSend(v15 "clock")];

  return [v15 retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:?];
}

@end