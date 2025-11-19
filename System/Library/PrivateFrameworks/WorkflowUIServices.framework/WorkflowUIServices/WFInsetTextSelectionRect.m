@interface WFInsetTextSelectionRect
- (BOOL)containsEnd;
- (BOOL)containsStart;
- (BOOL)isVertical;
- (CGRect)rect;
- (UIEdgeInsets)insets;
- (WFInsetTextSelectionRect)initWithSelectionRect:(id)a3 insets:(UIEdgeInsets)a4;
- (int64_t)writingDirection;
@end

@implementation WFInsetTextSelectionRect

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)isVertical
{
  v2 = [(WFInsetTextSelectionRect *)self selectionRect];
  v3 = [v2 isVertical];

  return v3;
}

- (BOOL)containsEnd
{
  v2 = [(WFInsetTextSelectionRect *)self selectionRect];
  v3 = [v2 containsEnd];

  return v3;
}

- (BOOL)containsStart
{
  v2 = [(WFInsetTextSelectionRect *)self selectionRect];
  v3 = [v2 containsStart];

  return v3;
}

- (int64_t)writingDirection
{
  v2 = [(WFInsetTextSelectionRect *)self selectionRect];
  v3 = [v2 writingDirection];

  return v3;
}

- (CGRect)rect
{
  v3 = [(WFInsetTextSelectionRect *)self selectionRect];
  [v3 rect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(WFInsetTextSelectionRect *)self insets];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (WFInsetTextSelectionRect)initWithSelectionRect:(id)a3 insets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = WFInsetTextSelectionRect;
  v11 = [(WFInsetTextSelectionRect *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_selectionRect, a3);
    v12->_insets.top = top;
    v12->_insets.left = left;
    v12->_insets.bottom = bottom;
    v12->_insets.right = right;
    v13 = v12;
  }

  return v12;
}

@end