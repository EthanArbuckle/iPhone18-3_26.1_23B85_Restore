@interface CLKUIMetalResourcePool
+ (id)bufferPoolWithLength:(unint64_t)a3 andOptions:(unint64_t)a4 expectedCountPerFrame:(unint64_t)a5;
+ (id)texturePoolWithDescriptor:(id)a3 expectedCountPerFrame:(unint64_t)a4;
- (CLKUIMetalResourcePool)initWithCreationBlock:(id)a3 expectedCountPerFrame:(unint64_t)a4;
- (id)dequeueReusableResourceForUseOnCommandBuffer:(id)a3;
- (void)returnReusableResource:(id)a3;
@end

@implementation CLKUIMetalResourcePool

+ (id)bufferPoolWithLength:(unint64_t)a3 andOptions:(unint64_t)a4 expectedCountPerFrame:(unint64_t)a5
{
  v8 = [CLKUIMetalResourcePool alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__CLKUIMetalResourcePool_bufferPoolWithLength_andOptions_expectedCountPerFrame___block_invoke;
  v11[3] = &__block_descriptor_48_e5__8__0l;
  v11[4] = a3;
  v11[5] = a4;
  v9 = [(CLKUIMetalResourcePool *)v8 initWithCreationBlock:v11 expectedCountPerFrame:a5];

  return v9;
}

id __80__CLKUIMetalResourcePool_bufferPoolWithLength_andOptions_expectedCountPerFrame___block_invoke(uint64_t a1)
{
  v2 = +[CLKUIMetalResourceManager sharedDevice];
  v3 = [v2 newBufferWithLength:*(a1 + 32) options:*(a1 + 40)];

  return v3;
}

+ (id)texturePoolWithDescriptor:(id)a3 expectedCountPerFrame:(unint64_t)a4
{
  v5 = a3;
  v6 = [CLKUIMetalResourcePool alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CLKUIMetalResourcePool_texturePoolWithDescriptor_expectedCountPerFrame___block_invoke;
  v10[3] = &unk_1E7FF8F88;
  v11 = v5;
  v7 = v5;
  v8 = [(CLKUIMetalResourcePool *)v6 initWithCreationBlock:v10 expectedCountPerFrame:a4];

  return v8;
}

id __74__CLKUIMetalResourcePool_texturePoolWithDescriptor_expectedCountPerFrame___block_invoke(uint64_t a1)
{
  v2 = +[CLKUIMetalResourceManager sharedDevice];
  v3 = [v2 newTextureWithDescriptor:*(a1 + 32)];

  return v3;
}

- (CLKUIMetalResourcePool)initWithCreationBlock:(id)a3 expectedCountPerFrame:(unint64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CLKUIMetalResourcePool;
  v7 = [(CLKUIMetalResourcePool *)&v15 init];
  if (v7)
  {
    v8 = _Block_copy(v6);
    creationBlock = v7->_creationBlock;
    v7->_creationBlock = v8;

    v10 = dispatch_queue_create("CLKUIMetalResourcePoolQueue", 0);
    buffersQueue = v7->_buffersQueue;
    v7->_buffersQueue = v10;

    v12 = objc_opt_new();
    resourcePool = v7->_resourcePool;
    v7->_resourcePool = v12;

    v7->_expectedCountPerFrame = a4;
  }

  return v7;
}

- (id)dequeueReusableResourceForUseOnCommandBuffer:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  buffersQueue = self->_buffersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CLKUIMetalResourcePool_dequeueReusableResourceForUseOnCommandBuffer___block_invoke;
  block[3] = &unk_1E7FF8FB0;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(buffersQueue, block);
  if (!v13[5])
  {
    v6 = (*(self->_creationBlock + 2))();
    v7 = v13[5];
    v13[5] = v6;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CLKUIMetalResourcePool_dequeueReusableResourceForUseOnCommandBuffer___block_invoke_2;
  v10[3] = &unk_1E7FF8FD8;
  v10[4] = self;
  v10[5] = &v12;
  [v4 addCompletedHandler:v10];
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

uint64_t __71__CLKUIMetalResourcePool_dequeueReusableResourceForUseOnCommandBuffer___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  if (result)
  {
    v3 = [*(*(a1 + 32) + 16) lastObject];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(a1 + 32) + 16);

    return [v6 removeLastObject];
  }

  return result;
}

- (void)returnReusableResource:(id)a3
{
  v4 = a3;
  buffersQueue = self->_buffersQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CLKUIMetalResourcePool_returnReusableResource___block_invoke;
  v7[3] = &unk_1E7FF89D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(buffersQueue, v7);
}

unint64_t __49__CLKUIMetalResourcePool_returnReusableResource___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  v3 = *(a1 + 32);
  if (result < *(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    return [v4 addObject:v5];
  }

  return result;
}

@end