@interface WBSPermissionDialogThrottler
- (WBSPermissionDialogThrottler)init;
- (void)_callNextPresentationHandlerIfNeeded;
- (void)didCompletePermissionDialog:(BOOL)dialog;
- (void)requestPermissionDialogPresentation:(id)presentation;
@end

@implementation WBSPermissionDialogThrottler

- (WBSPermissionDialogThrottler)init
{
  v7.receiver = self;
  v7.super_class = WBSPermissionDialogThrottler;
  v2 = [(WBSPermissionDialogThrottler *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requestedPresentations = v2->_requestedPresentations;
    v2->_requestedPresentations = v3;

    v5 = v2;
  }

  return v2;
}

- (void)requestPermissionDialogPresentation:(id)presentation
{
  requestedPresentations = self->_requestedPresentations;
  v5 = MEMORY[0x1BFB13CE0](presentation, a2);
  [(NSMutableArray *)requestedPresentations addObject:v5];

  [(WBSPermissionDialogThrottler *)self _callNextPresentationHandlerIfNeeded];
}

- (void)didCompletePermissionDialog:(BOOL)dialog
{
  self->_isShowingDialog = 0;
  if (dialog)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_denyCount + 1;
  }

  self->_denyCount = v3;
  [(WBSPermissionDialogThrottler *)self _callNextPresentationHandlerIfNeeded];
}

- (void)_callNextPresentationHandlerIfNeeded
{
  if (!self->_callingPresentationHandler && [(NSMutableArray *)self->_requestedPresentations count])
  {
    do
    {
      if (self->_isShowingDialog && !self->_invalidated)
      {
        break;
      }

      firstObject = [(NSMutableArray *)self->_requestedPresentations firstObject];
      if (!firstObject)
      {
        break;
      }

      v4 = firstObject;
      [(NSMutableArray *)self->_requestedPresentations removeObjectAtIndex:0];
      v5 = !self->_invalidated && [(WBSPermissionDialogThrottler *)self _canShowPermissionDialog];
      self->_isShowingDialog |= v5;
      self->_callingPresentationHandler = 1;
      v4[2](v4);
      self->_callingPresentationHandler = 0;
    }

    while ([(NSMutableArray *)self->_requestedPresentations count]);
  }
}

@end