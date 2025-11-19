@interface _UIOHypogeanViewRequestConfiguration
- (_UIOHypogeanViewRequestConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIOHypogeanViewRequestConfiguration

- (_UIOHypogeanViewRequestConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIOHypogeanViewRequestConfiguration;
  v5 = [(_UIOHypogeanViewRequestConfiguration *)&v8 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_type);
    v5->_type = [v4 decodeIntegerForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v4 = a3;
  v5 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:type forKey:v5];
}

@end