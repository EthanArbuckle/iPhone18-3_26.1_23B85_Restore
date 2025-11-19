@interface PSIToken
- ($0AC6E346AE4835514AAA8AC86D8F4844)range;
- (BOOL)isEqual:(id)a3;
- (PSIToken)initWithString:(__CFString *)a3 range:(id)a4;
- (void)dealloc;
@end

@implementation PSIToken

- ($0AC6E346AE4835514AAA8AC86D8F4844)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.var1 = length;
  result.var0 = location;
  return result;
}

- (void)dealloc
{
  [(PSIToken *)self setString:0];
  v3.receiver = self;
  v3.super_class = PSIToken;
  [(PSIToken *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  location = self->_range.location;
  if (location == [v4 range])
  {
    length = self->_range.length;
    [v4 range];
    v8 = length == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PSIToken)initWithString:(__CFString *)a3 range:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9.receiver = self;
  v9.super_class = PSIToken;
  v7 = [(PSIToken *)&v9 init];
  if (v7)
  {
    v7->_string = CFRetain(a3);
    v7->_range.location = var0;
    v7->_range.length = var1;
  }

  return v7;
}

@end