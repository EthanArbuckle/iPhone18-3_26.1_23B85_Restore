@interface PLPluggedState
+ (void)load;
- (BOOL)updateWithEntry:(id)a3;
- (PLPluggedState)init;
@end

@implementation PLPluggedState

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLPluggedState;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLPluggedState)init
{
  v2 = [(PLState *)self initWithStateId:1 entryKey:@"PLBatteryAgent_EventBackward_Battery" currValue:MEMORY[0x1E695E110]];
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
  v5 = [v4 objectForKeyedSubscript:@"ExternalConnected"];
  v6 = [(PLState *)self updateWithValue:v5];
  if (v6)
  {
    v7 = [v4 entryDate];
    [(PLState *)self setStateChangeTime:v7];
  }

  return v6;
}

@end