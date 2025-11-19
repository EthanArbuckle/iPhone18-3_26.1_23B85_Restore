@interface UIScrollViewDirectionalPressGestureRecognizer
- (BOOL)_shouldReceivePress:(id)a3;
- (UIScrollView)scrollView;
- (UIScrollViewDirectionalPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_addToViewIfAllowed:(id)a3;
- (void)_resetToOriginalViewIfAllowed;
- (void)_setEnabledIfAllowed:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation UIScrollViewDirectionalPressGestureRecognizer

- (UIScrollViewDirectionalPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v9.receiver = self;
  v9.super_class = UIScrollViewDirectionalPressGestureRecognizer;
  v4 = [(_UIRepeatingPressGestureRecognizer *)&v9 initWithTarget:a3 action:a4];
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

- (BOOL)_shouldReceivePress:(id)a3
{
  v4 = [a3 type];
  v5 = [(UIGestureRecognizer *)self allowedPressTypes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v7 = [v5 containsObject:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = [(UIScrollViewDirectionalPressGestureRecognizer *)self scrollView];
  v9 = [v8 _canScrollX];
  if ((([v8 _canScrollY] & 1) != 0 || v4 >= 2) && ((v4 & 0xFFFFFFFFFFFFFFFELL) != 2 ? (v10 = 1) : (v10 = v9), v10 == 1 && ((activePressType = self->_activePressType, activePressType != -1) ? (v12 = activePressType == v4) : (v12 = 1), v12)))
  {
    self->_activePressType = v4;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setEnabled:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = UIScrollViewDirectionalPressGestureRecognizer;
  [(UIGestureRecognizer *)&v6 setEnabled:a3];
  self->_hasBeenModified = 1;
  WeakRetained = objc_loadWeakRetained(&self->_originalView);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_originalView);
    [v5 addGestureRecognizer:self];

    objc_storeWeak(&self->_originalView, 0);
  }
}

- (void)_setEnabledIfAllowed:(BOOL)a3
{
  if (!self->_hasBeenModified)
  {
    v3.receiver = self;
    v3.super_class = UIScrollViewDirectionalPressGestureRecognizer;
    [(UIGestureRecognizer *)&v3 setEnabled:a3];
  }
}

- (void)_addToViewIfAllowed:(id)a3
{
  v4 = a3;
  if (!self->_hasBeenModified)
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_originalView);

    if (!WeakRetained)
    {
      v6 = [(UIGestureRecognizer *)self view];
      objc_storeWeak(&self->_originalView, v6);
    }

    [v7 addGestureRecognizer:self];
    v4 = v7;
  }
}

- (void)_resetToOriginalViewIfAllowed
{
  if (!self->_hasBeenModified)
  {
    v4 = [(UIGestureRecognizer *)self view];
    [v4 removeGestureRecognizer:self];

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