@interface _UITextLinkInteractionSession
- (BOOL)_allowItemInteractions;
- (BOOL)canInteractWithLinkAtPoint:(CGPoint)point;
- (BOOL)tapOnLinkWithGesture:(id)gesture;
- (_UITextLinkInteractionSession)initWithTextItemInteraction:(id)interaction;
- (void)dealloc;
@end

@implementation _UITextLinkInteractionSession

- (_UITextLinkInteractionSession)initWithTextItemInteraction:(id)interaction
{
  interactionCopy = interaction;
  v8.receiver = self;
  v8.super_class = _UITextLinkInteractionSession;
  v5 = [(_UITextLinkInteractionSession *)&v8 init];
  if (v5)
  {
    view = [interactionCopy view];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      objc_storeWeak(&v5->_interaction, interactionCopy);
      objc_storeWeak(&v5->_linkInteractionView, view);
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

- (BOOL)canInteractWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_linkInteractionView);
  v6 = [WeakRetained willInteractWithLinkAtPoint:{x, y}];

  return v6;
}

- (BOOL)_allowItemInteractions
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  _allowItemInteractions = [WeakRetained _allowItemInteractions];

  return _allowItemInteractions;
}

- (BOOL)tapOnLinkWithGesture:(id)gesture
{
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_linkInteractionView);
  if (WeakRetained && -[_UITextLinkInteractionSession _allowItemInteractions](self, "_allowItemInteractions") && ([gestureCopy view], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(gestureCopy, "location"), objc_msgSend(v6, "convertPoint:toView:", WeakRetained), v8 = v7, v10 = v9, v6, objc_msgSend(WeakRetained, "willInteractWithLinkAtPoint:", v8, v10)))
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