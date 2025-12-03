@interface _UIOHypogeanViewRequestConfiguration
- (_UIOHypogeanViewRequestConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIOHypogeanViewRequestConfiguration

- (_UIOHypogeanViewRequestConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _UIOHypogeanViewRequestConfiguration;
  v5 = [(_UIOHypogeanViewRequestConfiguration *)&v8 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_type);
    v5->_type = [coderCopy decodeIntegerForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v5];
}

@end