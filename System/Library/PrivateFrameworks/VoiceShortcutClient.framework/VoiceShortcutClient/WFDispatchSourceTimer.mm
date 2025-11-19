@interface WFDispatchSourceTimer
- (BOOL)isCancelled;
- (WFDispatchSourceTimer)initWithInterval:(double)a3 repeatIntervalInt:(unint64_t)a4 queue:(id)a5 handler:(id)a6;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation WFDispatchSourceTimer

- (void)cancel
{
  dispatch_source_cancel(self->_source);
  v3 = [(WFDispatchSourceTimer *)self assertion];
  [v3 invalidate];

  assertion = self->_assertion;
  self->_assertion = 0;
}

- (void)start
{
  v29 = *MEMORY[0x1E69E9840];
  dispatch_resume(self->_source);
  if ([(WFDispatchSourceTimer *)self preventSuspension])
  {
    v3 = [(WFDispatchSourceTimer *)self assertion];

    if (!v3)
    {
      v4 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[WFDispatchSourceTimer start]";
        _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_INFO, "%s Client wants to prevent suspension, so we're taking out a RunningBoard assertion...", buf, 0xCu);
      }

      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v5 = getRBSAssertionClass_softClass;
      v24 = getRBSAssertionClass_softClass;
      if (!getRBSAssertionClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getRBSAssertionClass_block_invoke;
        v27 = &unk_1E7B02C60;
        v28 = &v21;
        __getRBSAssertionClass_block_invoke(buf);
        v5 = v22[3];
      }

      v6 = v5;
      _Block_object_dispose(&v21, 8);
      v7 = [v5 alloc];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v8 = getRBSTargetClass_softClass;
      v24 = getRBSTargetClass_softClass;
      if (!getRBSTargetClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getRBSTargetClass_block_invoke;
        v27 = &unk_1E7B02C60;
        v28 = &v21;
        __getRBSTargetClass_block_invoke(buf);
        v8 = v22[3];
      }

      v9 = v8;
      _Block_object_dispose(&v21, 8);
      v10 = [v8 currentProcess];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v11 = getRBSDomainAttributeClass_softClass;
      v24 = getRBSDomainAttributeClass_softClass;
      if (!getRBSDomainAttributeClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getRBSDomainAttributeClass_block_invoke;
        v27 = &unk_1E7B02C60;
        v28 = &v21;
        __getRBSDomainAttributeClass_block_invoke(buf);
        v11 = v22[3];
      }

      v12 = v11;
      _Block_object_dispose(&v21, 8);
      v13 = [v11 attributeWithDomain:@"com.apple.shortcuts" name:@"RunningBackground"];
      v25 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v15 = [v7 initWithExplanation:@"An assertion-requiring timer is ticking" target:v10 attributes:v14];

      v20 = 0;
      LOBYTE(v13) = [v15 acquireWithError:&v20];
      v16 = v20;
      if (v13)
      {
        v17 = v15;
        assertion = self->_assertion;
        self->_assertion = v17;
      }

      else
      {
        assertion = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(assertion, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[WFDispatchSourceTimer start]";
          *&buf[12] = 2114;
          *&buf[14] = v16;
          _os_log_impl(&dword_1B1DE3000, assertion, OS_LOG_TYPE_FAULT, "%s Unable to acquire assertion for timer: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCancelled
{
  v2 = [(WFDispatchSourceTimer *)self source];
  v3 = dispatch_source_testcancel(v2) != 0;

  return v3;
}

- (void)dealloc
{
  [(WFDispatchSourceTimer *)self cancel];
  v3.receiver = self;
  v3.super_class = WFDispatchSourceTimer;
  [(WFDispatchSourceTimer *)&v3 dealloc];
}

- (WFDispatchSourceTimer)initWithInterval:(double)a3 repeatIntervalInt:(unint64_t)a4 queue:(id)a5 handler:(id)a6
{
  v11 = a5;
  v12 = a6;
  if (!v12)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFDispatchSourceTimer.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v26.receiver = self;
  v26.super_class = WFDispatchSourceTimer;
  v13 = [(WFDispatchSourceTimer *)&v26 init];
  if (v13)
  {
    v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
    source = v13->_source;
    v13->_source = v14;

    v13->_hasFired = 0;
    v16 = v13->_source;
    v17 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v16, v17, a4, 0x2FAF080uLL);
    v18 = v13->_source;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __74__WFDispatchSourceTimer_initWithInterval_repeatIntervalInt_queue_handler___block_invoke;
    handler[3] = &unk_1E7B01CB8;
    v19 = v13;
    v24 = v19;
    v25 = v12;
    dispatch_source_set_event_handler(v18, handler);
    v20 = v19;
  }

  return v13;
}

uint64_t __74__WFDispatchSourceTimer_initWithInterval_repeatIntervalInt_queue_handler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) assertion];
    [v3 invalidate];

    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;

    [*(a1 + 32) setHasFired:1];
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  return result;
}

@end