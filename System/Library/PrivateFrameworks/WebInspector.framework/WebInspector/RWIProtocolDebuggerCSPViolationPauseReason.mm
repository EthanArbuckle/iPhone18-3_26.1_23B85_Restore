@interface RWIProtocolDebuggerCSPViolationPauseReason
- (NSString)directive;
- (RWIProtocolDebuggerCSPViolationPauseReason)initWithDirective:(id)a3;
- (void)setDirective:(id)a3;
@end

@implementation RWIProtocolDebuggerCSPViolationPauseReason

- (RWIProtocolDebuggerCSPViolationPauseReason)initWithDirective:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RWIProtocolDebuggerCSPViolationPauseReason;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"directive"}];
    }

    [(RWIProtocolDebuggerCSPViolationPauseReason *)v5 setDirective:v4];
    v6 = v5;
  }

  return v5;
}

- (void)setDirective:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerCSPViolationPauseReason;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"directive"];
}

- (NSString)directive
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerCSPViolationPauseReason;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"directive"];

  return v2;
}

@end