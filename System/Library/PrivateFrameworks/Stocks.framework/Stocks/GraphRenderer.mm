@interface GraphRenderer
+ (id)sharedRenderer;
+ (void)clearSharedRenderer;
- (GraphRenderer)init;
- (void)performRenderOperation:(id)operation;
@end

@implementation GraphRenderer

+ (id)sharedRenderer
{
  v2 = __sharedInstance_0;
  if (!__sharedInstance_0)
  {
    v3 = objc_alloc_init(GraphRenderer);
    v4 = __sharedInstance_0;
    __sharedInstance_0 = v3;

    v2 = __sharedInstance_0;
  }

  return v2;
}

+ (void)clearSharedRenderer
{
  v2 = __sharedInstance_0;
  __sharedInstance_0 = 0;
}

- (GraphRenderer)init
{
  v6.receiver = self;
  v6.super_class = GraphRenderer;
  v2 = [(GraphRenderer *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.stocks.graph_renderer", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)performRenderOperation:(id)operation
{
  operationCopy = operation;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__GraphRenderer_performRenderOperation___block_invoke;
  block[3] = &unk_279D15BF0;
  v8 = operationCopy;
  v6 = operationCopy;
  dispatch_async(queue, block);
}

@end