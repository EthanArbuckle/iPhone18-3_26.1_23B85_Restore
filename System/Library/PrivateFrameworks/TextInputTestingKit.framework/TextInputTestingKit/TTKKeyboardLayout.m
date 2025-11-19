@interface TTKKeyboardLayout
- (TTKKeyboardLayout)initWithUIKBTree:(id)a3;
@end

@implementation TTKKeyboardLayout

- (TTKKeyboardLayout)initWithUIKBTree:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TTKKeyboardLayout;
  v6 = [(TTKKeyboardLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layout, a3);
  }

  return v7;
}

@end