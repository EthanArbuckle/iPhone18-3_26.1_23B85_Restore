@interface PXExpectation
- (PXExpectation)initWithLabelFormat:(id)a3;
- (PXExpectation)initWithQueue:(id)a3 label:(id)a4;
- (PXExpectation)initWithQueue:(id)a3 labelFormat:(id)a4;
- (id)description;
- (void)_performHandlerWithSuccess:(BOOL)a3 error:(id)a4;
- (void)fulfill;
- (void)performWhenFulfilled:(id)a3 timeout:(double)a4;
@end

@implementation PXExpectation

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXExpectation *)self label];
  v7 = [v3 initWithFormat:@"<%@: %p, label=%@>", v5, self, v6];

  return v7;
}

- (void)_performHandlerWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(PXExpectation *)self handler];
  if (v6)
  {
    [(PXExpectation *)self setHandler:0];
    (v6)[2](v6, v4, v7);
  }
}

- (void)fulfill
{
  dispatch_assert_queue_V2(self->_queue);

  [(PXExpectation *)self _performHandlerWithSuccess:1 error:0];
}

- (void)performWhenFulfilled:(id)a3 timeout:(double)a4
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(PXExpectation *)self handler];

  if (v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXExpectation.m" lineNumber:68 description:@"multiple handlers not supported yet"];
  }

  [(PXExpectation *)self setHandler:v7];
  objc_initWeak(&location, self);
  v9 = dispatch_time(0, (a4 * 1000000000.0));
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PXExpectation_performWhenFulfilled_timeout___block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v13, &location);
  block[4] = self;
  dispatch_after(v9, queue, block);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __46__PXExpectation_performWhenFulfilled_timeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXExpectationErrorDomain" code:1 debugDescription:{@"%@ timed out", *(a1 + 32)}];
  [WeakRetained _performHandlerWithSuccess:0 error:v2];
}

- (PXExpectation)initWithQueue:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PXExpectation;
  v8 = [(PXExpectation *)&v18 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
      queue = v8->_queue;
      v8->_queue = v9;
    }

    else
    {
      v11 = MEMORY[0x1E69E96A0];
      v12 = MEMORY[0x1E69E96A0];
      queue = v8->_queue;
      v8->_queue = v11;
    }

    v13 = [MEMORY[0x1E695DF00] date];
    creationDate = v8->_creationDate;
    v8->_creationDate = v13;

    v15 = [v7 copy];
    label = v8->_label;
    v8->_label = v15;
  }

  return v8;
}

- (PXExpectation)initWithQueue:(id)a3 labelFormat:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = a4;
    a4 = [[v7 alloc] initWithFormat:v8 arguments:&v11];
  }

  v9 = [(PXExpectation *)self initWithQueue:v6 label:a4];

  return v9;
}

- (PXExpectation)initWithLabelFormat:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = a3;
    v6 = [[v4 alloc] initWithFormat:v5 arguments:&v9];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PXExpectation *)self initWithQueue:0 label:v6];

  return v7;
}

@end