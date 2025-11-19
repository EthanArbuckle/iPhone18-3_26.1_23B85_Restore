@interface UIInputViewSetPlacementWrapper
+ (id)placementWithPlacement:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)transform;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4;
- (UIInputViewSetPlacementWrapper)initWithCoder:(id)a3;
- (id)keyboardState;
- (void)encodeWithCoder:(id)a3;
- (void)setDirty;
@end

@implementation UIInputViewSetPlacementWrapper

+ (id)placementWithPlacement:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(a1);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 5, a3);
  }

  return v7;
}

- (UIInputViewSetPlacementWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIInputViewSetPlacementWrapper;
  v5 = [(UIInputViewSetPlacement *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Actual"];
    actualPlacement = v5->_actualPlacement;
    v5->_actualPlacement = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIInputViewSetPlacementWrapper;
  v4 = a3;
  [(UIInputViewSetPlacement *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_actualPlacement forKey:{@"Actual", v5.receiver, v5.super_class}];
}

- (void)setDirty
{
  v3.receiver = self;
  v3.super_class = UIInputViewSetPlacementWrapper;
  [(UIInputViewSetPlacement *)&v3 setDirty];
  [(UIInputViewSetPlacement *)self->_actualPlacement setDirty];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementWrapper;
  if ([(UIInputViewSetPlacement *)&v7 isEqual:v4])
  {
    v5 = [(UIInputViewSetPlacement *)self->_actualPlacement isEqual:v4[5]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4
{
  [(UIInputViewSetPlacement *)self->_actualPlacement remoteIntrinsicContentSizeForInputViewInSet:a3 includingIAV:a4];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGAffineTransform)transform
{
  result = self->_actualPlacement;
  if (result)
  {
    return [(CGAffineTransform *)result transform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (id)keyboardState
{
  if (self->_actualPlacement)
  {
    v2 = [(UIInputViewSetPlacement *)self->_actualPlacement keyboardState];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UIInputViewSetPlacementWrapper;
    v2 = [(UIInputViewSetPlacement *)&v4 keyboardState];
  }

  return v2;
}

@end