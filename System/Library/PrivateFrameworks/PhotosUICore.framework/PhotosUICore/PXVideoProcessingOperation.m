@interface PXVideoProcessingOperation
+ (id)new;
- (PXVideoProcessingOperation)init;
- (PXVideoProcessingOperation)initWithSpec:(id)a3;
- (id)performProcessing;
- (void)main;
@end

@implementation PXVideoProcessingOperation

- (id)performProcessing
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXVideoProcessingOperation.m" lineNumber:37 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoProcessingOperation performProcessing]", v6}];

  abort();
}

- (void)main
{
  v3 = [(PXVideoProcessingOperation *)self performProcessing];
  result = self->_result;
  self->_result = v3;
}

- (PXVideoProcessingOperation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXVideoProcessingOperation.m" lineNumber:24 description:{@"%s is not available as initializer", "-[PXVideoProcessingOperation init]"}];

  abort();
}

- (PXVideoProcessingOperation)initWithSpec:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXVideoProcessingOperation;
  v5 = [(PXVideoProcessingOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    spec = v5->_spec;
    v5->_spec = v6;
  }

  return v5;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXVideoProcessingOperation.m" lineNumber:28 description:{@"%s is not available as initializer", "+[PXVideoProcessingOperation new]"}];

  abort();
}

@end