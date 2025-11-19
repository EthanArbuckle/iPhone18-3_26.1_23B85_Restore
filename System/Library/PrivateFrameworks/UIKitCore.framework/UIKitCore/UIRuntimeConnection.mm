@interface UIRuntimeConnection
- (UIRuntimeConnection)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIRuntimeConnection

- (UIRuntimeConnection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIRuntimeConnection *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UILabel"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectForKey:@"UISource"];
    source = v5->_source;
    v5->_source = v8;

    v10 = [v4 decodeObjectForKey:@"UIDestination"];
    destination = v5->_destination;
    v5->_destination = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  label = self->_label;
  v8 = v4;
  if (label)
  {
    [v4 encodeObject:label forKey:@"UILabel"];
    v4 = v8;
  }

  source = self->_source;
  if (source)
  {
    [v8 encodeObject:source forKey:@"UISource"];
    v4 = v8;
  }

  destination = self->_destination;
  if (destination)
  {
    [v8 encodeObject:destination forKey:@"UIDestination"];
    v4 = v8;
  }
}

@end