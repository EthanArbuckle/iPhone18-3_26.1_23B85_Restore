@interface KNAnimationRenderer
- (void)dealloc;
- (void)pauseAnimations;
- (void)resumeAnimationsIfPaused;
- (void)setupPluginContext;
@end

@implementation KNAnimationRenderer

- (void)setupPluginContext
{
  objc_opt_class();
  objc_msgSend_pluginContext(self, v3, v4);
  v7 = TSUCheckedDynamicCast();
  if (!v7)
  {
    v7 = objc_alloc_init(KNAnimationPluginContext);
    self->_pluginContext = v7;
  }

  isPreview = objc_msgSend_isPreview(self->_session, v5, v6);
  objc_msgSend_setIsPreview_(v7, v9, isPreview);
  isMovieExport = objc_msgSend_isMovieExport(self->_session, v10, v11);

  MEMORY[0x2821F9670](v7, sel_setIsMovieExport_, isMovieExport);
}

- (void)pauseAnimations
{
  CACurrentMediaTime();

  MEMORY[0x2821F9670](self, sel_pauseAnimationsAtTime_, v3);
}

- (void)resumeAnimationsIfPaused
{
  CACurrentMediaTime();

  MEMORY[0x2821F9670](self, sel_resumeAnimationsIfPausedAtTime_, v3);
}

- (void)dealloc
{
  if (self->_pluginContext)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAnimationRenderer dealloc]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 59, 0, "expected nil value for '%{public}s'", "_pluginContext");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10.receiver = self;
  v10.super_class = KNAnimationRenderer;
  [(KNAnimationRenderer *)&v10 dealloc];
}

@end