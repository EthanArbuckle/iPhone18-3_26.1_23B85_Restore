@interface _UITextLinkInteractionSession
- (BOOL)_allowItemInteractions;
- (BOOL)canInteractWithLinkAtPoint:(CGPoint)a3;
- (BOOL)tapOnLinkWithGesture:(id)a3;
- (_UITextLinkInteractionSession)initWithTextItemInteraction:(id)a3;
- (void)dealloc;
@end

@implementation _UITextLinkInteractionSession

- (_UITextLinkInteractionSession)initWithTextItemInteraction:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UITextLinkInteractionSession;
  v5 = [(_UITextLinkInteractionSession *)&v8 init];
  if (v5)
  {
    v6 = [v4 view];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      objc_storeWeak(&v5->_interaction, v4);
      objc_storeWeak(&v5->_linkInteractionView, v6);
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_linkInteractionView);
  [WeakRetained cancelInteractionWithLink];

  v4.receiver = self;
  v4.super_class = _UITextLinkInteractionSession;
  [(_UITextLinkInteractionSession *)&v4 dealloc];
}

- (BOOL)canInteractWithLinkAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_linkInteractionView);
  v6 = [WeakRetained willInteractWithLinkAtPoint:{x, y}];

  return v6;
}

- (BOOL)_allowItemInteractions
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v3 = [WeakRetained _allowItemInteractions];

  return v3;
}

- (BOOL)tapOnLinkWithGesture:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_linkInteractionView);
  if (WeakRetained && -[_UITextLinkInteractionSession _allowItemInteractions](self, "_allowItemInteractions") && ([v4 view], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "location"), objc_msgSend(v6, "convertPoint:toView:", WeakRetained), v8 = v7, v10 = v9, v6, objc_msgSend(WeakRetained, "willInteractWithLinkAtPoint:", v8, v10)))
  {
    [WeakRetained cancelInteractionWithLink];
    [WeakRetained tapLinkAtPoint:{v8, v10}];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end