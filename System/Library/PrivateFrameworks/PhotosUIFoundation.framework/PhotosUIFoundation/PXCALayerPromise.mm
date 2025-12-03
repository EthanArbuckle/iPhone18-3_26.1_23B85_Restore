@interface PXCALayerPromise
- (CGRect)bounds;
- (PXCALayerPromise)init;
- (void)_handlePreparedLayer:(id)layer;
- (void)_realizeLayer;
- (void)_setLayer:(id)layer;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)drawLayerContentInContext:(CGContext *)context;
- (void)invalidateLayer;
- (void)performChanges:(id)changes;
- (void)setBounds:(CGRect)bounds;
- (void)setContentsScale:(double)scale;
- (void)setRendersAsynchronously:(BOOL)asynchronously;
- (void)startLayerRealization;
@end

@implementation PXCALayerPromise

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  if (![(PXCALayerPromise *)self shouldCancel])
  {

    [(PXCALayerPromise *)self drawLayerContentInContext:context];
  }
}

- (void)invalidateLayer
{
  if (self->_startedLayerRealization)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCALayerPromise.m" lineNumber:164 description:@"can't change layer promise attributes after realization has started"];
  }
}

- (void)setRendersAsynchronously:(BOOL)asynchronously
{
  if (self->_rendersAsynchronously != asynchronously)
  {
    self->_rendersAsynchronously = asynchronously;
    [(PXCALayerPromise *)self invalidateLayer];
  }
}

- (void)setContentsScale:(double)scale
{
  if (self->_contentsScale != scale)
  {
    self->_contentsScale = scale;
    [(PXCALayerPromise *)self invalidateLayer];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  p_bounds = &self->_bounds;
  if (!CGRectEqualToRect(bounds, self->_bounds))
  {
    p_bounds->origin.x = x;
    p_bounds->origin.y = y;
    p_bounds->size.width = width;
    p_bounds->size.height = height;

    [(PXCALayerPromise *)self invalidateLayer];
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXCALayerPromise;
  [(PXObservable *)&v3 performChanges:changes];
}

- (void)drawLayerContentInContext:(CGContext *)context
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCALayerPromise.m" lineNumber:124 description:{@"Method %s is a responsibility of subclass %@", "-[PXCALayerPromise drawLayerContentInContext:]", v7}];

  abort();
}

- (void)_setLayer:(id)layer
{
  layerCopy = layer;
  if (self->_layer != layerCopy)
  {
    v6 = layerCopy;
    objc_storeStrong(&self->_layer, layer);
    [(PXObservable *)self signalChange:1];
    layerCopy = v6;
  }
}

- (void)_handlePreparedLayer:(id)layer
{
  layerCopy = layer;
  if (![(PXCALayerPromise *)self shouldCancel])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__PXCALayerPromise__handlePreparedLayer___block_invoke;
    v5[3] = &unk_1E7BB7D80;
    v5[4] = self;
    v6 = layerCopy;
    [(PXCALayerPromise *)self performChanges:v5];
  }
}

- (void)_realizeLayer
{
  v13 = *MEMORY[0x1E69E9840];
  if (![(PXCALayerPromise *)self shouldCancel])
  {
    createCustomLayer = [(PXCALayerPromise *)self createCustomLayer];
    if (!createCustomLayer)
    {
      if ([(PXCALayerPromise *)self shouldCancel])
      {
        createCustomLayer = 0;
      }

      else
      {
        [(PXCALayerPromise *)self contentsScale];
        if (v4 == 0.0)
        {
          v5 = PFUIGetLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy = self;
            _os_log_impl(&dword_1B3F73000, v5, OS_LOG_TYPE_DEFAULT, "Invalid contentsScale for layer promise %@. Failing gracefully.", buf, 0xCu);
          }

          v6 = 1.0;
        }

        else
        {
          v6 = v4;
        }

        [MEMORY[0x1E6979518] begin];
        createCustomLayer = [MEMORY[0x1E6979398] layer];
        [createCustomLayer setDelegate:self];
        [(PXCALayerPromise *)self bounds];
        [createCustomLayer setBounds:?];
        [createCustomLayer setContentsScale:v6];
        [createCustomLayer setNeedsDisplay];
        [createCustomLayer displayIfNeeded];
        [MEMORY[0x1E6979518] commit];
        [MEMORY[0x1E6979518] flush];
      }
    }

    if ([(PXCALayerPromise *)self rendersAsynchronously])
    {
      objc_initWeak(buf, self);
      v7 = +[PXScheduler sharedScheduler];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __33__PXCALayerPromise__realizeLayer__block_invoke;
      v8[3] = &unk_1E7BB6C78;
      objc_copyWeak(&v10, buf);
      v9 = createCustomLayer;
      [v7 dispatchInMainTransaction:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }

    else
    {
      [(PXCALayerPromise *)self _handlePreparedLayer:createCustomLayer];
    }
  }
}

void __33__PXCALayerPromise__realizeLayer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePreparedLayer:*(a1 + 32)];
}

- (void)startLayerRealization
{
  if (!self->_startedLayerRealization)
  {
    self->_startedLayerRealization = 1;
    if ([(PXCALayerPromise *)self rendersAsynchronously])
    {
      if (startLayerRealization_onceToken != -1)
      {
        dispatch_once(&startLayerRealization_onceToken, &__block_literal_global_6776);
      }

      objc_initWeak(&location, self);
      v3 = startLayerRealization_queue;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __41__PXCALayerPromise_startLayerRealization__block_invoke_2;
      v5[3] = &unk_1E7BB8858;
      objc_copyWeak(&v6, &location);
      v4 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v5);
      dispatch_async(v3, v4);

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {

      [(PXCALayerPromise *)self _realizeLayer];
    }
  }
}

void __41__PXCALayerPromise_startLayerRealization__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _realizeLayer];
}

void __41__PXCALayerPromise_startLayerRealization__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -8);
  v0 = dispatch_queue_create("com.apple.photos.layerpromise", v2);
  v1 = startLayerRealization_queue;
  startLayerRealization_queue = v0;
}

- (void)dealloc
{
  [(CALayer *)self->_layer setDelegate:0];
  v3.receiver = self;
  v3.super_class = PXCALayerPromise;
  [(PXCALayerPromise *)&v3 dealloc];
}

- (PXCALayerPromise)init
{
  v3.receiver = self;
  v3.super_class = PXCALayerPromise;
  result = [(PXObservable *)&v3 init];
  if (result)
  {
    result->_contentsScale = 1.0;
    result->_rendersAsynchronously = 1;
  }

  return result;
}

@end