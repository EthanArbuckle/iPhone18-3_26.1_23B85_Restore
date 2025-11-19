@interface VMUDebugTimer
+ (id)sharedTimer;
- (VMUDebugTimer)init;
- (void)endEvent:(const char *)a3;
- (void)startWithCategory:(const char *)a3 message:(const char *)a4;
- (void)stop;
@end

@implementation VMUDebugTimer

+ (id)sharedTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__VMUDebugTimer_sharedTimer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedTimer_onceToken != -1)
  {
    dispatch_once(&sharedTimer_onceToken, block);
  }

  v2 = sharedTimer;

  return v2;
}

void __28__VMUDebugTimer_sharedTimer__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedTimer;
  sharedTimer = v1;
}

- (VMUDebugTimer)init
{
  v8.receiver = self;
  v8.super_class = VMUDebugTimer;
  v2 = [(VMUDebugTimer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
    programStartTime = v2->_programStartTime;
    v2->_programStartTime = v3;

    v5 = os_log_create("com.apple.Symbolication", "Memory Scanning");
    logHandle = v2->_logHandle;
    v2->_logHandle = v5;

    kVMUPrintArchivingTiming = 1;
  }

  return v2;
}

- (void)startWithCategory:(const char *)a3 message:(const char *)a4
{
  if (*&self->_eventStartTime != 0)
  {
    [(VMUDebugTimer *)self endEvent:a3];
  }

  if (a3)
  {
    if (*a3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s - %s", a3, a4];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
    }
    v7 = ;
    eventMessage = self->_eventMessage;
    self->_eventMessage = v7;

    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
    v9 = self->_eventMessage;
    self->_eventMessage = v8;

    v10 = 0;
  }

  categoryMessage = self->_categoryMessage;
  self->_categoryMessage = v10;

  fprintf(*MEMORY[0x1E69E9848], "TIMING:  %s\n", [(NSString *)self->_eventMessage UTF8String]);
  v13 = objc_alloc_init(MEMORY[0x1E695DF00]);
  eventStartTime = self->_eventStartTime;
  self->_eventStartTime = v13;

  self->_signpostID = os_signpost_id_generate(self->_logHandle);
}

- (void)endEvent:(const char *)a3
{
  eventStartTime = self->_eventStartTime;
  if (eventStartTime && self->_eventMessage)
  {
    if (self->_signpostID)
    {
      if (a3)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      }

      else
      {
        v5 = &stru_1F461F9C8;
      }
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v7 = *MEMORY[0x1E69E9848];
    [v6 timeIntervalSinceDate:self->_programStartTime];
    v9 = v8;
    [v6 timeIntervalSinceDate:self->_eventStartTime];
    fprintf(v7, "TIMING (%.02f elapsed):  %.02f seconds for %s\n\n", v9, v10, [(NSString *)self->_eventMessage UTF8String]);

    eventStartTime = self->_eventStartTime;
  }

  self->_eventStartTime = 0;

  eventMessage = self->_eventMessage;
  self->_eventMessage = 0;

  self->_signpostID = 0;
}

- (void)stop
{
  categoryMessage = self->_categoryMessage;
  if (categoryMessage)
  {
    v4 = [(NSString *)categoryMessage UTF8String];
  }

  else
  {
    v4 = 0;
  }

  [(VMUDebugTimer *)self endEvent:v4];
  v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
  programStartTime = self->_programStartTime;
  self->_programStartTime = v5;
}

@end