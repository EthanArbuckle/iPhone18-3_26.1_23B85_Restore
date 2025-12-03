@interface _UIKeyboardImplProxy
- (TIKeyboardInputManagerToImplProtocol)delegate;
- (void)processPayloadInfo:(id)info;
- (void)pushAutocorrections:(id)autocorrections requestToken:(id)token;
- (void)pushCandidateResultSet:(id)set requestToken:(id)token;
@end

@implementation _UIKeyboardImplProxy

- (void)processPayloadInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43___UIKeyboardImplProxy_processPayloadInfo___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = infoCopy;
  v5 = infoCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)pushAutocorrections:(id)autocorrections requestToken:(id)token
{
  autocorrectionsCopy = autocorrections;
  tokenCopy = token;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___UIKeyboardImplProxy_pushAutocorrections_requestToken___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v11 = autocorrectionsCopy;
  v12 = tokenCopy;
  v8 = tokenCopy;
  v9 = autocorrectionsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)pushCandidateResultSet:(id)set requestToken:(id)token
{
  setCopy = set;
  tokenCopy = token;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___UIKeyboardImplProxy_pushCandidateResultSet_requestToken___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v11 = setCopy;
  v12 = tokenCopy;
  v8 = tokenCopy;
  v9 = setCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (TIKeyboardInputManagerToImplProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end