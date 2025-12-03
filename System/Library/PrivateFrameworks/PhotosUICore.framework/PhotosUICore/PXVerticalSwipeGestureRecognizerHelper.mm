@interface PXVerticalSwipeGestureRecognizerHelper
- (BOOL)verticalSwipeGestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)verticalSwipeGestureRecognizerShouldBegin:(id)begin ignoringScrollViews:(BOOL)views;
- (PXVerticalSwipeGestureRecognizerHelper)init;
- (PXVerticalSwipeGestureRecognizerHelperDelegate)delegate;
- (id)_panGestureRecognizerForVerticalSwipeGestureRecognizer:(id)recognizer;
- (void)setDelegate:(id)delegate;
@end

@implementation PXVerticalSwipeGestureRecognizerHelper

- (PXVerticalSwipeGestureRecognizerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_panGestureRecognizerForVerticalSwipeGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXVerticalSwipeGestureRecognizerHelper.m" lineNumber:113 description:{@"unexpected class for verticalSwipeGestureRecognizer %@", recognizerCopy}];
  }

  return recognizerCopy;
}

- (BOOL)verticalSwipeGestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  v7 = [(PXVerticalSwipeGestureRecognizerHelper *)self _panGestureRecognizerForVerticalSwipeGestureRecognizer:recognizer];
  v15 = 0;
  v8 = [gestureRecognizerCopy px_isPanGestureRecognizerOfScrollView:&v15];

  v9 = v15;
  v10 = v9;
  if (v8 && ([v9 px_hasHiddenAncestor] & 1) == 0)
  {
    dependentScrollViews = [(PXVerticalSwipeGestureRecognizerHelper *)self dependentScrollViews];
    weakObjectsHashTable = [dependentScrollViews objectForKey:v7];

    if (!weakObjectsHashTable)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      dependentScrollViews2 = [(PXVerticalSwipeGestureRecognizerHelper *)self dependentScrollViews];
      [dependentScrollViews2 setObject:weakObjectsHashTable forKey:v7];
    }

    [weakObjectsHashTable addObject:v10];
  }

  return v8;
}

- (BOOL)verticalSwipeGestureRecognizerShouldBegin:(id)begin ignoringScrollViews:(BOOL)views
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(PXVerticalSwipeGestureRecognizerHelper *)self _panGestureRecognizerForVerticalSwipeGestureRecognizer:begin];
  view = [v4 view];
  [v4 velocityInView:view];
  v7 = v6;
  v9 = v8;

  MEMORY[0x1A590C810](fabs(v7), fabs(v9));
  PXRadiansToDegrees();
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v4 = *(v2 + 3);
    *(v2 + 3) = weakToStrongObjectsMapTable;

    *(v2 + 9) = 257;
  }

  return v2;
}

@end