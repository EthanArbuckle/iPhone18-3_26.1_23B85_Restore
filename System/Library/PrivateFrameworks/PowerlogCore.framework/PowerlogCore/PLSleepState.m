@interface PLSleepState
+ (void)load;
- (BOOL)updateWithEntry:(id)a3;
- (PLSleepState)init;
@end

@implementation PLSleepState

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLSleepState;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLSleepState)init
{
  v2 = [(PLState *)self initWithStateId:32 entryKey:@"PLSleepWakeAgent_EventForward_PowerState" currValue:MEMORY[0x1E695E118]];
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
  v5 = [v4 objectForKeyedSubscript:@"State"];
  v6 = [v5 intValue];

  v7 = [v4 objectForKeyedSubscript:@"Event"];
  v8 = [v7 intValue];

  if (v6 <= 6)
  {
    if (((1 << v6) & 0x65) != 0)
    {
      v9 = MEMORY[0x1E695E110];
      goto LABEL_4;
    }

    if (v6 == 1)
    {
      if (v8 == 1 || v8 == 6)
      {
        v9 = MEMORY[0x1E695E118];
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_4:
  v10 = [(PLState *)self updateWithValue:v9];
  if (v10)
  {
    v11 = [v4 entryDate];
    [(PLState *)self setStateChangeTime:v11];
  }

  return v10;
}

@end