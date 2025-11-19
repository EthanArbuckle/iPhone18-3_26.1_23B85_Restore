@interface VUIMPHomeShareMediaLibrary
- (id)enqueueKeepAliveWithCompletion:(id)a3;
@end

@implementation VUIMPHomeShareMediaLibrary

- (id)enqueueKeepAliveWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(VUIMediaLibrary *)self manager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__VUIMPHomeShareMediaLibrary_enqueueKeepAliveWithCompletion___block_invoke;
    v8[3] = &unk_1E872D7E0;
    v9 = v4;
    [v5 _enqueueCompletionQueueBlock:v8];
  }

  v6 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:0];

  return v6;
}

@end