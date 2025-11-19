@interface UIInputViewSetPlacementCompactAssistantOnScreen
- (CGPoint)offset;
- (id)applicatorInfoForOwner:(id)a3;
- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (id)widthConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
@end

@implementation UIInputViewSetPlacementCompactAssistantOnScreen

- (id)applicatorInfoForOwner:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementCompactAssistantOnScreen;
  v4 = [(UIInputViewSetPlacement *)&v7 applicatorInfoForOwner:a3];
  v5 = [v3 dictionaryWithDictionary:v4];

  [v5 setValue:MEMORY[0x1E695E118] forKey:@"IsCompact"];

  return v5;
}

- (id)widthConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:a4 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:75.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (a4)
  {
    v7 = MEMORY[0x1E69977A0];
    v8 = a5;
    v9 = a4;
    [(UIInputViewSetPlacementCompactAssistantOnScreen *)self offset];
    v11 = [v7 constraintWithItem:v9 attribute:9 relatedBy:0 toItem:v8 attribute:9 multiplier:1.0 constant:v10];
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