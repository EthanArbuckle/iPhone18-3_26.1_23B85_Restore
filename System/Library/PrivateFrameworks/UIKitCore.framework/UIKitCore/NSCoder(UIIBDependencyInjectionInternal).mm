@interface NSCoder(UIIBDependencyInjectionInternal)
- (id)_decodeObjectsAndTrackChildViewControllerIndexWithParent:()UIIBDependencyInjectionInternal forKey:;
- (id)_decodeObjectsWithSourceSegueTemplate:()UIIBDependencyInjectionInternal creator:sender:forKey:;
- (void)_createStoryboardDecodingContextIfNeeded;
- (void)_initializeClassSwapperWithCurrentDecodingViewControllerIfNeeded:()UIIBDependencyInjectionInternal;
@end

@implementation NSCoder(UIIBDependencyInjectionInternal)

- (void)_createStoryboardDecodingContextIfNeeded
{
  _storyboardDecodingContext = [self _storyboardDecodingContext];

  if (!_storyboardDecodingContext)
  {
    v3 = objc_alloc_init(UIStoryboardDecodingContext);
    objc_setAssociatedObject(self, &UIStoryboardDecodingContextKey, v3, 1);
  }
}

- (id)_decodeObjectsWithSourceSegueTemplate:()UIIBDependencyInjectionInternal creator:sender:forKey:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  _storyboardDecodingContext = [self _storyboardDecodingContext];
  sourceSegueTemplate = [_storyboardDecodingContext sourceSegueTemplate];

  _storyboardDecodingContext2 = [self _storyboardDecodingContext];
  sender = [_storyboardDecodingContext2 sender];

  _storyboardDecodingContext3 = [self _storyboardDecodingContext];
  creator = [_storyboardDecodingContext3 creator];

  [self _createStoryboardDecodingContextIfNeeded];
  _storyboardDecodingContext4 = [self _storyboardDecodingContext];
  [_storyboardDecodingContext4 setSourceSegueTemplate:v13];

  _storyboardDecodingContext5 = [self _storyboardDecodingContext];
  [_storyboardDecodingContext5 setSender:v11];

  _storyboardDecodingContext6 = [self _storyboardDecodingContext];
  [_storyboardDecodingContext6 setCreator:v12];

  v23 = [self decodeObjectForKey:v10];

  _storyboardDecodingContext7 = [self _storyboardDecodingContext];
  [_storyboardDecodingContext7 setSourceSegueTemplate:sourceSegueTemplate];

  _storyboardDecodingContext8 = [self _storyboardDecodingContext];
  [_storyboardDecodingContext8 setSender:sender];

  _storyboardDecodingContext9 = [self _storyboardDecodingContext];
  [_storyboardDecodingContext9 setCreator:creator];

  return v23;
}

- (id)_decodeObjectsAndTrackChildViewControllerIndexWithParent:()UIIBDependencyInjectionInternal forKey:
{
  v6 = a4;
  v7 = a3;
  _storyboardDecodingContext = [self _storyboardDecodingContext];
  parentViewController = [_storyboardDecodingContext parentViewController];

  _storyboardDecodingContext2 = [self _storyboardDecodingContext];
  childViewControllerIndex = [_storyboardDecodingContext2 childViewControllerIndex];

  [self _createStoryboardDecodingContextIfNeeded];
  _storyboardDecodingContext3 = [self _storyboardDecodingContext];
  [_storyboardDecodingContext3 setParentViewController:v7];

  _storyboardDecodingContext4 = [self _storyboardDecodingContext];
  [_storyboardDecodingContext4 setChildViewControllerIndex:0];

  v14 = [self decodeObjectForKey:v6];

  _storyboardDecodingContext5 = [self _storyboardDecodingContext];
  [_storyboardDecodingContext5 setParentViewController:parentViewController];

  _storyboardDecodingContext6 = [self _storyboardDecodingContext];
  [_storyboardDecodingContext6 setChildViewControllerIndex:childViewControllerIndex];

  return v14;
}

- (void)_initializeClassSwapperWithCurrentDecodingViewControllerIfNeeded:()UIIBDependencyInjectionInternal
{
  v14 = a3;
  _storyboardDecodingContext = [self _storyboardDecodingContext];
  classSwapperTemplate = [_storyboardDecodingContext classSwapperTemplate];

  if (classSwapperTemplate)
  {
    _storyboardDecodingContext2 = [self _storyboardDecodingContext];
    classSwapperTemplate2 = [_storyboardDecodingContext2 classSwapperTemplate];
    [self replaceObject:classSwapperTemplate2 withObject:v14];

    _storyboardDecodingContext3 = [self _storyboardDecodingContext];
    [_storyboardDecodingContext3 setClassSwapperTemplate:0];
  }

  _storyboardDecodingContext4 = [self _storyboardDecodingContext];
  parentViewController = [_storyboardDecodingContext4 parentViewController];

  if (parentViewController)
  {
    _storyboardDecodingContext5 = [self _storyboardDecodingContext];
    childViewControllerIndex = [_storyboardDecodingContext5 childViewControllerIndex];
    _storyboardDecodingContext6 = [self _storyboardDecodingContext];
    [_storyboardDecodingContext6 setChildViewControllerIndex:childViewControllerIndex + 1];
  }
}

@end