@interface UITextInteractionAssistant(UITextInteractionAssistant_Internal)
- (BOOL)canShowSelectionCommands;
@end

@implementation UITextInteractionAssistant(UITextInteractionAssistant_Internal)

- (BOOL)canShowSelectionCommands
{
  v3 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
  v4 = [v3 isPresented];

  if (v4)
  {
    return 0;
  }

  if (self->_textInteractionMode != 1001)
  {
    return 1;
  }

  interactions = self->_interactions;

  return [(UITextInteraction *)interactions _allowsSelectionCommands];
}

@end