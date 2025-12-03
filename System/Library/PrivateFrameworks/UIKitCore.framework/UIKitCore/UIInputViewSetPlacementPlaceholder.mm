@interface UIInputViewSetPlacementPlaceholder
+ (id)placementWithHeight:(double)height;
- (BOOL)isEqual:(id)equal;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v;
- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
@end

@implementation UIInputViewSetPlacementPlaceholder

+ (id)placementWithHeight:(double)height
{
  v4 = objc_alloc_init(UIInputViewSetPlacementPlaceholder);
  if (v4)
  {
    v4->_height = height;
  }

  return v4;
}

- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:view attribute:3 relatedBy:0 toItem:containerView attribute:4 multiplier:1.0 constant:-self->_height];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v
{
  v9.receiver = self;
  v9.super_class = UIInputViewSetPlacementPlaceholder;
  [(UIInputViewSetPlacement *)&v9 remoteIntrinsicContentSizeForInputViewInSet:set includingIAV:v];
  height = self->_height;
  result.size.height = height;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementPlaceholder;
  if ([(UIInputViewSetPlacement *)&v7 isEqual:equalCopy])
  {
    v5 = equalCopy[5] == self->_height;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end