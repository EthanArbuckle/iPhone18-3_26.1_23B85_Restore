@interface SUActivityItemProvider
- (SUActivityItemProvider)initWithPlaceholderItem:(id)item;
- (SUActivityItemProviderDelegate)delegate;
- (UIActivity)suActivity;
- (UIImage)suPreviewImage;
- (id)item;
- (id)suLastProvidedItem;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)setSUActivity:(id)activity;
- (void)setSUPreviewImage:(id)image;
@end

@implementation SUActivityItemProvider

- (SUActivityItemProvider)initWithPlaceholderItem:(id)item
{
  v6.receiver = self;
  v6.super_class = SUActivityItemProvider;
  v3 = [(UIActivityItemProvider *)&v6 initWithPlaceholderItem:item];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.iTunesStoreUI.SUActivityItemProvider.%p", v3];
    v3->_dispatchQueue = dispatch_queue_create([v4 UTF8String], 0);
  }

  return v3;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = SUActivityItemProvider;
  [(SUActivityItemProvider *)&v4 dealloc];
}

- (SUActivityItemProviderDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__50;
  v10 = __Block_byref_object_dispose__50;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SUActivityItemProvider_delegate__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __34__SUActivityItemProvider_delegate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 280);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setDelegate:(id)delegate
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__SUActivityItemProvider_setDelegate___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = delegate;
  dispatch_async(dispatchQueue, v4);
}

- (void)setSUActivity:(id)activity
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SUActivityItemProvider_setSUActivity___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = activity;
  dispatch_async(dispatchQueue, v4);
}

void *__40__SUActivityItemProvider_setSUActivity___block_invoke(void *result)
{
  v1 = *(result[4] + 272);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(v2[4] + 272) = result;
  }

  return result;
}

- (void)setSUPreviewImage:(id)image
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SUActivityItemProvider_setSUPreviewImage___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = image;
  dispatch_async(dispatchQueue, v4);
}

void *__44__SUActivityItemProvider_setSUPreviewImage___block_invoke(void *result)
{
  v1 = *(result[4] + 304);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(v2[4] + 304) = result;
  }

  return result;
}

- (UIActivity)suActivity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__50;
  v10 = __Block_byref_object_dispose__50;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SUActivityItemProvider_suActivity__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __36__SUActivityItemProvider_suActivity__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 272);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)suLastProvidedItem
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__50;
  v10 = __Block_byref_object_dispose__50;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SUActivityItemProvider_suLastProvidedItem__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __44__SUActivityItemProvider_suLastProvidedItem__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 296);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (UIImage)suPreviewImage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__50;
  v10 = __Block_byref_object_dispose__50;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SUActivityItemProvider_suPreviewImage__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __40__SUActivityItemProvider_suPreviewImage__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 304);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)item
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__50;
  v14 = __Block_byref_object_dispose__50;
  v15 = 0;
  delegate = [(SUActivityItemProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = dispatch_semaphore_create(0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__SUActivityItemProvider_item__block_invoke;
    v9[3] = &unk_1E8167160;
    v9[4] = v4;
    v9[5] = &v10;
    [(SUActivityItemProviderDelegate *)delegate activityItemProvider:self provideItemUsingBlock:v9];
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v4);
  }

  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__SUActivityItemProvider_item__block_invoke_2;
  v8[3] = &unk_1E81650B0;
  v8[4] = self;
  v8[5] = &v10;
  dispatch_sync(dispatchQueue, v8);
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v6;
}

intptr_t __30__SUActivityItemProvider_item__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

id __30__SUActivityItemProvider_item__block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  *(*(a1 + 32) + 296) = result;
  return result;
}

@end