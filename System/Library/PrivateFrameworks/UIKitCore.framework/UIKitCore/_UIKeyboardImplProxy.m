@interface _UIKeyboardImplProxy
- (TIKeyboardInputManagerToImplProtocol)delegate;
- (void)processPayloadInfo:(id)a3;
- (void)pushAutocorrections:(id)a3 requestToken:(id)a4;
- (void)pushCandidateResultSet:(id)a3 requestToken:(id)a4;
@end

@implementation _UIKeyboardImplProxy

- (void)processPayloadInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43___UIKeyboardImplProxy_processPayloadInfo___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)pushAutocorrections:(id)a3 requestToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___UIKeyboardImplProxy_pushAutocorrections_requestToken___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)pushCandidateResultSet:(id)a3 requestToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___UIKeyboardImplProxy_pushCandidateResultSet_requestToken___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (TIKeyboardInputManagerToImplProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end