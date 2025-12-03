@interface PXVideoProcessingOperation
+ (id)new;
- (PXVideoProcessingOperation)init;
- (PXVideoProcessingOperation)initWithSpec:(id)spec;
- (id)performProcessing;
- (void)main;
@end

@implementation PXVideoProcessingOperation

- (id)performProcessing
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoProcessingOperation.m" lineNumber:37 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoProcessingOperation performProcessing]", v6}];

  abort();
}

- (void)main
{
  performProcessing = [(PXVideoProcessingOperation *)self performProcessing];
  result = self->_result;
  self->_result = performProcessing;
}

- (PXVideoProcessingOperation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoProcessingOperation.m" lineNumber:24 description:{@"%s is not available as initializer", "-[PXVideoProcessingOperation init]"}];

  abort();
}

- (PXVideoProcessingOperation)initWithSpec:(id)spec
{
  specCopy = spec;
  v9.receiver = self;
  v9.super_class = PXVideoProcessingOperation;
  v5 = [(PXVideoProcessingOperation *)&v9 init];
  if (v5)
  {
    v6 = [specCopy copy];
    spec = v5->_spec;
    v5->_spec = v6;
  }

  return v5;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoProcessingOperation.m" lineNumber:28 description:{@"%s is not available as initializer", "+[PXVideoProcessingOperation new]"}];

  abort();
}

@end