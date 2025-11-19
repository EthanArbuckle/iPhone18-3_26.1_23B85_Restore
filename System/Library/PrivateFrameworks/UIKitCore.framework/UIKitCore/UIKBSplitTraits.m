@interface UIKBSplitTraits
+ (id)traitsWithLeftFrame:(CGRect)a3 rightFrame:(CGRect)a4 corners:(unint64_t)a5;
- (CGRect)leftFrame;
- (CGRect)rightFrame;
- (UIKBSplitTraits)initWithLeftFrame:(CGRect)a3 rightFrame:(CGRect)a4 corners:(unint64_t)a5;
@end

@implementation UIKBSplitTraits

- (UIKBSplitTraits)initWithLeftFrame:(CGRect)a3 rightFrame:(CGRect)a4 corners:(unint64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v18.receiver = self;
  v18.super_class = UIKBSplitTraits;
  v14 = [(UIKBSplitTraits *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_rightFrame.origin.x = x;
    v14->_rightFrame.origin.y = y;
    v14->_rightFrame.size.width = width;
    v14->_rightFrame.size.height = height;
    v14->_leftFrame.origin.x = v13;
    v14->_leftFrame.origin.y = v12;
    v14->_leftFrame.size.width = v11;
    v14->_leftFrame.size.height = v10;
    v14->_corners = a5;
    v16 = v14;
  }

  return v15;
}

+ (id)traitsWithLeftFrame:(CGRect)a3 rightFrame:(CGRect)a4 corners:(unint64_t)a5
{
  v5 = [[UIKBSplitTraits alloc] initWithLeftFrame:a5 rightFrame:a3.origin.x corners:a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];

  return v5;
}

- (CGRect)leftFrame
{
  x = self->_leftFrame.origin.x;
  y = self->_leftFrame.origin.y;
  width = self->_leftFrame.size.width;
  height = self->_leftFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)rightFrame
{
  x = self->_rightFrame.origin.x;
  y = self->_rightFrame.origin.y;
  width = self->_rightFrame.size.width;
  height = self->_rightFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end