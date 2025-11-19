@interface PLUserIdleState
+ (void)load;
- (BOOL)updateWithEntry:(id)a3;
- (PLUserIdleState)init;
@end

@implementation PLUserIdleState

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLUserIdleState;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLUserIdleState)init
{
  v2 = [(PLState *)self initWithStateId:64 entryKey:@"PLSleepWakeAgent_EventForward_UserIdle" currValue:MEMORY[0x1E695E118]];
  v3 = v2;
  if (v2)
  {
    [(PLState *)v2 updateWithLastEntry];
  }

  return v3;
}

- (BOOL)updateWithEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Idle"];
  v6 = [(PLState *)self updateWithValue:v5];
  if (v6)
  {
    v7 = [v4 entryDate];
    [(PLState *)self setStateChangeTime:v7];
  }

  return v6;
}

@end