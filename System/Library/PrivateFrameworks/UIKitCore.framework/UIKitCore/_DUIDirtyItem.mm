@interface _DUIDirtyItem
- (_DUIDirtyItem)initWithCoder:(id)coder;
@end

@implementation _DUIDirtyItem

- (_DUIDirtyItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _DUIDirtyItem;
  v5 = [(_DUIDirtyItem *)&v7 init];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"index"];
  }

  return v5;
}

@end