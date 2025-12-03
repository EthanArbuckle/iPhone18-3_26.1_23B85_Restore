@interface UIRuntimeEventConnection
- (SEL)action;
- (UIRuntimeEventConnection)initWithCoder:(id)coder;
- (id)description;
- (id)target;
- (void)connect;
- (void)connectForSimulator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIRuntimeEventConnection

- (void)connect
{
  source = [(UIRuntimeConnection *)self source];
  [source _connectInterfaceBuilderEventConnection:self];
}

- (id)target
{
  destination = [(UIRuntimeConnection *)self destination];
  if (destination == IBFirstResponderStandin)
  {
    destination2 = 0;
  }

  else
  {
    destination2 = [(UIRuntimeConnection *)self destination];
  }

  return destination2;
}

- (SEL)action
{
  label = [(UIRuntimeConnection *)self label];
  v3 = NSSelectorFromString(label);

  return v3;
}

- (UIRuntimeEventConnection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UIRuntimeEventConnection;
  v5 = [(UIRuntimeConnection *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->eventMask = [coderCopy decodeIntegerForKey:@"UIEventMask"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = UIRuntimeEventConnection;
  [(UIRuntimeConnection *)&v6 encodeWithCoder:coderCopy];
  eventMask = self->eventMask;
  if (eventMask)
  {
    [coderCopy encodeInteger:eventMask forKey:@"UIEventMask"];
  }
}

- (void)connectForSimulator
{
  source = [(UIRuntimeConnection *)self source];
  [source _connectInterfaceBuilderEventConnection:self];

  NSLog(&cfstr_CouldNotEstabl.isa, self);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  source = [(UIRuntimeConnection *)self source];
  destination = [(UIRuntimeConnection *)self destination];
  label = [(UIRuntimeConnection *)self label];
  v7 = [v3 stringWithFormat:@"Action event connection with source %@, target %@, and selector %@.", source, destination, label];

  return v7;
}

@end