@interface UIForceStageObservable
- (void)receiveObservedValue:(id)a3;
@end

@implementation UIForceStageObservable

- (void)receiveObservedValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__UIForceStageObservable_receiveObservedValue___block_invoke;
    v9[3] = &unk_1E711CC10;
    v10 = v4;
    v6 = [_UIForceMessage observe:v9];
    v8.receiver = self;
    v8.super_class = UIForceStageObservable;
    [(UIForceStageObservable *)&v8 receiveObservedValue:v6];

    v7 = v10;
  }

  else
  {
    v7 = +[_UIForceMessage reset];
    v11.receiver = self;
    v11.super_class = UIForceStageObservable;
    [(UIForceStageObservable *)&v11 receiveObservedValue:v7];
  }
}

void __47__UIForceStageObservable_receiveObservedValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  IOHIDEventGetFloatValue();
  [v3 setTouchForce:?];
  [v3 setStage:IOHIDEventGetIntegerValue()];
  TimeStamp = IOHIDEventGetTimeStamp();
  [v3 setTimestamp:_UIMediaTimeForMachTime(TimeStamp)];
}

@end