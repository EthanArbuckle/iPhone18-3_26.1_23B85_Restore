@interface UIInputViewSetPlacementAssistantOnScreenForNonKeyboard
- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (id)widthConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
@end

@implementation UIInputViewSetPlacementAssistantOnScreenForNonKeyboard

- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:a4 attribute:1 relatedBy:0 toItem:a5 attribute:1 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    if ([v8 isInputViewPlaceholder])
    {
      v23.receiver = self;
      v23.super_class = UIInputViewSetPlacementAssistantOnScreenForNonKeyboard;
      v11 = [(UIInputViewSetPlacementWrapper *)&v23 verticalConstraintForInputViewSet:v8 hostView:v9 containerView:v10];
      goto LABEL_12;
    }

    v12 = [v8 inputAssistantView];
    if (v12)
    {
      v13 = v12;
      v14 = [v8 inputAssistantView];
      v15 = [v14 isDescendantOfView:v10];

      if (v15)
      {
        v16 = [v10 bottomAnchor];
        v17 = [v8 inputAssistantView];
LABEL_10:
        v20 = v17;
        v21 = [v17 bottomAnchor];
        v11 = [v16 constraintEqualToAnchor:v21 constant:0.0];

        goto LABEL_12;
      }
    }

    v11 = [v8 inputAccessoryView];
    if (!v11)
    {
      goto LABEL_12;
    }

    v18 = [v8 inputAccessoryView];
    v19 = [v18 isDescendantOfView:v10];

    if (v19)
    {
      v16 = [v10 bottomAnchor];
      v17 = [v8 inputAccessoryView];
      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)widthConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:a4 attribute:7 relatedBy:0 toItem:a5 attribute:7 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end