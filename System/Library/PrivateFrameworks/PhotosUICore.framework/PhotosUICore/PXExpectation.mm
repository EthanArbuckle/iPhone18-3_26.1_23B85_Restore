@interface PXExpectation
- (PXExpectation)initWithLabelFormat:(id)format;
- (PXExpectation)initWithQueue:(id)queue label:(id)label;
- (PXExpectation)initWithQueue:(id)queue labelFormat:(id)format;
- (id)description;
- (void)_performHandlerWithSuccess:(BOOL)success error:(id)error;
- (void)fulfill;
- (void)performWhenFulfilled:(id)fulfilled timeout:(double)timeout;
@end

@implementation PXExpectation

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PXExpectation *)self label];
  v7 = [v3 initWithFormat:@"<%@: %p, label=%@>", v5, self, label];

  return v7;
}

- (void)_performHandlerWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  handler = [(PXExpectation *)self handler];
  if (handler)
  {
    [(PXExpectation *)self setHandler:0];
    (handler)[2](handler, successCopy, errorCopy);
  }
}

- (void)fulfill
{
  dispatch_assert_queue_V2(self->_queue);

  [(PXExpectation *)self _performHandlerWithSuccess:1 error:0];
}

- (void)performWhenFulfilled:(id)fulfilled timeout:(double)timeout
{
  fulfilledCopy = fulfilled;
  dispatch_assert_queue_V2(self->_queue);
  handler = [(PXExpectation *)self handler];

  if (handler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExpectation.m" lineNumber:68 description:@"multiple handlers not supported yet"];
  }

  [(PXExpectation *)self setHandler:fulfilledCopy];
  objc_initWeak(&location, self);
  v9 = dispatch_time(0, (timeout * 1000000000.0));
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

- (PXExpectation)initWithQueue:(id)queue label:(id)label
{
  queueCopy = queue;
  labelCopy = label;
  v18.receiver = self;
  v18.super_class = PXExpectation;
  v8 = [(PXExpectation *)&v18 init];
  if (v8)
  {
    if (queueCopy)
    {
      v9 = queueCopy;
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

    date = [MEMORY[0x1E695DF00] date];
    creationDate = v8->_creationDate;
    v8->_creationDate = date;

    v15 = [labelCopy copy];
    label = v8->_label;
    v8->_label = v15;
  }

  return v8;
}

- (PXExpectation)initWithQueue:(id)queue labelFormat:(id)format
{
  queueCopy = queue;
  if (format)
  {
    v7 = MEMORY[0x1E696AEC0];
    formatCopy = format;
    format = [[v7 alloc] initWithFormat:formatCopy arguments:&v11];
  }

  v9 = [(PXExpectation *)self initWithQueue:queueCopy label:format];

  return v9;
}

- (PXExpectation)initWithLabelFormat:(id)format
{
  if (format)
  {
    v4 = MEMORY[0x1E696AEC0];
    formatCopy = format;
    v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v9];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PXExpectation *)self initWithQueue:0 label:v6];

  return v7;
}

@end