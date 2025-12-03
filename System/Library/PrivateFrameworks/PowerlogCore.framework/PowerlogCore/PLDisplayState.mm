@interface PLDisplayState
+ (void)load;
- (BOOL)updateWithEntry:(id)entry;
- (PLDisplayState)init;
@end

@implementation PLDisplayState

+ (void)load
{
  v2.receiver = self;
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

- (BOOL)updateWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy objectForKeyedSubscript:@"Block"];
  v6 = +[PLDisplayState getDisplayBlock];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [entryCopy objectForKeyedSubscript:@"Active"];
    v9 = [(PLState *)self updateWithValue:v8];
    if (v9)
    {
      entryDate = [entryCopy entryDate];
      [(PLState *)self setStateChangeTime:entryDate];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end