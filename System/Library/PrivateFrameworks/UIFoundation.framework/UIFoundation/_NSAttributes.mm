@interface _NSAttributes
- (_NSAttributes)initWithAttributes:(id)attributes range:(_NSRange)range;
- (void)dealloc;
@end

@implementation _NSAttributes

- (_NSAttributes)initWithAttributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9.receiver = self;
  v9.super_class = _NSAttributes;
  v7 = [(_NSAttributes *)&v9 init];
  if (v7)
  {
    v7->_attributes = attributes;
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