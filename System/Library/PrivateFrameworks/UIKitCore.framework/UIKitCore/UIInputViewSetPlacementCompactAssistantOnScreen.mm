@interface UIInputViewSetPlacementCompactAssistantOnScreen
- (CGPoint)offset;
- (id)applicatorInfoForOwner:(id)owner;
- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (id)widthConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
@end

@implementation UIInputViewSetPlacementCompactAssistantOnScreen

- (id)applicatorInfoForOwner:(id)owner
{
  v3 = MEMORY[0x1E695DF90];
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementCompactAssistantOnScreen;
  v4 = [(UIInputViewSetPlacement *)&v7 applicatorInfoForOwner:owner];
  v5 = [v3 dictionaryWithDictionary:v4];

  [v5 setValue:MEMORY[0x1E695E118] forKey:@"IsCompact"];

  return v5;
}

- (id)widthConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:view attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:75.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    v7 = MEMORY[0x1E69977A0];
    containerViewCopy = containerView;
    viewCopy = view;
    [(UIInputViewSetPlacementCompactAssistantOnScreen *)self offset];
    v11 = [v7 constraintWithItem:viewCopy attribute:9 relatedBy:0 toItem:containerViewCopy attribute:9 multiplier:1.0 constant:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end