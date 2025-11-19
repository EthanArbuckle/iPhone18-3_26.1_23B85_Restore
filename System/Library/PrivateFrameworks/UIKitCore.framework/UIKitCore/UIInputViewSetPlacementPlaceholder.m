@interface UIInputViewSetPlacementPlaceholder
+ (id)placementWithHeight:(double)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4;
- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
@end

@implementation UIInputViewSetPlacementPlaceholder

+ (id)placementWithHeight:(double)a3
{
  v4 = objc_alloc_init(UIInputViewSetPlacementPlaceholder);
  if (v4)
  {
    v4->_height = a3;
  }

  return v4;
}

- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:a4 attribute:3 relatedBy:0 toItem:a5 attribute:4 multiplier:1.0 constant:-self->_height];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = UIInputViewSetPlacementPlaceholder;
  [(UIInputViewSetPlacement *)&v9 remoteIntrinsicContentSizeForInputViewInSet:a3 includingIAV:a4];
  height = self->_height;
  result.size.height = height;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementPlaceholder;
  if ([(UIInputViewSetPlacement *)&v7 isEqual:v4])
  {
    v5 = v4[5] == self->_height;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end