@interface UIAsyncTextInteraction
- (UIAsyncTextInteractionDelegate)delegate;
- (UIView)view;
- (id)asyncTextInput;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)selectionDidChange:(id)change;
- (void)selectionWillChange:(id)change;
- (void)willMoveToView:(id)view;
@end

@implementation UIAsyncTextInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)dealloc
{
  delegate = [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant delegate];

  if (delegate == self)
  {
    [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = UIAsyncTextInteraction;
  [(UIAsyncTextInteraction *)&v4 dealloc];
}

- (id)asyncTextInput
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = [WeakRetained conformsToProtocol:&unk_1F016C7B0];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_view);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)willMoveToView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_view);
    objc_setAssociatedObject(v5, &_UITextInputImplicitInteractionAssistantKey, 0, 0x301);
  }
}

- (void)didMoveToView:(id)view
{
  object = view;
  if (object)
  {
    v4 = [[UIWKTextInteractionAssistant alloc] initWithView:object];
    textInteractionAssistant = self->_textInteractionAssistant;
    self->_textInteractionAssistant = v4;

    [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant setDelegate:self];
    objc_setAssociatedObject(object, &_UITextInputImplicitInteractionAssistantKey, self->_textInteractionAssistant, 0x301);
  }

  objc_storeWeak(&self->_view, object);
}

- (void)selectionWillChange:(id)change
{
  delegate = [(UIAsyncTextInteraction *)self delegate];

  if (delegate)
  {
    delegate2 = [(UIAsyncTextInteraction *)self delegate];
    [delegate2 selectionWillChange:self];
  }

  asyncTextInput = [(UIAsyncTextInteraction *)self asyncTextInput];
  asyncSystemInputDelegate = [asyncTextInput asyncSystemInputDelegate];
  [asyncSystemInputDelegate selectionWillChange:asyncTextInput];
}

- (void)selectionDidChange:(id)change
{
  asyncTextInput = [(UIAsyncTextInteraction *)self asyncTextInput];
  asyncSystemInputDelegate = [asyncTextInput asyncSystemInputDelegate];
  [asyncSystemInputDelegate selectionDidChange:asyncTextInput];

  delegate = [(UIAsyncTextInteraction *)self delegate];

  if (delegate)
  {
    delegate2 = [(UIAsyncTextInteraction *)self delegate];
    [delegate2 selectionDidChange:self];
  }
}

- (UIAsyncTextInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end