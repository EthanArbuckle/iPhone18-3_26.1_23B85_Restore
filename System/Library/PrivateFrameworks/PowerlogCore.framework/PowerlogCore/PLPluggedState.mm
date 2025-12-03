@interface PLPluggedState
+ (void)load;
- (BOOL)updateWithEntry:(id)entry;
- (PLPluggedState)init;
@end

@implementation PLPluggedState

+ (void)load
{
  v2.receiver = self;
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

- (BOOL)updateWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy objectForKeyedSubscript:@"ExternalConnected"];
  v6 = [(PLState *)self updateWithValue:v5];
  if (v6)
  {
    entryDate = [entryCopy entryDate];
    [(PLState *)self setStateChangeTime:entryDate];
  }

  return v6;
}

@end