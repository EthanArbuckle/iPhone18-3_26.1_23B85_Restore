@interface SKUIRunLoopDelay
- (SKUIRunLoopDelay)initWithRunLoopMode:(id)mode timeout:(double)timeout;
- (void)dealloc;
- (void)delayRunLoop;
- (void)endDelay;
@end

@implementation SKUIRunLoopDelay

- (SKUIRunLoopDelay)initWithRunLoopMode:(id)mode timeout:(double)timeout
{
  modeCopy = mode;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRunLoopDelay initWithRunLoopMode:timeout:];
  }

  v12.receiver = self;
  v12.super_class = SKUIRunLoopDelay;
  v7 = [(SKUIRunLoopDelay *)&v12 init];
  if (v7)
  {
    v8 = [modeCopy copy];
    mode = v7->_mode;
    v7->_mode = v8;

    v7->_timeout = timeout;
    v7->_runLoop = CFRunLoopGetCurrent();
    memset(&v11, 0, sizeof(v11));
    v7->_runLoopSource = CFRunLoopSourceCreate(0, 0, &v11);
  }

  return v7;
}

- (void)dealloc
{
  CFRunLoopSourceInvalidate(self->_runLoopSource);
  v3.receiver = self;
  v3.super_class = SKUIRunLoopDelay;
  [(SKUIRunLoopDelay *)&v3 dealloc];
}

- (void)delayRunLoop
{
  v3 = self->_mode;
  CFRunLoopAddSource(self->_runLoop, self->_runLoopSource, v3);
  CFRunLoopRunInMode(v3, self->_timeout, 1u);

  CFRelease(v3);
}

- (void)endDelay
{
  CFRunLoopSourceSignal(self->_runLoopSource);
  runLoop = self->_runLoop;

  CFRunLoopWakeUp(runLoop);
}

- (void)initWithRunLoopMode:timeout:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRunLoopDelay initWithRunLoopMode:timeout:]";
}

@end