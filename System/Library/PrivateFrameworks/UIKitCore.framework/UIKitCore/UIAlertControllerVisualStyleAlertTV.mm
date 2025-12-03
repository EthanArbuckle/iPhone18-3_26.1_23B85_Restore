@interface UIAlertControllerVisualStyleAlertTV
- (BOOL)hideCancelAction:(id)action inAlertController:(id)controller;
- (UIEdgeInsets)contentInsetsForContainerView:(id)view;
- (UIEdgeInsets)textFieldContentInset;
- (double)actionWidthForMinimumActionWidth:(double)width availableWidth:(double)availableWidth;
- (double)marginAboveMessageLabelFirstBaseline;
- (double)maximumWidth;
- (double)transitionDurationForPresentation:(BOOL)presentation ofAlertController:(id)controller;
- (id)dimmingViewForAlertController:(id)controller;
- (id)preferredActionForActions:(id)actions suggestedPreferredAction:(id)action;
- (id)textFieldContainingViewWithTextField:(id)field position:(int64_t)position;
- (int64_t)_effectStyle;
- (void)animateAlertControllerView:(id)view ofAlertController:(id)controller forPresentation:(BOOL)presentation inContainerView:(id)containerView descendantOfContainerView:(id)ofContainerView duration:(double)duration completionBlock:(id)block;
@end

@implementation UIAlertControllerVisualStyleAlertTV

- (double)marginAboveMessageLabelFirstBaseline
{
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  hasTitle = [descriptor hasTitle];

  if (hasTitle)
  {
    return 60.0;
  }

  [(UIAlertControllerVisualStyleAlertTV *)self marginAboveTitleLabelFirstBaseline];
  return result;
}

- (double)maximumWidth
{
  [(UIAlertControllerVisualStyle *)self actionSequenceEdgeInsets];
  v4 = v3;
  [(UIAlertControllerVisualStyle *)self actionSequenceEdgeInsets];
  v6 = v4 + v5;
  [(UIAlertControllerVisualStyleAlertTV *)self _maximumContentWidth];
  return v7 + v6 + 70.0;
}

- (double)actionWidthForMinimumActionWidth:(double)width availableWidth:(double)availableWidth
{
  [objc_msgSend(objc_opt_class() "associatedAlertBackgroundViewClass")];
  v7 = v6 + v6;
  v8 = width - (v6 + v6);
  [(UIAlertControllerVisualStyleAlertTV *)self _maximumContentWidth];
  v10 = v9;
  [(UIAlertControllerVisualStyleAlertTV *)self _minimumButtonWidth];
  if (v11 < v8)
  {
    v11 = v8;
  }

  if (v10 <= v11)
  {
    v11 = v10;
  }

  return v7 + v11;
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)view
{
  v3 = 120.0;
  v4 = 80.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v4;
  result.left = v5;
  result.top = v3;
  return result;
}

- (id)textFieldContainingViewWithTextField:(id)field position:(int64_t)position
{
  fieldCopy = field;
  v5 = [UIView alloc];
  v6 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v6 addSubview:fieldCopy];
  v7 = _NSDictionaryOfVariableBindings(&cfstr_Textfield.isa, fieldCopy, 0);

  v8 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-(horizontalInset)-[textField]-(horizontalInset)-|" options:0 metrics:&unk_1EFE344F0 views:v7];
  [(UIView *)v6 addConstraints:v8];

  v9 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|-(verticalInset)-[textField(>=minTextFieldHeight)]-(verticalInset)-|" options:0 metrics:&unk_1EFE344F0 views:v7];
  [(UIView *)v6 addConstraints:v9];

  return v6;
}

- (BOOL)hideCancelAction:(id)action inAlertController:(id)controller
{
  title = [action title];
  v5 = title == 0;

  return v5;
}

- (id)dimmingViewForAlertController:(id)controller
{
  v4 = [UIVisualEffectView alloc];
  v5 = [UIBlurEffect effectWithStyle:[(UIAlertControllerVisualStyleAlertTV *)self _effectStyle]];
  v6 = [(UIVisualEffectView *)v4 initWithEffect:v5];

  return v6;
}

- (double)transitionDurationForPresentation:(BOOL)presentation ofAlertController:(id)controller
{
  result = 0.7;
  if (!presentation)
  {
    return 0.5;
  }

  return result;
}

- (void)animateAlertControllerView:(id)view ofAlertController:(id)controller forPresentation:(BOOL)presentation inContainerView:(id)containerView descendantOfContainerView:(id)ofContainerView duration:(double)duration completionBlock:(id)block
{
  presentationCopy = presentation;
  viewCopy = view;
  controllerCopy = controller;
  containerViewCopy = containerView;
  ofContainerViewCopy = ofContainerView;
  blockCopy = block;
  v18 = *MEMORY[0x1E695EFD0];
  v19 = *(MEMORY[0x1E695EFD0] + 32);
  v70 = *(MEMORY[0x1E695EFD0] + 16);
  v71 = v19;
  v66 = v18;
  v67 = v70;
  v68 = v19;
  v69 = v18;
  v44 = presentationCopy;
  v20 = &v66;
  if (presentationCopy)
  {
    v20 = &v69;
  }

  CGAffineTransformMakeScale(v20, 0.9, 0.9);
  v47 = controllerCopy;
  _dimmingView = [controllerCopy _dimmingView];
  v22 = [UIBlurEffect effectWithStyle:[(UIAlertControllerVisualStyleAlertTV *)self _effectStyle]];
  if (presentationCopy)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.3;
  }

  if (presentationCopy)
  {
    v24 = 0.3;
  }

  else
  {
    v24 = 0.0;
  }

  if (presentationCopy)
  {
    v25 = 0.523809524;
  }

  else
  {
    v25 = 0.0;
  }

  if (presentationCopy)
  {
    v26 = 0.476190476;
  }

  else
  {
    v26 = 0.5;
  }

  if (presentationCopy)
  {
    v27 = 0.357142857;
  }

  else
  {
    v27 = 0.5;
  }

  if (presentationCopy)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  v43 = v28;
  if (presentationCopy)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 1.0;
  }

  if (presentationCopy)
  {
    v30 = v22;
  }

  else
  {
    v30 = 0;
  }

  if (presentationCopy)
  {
    v31 = 0;
  }

  else
  {
    v31 = v22;
  }

  v32 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:v23];
  v65[0] = v69;
  v65[1] = v70;
  v65[2] = v71;
  [viewCopy setTransform:v65];
  [viewCopy setAlpha:v29];
  [_dimmingView setBackgroundColor:v32];
  _preferredActionView = [viewCopy _preferredActionView];
  v33 = [[_UIAlertControllerVisualStyleAlertTVCustomCurveFactory alloc] initWithCustomCurve:0];
  v34 = [[_UIAlertControllerVisualStyleAlertTVCustomCurveFactory alloc] initWithCustomCurve:1];
  [_dimmingView setEffect:v31];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __167__UIAlertControllerVisualStyleAlertTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke;
  v60[3] = &unk_1E7107CE8;
  v35 = _dimmingView;
  v61 = v35;
  v36 = v30;
  v62 = v36;
  v37 = v32;
  v63 = v37;
  v64 = v24;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __167__UIAlertControllerVisualStyleAlertTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2;
  v58[3] = &unk_1E70F3608;
  v38 = blockCopy;
  v59 = v38;
  [UIView _animateWithDuration:393216 delay:v33 options:v60 factory:v58 animations:duration completion:0.0];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __167__UIAlertControllerVisualStyleAlertTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3;
  v53[3] = &unk_1E70F3DC8;
  v39 = viewCopy;
  v54 = v39;
  v55 = v66;
  v56 = v67;
  v57 = v68;
  [UIView _animateWithDuration:393216 delay:v34 options:v53 factory:0 animations:v26 * duration completion:v25 * duration];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __167__UIAlertControllerVisualStyleAlertTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_4;
  v50[3] = &unk_1E70F32F0;
  v40 = v39;
  v51 = v40;
  v52 = v43;
  [UIView _animateWithDuration:393216 delay:v33 options:v50 factory:0 animations:v27 * duration completion:v25 * duration];
  if (v44)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __167__UIAlertControllerVisualStyleAlertTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_5;
    v48[3] = &unk_1E70F3590;
    v49 = _preferredActionView;
    [UIView _animateWithDuration:393216 delay:v33 options:v48 factory:0 animations:duration * 0.357142857 completion:v25 * duration + 0.119047619];
  }
}

void __167__UIAlertControllerVisualStyleAlertTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEffect:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) colorWithAlphaComponent:*(a1 + 56)];
  [v2 setBackgroundColor:v3];
}

uint64_t __167__UIAlertControllerVisualStyleAlertTV_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (UIEdgeInsets)textFieldContentInset
{
  v2 = 35.0;
  v3 = 70.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v3;
  result.left = v4;
  result.top = v2;
  return result;
}

- (id)preferredActionForActions:(id)actions suggestedPreferredAction:(id)action
{
  v23 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  actionCopy = action;
  firstObject = [actionsCopy firstObject];
  if ([firstObject style] == 2 || objc_msgSend(firstObject, "style") == 1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = actionsCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 style] != 2 && objc_msgSend(v14, "style") != 1)
          {
            v15 = v14;

            goto LABEL_25;
          }

          if (!v11)
          {
            if ([v14 style] == 1)
            {
              v11 = v14;
            }

            else
            {
              v11 = 0;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = firstObject;
  }

  v15 = v16;
LABEL_25:

  return v15;
}

- (int64_t)_effectStyle
{
  if (_UISolariumEnabled())
  {
    return 17;
  }

  else
  {
    return 4005;
  }
}

@end