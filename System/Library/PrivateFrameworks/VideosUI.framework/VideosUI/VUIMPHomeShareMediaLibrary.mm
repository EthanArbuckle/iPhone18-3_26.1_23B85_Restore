@interface VUIMPHomeShareMediaLibrary
- (id)enqueueKeepAliveWithCompletion:(id)completion;
@end

@implementation VUIMPHomeShareMediaLibrary

- (id)enqueueKeepAliveWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    manager = [(VUIMediaLibrary *)self manager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__VUIMPHomeShareMediaLibrary_enqueueKeepAliveWithCompletion___block_invoke;
    v8[3] = &unk_1E872D7E0;
    v9 = completionCopy;
    [manager _enqueueCompletionQueueBlock:v8];
  }

  v6 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:0];

  return v6;
}

@end