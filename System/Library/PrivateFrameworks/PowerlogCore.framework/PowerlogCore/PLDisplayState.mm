@interface PLDisplayState
+ (void)load;
- (BOOL)updateWithEntry:(id)a3;
- (PLDisplayState)init;
@end

@implementation PLDisplayState

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLDisplayState;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLDisplayState)init
{
  v2 = [(PLState *)self initWithStateId:4 entryKey:@"PLDisplayAgent_EventPoint_Display" currValue:MEMORY[0x1E695E110]];
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
  v5 = [v4 objectForKeyedSubscript:@"Block"];
  v6 = +[PLDisplayState getDisplayBlock];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"Active"];
    v9 = [(PLState *)self updateWithValue:v8];
    if (v9)
    {
      v10 = [v4 entryDate];
      [(PLState *)self setStateChangeTime:v10];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end