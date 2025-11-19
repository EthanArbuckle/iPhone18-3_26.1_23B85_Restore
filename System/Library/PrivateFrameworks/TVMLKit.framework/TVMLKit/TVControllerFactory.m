@interface TVControllerFactory
@end

@implementation TVControllerFactory

_TVRotatingViewController *__51___TVControllerFactory__registerControllerCreators__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[TVInterfaceFactory sharedInterfaceFactory];
  v7 = [v5 view];
  v8 = [v6 _viewFromElement:v4 existingView:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
  }

  else
  {
    v9 = objc_alloc_init(_TVRotatingViewController);
  }

  v10 = v9;
  [(_TVRotatingViewController *)v9 setView:v8];
  [v10 tv_setAssociatedIKViewElement:v4];

  return v10;
}

@end