@interface UIScrollViewDirectionalPressGestureRecognizer
- (BOOL)_shouldReceivePress:(id)press;
- (UIScrollView)scrollView;
- (UIScrollViewDirectionalPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_addToViewIfAllowed:(id)allowed;
- (void)_resetToOriginalViewIfAllowed;
- (void)_setEnabledIfAllowed:(BOOL)allowed;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation UIScrollViewDirectionalPressGestureRecognizer

- (UIScrollViewDirectionalPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v9.receiver = self;
  v9.super_class = UIScrollViewDirectionalPressGestureRecognizer;
  v4 = [(_UIRepeatingPressGestureRecognizer *)&v9 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v4->_activePressType = -1;
    v8.receiver = v4;
    v8.super_class = UIScrollViewDirectionalPressGestureRecognizer;
    [(UIGestureRecognizer *)&v8 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    v7.receiver = v5;
    v7.super_class = UIScrollViewDirectionalPressGestureRecognizer;
    [(UIGestureRecognizer *)&v7 setAllowedPressTypes:&unk_1EFE2DF30];
  }

  return v5;
}

- (BOOL)_shouldReceivePress:(id)press
{
  type = [press type];
  allowedPressTypes = [(UIGestureRecognizer *)self allowedPressTypes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [allowedPressTypes containsObject:v6];

  if (!v7)
  {
    return 0;
  }

  scrollView = [(UIScrollViewDirectionalPressGestureRecognizer *)self scrollView];
  _canScrollX = [scrollView _canScrollX];
  if ((([scrollView _canScrollY] & 1) != 0 || type >= 2) && ((type & 0xFFFFFFFFFFFFFFFELL) != 2 ? (v10 = 1) : (v10 = _canScrollX), v10 == 1 && ((activePressType = self->_activePressType, activePressType != -1) ? (v12 = activePressType == type) : (v12 = 1), v12)))
  {
    self->_activePressType = type;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setEnabled:(BOOL)enabled
{
  v6.receiver = self;
  v6.super_class = UIScrollViewDirectionalPressGestureRecognizer;
  [(UIGestureRecognizer *)&v6 setEnabled:enabled];
  self->_hasBeenModified = 1;
  WeakRetained = objc_loadWeakRetained(&self->_originalView);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_originalView);
    [v5 addGestureRecognizer:self];

    objc_storeWeak(&self->_originalView, 0);
  }
}

- (void)_setEnabledIfAllowed:(BOOL)allowed
{
  if (!self->_hasBeenModified)
  {
    v3.receiver = self;
    v3.super_class = UIScrollViewDirectionalPressGestureRecognizer;
    [(UIGestureRecognizer *)&v3 setEnabled:allowed];
  }
}

- (void)_addToViewIfAllowed:(id)allowed
{
  allowedCopy = allowed;
  if (!self->_hasBeenModified)
  {
    v7 = allowedCopy;
    WeakRetained = objc_loadWeakRetained(&self->_originalView);

    if (!WeakRetained)
    {
      view = [(UIGestureRecognizer *)self view];
      objc_storeWeak(&self->_originalView, view);
    }

    [v7 addGestureRecognizer:self];
    allowedCopy = v7;
  }
}

- (void)_resetToOriginalViewIfAllowed
{
  if (!self->_hasBeenModified)
  {
    view = [(UIGestureRecognizer *)self view];
    [view removeGestureRecognizer:self];

    WeakRetained = objc_loadWeakRetained(&self->_originalView);
    [WeakRetained addGestureRecognizer:self];
  }
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end