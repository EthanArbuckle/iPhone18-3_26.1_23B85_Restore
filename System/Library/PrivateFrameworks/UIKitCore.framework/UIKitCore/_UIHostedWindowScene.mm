@interface _UIHostedWindowScene
- (CGSize)_preferredContentSize;
- (_UIHostedWindowScene)initWithSession:(id)session connectionOptions:(id)options;
- (void)_installLocalSheetPresentationControllerForWindow:(id)window;
- (void)_invalidate;
- (void)_setPreferredContentSize:(CGSize)size;
- (void)hostViewDidDisappear;
- (void)hostViewWillAppear;
- (void)hostViewWillDisappear;
- (void)sendAction:(id)action;
@end

@implementation _UIHostedWindowScene

- (void)hostViewWillAppear
{
  if (*&self->_flags)
  {
    _delegateWindow = [(UIWindowScene *)self _delegateWindow];
    [_delegateWindow setUserInteractionEnabled:1];

    *&self->_flags &= ~1u;
  }
}

- (void)hostViewWillDisappear
{
  _delegateWindow = [(UIWindowScene *)self _delegateWindow];
  isUserInteractionEnabled = [_delegateWindow isUserInteractionEnabled];

  if (isUserInteractionEnabled)
  {
    _delegateWindow2 = [(UIWindowScene *)self _delegateWindow];
    [_delegateWindow2 setUserInteractionEnabled:0];

    *&self->_flags |= 1u;
  }
}

- (void)hostViewDidDisappear
{
  _delegateWindow = [(UIWindowScene *)self _delegateWindow];
  _rootPresentationController = [_delegateWindow _rootPresentationController];
  [_rootPresentationController _resetRemoteDismissing];
}

- (void)sendAction:(id)action
{
  actionCopy = action;
  if (pthread_main_np() == 1)
  {
    _FBSScene = [(UIScene *)self _FBSScene];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:actionCopy];
    [_FBSScene sendActions:v6];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35___UIHostedWindowScene_sendAction___block_invoke;
    v7[3] = &unk_1E70F35B8;
    v7[4] = self;
    v8 = actionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)_setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _contentSizePreferenceProvider = [(UIWindowScene *)self _contentSizePreferenceProvider];
  [_contentSizePreferenceProvider _setPreferredContentSize:{width, height}];
}

- (CGSize)_preferredContentSize
{
  _contentSizePreferenceProvider = [(UIWindowScene *)self _contentSizePreferenceProvider];
  [_contentSizePreferenceProvider _preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_UIHostedWindowScene)initWithSession:(id)session connectionOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = _UIHostedWindowScene;
  v4 = [(UIWindowScene *)&v7 initWithSession:session connectionOptions:options];
  v5 = v4;
  if (v4)
  {
    [(UIWindowScene *)v4 _setKeepContextAssociationInBackground:1];
  }

  return v5;
}

- (void)_invalidate
{
  _delegateWindow = [(UIWindowScene *)self _delegateWindow];
  [_delegateWindow setUserInteractionEnabled:0];

  v4.receiver = self;
  v4.super_class = _UIHostedWindowScene;
  [(UIWindowScene *)&v4 _invalidate];
}

- (void)_installLocalSheetPresentationControllerForWindow:(id)window
{
  windowCopy = window;
  _delegateWindow = [(UIWindowScene *)self _delegateWindow];

  v5 = windowCopy;
  if (_delegateWindow == windowCopy)
  {
    _rootPresentationController = [windowCopy _rootPresentationController];
    _remoteSheetClientProvider = [(UIWindowScene *)self _remoteSheetClientProvider];
    [_remoteSheetClientProvider _setLocalSheetPresentationController:_rootPresentationController];

    v5 = windowCopy;
  }
}

@end