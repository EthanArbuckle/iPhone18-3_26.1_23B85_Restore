@interface _UITypeSelectItem
- (_UITypeSelectItem)initWithTypeSelectString:(id)a3;
@end

@implementation _UITypeSelectItem

- (_UITypeSelectItem)initWithTypeSelectString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UITypeSelectItem;
  v6 = [(_UITypeSelectItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, a3);
  }

  return v7;
}

@end