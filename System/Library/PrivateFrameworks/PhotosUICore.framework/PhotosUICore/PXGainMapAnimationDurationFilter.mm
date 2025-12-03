@interface PXGainMapAnimationDurationFilter
- (PXGainMapAnimationDurationFilter)init;
- (double)updatedOutput;
- (void)setGainMapImageAvailable:(BOOL)available;
@end

@implementation PXGainMapAnimationDurationFilter

- (double)updatedOutput
{
  if (![(PXGainMapAnimationDurationFilter *)self enabled])
  {
    return 0.0;
  }

  if (![(PXGainMapAnimationDurationFilter *)self gainMapImageAvailable])
  {
    return 0.0;
  }

  [(PXNumberFilter *)self currentTime];
  v4 = v3;
  [(PXGainMapAnimationDurationFilter *)self filterStartTime];
  v6 = v4 - v5;
  [(PXGainMapAnimationDurationFilter *)self activationThreshold];
  if (v6 <= v7)
  {
    return 0.0;
  }

  [(PXNumberFilter *)self input];
  return result;
}

- (void)setGainMapImageAvailable:(BOOL)available
{
  if (self->_gainMapImageAvailable != available)
  {
    self->_gainMapImageAvailable = available;
    if (!available)
    {
      [(PXNumberFilter *)self currentTime];
      [(PXGainMapAnimationDurationFilter *)self setFilterStartTime:?];
    }

    [(PXNumberFilter *)self invalidateOutput];
  }
}

- (PXGainMapAnimationDurationFilter)init
{
  v3 = +[PXImageModulationSettings sharedInstance];
  [v3 gainMapAnimationDuration];
  v9.receiver = self;
  v9.super_class = PXGainMapAnimationDurationFilter;
  v4 = [(PXNumberFilter *)&v9 initWithInput:?];
  v5 = v4;
  if (v4)
  {
    [(PXNumberFilter *)v4 currentTime];
    v5->_filterStartTime = v6;
    v5->_enabled = [v3 animateGainMapAppearance];
    [v3 gainMapAnimationActivationThreshold];
    v5->_activationThreshold = v7;
  }

  return v5;
}

@end