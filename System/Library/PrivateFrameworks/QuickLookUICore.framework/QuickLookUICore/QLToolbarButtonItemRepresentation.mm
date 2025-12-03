@interface QLToolbarButtonItemRepresentation
- (BOOL)isEqual:(id)equal;
- (QLToolbarButton)originalButton;
- (QLToolbarButtonDelegate)presentingViewController;
- (void)setLongPressTarget:(id)target action:(SEL)action;
@end

@implementation QLToolbarButtonItemRepresentation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(QLToolbarButtonItemRepresentation *)self identifier];
      identifier2 = [(QLToolbarButtonItemRepresentation *)v5 identifier];
      v8 = [identifier isEqualToString:identifier2];

      if (!v8)
      {
        goto LABEL_7;
      }

      action = [(QLToolbarButtonItemRepresentation *)self action];
      if (action != [(QLToolbarButtonItemRepresentation *)v5 action])
      {
        goto LABEL_7;
      }

      placement = [(QLToolbarButtonItemRepresentation *)self placement];
      if (placement == [(QLToolbarButtonItemRepresentation *)v5 placement]&& ([(QLToolbarButtonItemRepresentation *)self target], v11 = objc_claimAutoreleasedReturnValue(), [(QLToolbarButtonItemRepresentation *)v5 target], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12))
      {
        originalButton = [(QLToolbarButtonItemRepresentation *)self originalButton];
        originalButton2 = [(QLToolbarButtonItemRepresentation *)v5 originalButton];
        if (originalButton == originalButton2)
        {
          v13 = 1;
        }

        else
        {
          originalButton3 = [(QLToolbarButtonItemRepresentation *)self originalButton];
          originalButton4 = [(QLToolbarButtonItemRepresentation *)v5 originalButton];
          v13 = [originalButton3 isEqual:originalButton4];
        }
      }

      else
      {
LABEL_7:
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13 & 1;
}

- (void)setLongPressTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  longPressGestureRecognizer = [(QLToolbarButtonItemRepresentation *)self longPressGestureRecognizer];

  if (!longPressGestureRecognizer)
  {
    v7 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:targetCopy action:action];
    [(QLToolbarButtonItemRepresentation *)self setLongPressGestureRecognizer:v7];
    _gestureRecognizers = [(QLToolbarButtonItemRepresentation *)self _gestureRecognizers];
    v9 = [_gestureRecognizers mutableCopy];

    longPressGestureRecognizer2 = [(QLToolbarButtonItemRepresentation *)self longPressGestureRecognizer];
    [v9 addObject:longPressGestureRecognizer2];

    [(QLToolbarButtonItemRepresentation *)self _setGestureRecognizers:v9];
  }
}

- (QLToolbarButtonDelegate)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (QLToolbarButton)originalButton
{
  WeakRetained = objc_loadWeakRetained(&self->_originalButton);

  return WeakRetained;
}

@end