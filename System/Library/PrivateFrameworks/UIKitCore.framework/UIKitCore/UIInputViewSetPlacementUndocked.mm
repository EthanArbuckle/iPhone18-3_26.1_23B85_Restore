@interface UIInputViewSetPlacementUndocked
+ (CGPoint)computeOffsetForOffset:(CGPoint)offset withSize:(CGSize)size chromeBuffer:(UIEdgeInsets)buffer onScreenSize:(CGSize)screenSize;
+ (id)infoWithPoint:(CGPoint)point;
+ (id)placementWithUndockedOffset:(CGPoint)offset chromeBuffer:(UIEdgeInsets)buffer;
- (BOOL)isEqual:(id)equal;
- (CGPoint)normalizedOffset;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v;
- (UIEdgeInsets)chromeBuffer;
- (UIInputViewSetPlacementUndocked)initWithCoder:(id)coder;
- (double)heightOfInputViews:(id)views;
- (id)applicatorInfoForOwner:(id)owner;
- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (void)encodeWithCoder:(id)coder;
- (void)setOffset:(CGPoint)offset;
@end

@implementation UIInputViewSetPlacementUndocked

+ (id)infoWithPoint:(CGPoint)point
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"Origin";
  v3 = [MEMORY[0x1E696B098] valueWithPoint:{point.x, point.y}];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)applicatorInfoForOwner:(id)owner
{
  v4 = MEMORY[0x1E695DF90];
  v24.receiver = self;
  v24.super_class = UIInputViewSetPlacementUndocked;
  ownerCopy = owner;
  v6 = [(UIInputViewSetPlacement *)&v24 applicatorInfoForOwner:ownerCopy];
  v7 = [v4 dictionaryWithDictionary:v6];

  inputViewSet = [ownerCopy inputViewSet];
  [(UIInputViewSetPlacementUndocked *)self heightOfInputViews:inputViewSet];
  v10 = v9;

  containerView = [ownerCopy containerView];

  [containerView bounds];
  v13 = v12;

  v14 = 0.0;
  if (v13 != 0.0)
  {
    [(UIInputViewSetPlacementUndocked *)self chromeBuffer];
    v16 = v10 + v15;
    [(UIInputViewSetPlacement *)self extendedHeight];
    *&v17 = v17 + v16;
    v18 = v13;
    v14 = fminf(*&v17, v18) / v13;
  }

  [(UIInputViewSetPlacementUndocked *)self normalizedOffset];
  v20 = 1.0 - v14;
  if (v19 < 1.0 - v14)
  {
    v20 = v19;
  }

  v23[0] = 0;
  *&v23[1] = v13 * v20;
  v21 = [MEMORY[0x1E696B098] valueWithBytes:v23 objCType:"{CGPoint=dd}"];
  [v7 setValue:v21 forKey:@"Origin"];

  return v7;
}

+ (id)placementWithUndockedOffset:(CGPoint)offset chromeBuffer:(UIEdgeInsets)buffer
{
  right = buffer.right;
  bottom = buffer.bottom;
  left = buffer.left;
  top = buffer.top;
  y = offset.y;
  x = offset.x;
  v10 = objc_alloc_init(self);
  [v10 setChromeBuffer:{top, left, bottom, right}];
  [v10 setOffset:{x, y}];

  return v10;
}

- (UIInputViewSetPlacementUndocked)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = UIInputViewSetPlacementUndocked;
  v5 = [(UIInputViewSetPlacement *)&v17 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    p_normalizedOffset = &v5->_normalizedOffset;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Offset"];
    [v8 CGPointValue];
    *&p_normalizedOffset->x = v9;
    v6->_normalizedOffset.y = v10;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Chrome"];
    [v11 UIEdgeInsetsValue];
    v6->_chromeBuffer.top = v12;
    v6->_chromeBuffer.left = v13;
    v6->_chromeBuffer.bottom = v14;
    v6->_chromeBuffer.right = v15;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementUndocked;
  coderCopy = coder;
  [(UIInputViewSetPlacement *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696B098] valueWithCGPoint:{self->_normalizedOffset.x, self->_normalizedOffset.y, v7.receiver, v7.super_class}];
  [coderCopy encodeObject:v5 forKey:@"Offset"];

  v6 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{self->_chromeBuffer.top, self->_chromeBuffer.left, self->_chromeBuffer.bottom, self->_chromeBuffer.right}];
  [coderCopy encodeObject:v6 forKey:@"Chrome"];
}

- (void)setOffset:(CGPoint)offset
{
  v3 = fmax(fabs(offset.x), 0.0);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  v4 = fmax(fabs(offset.y), 0.0);
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  [(UIInputViewSetPlacementUndocked *)self setNormalizedOffset:v3, v4];
}

+ (CGPoint)computeOffsetForOffset:(CGPoint)offset withSize:(CGSize)size chromeBuffer:(UIEdgeInsets)buffer onScreenSize:(CGSize)screenSize
{
  v6 = 0.0;
  if (v12 != 0.0)
  {
    v7 = size.height + buffer.top;
    v8 = v12;
    v6 = fminf(v7, v8) / v12;
  }

  v9 = 1.0 - v6;
  if (offset.y >= v9)
  {
    offset.y = v9;
  }

  v10 = v12 * fabs(offset.y);
  v11 = 0.0;
  result.y = v10;
  result.x = v11;
  return result;
}

- (double)heightOfInputViews:(id)views
{
  viewsCopy = views;
  [viewsCopy inputViewBounds];
  v5 = v4;
  [viewsCopy inputAssistantViewBounds];
  v7 = v5 + v6;
  [viewsCopy inputAccessoryViewBounds];
  v9 = v8;

  return v7 + v9;
}

- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  containerViewCopy = containerView;
  if (view)
  {
    viewCopy = view;
    [(UIInputViewSetPlacementUndocked *)self heightOfInputViews:set];
    v11 = v10;
    [containerViewCopy bounds];
    v13 = v12;
    v14 = 0.0;
    if (v12 != 0.0)
    {
      [(UIInputViewSetPlacementUndocked *)self chromeBuffer];
      v16 = v11 + v15;
      [(UIInputViewSetPlacement *)self extendedHeight];
      *&v17 = v17 + v16;
      v18 = v13;
      v14 = fminf(*&v17, v18) / v13;
    }

    [(UIInputViewSetPlacementUndocked *)self normalizedOffset];
    v20 = 1.0 - v14;
    if (v19 < 1.0 - v14)
    {
      v20 = v19;
    }

    v21 = [MEMORY[0x1E69977A0] constraintWithItem:containerViewCopy attribute:4 relatedBy:0 toItem:viewCopy attribute:4 multiplier:1.0 constant:v13 * v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = UIInputViewSetPlacementUndocked;
  if ([(UIInputViewSetPlacement *)&v13 isEqual:equalCopy])
  {
    [(UIInputViewSetPlacementUndocked *)self normalizedOffset];
    v6 = v5;
    v8 = v7;
    [equalCopy normalizedOffset];
    v11 = v8 == v10 && v6 == v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v
{
  v8.receiver = self;
  v8.super_class = UIInputViewSetPlacementUndocked;
  [(UIInputViewSetPlacement *)&v8 remoteIntrinsicContentSizeForInputViewInSet:set includingIAV:v];
  v7 = 1.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v7;
  result.origin.x = v4;
  return result;
}

- (UIEdgeInsets)chromeBuffer
{
  top = self->_chromeBuffer.top;
  left = self->_chromeBuffer.left;
  bottom = self->_chromeBuffer.bottom;
  right = self->_chromeBuffer.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)normalizedOffset
{
  x = self->_normalizedOffset.x;
  y = self->_normalizedOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end