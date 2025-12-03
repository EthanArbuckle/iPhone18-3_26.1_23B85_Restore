@interface UIRuntimeOutletConnection
- (id)description;
- (void)connect;
- (void)connectForSimulator;
@end

@implementation UIRuntimeOutletConnection

- (void)connect
{
  source = [(UIRuntimeConnection *)self source];
  destination = [(UIRuntimeConnection *)self destination];
  label = [(UIRuntimeConnection *)self label];
  [source setValue:destination forKeyPath:label];
}

- (void)connectForSimulator
{
  source = [(UIRuntimeConnection *)self source];
  destination = [(UIRuntimeConnection *)self destination];
  label = [(UIRuntimeConnection *)self label];
  [source setValue:destination forKeyPath:label];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  source = [(UIRuntimeConnection *)self source];
  destination = [(UIRuntimeConnection *)self destination];
  label = [(UIRuntimeConnection *)self label];
  v7 = [v3 stringWithFormat:@"Outlet connection with source %@, value %@, and variable name %@.", source, destination, label];

  return v7;
}

@end