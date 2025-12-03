@interface UIInputViewSetPlacementWrapper
+ (id)placementWithPlacement:(id)placement;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transform;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v;
- (UIInputViewSetPlacementWrapper)initWithCoder:(id)coder;
- (id)keyboardState;
- (void)encodeWithCoder:(id)coder;
- (void)setDirty;
@end

@implementation UIInputViewSetPlacementWrapper

+ (id)placementWithPlacement:(id)placement
{
  placementCopy = placement;
  v6 = objc_alloc_init(self);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 5, placement);
  }

  return v7;
}

- (UIInputViewSetPlacementWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIInputViewSetPlacementWrapper;
  v5 = [(UIInputViewSetPlacement *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Actual"];
    actualPlacement = v5->_actualPlacement;
    v5->_actualPlacement = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIInputViewSetPlacementWrapper;
  coderCopy = coder;
  [(UIInputViewSetPlacement *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_actualPlacement forKey:{@"Actual", v5.receiver, v5.super_class}];
}

- (void)setDirty
{
  v3.receiver = self;
  v3.super_class = UIInputViewSetPlacementWrapper;
  [(UIInputViewSetPlacement *)&v3 setDirty];
  [(UIInputViewSetPlacement *)self->_actualPlacement setDirty];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementWrapper;
  if ([(UIInputViewSetPlacement *)&v7 isEqual:equalCopy])
  {
    v5 = [(UIInputViewSetPlacement *)self->_actualPlacement isEqual:equalCopy[5]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v
{
  [(UIInputViewSetPlacement *)self->_actualPlacement remoteIntrinsicContentSizeForInputViewInSet:set includingIAV:v];
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
    keyboardState = [(UIInputViewSetPlacement *)self->_actualPlacement keyboardState];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UIInputViewSetPlacementWrapper;
    keyboardState = [(UIInputViewSetPlacement *)&v4 keyboardState];
  }

  return keyboardState;
}

@end