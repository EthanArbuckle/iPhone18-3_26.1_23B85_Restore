@interface RWIProtocolDebuggerBreakpointPauseReason
- (NSString)breakpointId;
- (RWIProtocolDebuggerBreakpointPauseReason)initWithBreakpointId:(id)a3;
- (void)setBreakpointId:(id)a3;
@end

@implementation RWIProtocolDebuggerBreakpointPauseReason

- (RWIProtocolDebuggerBreakpointPauseReason)initWithBreakpointId:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RWIProtocolDebuggerBreakpointPauseReason;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"breakpointId"}];
    }

    [(RWIProtocolDebuggerBreakpointPauseReason *)v5 setBreakpointId:v4];
    v6 = v5;
  }

  return v5;
}

- (void)setBreakpointId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointPauseReason;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"breakpointId"];
}

- (NSString)breakpointId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerBreakpointPauseReason;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"breakpointId"];

  return v2;
}

@end