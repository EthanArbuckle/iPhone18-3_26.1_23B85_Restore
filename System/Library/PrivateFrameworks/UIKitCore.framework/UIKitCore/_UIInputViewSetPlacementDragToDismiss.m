@interface _UIInputViewSetPlacementDragToDismiss
+ (id)placementWithOffset:(double)a3 dismissKeyboardOnly:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (_UIInputViewSetPlacementDragToDismiss)initWithCoder:(id)a3;
- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIInputViewSetPlacementDragToDismiss

+ (id)placementWithOffset:(double)a3 dismissKeyboardOnly:(BOOL)a4
{
  v4 = a4;
  v6 = [a1 placement];
  [v6 setOffset:a3];
  [v6 setDismissKeyboardOnly:v4];

  return v6;
}

- (_UIInputViewSetPlacementDragToDismiss)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIInputViewSetPlacementDragToDismiss;
  v5 = [(UIInputViewSetPlacement *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeFloatForKey:@"Offset"];
    v5->_offset = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIInputViewSetPlacementDragToDismiss;
  v4 = a3;
  [(UIInputViewSetPlacement *)&v6 encodeWithCoder:v4];
  offset = self->_offset;
  *&offset = offset;
  [v4 encodeFloat:@"Offset" forKey:{offset, v6.receiver, v6.super_class}];
}

- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  v8 = a3;
  v29.receiver = self;
  v29.super_class = _UIInputViewSetPlacementDragToDismiss;
  v9 = [(UIInputViewSetPlacement *)&v29 verticalConstraintForInputViewSet:v8 hostView:a4 containerView:a5];
  v10 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  [v10 intersectionHeightForWindowScene:0];
  v12 = v11;
  v13 = 0.0;
  v14 = 0.0;
  if (![(_UIInputViewSetPlacementDragToDismiss *)self dismissKeyboardOnly])
  {
    [v10 heightForRemoteIAVPlaceholderIfNecessary];
    v14 = v15;
  }

  v16 = [v8 inputView];
  if (v16)
  {
    v17 = [v8 inputView];
    [v17 bounds];
    v13 = v18;
  }

  v19 = [v8 inputAssistantView];
  v20 = 0.0;
  v21 = 0.0;
  if (v19)
  {
    v22 = [v8 inputAssistantView];
    [v22 bounds];
    v21 = v23;
  }

  if (![(_UIInputViewSetPlacementDragToDismiss *)self dismissKeyboardOnly])
  {
    v24 = [v8 inputAccessoryView];
    if (v24)
    {
      v25 = [v8 inputAccessoryView];
      [v25 bounds];
      v20 = v26;
    }
  }

  [(_UIInputViewSetPlacementDragToDismiss *)self offset];
  [v9 setConstant:v27 - (v13 + v21 + v20 - (v12 + v14))];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIInputViewSetPlacementDragToDismiss;
  if ([(UIInputViewSetPlacement *)&v7 isEqual:v4])
  {
    v5 = self->_offset == v4[6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end