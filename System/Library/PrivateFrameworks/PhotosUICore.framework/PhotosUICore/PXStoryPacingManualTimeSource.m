@interface PXStoryPacingManualTimeSource
- (PXStoryPacingManualTimeSource)init;
- (PXStoryPacingTimeSourceDelegate)delegate;
- (void)incrementByTime:(id *)a3;
@end

@implementation PXStoryPacingManualTimeSource

- (PXStoryPacingTimeSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)incrementByTime:(id *)a3
{
  if ([(PXStoryPacingManualTimeSource *)self isActive])
  {
    lhs = self->_currentTime;
    rhs = *a3;
    CMTimeAdd(&v6, &lhs, &rhs);
    self->_currentTime = v6;
    v5 = [(PXStoryPacingManualTimeSource *)self delegate];
    lhs = *a3;
    [v5 timeSource:self didIncrementByTime:&lhs];
  }
}

- (PXStoryPacingManualTimeSource)init
{
  v5.receiver = self;
  v5.super_class = PXStoryPacingManualTimeSource;
  v2 = [(PXStoryPacingManualTimeSource *)&v5 init];
  if (v2)
  {
    CMTimeMakeWithSeconds(&v4, 0.0, 600);
    v2->_currentTime = v4;
  }

  return v2;
}

@end