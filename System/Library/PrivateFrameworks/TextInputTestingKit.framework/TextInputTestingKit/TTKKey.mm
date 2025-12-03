@interface TTKKey
- (CGPoint)center;
- (CGRect)frame;
- (NSString)string;
- (TTKKey)initWithUIKBTree:(id)tree layoutUtils:(id)utils;
- (id)description;
@end

@implementation TTKKey

- (CGPoint)center
{
  [(UIKBTree *)self->_key frame];
  v4 = v3;
  [(UIKBTree *)self->_key frame];
  v6 = v4 + v5 * 0.5;
  [(UIKBTree *)self->_key frame];
  v8 = v7;
  [(UIKBTree *)self->_key frame];
  v10 = v8 + v9 * 0.5;
  v11 = v6;
  result.y = v10;
  result.x = v11;
  return result;
}

- (CGRect)frame
{
  [(UIKBTree *)self->_key frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSString)string
{
  representedString = [(UIKBTree *)self->_key representedString];
  layoutUtils = self->_layoutUtils;
  if (layoutUtils)
  {
    v5 = [(ACTKeyboardLayoutUtils *)layoutUtils representedStringForKey:self->_key shifted:0];
  }

  else
  {
    v5 = representedString;
  }

  v6 = v5;

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  string = [(TTKKey *)self string];
  [(UIKBTree *)self->_key frame];
  v7 = v6;
  [(UIKBTree *)self->_key frame];
  v9 = v8;
  [(UIKBTree *)self->_key frame];
  v11 = v10;
  [(UIKBTree *)self->_key frame];
  v13 = [v3 stringWithFormat:@"<%@: %p '%@' @ {{%g, %g}, {%g, %g}}>", v4, self, string, v7, v9, v11, v12];

  return v13;
}

- (TTKKey)initWithUIKBTree:(id)tree layoutUtils:(id)utils
{
  treeCopy = tree;
  v10.receiver = self;
  v10.super_class = TTKKey;
  v7 = [(TTKKey *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_key, tree);
  }

  return v8;
}

@end