@interface PLWakeState
+ (void)load;
- (BOOL)updateWithEntry:(id)a3;
@end

@implementation PLWakeState

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLWakeState;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)updateWithEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"State"];
  v6 = [v5 intValue];

  v7 = [v4 objectForKeyedSubscript:@"Event"];
  v8 = [v7 intValue];

  v9 = MEMORY[0x1E695E110];
  if (v8 == 1 || v8 == 6)
  {
    v11 = MEMORY[0x1E695E110];
  }

  else
  {
    v11 = 0;
  }

  if (v6 != 1)
  {
    v11 = 0;
  }

  if ((v6 - 5) >= 2)
  {
    v9 = v11;
  }

  if ((v6 & 0xFFFFFFFD) != 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = MEMORY[0x1E695E118];
  }

  v13 = [(PLState *)self updateWithValue:v12];
  if (v13)
  {
    v14 = [v4 entryDate];
    [(PLState *)self setStateChangeTime:v14];
  }

  return v13;
}

@end