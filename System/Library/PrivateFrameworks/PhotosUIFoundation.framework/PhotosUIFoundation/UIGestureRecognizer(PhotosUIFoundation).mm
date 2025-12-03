@interface UIGestureRecognizer(PhotosUIFoundation)
- (BOOL)_px_isGestureRecognizerForKey:()PhotosUIFoundation ofScrollView:;
- (double)px_locationInCoordinateSpace:()PhotosUIFoundation;
- (uint64_t)px_cancel;
- (uint64_t)px_isPanGestureRecognizerOfScrollView:()PhotosUIFoundation;
- (uint64_t)px_isPinchGestureRecognizerOfScrollView:()PhotosUIFoundation;
@end

@implementation UIGestureRecognizer(PhotosUIFoundation)

- (uint64_t)px_cancel
{
  result = [self isEnabled];
  if (result)
  {
    [self setEnabled:0];

    return [self setEnabled:1];
  }

  return result;
}

- (BOOL)_px_isGestureRecognizerForKey:()PhotosUIFoundation ofScrollView:
{
  v6 = a3;
  delegate = [self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = delegate;
    v9 = [v8 valueForKey:v6];
    v10 = v9 == self;

    if (a4 && v9 == self)
    {
      v11 = v8;
      *a4 = v8;
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  return v10;
}

- (uint64_t)px_isPinchGestureRecognizerOfScrollView:()PhotosUIFoundation
{
  v5 = NSStringFromSelector(sel_pinchGestureRecognizer);
  v6 = [self _px_isGestureRecognizerForKey:v5 ofScrollView:a3];

  return v6;
}

- (uint64_t)px_isPanGestureRecognizerOfScrollView:()PhotosUIFoundation
{
  v5 = NSStringFromSelector(sel_panGestureRecognizer);
  v6 = [self _px_isGestureRecognizerForKey:v5 ofScrollView:a3];

  return v6;
}

- (double)px_locationInCoordinateSpace:()PhotosUIFoundation
{
  v4 = a3;
  view = [self view];
  [self locationInView:view];
  [v4 convertPoint:view fromCoordinateSpace:?];
  v7 = v6;

  return v7;
}

@end