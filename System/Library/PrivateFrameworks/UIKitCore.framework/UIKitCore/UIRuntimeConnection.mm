@interface UIRuntimeConnection
- (UIRuntimeConnection)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIRuntimeConnection

- (UIRuntimeConnection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UIRuntimeConnection *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UILabel"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectForKey:@"UISource"];
    source = v5->_source;
    v5->_source = v8;

    v10 = [coderCopy decodeObjectForKey:@"UIDestination"];
    destination = v5->_destination;
    v5->_destination = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = self->_label;
  v8 = coderCopy;
  if (label)
  {
    [coderCopy encodeObject:label forKey:@"UILabel"];
    coderCopy = v8;
  }

  source = self->_source;
  if (source)
  {
    [v8 encodeObject:source forKey:@"UISource"];
    coderCopy = v8;
  }

  destination = self->_destination;
  if (destination)
  {
    [v8 encodeObject:destination forKey:@"UIDestination"];
    coderCopy = v8;
  }
}

@end