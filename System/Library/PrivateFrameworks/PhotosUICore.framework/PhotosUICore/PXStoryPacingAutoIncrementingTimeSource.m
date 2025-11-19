@interface PXStoryPacingAutoIncrementingTimeSource
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (PXStoryPacingAutoIncrementingTimeSource)initWithLayoutQueue:(id)a3 lowPowerMode:(BOOL)a4;
- (PXStoryPacingClock)pacingClock;
- (PXStoryPacingTimeSourceDelegate)delegate;
- (void)_handlePlayLink:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setPlayLink:(id)a3;
@end

@implementation PXStoryPacingAutoIncrementingTimeSource

- (PXStoryPacingClock)pacingClock
{
  WeakRetained = objc_loadWeakRetained(&self->_pacingClock);

  return WeakRetained;
}

- (PXStoryPacingTimeSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handlePlayLink:(id)a3
{
  v4 = a3;
  if ([(PXStoryPacingAutoIncrementingTimeSource *)self isActive])
  {
    memset(&v8, 0, sizeof(v8));
    [v4 resolvedDuration];
    CMTimeMakeWithSeconds(&v8, v5, 600);
    v6 = [(PXStoryPacingAutoIncrementingTimeSource *)self delegate];
    v7 = v8;
    [v6 timeSource:self didIncrementByTime:&v7];
  }
}

- (void)setPlayLink:(id)a3
{
  v5 = a3;
  playLink = self->_playLink;
  p_playLink = &self->_playLink;
  v6 = playLink;
  if (playLink != v5)
  {
    v9 = v5;
    [(PXDisplayLinkProtocol *)v6 invalidate];
    objc_storeStrong(p_playLink, a3);
    v5 = v9;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  v5 = [(PXStoryPacingAutoIncrementingTimeSource *)self pacingClock];

  if (v5)
  {
    v7 = [(PXStoryPacingAutoIncrementingTimeSource *)self pacingClock];
    if (v7)
    {
      v8 = v7;
      [v7 currentTime];
      v7 = v8;
    }

    else
    {
      retstr->var0 = 0;
      *&retstr->var1 = 0;
      retstr->var3 = 0;
    }
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      if (![(PXStoryPacingAutoIncrementingTimeSource *)self lowPowerMode])
      {
        PXDisplayLinkDefaultPreferredFramesPerSecond();
      }

      v4 = [(PXStoryPacingAutoIncrementingTimeSource *)self layoutQueue];
      v5 = MEMORY[0x1E69E96A0];

      if (v4 == v5)
      {
        v8 = [[off_1E7721528 alloc] initWithWeakTarget:self selector:sel__handlePlayLink_ preferredFramesPerSecond:15];
      }

      else
      {
        v6 = [off_1E77214D0 alloc];
        v7 = [(PXStoryPacingAutoIncrementingTimeSource *)self layoutQueue];
        v8 = [v6 initWithWeakTarget:self selector:sel__handlePlayLink_ preferredFramesPerSecond:15 screen:0 queue:v7];
      }

      [(PXStoryPacingAutoIncrementingTimeSource *)self setPlayLink:v8];
    }

    else
    {

      [(PXStoryPacingAutoIncrementingTimeSource *)self setPlayLink:0];
    }
  }
}

- (PXStoryPacingAutoIncrementingTimeSource)initWithLayoutQueue:(id)a3 lowPowerMode:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PXStoryPacingAutoIncrementingTimeSource;
  v8 = [(PXStoryPacingAutoIncrementingTimeSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_layoutQueue, a3);
    v9->_lowPowerMode = a4;
  }

  return v9;
}

@end