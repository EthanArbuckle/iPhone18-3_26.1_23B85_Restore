@interface PLUserIdleState
+ (void)load;
- (BOOL)updateWithEntry:(id)entry;
- (PLUserIdleState)init;
@end

@implementation PLUserIdleState

+ (void)load
{
  v2.receiver = self;
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

- (BOOL)updateWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy objectForKeyedSubscript:@"Idle"];
  v6 = [(PLState *)self updateWithValue:v5];
  if (v6)
  {
    entryDate = [entryCopy entryDate];
    [(PLState *)self setStateChangeTime:entryDate];
  }

  return v6;
}

@end