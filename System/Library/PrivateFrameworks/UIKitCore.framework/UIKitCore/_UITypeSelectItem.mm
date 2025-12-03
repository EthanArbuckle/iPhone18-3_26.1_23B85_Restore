@interface _UITypeSelectItem
- (_UITypeSelectItem)initWithTypeSelectString:(id)string;
@end

@implementation _UITypeSelectItem

- (_UITypeSelectItem)initWithTypeSelectString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = _UITypeSelectItem;
  v6 = [(_UITypeSelectItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, string);
  }

  return v7;
}

@end