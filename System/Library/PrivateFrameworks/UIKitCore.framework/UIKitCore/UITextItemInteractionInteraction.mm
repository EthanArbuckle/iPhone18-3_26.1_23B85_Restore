@interface UITextItemInteractionInteraction
+ (BOOL)mightResponder:(id)responder haveInteractableTextItemAtPoint:(CGPoint)point precision:(unint64_t)precision;
+ (BOOL)mightResponderHaveTextItemInteractions:(id)interactions;
@end

@implementation UITextItemInteractionInteraction

+ (BOOL)mightResponderHaveTextItemInteractions:(id)interactions
{
  interactionsCopy = interactions;
  if (objc_opt_respondsToSelector())
  {
    if (([interactionsCopy _mightHaveInteractableItems] & 1) == 0)
    {
LABEL_7:
      v4 = 0;
      goto LABEL_8;
    }
  }

  else if ((objc_opt_respondsToSelector() & 1) == 0 || ([interactionsCopy mightHaveLinks] & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = 1;
LABEL_8:

  return v4;
}

+ (BOOL)mightResponder:(id)responder haveInteractableTextItemAtPoint:(CGPoint)point precision:(unint64_t)precision
{
  y = point.y;
  x = point.x;
  responderCopy = responder;
  if (![self mightResponderHaveTextItemInteractions:responderCopy])
  {
    goto LABEL_6;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [responderCopy willInteractWithLinkAtPoint:{x, y}];
      goto LABEL_7;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = [responderCopy _textInteractableItemAtPoint:precision precision:{x, y}];
  v11 = v10 != 0;

LABEL_7:
  return v11;
}

@end