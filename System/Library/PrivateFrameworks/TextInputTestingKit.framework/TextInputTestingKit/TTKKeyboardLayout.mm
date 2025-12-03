@interface TTKKeyboardLayout
- (TTKKeyboardLayout)initWithUIKBTree:(id)tree;
@end

@implementation TTKKeyboardLayout

- (TTKKeyboardLayout)initWithUIKBTree:(id)tree
{
  treeCopy = tree;
  v9.receiver = self;
  v9.super_class = TTKKeyboardLayout;
  v6 = [(TTKKeyboardLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layout, tree);
  }

  return v7;
}

@end