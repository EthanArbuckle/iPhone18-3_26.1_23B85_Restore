@interface PXStoryPacingAutoIncrementingTimeSource
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (PXStoryPacingAutoIncrementingTimeSource)initWithLayoutQueue:(id)queue lowPowerMode:(BOOL)mode;
- (PXStoryPacingClock)pacingClock;
- (PXStoryPacingTimeSourceDelegate)delegate;
- (void)_handlePlayLink:(id)link;
- (void)setActive:(BOOL)active;
- (void)setPlayLink:(id)link;
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

- (void)_handlePlayLink:(id)link
{
  linkCopy = link;
  if ([(PXStoryPacingAutoIncrementingTimeSource *)self isActive])
  {
    memset(&v8, 0, sizeof(v8));
    [linkCopy resolvedDuration];
    CMTimeMakeWithSeconds(&v8, v5, 600);
    delegate = [(PXStoryPacingAutoIncrementingTimeSource *)self delegate];
    v7 = v8;
    [delegate timeSource:self didIncrementByTime:&v7];
  }
}

- (void)setPlayLink:(id)link
{
  linkCopy = link;
  playLink = self->_playLink;
  p_playLink = &self->_playLink;
  v6 = playLink;
  if (playLink != linkCopy)
  {
    v9 = linkCopy;
    [(PXDisplayLinkProtocol *)v6 invalidate];
    objc_storeStrong(p_playLink, link);
    linkCopy = v9;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  pacingClock = [(PXStoryPacingAutoIncrementingTimeSource *)self pacingClock];

  if (pacingClock)
  {
    pacingClock2 = [(PXStoryPacingAutoIncrementingTimeSource *)self pacingClock];
    if (pacingClock2)
    {
      v8 = pacingClock2;
      [pacingClock2 currentTime];
      pacingClock2 = v8;
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

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      if (![(PXStoryPacingAutoIncrementingTimeSource *)self lowPowerMode])
      {
        PXDisplayLinkDefaultPreferredFramesPerSecond();
      }

      layoutQueue = [(PXStoryPacingAutoIncrementingTimeSource *)self layoutQueue];
      v5 = MEMORY[0x1E69E96A0];

      if (layoutQueue == v5)
      {
        v8 = [[off_1E7721528 alloc] initWithWeakTarget:self selector:sel__handlePlayLink_ preferredFramesPerSecond:15];
      }

      else
      {
        v6 = [off_1E77214D0 alloc];
        layoutQueue2 = [(PXStoryPacingAutoIncrementingTimeSource *)self layoutQueue];
        v8 = [v6 initWithWeakTarget:self selector:sel__handlePlayLink_ preferredFramesPerSecond:15 screen:0 queue:layoutQueue2];
      }

      [(PXStoryPacingAutoIncrementingTimeSource *)self setPlayLink:v8];
    }

    else
    {

      [(PXStoryPacingAutoIncrementingTimeSource *)self setPlayLink:0];
    }
  }
}

- (PXStoryPacingAutoIncrementingTimeSource)initWithLayoutQueue:(id)queue lowPowerMode:(BOOL)mode
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = PXStoryPacingAutoIncrementingTimeSource;
  v8 = [(PXStoryPacingAutoIncrementingTimeSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_layoutQueue, queue);
    v9->_lowPowerMode = mode;
  }

  return v9;
}

@end