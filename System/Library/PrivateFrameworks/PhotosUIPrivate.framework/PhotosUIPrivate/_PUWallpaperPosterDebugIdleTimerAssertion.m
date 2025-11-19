@interface _PUWallpaperPosterDebugIdleTimerAssertion
- (void)dealloc;
- (void)px_invalidate;
@end

@implementation _PUWallpaperPosterDebugIdleTimerAssertion

- (void)px_invalidate
{
  self->_invalidated = 1;
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 setIdleTimerDisabled:0];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _PUWallpaperPosterDebugIdleTimerAssertion;
  [(_PUWallpaperPosterDebugIdleTimerAssertion *)&v2 dealloc];
}

@end