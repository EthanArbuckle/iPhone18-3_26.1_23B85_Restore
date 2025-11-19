@interface UINavigationController(PhotosUICore_PPT)
- (id)_ppt_transitionAnimationCompletionHandler;
- (void)_ppt_setTransitionAnimationCompletionHandler:()PhotosUICore_PPT;
- (void)ppt_installTransitionAnimationCompletionHandler:()PhotosUICore_PPT;
- (void)ppt_notifyTransitionAnimationDidComplete;
@end

@implementation UINavigationController(PhotosUICore_PPT)

- (void)ppt_notifyTransitionAnimationDidComplete
{
  v2 = [a1 _ppt_transitionAnimationCompletionHandler];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    [a1 _ppt_setTransitionAnimationCompletionHandler:0];
    v2 = v3;
  }
}

- (id)_ppt_transitionAnimationCompletionHandler
{
  v1 = objc_getAssociatedObject(a1, PPTTransitionAnimationCompletionHandlerAssociationKey);
  v2 = _Block_copy(v1);

  return v2;
}

- (void)_ppt_setTransitionAnimationCompletionHandler:()PhotosUICore_PPT
{
  v4 = PPTTransitionAnimationCompletionHandlerAssociationKey;
  v5 = _Block_copy(aBlock);
  objc_setAssociatedObject(a1, v4, v5, 1);
}

- (void)ppt_installTransitionAnimationCompletionHandler:()PhotosUICore_PPT
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 _ppt_transitionAnimationCompletionHandler];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __92__UINavigationController_PhotosUICore_PPT__ppt_installTransitionAnimationCompletionHandler___block_invoke;
    v11 = &unk_1E7BB5748;
    v12 = v5;
    v13 = v4;
    v6 = v5;
    v7 = [&v8 copy];
    [a1 _ppt_setTransitionAnimationCompletionHandler:{v7, v8, v9, v10, v11}];
  }
}

@end