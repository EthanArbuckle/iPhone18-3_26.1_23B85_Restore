@interface PSIToken
- ($0AC6E346AE4835514AAA8AC86D8F4844)range;
- (BOOL)isEqual:(id)equal;
- (PSIToken)initWithString:(__CFString *)string range:(id)range;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  location = self->_range.location;
  if (location == [equalCopy range])
  {
    length = self->_range.length;
    [equalCopy range];
    v8 = length == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PSIToken)initWithString:(__CFString *)string range:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v9.receiver = self;
  v9.super_class = PSIToken;
  v7 = [(PSIToken *)&v9 init];
  if (v7)
  {
    v7->_string = CFRetain(string);
    v7->_range.location = var0;
    v7->_range.length = var1;
  }

  return v7;
}

@end