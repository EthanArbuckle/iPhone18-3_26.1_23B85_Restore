@interface PUWallpaperPosterEditModel
- (PUWallpaperPosterEditModel)initWithEditor:(id)a3;
- (void)dealloc;
- (void)performChanges:(id)a3;
- (void)setDepthEffectDisabled:(BOOL)a3;
- (void)setIdleTimerDisabled:(BOOL)a3;
- (void)setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4;
@end

@implementation PUWallpaperPosterEditModel

- (void)setDepthEffectDisabled:(BOOL)a3
{
  if (self->_depthEffectDisabled != a3)
  {
    self->_depthEffectDisabled = a3;
    [(PUWallpaperPosterEditModel *)self signalChange:2];
  }
}

- (void)setIdleTimerDisabled:(BOOL)a3
{
  if (self->_idleTimerDisabled != a3)
  {
    self->_idleTimerDisabled = a3;
    if (a3)
    {
      v5 = [(PUWallpaperPosterEditModel *)self editor];
      v6 = [v5 pu_disableIdleTimer];
      [(PUWallpaperPosterEditModel *)self setIdleTimerAssertion:v6];
    }

    else
    {
      v7 = [(PUWallpaperPosterEditModel *)self idleTimerAssertion];
      [v7 px_invalidate];

      [(PUWallpaperPosterEditModel *)self setIdleTimerAssertion:0];
    }

    [(PUWallpaperPosterEditModel *)self signalChange:1];
  }
}

- (void)setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PUWallpaperPosterEditModel *)self idleTimerDisablingReasons];
  v8 = v7;
  if (v4)
  {
    [v7 addObject:v6];
  }

  else
  {
    [v7 removeObject:v6];
  }

  -[PUWallpaperPosterEditModel setIdleTimerDisabled:](self, "setIdleTimerDisabled:", [v8 count] != 0);
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUWallpaperPosterEditModel;
  [(PUWallpaperPosterEditModel *)&v3 performChanges:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PUWallpaperPosterEditModel;
  [(PUWallpaperPosterEditModel *)&v2 dealloc];
}

- (PUWallpaperPosterEditModel)initWithEditor:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PUWallpaperPosterEditModel;
  v6 = [(PUWallpaperPosterEditModel *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    idleTimerDisablingReasons = v6->_idleTimerDisablingReasons;
    v6->_idleTimerDisablingReasons = v7;

    objc_storeStrong(&v6->_editor, a3);
  }

  return v6;
}

@end