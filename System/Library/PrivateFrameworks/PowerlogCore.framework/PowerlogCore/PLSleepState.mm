@interface PLSleepState
+ (void)load;
- (BOOL)updateWithEntry:(id)entry;
- (PLSleepState)init;
@end

@implementation PLSleepState

+ (void)load
{
  v2.receiver = self;
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

- (BOOL)updateWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy objectForKeyedSubscript:@"State"];
  intValue = [v5 intValue];

  v7 = [entryCopy objectForKeyedSubscript:@"Event"];
  intValue2 = [v7 intValue];

  if (intValue <= 6)
  {
    if (((1 << intValue) & 0x65) != 0)
    {
      v9 = MEMORY[0x1E695E110];
      goto LABEL_4;
    }

    if (intValue == 1)
    {
      if (intValue2 == 1 || intValue2 == 6)
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
    entryDate = [entryCopy entryDate];
    [(PLState *)self setStateChangeTime:entryDate];
  }

  return v10;
}

@end