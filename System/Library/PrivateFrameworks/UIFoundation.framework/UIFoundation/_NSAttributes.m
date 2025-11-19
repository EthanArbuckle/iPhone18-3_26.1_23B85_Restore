@interface _NSAttributes
- (_NSAttributes)initWithAttributes:(id)a3 range:(_NSRange)a4;
- (void)dealloc;
@end

@implementation _NSAttributes

- (_NSAttributes)initWithAttributes:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9.receiver = self;
  v9.super_class = _NSAttributes;
  v7 = [(_NSAttributes *)&v9 init];
  if (v7)
  {
    v7->_attributes = a3;
    v7->_range.location = location;
    v7->_range.length = length;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSAttributes;
  [(_NSAttributes *)&v3 dealloc];
}

@end