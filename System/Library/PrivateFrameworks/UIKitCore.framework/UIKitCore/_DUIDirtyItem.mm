@interface _DUIDirtyItem
- (_DUIDirtyItem)initWithCoder:(id)a3;
@end

@implementation _DUIDirtyItem

- (_DUIDirtyItem)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _DUIDirtyItem;
  v5 = [(_DUIDirtyItem *)&v7 init];
  if (v5)
  {
    v5->_index = [v4 decodeIntegerForKey:@"index"];
  }

  return v5;
}

@end