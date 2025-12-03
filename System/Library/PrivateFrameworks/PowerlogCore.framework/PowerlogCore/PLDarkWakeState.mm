@interface PLDarkWakeState
+ (void)load;
- (BOOL)updateWithEntry:(id)entry;
@end

@implementation PLDarkWakeState

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLDarkWakeState;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)updateWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy objectForKeyedSubscript:@"State"];
  intValue = [v5 intValue];

  v7 = [entryCopy objectForKeyedSubscript:@"Event"];
  intValue2 = [v7 intValue];

  v9 = intValue2 == 1 || intValue2 == 6;
  v10 = MEMORY[0x1E695E110];
  if (!v9)
  {
    v10 = 0;
  }

  if (intValue != 1)
  {
    v10 = 0;
  }

  if ((intValue - 5) >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E695E118];
  }

  if ((intValue & 0xFFFFFFFD) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = MEMORY[0x1E695E110];
  }

  v13 = [(PLState *)self updateWithValue:v12];
  if (v13)
  {
    entryDate = [entryCopy entryDate];
    [(PLState *)self setStateChangeTime:entryDate];
  }

  return v13;
}

@end