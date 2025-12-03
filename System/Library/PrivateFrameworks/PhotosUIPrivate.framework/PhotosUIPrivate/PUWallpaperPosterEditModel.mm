@interface PUWallpaperPosterEditModel
- (PUWallpaperPosterEditModel)initWithEditor:(id)editor;
- (void)dealloc;
- (void)performChanges:(id)changes;
- (void)setDepthEffectDisabled:(BOOL)disabled;
- (void)setIdleTimerDisabled:(BOOL)disabled;
- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason;
@end

@implementation PUWallpaperPosterEditModel

- (void)setDepthEffectDisabled:(BOOL)disabled
{
  if (self->_depthEffectDisabled != disabled)
  {
    self->_depthEffectDisabled = disabled;
    [(PUWallpaperPosterEditModel *)self signalChange:2];
  }
}

- (void)setIdleTimerDisabled:(BOOL)disabled
{
  if (self->_idleTimerDisabled != disabled)
  {
    self->_idleTimerDisabled = disabled;
    if (disabled)
    {
      editor = [(PUWallpaperPosterEditModel *)self editor];
      pu_disableIdleTimer = [editor pu_disableIdleTimer];
      [(PUWallpaperPosterEditModel *)self setIdleTimerAssertion:pu_disableIdleTimer];
    }

    else
    {
      idleTimerAssertion = [(PUWallpaperPosterEditModel *)self idleTimerAssertion];
      [idleTimerAssertion px_invalidate];

      [(PUWallpaperPosterEditModel *)self setIdleTimerAssertion:0];
    }

    [(PUWallpaperPosterEditModel *)self signalChange:1];
  }
}

- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  idleTimerDisablingReasons = [(PUWallpaperPosterEditModel *)self idleTimerDisablingReasons];
  v8 = idleTimerDisablingReasons;
  if (disabledCopy)
  {
    [idleTimerDisablingReasons addObject:reasonCopy];
  }

  else
  {
    [idleTimerDisablingReasons removeObject:reasonCopy];
  }

  -[PUWallpaperPosterEditModel setIdleTimerDisabled:](self, "setIdleTimerDisabled:", [v8 count] != 0);
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PUWallpaperPosterEditModel;
  [(PUWallpaperPosterEditModel *)&v3 performChanges:changes];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PUWallpaperPosterEditModel;
  [(PUWallpaperPosterEditModel *)&v2 dealloc];
}

- (PUWallpaperPosterEditModel)initWithEditor:(id)editor
{
  editorCopy = editor;
  v10.receiver = self;
  v10.super_class = PUWallpaperPosterEditModel;
  v6 = [(PUWallpaperPosterEditModel *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    idleTimerDisablingReasons = v6->_idleTimerDisablingReasons;
    v6->_idleTimerDisablingReasons = v7;

    objc_storeStrong(&v6->_editor, editor);
  }

  return v6;
}

@end