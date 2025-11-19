@interface PXVerticalSwipeGestureRecognizerHelper
- (BOOL)verticalSwipeGestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)verticalSwipeGestureRecognizerShouldBegin:(id)a3 ignoringScrollViews:(BOOL)a4;
- (PXVerticalSwipeGestureRecognizerHelper)init;
- (PXVerticalSwipeGestureRecognizerHelperDelegate)delegate;
- (id)_panGestureRecognizerForVerticalSwipeGestureRecognizer:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation PXVerticalSwipeGestureRecognizerHelper

- (PXVerticalSwipeGestureRecognizerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_panGestureRecognizerForVerticalSwipeGestureRecognizer:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXVerticalSwipeGestureRecognizerHelper.m" lineNumber:113 description:{@"unexpected class for verticalSwipeGestureRecognizer %@", v5}];
  }

  return v5;
}

- (BOOL)verticalSwipeGestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = [(PXVerticalSwipeGestureRecognizerHelper *)self _panGestureRecognizerForVerticalSwipeGestureRecognizer:a3];
  v15 = 0;
  v8 = [v6 px_isPanGestureRecognizerOfScrollView:&v15];

  v9 = v15;
  v10 = v9;
  if (v8 && ([v9 px_hasHiddenAncestor] & 1) == 0)
  {
    v11 = [(PXVerticalSwipeGestureRecognizerHelper *)self dependentScrollViews];
    v12 = [v11 objectForKey:v7];

    if (!v12)
    {
      v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v13 = [(PXVerticalSwipeGestureRecognizerHelper *)self dependentScrollViews];
      [v13 setObject:v12 forKey:v7];
    }

    [v12 addObject:v10];
  }

  return v8;
}

- (BOOL)verticalSwipeGestureRecognizerShouldBegin:(id)a3 ignoringScrollViews:(BOOL)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(PXVerticalSwipeGestureRecognizerHelper *)self _panGestureRecognizerForVerticalSwipeGestureRecognizer:a3];
  v5 = [v4 view];
  [v4 velocityInView:v5];
  v7 = v6;
  v9 = v8;

  MEMORY[0x1A590C810](fabs(v7), fabs(v9));
  PXRadiansToDegrees();
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.shouldRecognizeSwipeDownGestureRecognizer = objc_opt_respondsToSelector() & 1;
  }
}

- (PXVerticalSwipeGestureRecognizerHelper)init
{
  v6.receiver = self;
  v6.super_class = PXVerticalSwipeGestureRecognizerHelper;
  v2 = [(PXVerticalSwipeGestureRecognizerHelper *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    *(v2 + 9) = 257;
  }

  return v2;
}

@end