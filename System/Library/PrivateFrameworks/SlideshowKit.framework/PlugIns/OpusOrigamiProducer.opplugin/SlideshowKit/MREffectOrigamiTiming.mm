@interface MREffectOrigamiTiming
- (MREffectOrigamiTiming)initWithEffectID:(id)d;
- (void)dealloc;
- (void)setPhaseInDuration:(double)duration mainDuration:(double)mainDuration phaseOutDuration:(double)outDuration;
@end

@implementation MREffectOrigamiTiming

- (MREffectOrigamiTiming)initWithEffectID:(id)d
{
  v10.receiver = self;
  v10.super_class = MREffectOrigamiTiming;
  v4 = [(MREffectOrigamiTiming *)&v10 init];
  if (v4)
  {
    v4->_effectID = [d copy];
    v4->_description = [qword_1EF3C0 objectForKey:d];
    v5 = +[MREffectManager sharedManager];
    [v5 defaultPhaseInDurationForEffectID:d];
    v4->_defaultPhaseInDuration = v6;
    [v5 defaultMainDurationForEffectID:d];
    v4->_defaultMainDuration = v7;
    [v5 defaultPhaseOutDurationForEffectID:d];
    v4->_defaultPhaseOutDuration = v8;
  }

  return v4;
}

- (void)dealloc
{
  self->_effectID = 0;

  self->_description = 0;
  self->_animationTimeBounds = 0;
  v3.receiver = self;
  v3.super_class = MREffectOrigamiTiming;
  [(MREffectOrigamiTiming *)&v3 dealloc];
}

- (void)setPhaseInDuration:(double)duration mainDuration:(double)mainDuration phaseOutDuration:(double)outDuration
{
  self->_phaseInDuration = duration;
  self->_mainDuration = mainDuration;
  self->_phaseOutDuration = outDuration;
  v27 = 0.0;
  self->_animationTimeBounds = ComputeAnimationTimeBounds(self->_description, &v27);
  self->_durationStretchFactor = (self->_phaseInDuration + self->_mainDuration + self->_phaseOutDuration - v27) / (self->_defaultPhaseInDuration + self->_defaultMainDuration + self->_defaultPhaseOutDuration - v27);
  v9 = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = +[MRUtilities executeScript:withHeader:andAttributes:](MRUtilities, "executeScript:withHeader:andAttributes:", [*(*(&v23 + 1) + 8 * v14) objectForKey:@"showTimeScript"], 0, 0);
        if (v15)
        {
          v16 = CGSizeFromString(v15);
          width = v16.width;
          height = v16.height;
        }

        else
        {
          height = -1.0;
          width = 0.0;
        }

        StretchTime(self->_animationTimeBounds, width, self->_durationStretchFactor);
        v20 = self->_slideTimings[v12];
        *v20 = v19;
        if (height >= 0.0)
        {
          StretchTime(self->_animationTimeBounds, width + height, self->_durationStretchFactor);
          v21 = v22 - *v20;
        }

        else
        {
          v21 = self->_phaseInDuration + self->_mainDuration + self->_phaseOutDuration - v19;
        }

        v20[1] = v21;
        ++v12;
        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }
}

@end