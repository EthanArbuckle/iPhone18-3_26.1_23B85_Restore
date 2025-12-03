@interface _UIInputViewSetPlacementDragToDismiss
+ (id)placementWithOffset:(double)offset dismissKeyboardOnly:(BOOL)only;
- (BOOL)isEqual:(id)equal;
- (_UIInputViewSetPlacementDragToDismiss)initWithCoder:(id)coder;
- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIInputViewSetPlacementDragToDismiss

+ (id)placementWithOffset:(double)offset dismissKeyboardOnly:(BOOL)only
{
  onlyCopy = only;
  placement = [self placement];
  [placement setOffset:offset];
  [placement setDismissKeyboardOnly:onlyCopy];

  return placement;
}

- (_UIInputViewSetPlacementDragToDismiss)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _UIInputViewSetPlacementDragToDismiss;
  v5 = [(UIInputViewSetPlacement *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"Offset"];
    v5->_offset = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIInputViewSetPlacementDragToDismiss;
  coderCopy = coder;
  [(UIInputViewSetPlacement *)&v6 encodeWithCoder:coderCopy];
  offset = self->_offset;
  *&offset = offset;
  [coderCopy encodeFloat:@"Offset" forKey:{offset, v6.receiver, v6.super_class}];
}

- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  setCopy = set;
  v29.receiver = self;
  v29.super_class = _UIInputViewSetPlacementDragToDismiss;
  v9 = [(UIInputViewSetPlacement *)&v29 verticalConstraintForInputViewSet:setCopy hostView:view containerView:containerView];
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

  inputView = [setCopy inputView];
  if (inputView)
  {
    inputView2 = [setCopy inputView];
    [inputView2 bounds];
    v13 = v18;
  }

  inputAssistantView = [setCopy inputAssistantView];
  v20 = 0.0;
  v21 = 0.0;
  if (inputAssistantView)
  {
    inputAssistantView2 = [setCopy inputAssistantView];
    [inputAssistantView2 bounds];
    v21 = v23;
  }

  if (![(_UIInputViewSetPlacementDragToDismiss *)self dismissKeyboardOnly])
  {
    inputAccessoryView = [setCopy inputAccessoryView];
    if (inputAccessoryView)
    {
      inputAccessoryView2 = [setCopy inputAccessoryView];
      [inputAccessoryView2 bounds];
      v20 = v26;
    }
  }

  [(_UIInputViewSetPlacementDragToDismiss *)self offset];
  [v9 setConstant:v27 - (v13 + v21 + v20 - (v12 + v14))];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIInputViewSetPlacementDragToDismiss;
  if ([(UIInputViewSetPlacement *)&v7 isEqual:equalCopy])
  {
    v5 = self->_offset == equalCopy[6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end