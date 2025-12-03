@interface UINavigationController(PhotosUICore_PPT)
- (id)_ppt_transitionAnimationCompletionHandler;
- (void)_ppt_setTransitionAnimationCompletionHandler:()PhotosUICore_PPT;
- (void)ppt_installTransitionAnimationCompletionHandler:()PhotosUICore_PPT;
- (void)ppt_notifyTransitionAnimationDidComplete;
@end

@implementation UINavigationController(PhotosUICore_PPT)

- (void)ppt_notifyTransitionAnimationDidComplete
{
  _ppt_transitionAnimationCompletionHandler = [self _ppt_transitionAnimationCompletionHandler];
  if (_ppt_transitionAnimationCompletionHandler)
  {
    v3 = _ppt_transitionAnimationCompletionHandler;
    _ppt_transitionAnimationCompletionHandler[2]();
    [self _ppt_setTransitionAnimationCompletionHandler:0];
    _ppt_transitionAnimationCompletionHandler = v3;
  }
}

- (id)_ppt_transitionAnimationCompletionHandler
{
  v1 = objc_getAssociatedObject(self, PPTTransitionAnimationCompletionHandlerAssociationKey);
  v2 = _Block_copy(v1);

  return v2;
}

- (void)_ppt_setTransitionAnimationCompletionHandler:()PhotosUICore_PPT
{
  v4 = PPTTransitionAnimationCompletionHandlerAssociationKey;
  v5 = _Block_copy(aBlock);
  objc_setAssociatedObject(self, v4, v5, 1);
}

- (void)ppt_installTransitionAnimationCompletionHandler:()PhotosUICore_PPT
{
  v4 = a3;
  if (v4)
  {
    _ppt_transitionAnimationCompletionHandler = [self _ppt_transitionAnimationCompletionHandler];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __92__UINavigationController_PhotosUICore_PPT__ppt_installTransitionAnimationCompletionHandler___block_invoke;
    v11 = &unk_1E7BB5748;
    v12 = _ppt_transitionAnimationCompletionHandler;
    v13 = v4;
    v6 = _ppt_transitionAnimationCompletionHandler;
    v7 = [&v8 copy];
    [self _ppt_setTransitionAnimationCompletionHandler:{v7, v8, v9, v10, v11}];
  }
}

@end