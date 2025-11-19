@interface _UIHostedWindowScene
- (CGSize)_preferredContentSize;
- (_UIHostedWindowScene)initWithSession:(id)a3 connectionOptions:(id)a4;
- (void)_installLocalSheetPresentationControllerForWindow:(id)a3;
- (void)_invalidate;
- (void)_setPreferredContentSize:(CGSize)a3;
- (void)hostViewDidDisappear;
- (void)hostViewWillAppear;
- (void)hostViewWillDisappear;
- (void)sendAction:(id)a3;
@end

@implementation _UIHostedWindowScene

- (void)hostViewWillAppear
{
  if (*&self->_flags)
  {
    v3 = [(UIWindowScene *)self _delegateWindow];
    [v3 setUserInteractionEnabled:1];

    *&self->_flags &= ~1u;
  }
}

- (void)hostViewWillDisappear
{
  v3 = [(UIWindowScene *)self _delegateWindow];
  v4 = [v3 isUserInteractionEnabled];

  if (v4)
  {
    v5 = [(UIWindowScene *)self _delegateWindow];
    [v5 setUserInteractionEnabled:0];

    *&self->_flags |= 1u;
  }
}

- (void)hostViewDidDisappear
{
  v3 = [(UIWindowScene *)self _delegateWindow];
  v2 = [v3 _rootPresentationController];
  [v2 _resetRemoteDismissing];
}

- (void)sendAction:(id)a3
{
  v4 = a3;
  if (pthread_main_np() == 1)
  {
    v5 = [(UIScene *)self _FBSScene];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:v4];
    [v5 sendActions:v6];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35___UIHostedWindowScene_sendAction___block_invoke;
    v7[3] = &unk_1E70F35B8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)_setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UIWindowScene *)self _contentSizePreferenceProvider];
  [v5 _setPreferredContentSize:{width, height}];
}

- (CGSize)_preferredContentSize
{
  v2 = [(UIWindowScene *)self _contentSizePreferenceProvider];
  [v2 _preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_UIHostedWindowScene)initWithSession:(id)a3 connectionOptions:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UIHostedWindowScene;
  v4 = [(UIWindowScene *)&v7 initWithSession:a3 connectionOptions:a4];
  v5 = v4;
  if (v4)
  {
    [(UIWindowScene *)v4 _setKeepContextAssociationInBackground:1];
  }

  return v5;
}

- (void)_invalidate
{
  v3 = [(UIWindowScene *)self _delegateWindow];
  [v3 setUserInteractionEnabled:0];

  v4.receiver = self;
  v4.super_class = _UIHostedWindowScene;
  [(UIWindowScene *)&v4 _invalidate];
}

- (void)_installLocalSheetPresentationControllerForWindow:(id)a3
{
  v8 = a3;
  v4 = [(UIWindowScene *)self _delegateWindow];

  v5 = v8;
  if (v4 == v8)
  {
    v6 = [v8 _rootPresentationController];
    v7 = [(UIWindowScene *)self _remoteSheetClientProvider];
    [v7 _setLocalSheetPresentationController:v6];

    v5 = v8;
  }
}

@end