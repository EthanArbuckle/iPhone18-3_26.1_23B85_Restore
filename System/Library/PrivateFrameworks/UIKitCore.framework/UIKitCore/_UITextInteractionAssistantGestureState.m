@interface _UITextInteractionAssistantGestureState
- (BOOL)isEqual:(id)a3;
@end

@implementation _UITextInteractionAssistantGestureState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    hasExternalInteractions = self->_hasExternalInteractions;
    if (hasExternalInteractions == [v5 hasExternalInteractions] && (viewIsEditable = self->_viewIsEditable, viewIsEditable == objc_msgSend(v5, "viewIsEditable")) && (viewCanBecomeEditable = self->_viewCanBecomeEditable, viewCanBecomeEditable == objc_msgSend(v5, "viewCanBecomeEditable")) && (mode = self->_mode, mode == objc_msgSend(v5, "mode")))
    {
      isFirstResponder = self->_isFirstResponder;
      v11 = isFirstResponder == [v5 isFirstResponder];
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

  return v11;
}

@end