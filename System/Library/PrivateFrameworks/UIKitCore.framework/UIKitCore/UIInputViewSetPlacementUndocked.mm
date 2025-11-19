@interface UIInputViewSetPlacementUndocked
+ (CGPoint)computeOffsetForOffset:(CGPoint)a3 withSize:(CGSize)a4 chromeBuffer:(UIEdgeInsets)a5 onScreenSize:(CGSize)a6;
+ (id)infoWithPoint:(CGPoint)a3;
+ (id)placementWithUndockedOffset:(CGPoint)a3 chromeBuffer:(UIEdgeInsets)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)normalizedOffset;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4;
- (UIEdgeInsets)chromeBuffer;
- (UIInputViewSetPlacementUndocked)initWithCoder:(id)a3;
- (double)heightOfInputViews:(id)a3;
- (id)applicatorInfoForOwner:(id)a3;
- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setOffset:(CGPoint)a3;
@end

@implementation UIInputViewSetPlacementUndocked

+ (id)infoWithPoint:(CGPoint)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"Origin";
  v3 = [MEMORY[0x1E696B098] valueWithPoint:{a3.x, a3.y}];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)applicatorInfoForOwner:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v24.receiver = self;
  v24.super_class = UIInputViewSetPlacementUndocked;
  v5 = a3;
  v6 = [(UIInputViewSetPlacement *)&v24 applicatorInfoForOwner:v5];
  v7 = [v4 dictionaryWithDictionary:v6];

  v8 = [v5 inputViewSet];
  [(UIInputViewSetPlacementUndocked *)self heightOfInputViews:v8];
  v10 = v9;

  v11 = [v5 containerView];

  [v11 bounds];
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

+ (id)placementWithUndockedOffset:(CGPoint)a3 chromeBuffer:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  y = a3.y;
  x = a3.x;
  v10 = objc_alloc_init(a1);
  [v10 setChromeBuffer:{top, left, bottom, right}];
  [v10 setOffset:{x, y}];

  return v10;
}

- (UIInputViewSetPlacementUndocked)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = UIInputViewSetPlacementUndocked;
  v5 = [(UIInputViewSetPlacement *)&v17 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    p_normalizedOffset = &v5->_normalizedOffset;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Offset"];
    [v8 CGPointValue];
    *&p_normalizedOffset->x = v9;
    v6->_normalizedOffset.y = v10;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Chrome"];
    [v11 UIEdgeInsetsValue];
    v6->_chromeBuffer.top = v12;
    v6->_chromeBuffer.left = v13;
    v6->_chromeBuffer.bottom = v14;
    v6->_chromeBuffer.right = v15;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementUndocked;
  v4 = a3;
  [(UIInputViewSetPlacement *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696B098] valueWithCGPoint:{self->_normalizedOffset.x, self->_normalizedOffset.y, v7.receiver, v7.super_class}];
  [v4 encodeObject:v5 forKey:@"Offset"];

  v6 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{self->_chromeBuffer.top, self->_chromeBuffer.left, self->_chromeBuffer.bottom, self->_chromeBuffer.right}];
  [v4 encodeObject:v6 forKey:@"Chrome"];
}

- (void)setOffset:(CGPoint)a3
{
  v3 = fmax(fabs(a3.x), 0.0);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  v4 = fmax(fabs(a3.y), 0.0);
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  [(UIInputViewSetPlacementUndocked *)self setNormalizedOffset:v3, v4];
}

+ (CGPoint)computeOffsetForOffset:(CGPoint)a3 withSize:(CGSize)a4 chromeBuffer:(UIEdgeInsets)a5 onScreenSize:(CGSize)a6
{
  v6 = 0.0;
  if (v12 != 0.0)
  {
    v7 = a4.height + a5.top;
    v8 = v12;
    v6 = fminf(v7, v8) / v12;
  }

  v9 = 1.0 - v6;
  if (a3.y >= v9)
  {
    a3.y = v9;
  }

  v10 = v12 * fabs(a3.y);
  v11 = 0.0;
  result.y = v10;
  result.x = v11;
  return result;
}

- (double)heightOfInputViews:(id)a3
{
  v3 = a3;
  [v3 inputViewBounds];
  v5 = v4;
  [v3 inputAssistantViewBounds];
  v7 = v5 + v6;
  [v3 inputAccessoryViewBounds];
  v9 = v8;

  return v7 + v9;
}

- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  v8 = a5;
  if (a4)
  {
    v9 = a4;
    [(UIInputViewSetPlacementUndocked *)self heightOfInputViews:a3];
    v11 = v10;
    [v8 bounds];
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

    v21 = [MEMORY[0x1E69977A0] constraintWithItem:v8 attribute:4 relatedBy:0 toItem:v9 attribute:4 multiplier:1.0 constant:v13 * v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UIInputViewSetPlacementUndocked;
  if ([(UIInputViewSetPlacement *)&v13 isEqual:v4])
  {
    [(UIInputViewSetPlacementUndocked *)self normalizedOffset];
    v6 = v5;
    v8 = v7;
    [v4 normalizedOffset];
    v11 = v8 == v10 && v6 == v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = UIInputViewSetPlacementUndocked;
  [(UIInputViewSetPlacement *)&v8 remoteIntrinsicContentSizeForInputViewInSet:a3 includingIAV:a4];
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