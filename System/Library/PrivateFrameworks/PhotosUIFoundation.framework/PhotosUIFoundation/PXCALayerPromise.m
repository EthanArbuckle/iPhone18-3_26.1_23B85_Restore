@interface PXCALayerPromise
- (CGRect)bounds;
- (PXCALayerPromise)init;
- (void)_handlePreparedLayer:(id)a3;
- (void)_realizeLayer;
- (void)_setLayer:(id)a3;
- (void)dealloc;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)drawLayerContentInContext:(CGContext *)a3;
- (void)invalidateLayer;
- (void)performChanges:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentsScale:(double)a3;
- (void)setRendersAsynchronously:(BOOL)a3;
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

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  if (![(PXCALayerPromise *)self shouldCancel])
  {

    [(PXCALayerPromise *)self drawLayerContentInContext:a4];
  }
}

- (void)invalidateLayer
{
  if (self->_startedLayerRealization)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXCALayerPromise.m" lineNumber:164 description:@"can't change layer promise attributes after realization has started"];
  }
}

- (void)setRendersAsynchronously:(BOOL)a3
{
  if (self->_rendersAsynchronously != a3)
  {
    self->_rendersAsynchronously = a3;
    [(PXCALayerPromise *)self invalidateLayer];
  }
}

- (void)setContentsScale:(double)a3
{
  if (self->_contentsScale != a3)
  {
    self->_contentsScale = a3;
    [(PXCALayerPromise *)self invalidateLayer];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_bounds = &self->_bounds;
  if (!CGRectEqualToRect(a3, self->_bounds))
  {
    p_bounds->origin.x = x;
    p_bounds->origin.y = y;
    p_bounds->size.width = width;
    p_bounds->size.height = height;

    [(PXCALayerPromise *)self invalidateLayer];
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXCALayerPromise;
  [(PXObservable *)&v3 performChanges:a3];
}

- (void)drawLayerContentInContext:(CGContext *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXCALayerPromise.m" lineNumber:124 description:{@"Method %s is a responsibility of subclass %@", "-[PXCALayerPromise drawLayerContentInContext:]", v7}];

  abort();
}

- (void)_setLayer:(id)a3
{
  v5 = a3;
  if (self->_layer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_layer, a3);
    [(PXObservable *)self signalChange:1];
    v5 = v6;
  }
}

- (void)_handlePreparedLayer:(id)a3
{
  v4 = a3;
  if (![(PXCALayerPromise *)self shouldCancel])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__PXCALayerPromise__handlePreparedLayer___block_invoke;
    v5[3] = &unk_1E7BB7D80;
    v5[4] = self;
    v6 = v4;
    [(PXCALayerPromise *)self performChanges:v5];
  }
}

- (void)_realizeLayer
{
  v13 = *MEMORY[0x1E69E9840];
  if (![(PXCALayerPromise *)self shouldCancel])
  {
    v3 = [(PXCALayerPromise *)self createCustomLayer];
    if (!v3)
    {
      if ([(PXCALayerPromise *)self shouldCancel])
      {
        v3 = 0;
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
            v12 = self;
            _os_log_impl(&dword_1B3F73000, v5, OS_LOG_TYPE_DEFAULT, "Invalid contentsScale for layer promise %@. Failing gracefully.", buf, 0xCu);
          }

          v6 = 1.0;
        }

        else
        {
          v6 = v4;
        }

        [MEMORY[0x1E6979518] begin];
        v3 = [MEMORY[0x1E6979398] layer];
        [v3 setDelegate:self];
        [(PXCALayerPromise *)self bounds];
        [v3 setBounds:?];
        [v3 setContentsScale:v6];
        [v3 setNeedsDisplay];
        [v3 displayIfNeeded];
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
      v9 = v3;
      [v7 dispatchInMainTransaction:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }

    else
    {
      [(PXCALayerPromise *)self _handlePreparedLayer:v3];
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