@interface UITextItemInteractionInteraction
+ (BOOL)mightResponder:(id)a3 haveInteractableTextItemAtPoint:(CGPoint)a4 precision:(unint64_t)a5;
+ (BOOL)mightResponderHaveTextItemInteractions:(id)a3;
@end

@implementation UITextItemInteractionInteraction

+ (BOOL)mightResponderHaveTextItemInteractions:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    if (([v3 _mightHaveInteractableItems] & 1) == 0)
    {
LABEL_7:
      v4 = 0;
      goto LABEL_8;
    }
  }

  else if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 mightHaveLinks] & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = 1;
LABEL_8:

  return v4;
}

+ (BOOL)mightResponder:(id)a3 haveInteractableTextItemAtPoint:(CGPoint)a4 precision:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  if (![a1 mightResponderHaveTextItemInteractions:v9])
  {
    goto LABEL_6;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v9 willInteractWithLinkAtPoint:{x, y}];
      goto LABEL_7;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = [v9 _textInteractableItemAtPoint:a5 precision:{x, y}];
  v11 = v10 != 0;

LABEL_7:
  return v11;
}

@end