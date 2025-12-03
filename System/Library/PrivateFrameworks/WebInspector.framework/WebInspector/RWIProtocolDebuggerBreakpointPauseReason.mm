@interface RWIProtocolDebuggerBreakpointPauseReason
- (NSString)breakpointId;
- (RWIProtocolDebuggerBreakpointPauseReason)initWithBreakpointId:(id)id;
- (void)setBreakpointId:(id)id;
@end

@implementation RWIProtocolDebuggerBreakpointPauseReason

- (RWIProtocolDebuggerBreakpointPauseReason)initWithBreakpointId:(id)id
{
  idCopy = id;
  v8.receiver = self;
  v8.super_class = RWIProtocolDebuggerBreakpointPauseReason;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!idCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"breakpointId"}];
    }

    [(RWIProtocolDebuggerBreakpointPauseReason *)v5 setBreakpointId:idCopy];
    v6 = v5;
  }

  return v5;
}

- (void)setBreakpointId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointPauseReason;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"breakpointId"];
}

- (NSString)breakpointId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerBreakpointPauseReason;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"breakpointId"];

  return v2;
}

@end