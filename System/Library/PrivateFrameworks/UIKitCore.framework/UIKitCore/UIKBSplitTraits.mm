@interface UIKBSplitTraits
+ (id)traitsWithLeftFrame:(CGRect)frame rightFrame:(CGRect)rightFrame corners:(unint64_t)corners;
- (CGRect)leftFrame;
- (CGRect)rightFrame;
- (UIKBSplitTraits)initWithLeftFrame:(CGRect)frame rightFrame:(CGRect)rightFrame corners:(unint64_t)corners;
@end

@implementation UIKBSplitTraits

- (UIKBSplitTraits)initWithLeftFrame:(CGRect)frame rightFrame:(CGRect)rightFrame corners:(unint64_t)corners
{
  height = rightFrame.size.height;
  width = rightFrame.size.width;
  y = rightFrame.origin.y;
  x = rightFrame.origin.x;
  v10 = frame.size.height;
  v11 = frame.size.width;
  v12 = frame.origin.y;
  v13 = frame.origin.x;
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
    v14->_corners = corners;
    v16 = v14;
  }

  return v15;
}

+ (id)traitsWithLeftFrame:(CGRect)frame rightFrame:(CGRect)rightFrame corners:(unint64_t)corners
{
  v5 = [[UIKBSplitTraits alloc] initWithLeftFrame:corners rightFrame:frame.origin.x corners:frame.origin.y, frame.size.width, frame.size.height, rightFrame.origin.x, rightFrame.origin.y, rightFrame.size.width, rightFrame.size.height];

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