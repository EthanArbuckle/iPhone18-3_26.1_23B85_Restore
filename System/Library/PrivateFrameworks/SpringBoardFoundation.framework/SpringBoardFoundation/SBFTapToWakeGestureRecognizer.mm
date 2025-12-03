@interface SBFTapToWakeGestureRecognizer
- (BOOL)_isTapEvent:(__IOHIDEvent *)event;
- (void)_succesfullyRecognizeFromEvent:(__IOHIDEvent *)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation SBFTapToWakeGestureRecognizer

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v13 = *MEMORY[0x1E69E9840];
  _hidEvent = [event _hidEvent];
  v6 = [(SBFTapToWakeGestureRecognizer *)self _isTapEvent:_hidEvent];
  v7 = SBLogScreenWake();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem(self, 1);
    v9 = 138543618;
    v10 = v8;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: isTapEvent=%{BOOL}u", &v9, 0x12u);
  }

  if (v6)
  {
    [(SBFTapToWakeGestureRecognizer *)self _succesfullyRecognizeFromEvent:_hidEvent];
  }
}

- (void)_succesfullyRecognizeFromEvent:(__IOHIDEvent *)event
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = +[SBWakeLogger sharedInstance];
  [v4 wakeMayBegin:1 withTimestamp:IOHIDEventGetTimeStamp()];

  state = [(SBFTapToWakeGestureRecognizer *)self state];
  v6 = SBLogScreenWake();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem(self, 1);
    v8 = 138543618;
    v9 = v7;
    v10 = 2048;
    v11 = state;
    _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: state=%ld", &v8, 0x16u);
  }

  if (!state)
  {
    [(SBFTapToWakeGestureRecognizer *)self setState:3];
  }
}

- (BOOL)_isTapEvent:(__IOHIDEvent *)event
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  BKSHIDEventMatchingPredicate();
  v3 = *(v10 + 24);
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v9, 8);
  return v3;
}

uint64_t __45__SBFTapToWakeGestureRecognizer__isTapEvent___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (IOHIDEventGetType() == 11)
  {
    if ((~IOHIDEventGetIntegerValue() & 0x20002) == 0)
    {
      v5 = 5;
      if (!a3)
      {
        v5 = 4;
      }

      *(*(a1[v5] + 8) + 24) = 1;
    }

    if (*(*(a1[4] + 8) + 24) == 1)
    {
      v6 = *(*(a1[5] + 8) + 24);
    }

    else
    {
      v6 = 0;
    }

    *(*(a1[6] + 8) + 24) = v6 & 1;
    v7 = *(*(a1[6] + 8) + 24);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

@end