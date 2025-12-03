@interface PXProgrammaticNavigationRequest
- (PXProgrammaticNavigationRequest)init;
- (PXProgrammaticNavigationRequest)initWithDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (id)description;
- (void)cancel;
@end

@implementation PXProgrammaticNavigationRequest

- (void)cancel
{
  completionHandler = [(PXProgrammaticNavigationRequest *)self completionHandler];
  completionHandler[2](completionHandler, 4, 0);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  destination = [(PXProgrammaticNavigationRequest *)self destination];
  v7 = [v3 stringWithFormat:@"<%@: %p, destination=%@>", v5, self, destination];

  return v7;
}

- (PXProgrammaticNavigationRequest)initWithDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  destinationCopy = destination;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = PXProgrammaticNavigationRequest;
  v11 = [(PXProgrammaticNavigationRequest *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_destination, destination);
    v12->_options = options;
    if (handlerCopy)
    {
      v13 = handlerCopy;
    }

    else
    {
      v13 = &__block_literal_global_240860;
    }

    v14 = [v13 copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v14;
  }

  return v12;
}

- (PXProgrammaticNavigationRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXProgrammaticNavigationRequest.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXProgrammaticNavigationRequest init]"}];

  abort();
}

@end