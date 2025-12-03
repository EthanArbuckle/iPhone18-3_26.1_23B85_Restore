@interface _UINavigationBarGestureHandler
- (BOOL)_gestureRecognizerShouldBegin:(id)begin;
- (UINavigationBar)navigationBar;
- (_UINavigationBarGestureHandler)initWithNavigationBar:(id)bar;
- (_UINavigationBarGestureHandlerDelegate)delegate;
- (void)_handlePopSwipe:(id)swipe;
- (void)setIdiom:(int64_t)idiom;
@end

@implementation _UINavigationBarGestureHandler

- (_UINavigationBarGestureHandler)initWithNavigationBar:(id)bar
{
  barCopy = bar;
  v10.receiver = self;
  v10.super_class = _UINavigationBarGestureHandler;
  v5 = [(_UINavigationBarGestureHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_navigationBar, barCopy);
    v7 = [[UISwipeGestureRecognizer alloc] initWithTarget:v6 action:sel__handlePopSwipe_];
    popSwipeGestureRecognizer = v6->_popSwipeGestureRecognizer;
    v6->_popSwipeGestureRecognizer = v7;

    [(UIGestureRecognizer *)v6->_popSwipeGestureRecognizer setDelegate:v6];
    [barCopy addGestureRecognizer:v6->_popSwipeGestureRecognizer];
  }

  return v6;
}

- (BOOL)_gestureRecognizerShouldBegin:(id)begin
{
  if (self->_popSwipeGestureRecognizer != begin)
  {
    return 1;
  }

  selfCopy = self;
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_loadWeakRetained(&selfCopy->_navigationBar);
  [beginCopy locationInView:v7];
  v9 = v8;
  v11 = v10;

  LOBYTE(selfCopy) = [WeakRetained shouldGestureHandler:selfCopy recognizedPopAtLocation:{v9, v11}];
  return selfCopy;
}

- (void)_handlePopSwipe:(id)swipe
{
  swipeCopy = swipe;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_loadWeakRetained(&self->_navigationBar);
  [swipeCopy locationInView:v5];
  v7 = v6;
  v9 = v8;

  [WeakRetained gestureHandler:self recognizedPopAtLocation:{v7, v9}];
}

- (void)setIdiom:(int64_t)idiom
{
  if (self->_idiom != idiom)
  {
    self->_idiom = idiom;
    popSwipeGestureRecognizer = self->_popSwipeGestureRecognizer;
    if (idiom == 3)
    {
      v4 = self->_popSwipeGestureRecognizer;

      [(UIGestureRecognizer *)v4 setAllowedTouchTypes:&unk_1EFE2B530];
    }

    else
    {
      _defaultAllowedTouchTypes = [(UIGestureRecognizer *)self->_popSwipeGestureRecognizer _defaultAllowedTouchTypes];
      [(UIGestureRecognizer *)popSwipeGestureRecognizer setAllowedTouchTypes:_defaultAllowedTouchTypes];
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