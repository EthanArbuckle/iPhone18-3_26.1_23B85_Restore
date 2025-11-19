@interface NSCoder(UIIBDependencyInjectionInternal)
- (id)_decodeObjectsAndTrackChildViewControllerIndexWithParent:()UIIBDependencyInjectionInternal forKey:;
- (id)_decodeObjectsWithSourceSegueTemplate:()UIIBDependencyInjectionInternal creator:sender:forKey:;
- (void)_createStoryboardDecodingContextIfNeeded;
- (void)_initializeClassSwapperWithCurrentDecodingViewControllerIfNeeded:()UIIBDependencyInjectionInternal;
@end

@implementation NSCoder(UIIBDependencyInjectionInternal)

- (void)_createStoryboardDecodingContextIfNeeded
{
  v2 = [a1 _storyboardDecodingContext];

  if (!v2)
  {
    v3 = objc_alloc_init(UIStoryboardDecodingContext);
    objc_setAssociatedObject(a1, &UIStoryboardDecodingContextKey, v3, 1);
  }
}

- (id)_decodeObjectsWithSourceSegueTemplate:()UIIBDependencyInjectionInternal creator:sender:forKey:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a1 _storyboardDecodingContext];
  v15 = [v14 sourceSegueTemplate];

  v16 = [a1 _storyboardDecodingContext];
  v17 = [v16 sender];

  v18 = [a1 _storyboardDecodingContext];
  v19 = [v18 creator];

  [a1 _createStoryboardDecodingContextIfNeeded];
  v20 = [a1 _storyboardDecodingContext];
  [v20 setSourceSegueTemplate:v13];

  v21 = [a1 _storyboardDecodingContext];
  [v21 setSender:v11];

  v22 = [a1 _storyboardDecodingContext];
  [v22 setCreator:v12];

  v23 = [a1 decodeObjectForKey:v10];

  v24 = [a1 _storyboardDecodingContext];
  [v24 setSourceSegueTemplate:v15];

  v25 = [a1 _storyboardDecodingContext];
  [v25 setSender:v17];

  v26 = [a1 _storyboardDecodingContext];
  [v26 setCreator:v19];

  return v23;
}

- (id)_decodeObjectsAndTrackChildViewControllerIndexWithParent:()UIIBDependencyInjectionInternal forKey:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _storyboardDecodingContext];
  v9 = [v8 parentViewController];

  v10 = [a1 _storyboardDecodingContext];
  v11 = [v10 childViewControllerIndex];

  [a1 _createStoryboardDecodingContextIfNeeded];
  v12 = [a1 _storyboardDecodingContext];
  [v12 setParentViewController:v7];

  v13 = [a1 _storyboardDecodingContext];
  [v13 setChildViewControllerIndex:0];

  v14 = [a1 decodeObjectForKey:v6];

  v15 = [a1 _storyboardDecodingContext];
  [v15 setParentViewController:v9];

  v16 = [a1 _storyboardDecodingContext];
  [v16 setChildViewControllerIndex:v11];

  return v14;
}

- (void)_initializeClassSwapperWithCurrentDecodingViewControllerIfNeeded:()UIIBDependencyInjectionInternal
{
  v14 = a3;
  v4 = [a1 _storyboardDecodingContext];
  v5 = [v4 classSwapperTemplate];

  if (v5)
  {
    v6 = [a1 _storyboardDecodingContext];
    v7 = [v6 classSwapperTemplate];
    [a1 replaceObject:v7 withObject:v14];

    v8 = [a1 _storyboardDecodingContext];
    [v8 setClassSwapperTemplate:0];
  }

  v9 = [a1 _storyboardDecodingContext];
  v10 = [v9 parentViewController];

  if (v10)
  {
    v11 = [a1 _storyboardDecodingContext];
    v12 = [v11 childViewControllerIndex];
    v13 = [a1 _storyboardDecodingContext];
    [v13 setChildViewControllerIndex:v12 + 1];
  }
}

@end