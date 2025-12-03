@interface MRTransitionPhaseInOut
- (BOOL)isAlphaFriendly;
- (BOOL)isInfinite;
- (BOOL)isNative3D;
- (BOOL)isOpaque;
- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (id)retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
@end

@implementation MRTransitionPhaseInOut

- (BOOL)isNative3D
{
  isActivated = [(MRLayer *)self->super.mSourceLayer isActivated];
  v4 = 32;
  if (isActivated)
  {
    v4 = 24;
  }

  v5 = *(&self->super.super.isa + v4);

  return [v5 isNative3D];
}

- (BOOL)isOpaque
{
  isActivated = [(MRLayer *)self->super.mSourceLayer isActivated];
  v4 = 32;
  if (isActivated)
  {
    v4 = 24;
  }

  v5 = *(&self->super.super.isa + v4);

  return [v5 isOpaque];
}

- (BOOL)isAlphaFriendly
{
  isActivated = [(MRLayer *)self->super.mSourceLayer isActivated];
  v4 = 32;
  if (isActivated)
  {
    v4 = 24;
  }

  v5 = *(&self->super.super.isa + v4);

  return [v5 isAlphaFriendly];
}

- (BOOL)isInfinite
{
  isActivated = [(MRLayer *)self->super.mSourceLayer isActivated];
  v4 = 32;
  if (isActivated)
  {
    v4 = 24;
  }

  v5 = *(&self->super.super.isa + v4);

  return [v5 isInfinite];
}

- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  self->super._progress = time;
  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] phaseOutDuration];
  v10 = v9;
  [(MRLayerClock *)[(MRLayer *)self->super.mTargetLayer clock] phaseInDuration];
  v12 = v10 + v11;
  v13 = v10 / (v10 + v11);
  [(MRLayer *)self->super.mSourceLayer duration];
  v15 = v10 - v12 * time;
  if (v15 < 0.001)
  {
    v15 = 0.001;
  }

  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] setContainerTime:v14 - v15];
  [(MRLayerClock *)[(MRLayer *)self->super.mTargetLayer clock] setContainerTime:-(v10 - v12 * time)];
  mSourceLayer = self->super.mSourceLayer;
  [(MRLayerClock *)[(MRLayer *)mSourceLayer clock] externalTime];
  v17 = [(MRLayer *)mSourceLayer prerenderForTime:context inContext:arguments withArguments:?];
  mTargetLayer = self->super.mTargetLayer;
  [(MRLayerClock *)[(MRLayer *)mTargetLayer clock] externalTime];
  result = [(MRLayer *)mTargetLayer prerenderForTime:context inContext:arguments withArguments:?];
  if (v13 > time)
  {
    return v17;
  }

  return result;
}

- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] phaseOutDuration];
  v10 = v9;
  [(MRLayerClock *)[(MRLayer *)self->super.mTargetLayer clock] phaseInDuration];
  v12 = v10 + v11;
  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] phaseOutDuration];
  v14 = 32;
  if (v13 / v12 > time)
  {
    v14 = 24;
  }

  v15 = *(&self->super.super.isa + v14);
  [objc_msgSend(v15 "clock")];

  [v15 renderAtTime:context inContext:arguments withArguments:?];
}

- (id)retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] phaseOutDuration];
  v10 = v9;
  [(MRLayerClock *)[(MRLayer *)self->super.mTargetLayer clock] phaseInDuration];
  v12 = v10 + v11;
  [(MRLayerClock *)[(MRLayer *)self->super.mSourceLayer clock] phaseOutDuration];
  v14 = 32;
  if (v13 / v12 > time)
  {
    v14 = 24;
  }

  v15 = *(&self->super.super.isa + v14);
  [objc_msgSend(v15 "clock")];

  return [v15 retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:?];
}

@end