@interface UIRuntimeEventConnection
- (SEL)action;
- (UIRuntimeEventConnection)initWithCoder:(id)a3;
- (id)description;
- (id)target;
- (void)connect;
- (void)connectForSimulator;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIRuntimeEventConnection

- (void)connect
{
  v3 = [(UIRuntimeConnection *)self source];
  [v3 _connectInterfaceBuilderEventConnection:self];
}

- (id)target
{
  v3 = [(UIRuntimeConnection *)self destination];
  if (v3 == IBFirstResponderStandin)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(UIRuntimeConnection *)self destination];
  }

  return v4;
}

- (SEL)action
{
  v2 = [(UIRuntimeConnection *)self label];
  v3 = NSSelectorFromString(v2);

  return v3;
}

- (UIRuntimeEventConnection)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIRuntimeEventConnection;
  v5 = [(UIRuntimeConnection *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->eventMask = [v4 decodeIntegerForKey:@"UIEventMask"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UIRuntimeEventConnection;
  [(UIRuntimeConnection *)&v6 encodeWithCoder:v4];
  eventMask = self->eventMask;
  if (eventMask)
  {
    [v4 encodeInteger:eventMask forKey:@"UIEventMask"];
  }
}

- (void)connectForSimulator
{
  v3 = [(UIRuntimeConnection *)self source];
  [v3 _connectInterfaceBuilderEventConnection:self];

  NSLog(&cfstr_CouldNotEstabl.isa, self);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UIRuntimeConnection *)self source];
  v5 = [(UIRuntimeConnection *)self destination];
  v6 = [(UIRuntimeConnection *)self label];
  v7 = [v3 stringWithFormat:@"Action event connection with source %@, target %@, and selector %@.", v4, v5, v6];

  return v7;
}

@end