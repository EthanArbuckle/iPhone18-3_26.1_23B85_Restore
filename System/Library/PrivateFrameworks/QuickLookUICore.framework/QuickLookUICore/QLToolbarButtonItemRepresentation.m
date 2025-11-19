@interface QLToolbarButtonItemRepresentation
- (BOOL)isEqual:(id)a3;
- (QLToolbarButton)originalButton;
- (QLToolbarButtonDelegate)presentingViewController;
- (void)setLongPressTarget:(id)a3 action:(SEL)a4;
@end

@implementation QLToolbarButtonItemRepresentation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(QLToolbarButtonItemRepresentation *)self identifier];
      v7 = [(QLToolbarButtonItemRepresentation *)v5 identifier];
      v8 = [v6 isEqualToString:v7];

      if (!v8)
      {
        goto LABEL_7;
      }

      v9 = [(QLToolbarButtonItemRepresentation *)self action];
      if (v9 != [(QLToolbarButtonItemRepresentation *)v5 action])
      {
        goto LABEL_7;
      }

      v10 = [(QLToolbarButtonItemRepresentation *)self placement];
      if (v10 == [(QLToolbarButtonItemRepresentation *)v5 placement]&& ([(QLToolbarButtonItemRepresentation *)self target], v11 = objc_claimAutoreleasedReturnValue(), [(QLToolbarButtonItemRepresentation *)v5 target], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12))
      {
        v15 = [(QLToolbarButtonItemRepresentation *)self originalButton];
        v16 = [(QLToolbarButtonItemRepresentation *)v5 originalButton];
        if (v15 == v16)
        {
          v13 = 1;
        }

        else
        {
          v17 = [(QLToolbarButtonItemRepresentation *)self originalButton];
          v18 = [(QLToolbarButtonItemRepresentation *)v5 originalButton];
          v13 = [v17 isEqual:v18];
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

- (void)setLongPressTarget:(id)a3 action:(SEL)a4
{
  v11 = a3;
  v6 = [(QLToolbarButtonItemRepresentation *)self longPressGestureRecognizer];

  if (!v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v11 action:a4];
    [(QLToolbarButtonItemRepresentation *)self setLongPressGestureRecognizer:v7];
    v8 = [(QLToolbarButtonItemRepresentation *)self _gestureRecognizers];
    v9 = [v8 mutableCopy];

    v10 = [(QLToolbarButtonItemRepresentation *)self longPressGestureRecognizer];
    [v9 addObject:v10];

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