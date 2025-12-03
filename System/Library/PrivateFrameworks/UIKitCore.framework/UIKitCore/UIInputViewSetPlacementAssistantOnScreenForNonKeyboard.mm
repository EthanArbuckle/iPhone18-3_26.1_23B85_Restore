@interface UIInputViewSetPlacementAssistantOnScreenForNonKeyboard
- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (id)widthConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
@end

@implementation UIInputViewSetPlacementAssistantOnScreenForNonKeyboard

- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:view attribute:1 relatedBy:0 toItem:containerView attribute:1 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  setCopy = set;
  viewCopy = view;
  containerViewCopy = containerView;
  if (viewCopy)
  {
    if ([setCopy isInputViewPlaceholder])
    {
      v23.receiver = self;
      v23.super_class = UIInputViewSetPlacementAssistantOnScreenForNonKeyboard;
      inputAccessoryView = [(UIInputViewSetPlacementWrapper *)&v23 verticalConstraintForInputViewSet:setCopy hostView:viewCopy containerView:containerViewCopy];
      goto LABEL_12;
    }

    inputAssistantView = [setCopy inputAssistantView];
    if (inputAssistantView)
    {
      v13 = inputAssistantView;
      inputAssistantView2 = [setCopy inputAssistantView];
      v15 = [inputAssistantView2 isDescendantOfView:containerViewCopy];

      if (v15)
      {
        bottomAnchor = [containerViewCopy bottomAnchor];
        inputAssistantView3 = [setCopy inputAssistantView];
LABEL_10:
        v20 = inputAssistantView3;
        bottomAnchor2 = [inputAssistantView3 bottomAnchor];
        inputAccessoryView = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];

        goto LABEL_12;
      }
    }

    inputAccessoryView = [setCopy inputAccessoryView];
    if (!inputAccessoryView)
    {
      goto LABEL_12;
    }

    inputAccessoryView2 = [setCopy inputAccessoryView];
    v19 = [inputAccessoryView2 isDescendantOfView:containerViewCopy];

    if (v19)
    {
      bottomAnchor = [containerViewCopy bottomAnchor];
      inputAssistantView3 = [setCopy inputAccessoryView];
      goto LABEL_10;
    }
  }

  inputAccessoryView = 0;
LABEL_12:

  return inputAccessoryView;
}

- (id)widthConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:view attribute:7 relatedBy:0 toItem:containerView attribute:7 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end