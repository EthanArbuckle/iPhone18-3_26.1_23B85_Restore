@interface _UINavigationBarGestureHandler
- (BOOL)_gestureRecognizerShouldBegin:(id)a3;
- (UINavigationBar)navigationBar;
- (_UINavigationBarGestureHandler)initWithNavigationBar:(id)a3;
- (_UINavigationBarGestureHandlerDelegate)delegate;
- (void)_handlePopSwipe:(id)a3;
- (void)setIdiom:(int64_t)a3;
@end

@implementation _UINavigationBarGestureHandler

- (_UINavigationBarGestureHandler)initWithNavigationBar:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UINavigationBarGestureHandler;
  v5 = [(_UINavigationBarGestureHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_navigationBar, v4);
    v7 = [[UISwipeGestureRecognizer alloc] initWithTarget:v6 action:sel__handlePopSwipe_];
    popSwipeGestureRecognizer = v6->_popSwipeGestureRecognizer;
    v6->_popSwipeGestureRecognizer = v7;

    [(UIGestureRecognizer *)v6->_popSwipeGestureRecognizer setDelegate:v6];
    [v4 addGestureRecognizer:v6->_popSwipeGestureRecognizer];
  }

  return v6;
}

- (BOOL)_gestureRecognizerShouldBegin:(id)a3
{
  if (self->_popSwipeGestureRecognizer != a3)
  {
    return 1;
  }

  v4 = self;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&v4->_delegate);
  v7 = objc_loadWeakRetained(&v4->_navigationBar);
  [v5 locationInView:v7];
  v9 = v8;
  v11 = v10;

  LOBYTE(v4) = [WeakRetained shouldGestureHandler:v4 recognizedPopAtLocation:{v9, v11}];
  return v4;
}

- (void)_handlePopSwipe:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_loadWeakRetained(&self->_navigationBar);
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  [WeakRetained gestureHandler:self recognizedPopAtLocation:{v7, v9}];
}

- (void)setIdiom:(int64_t)a3
{
  if (self->_idiom != a3)
  {
    self->_idiom = a3;
    popSwipeGestureRecognizer = self->_popSwipeGestureRecognizer;
    if (a3 == 3)
    {
      v4 = self->_popSwipeGestureRecognizer;

      [(UIGestureRecognizer *)v4 setAllowedTouchTypes:&unk_1EFE2B530];
    }

    else
    {
      v5 = [(UIGestureRecognizer *)self->_popSwipeGestureRecognizer _defaultAllowedTouchTypes];
      [(UIGestureRecognizer *)popSwipeGestureRecognizer setAllowedTouchTypes:v5];
    }
  }
}

- (UINavigationBar)navigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  return WeakRetained;
}

- (_UINavigationBarGestureHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end