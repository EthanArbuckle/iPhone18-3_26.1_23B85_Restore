@interface RWIProtocolDebuggerCSPViolationPauseReason
- (NSString)directive;
- (RWIProtocolDebuggerCSPViolationPauseReason)initWithDirective:(id)directive;
- (void)setDirective:(id)directive;
@end

@implementation RWIProtocolDebuggerCSPViolationPauseReason

- (RWIProtocolDebuggerCSPViolationPauseReason)initWithDirective:(id)directive
{
  directiveCopy = directive;
  v8.receiver = self;
  v8.super_class = RWIProtocolDebuggerCSPViolationPauseReason;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!directiveCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"directive"}];
    }

    [(RWIProtocolDebuggerCSPViolationPauseReason *)v5 setDirective:directiveCopy];
    v6 = v5;
  }

  return v5;
}

- (void)setDirective:(id)directive
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerCSPViolationPauseReason;
  [(RWIProtocolJSONObject *)&v3 setString:directive forKey:@"directive"];
}

- (NSString)directive
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerCSPViolationPauseReason;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"directive"];

  return v2;
}

@end