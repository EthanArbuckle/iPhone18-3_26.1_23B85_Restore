@interface UIAsyncTextInteraction
- (UIAsyncTextInteractionDelegate)delegate;
- (UIView)view;
- (id)asyncTextInput;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)selectionDidChange:(id)a3;
- (void)selectionWillChange:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UIAsyncTextInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)dealloc
{
  v3 = [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant delegate];

  if (v3 == self)
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

- (void)willMoveToView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_view);
    objc_setAssociatedObject(v5, &_UITextInputImplicitInteractionAssistantKey, 0, 0x301);
  }
}

- (void)didMoveToView:(id)a3
{
  object = a3;
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

- (void)selectionWillChange:(id)a3
{
  v4 = [(UIAsyncTextInteraction *)self delegate];

  if (v4)
  {
    v5 = [(UIAsyncTextInteraction *)self delegate];
    [v5 selectionWillChange:self];
  }

  v7 = [(UIAsyncTextInteraction *)self asyncTextInput];
  v6 = [v7 asyncSystemInputDelegate];
  [v6 selectionWillChange:v7];
}

- (void)selectionDidChange:(id)a3
{
  v7 = [(UIAsyncTextInteraction *)self asyncTextInput];
  v4 = [v7 asyncSystemInputDelegate];
  [v4 selectionDidChange:v7];

  v5 = [(UIAsyncTextInteraction *)self delegate];

  if (v5)
  {
    v6 = [(UIAsyncTextInteraction *)self delegate];
    [v6 selectionDidChange:self];
  }
}

- (UIAsyncTextInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end