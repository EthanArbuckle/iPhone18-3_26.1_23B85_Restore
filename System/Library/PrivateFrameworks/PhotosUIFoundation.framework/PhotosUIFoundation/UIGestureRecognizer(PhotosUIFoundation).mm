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
  result = [a1 isEnabled];
  if (result)
  {
    [a1 setEnabled:0];

    return [a1 setEnabled:1];
  }

  return result;
}

- (BOOL)_px_isGestureRecognizerForKey:()PhotosUIFoundation ofScrollView:
{
  v6 = a3;
  v7 = [a1 delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 valueForKey:v6];
    v10 = v9 == a1;

    if (a4 && v9 == a1)
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
  v6 = [a1 _px_isGestureRecognizerForKey:v5 ofScrollView:a3];

  return v6;
}

- (uint64_t)px_isPanGestureRecognizerOfScrollView:()PhotosUIFoundation
{
  v5 = NSStringFromSelector(sel_panGestureRecognizer);
  v6 = [a1 _px_isGestureRecognizerForKey:v5 ofScrollView:a3];

  return v6;
}

- (double)px_locationInCoordinateSpace:()PhotosUIFoundation
{
  v4 = a3;
  v5 = [a1 view];
  [a1 locationInView:v5];
  [v4 convertPoint:v5 fromCoordinateSpace:?];
  v7 = v6;

  return v7;
}

@end