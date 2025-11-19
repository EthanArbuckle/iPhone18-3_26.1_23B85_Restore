@interface PXProgrammaticNavigationRequest
- (PXProgrammaticNavigationRequest)init;
- (PXProgrammaticNavigationRequest)initWithDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (id)description;
- (void)cancel;
@end

@implementation PXProgrammaticNavigationRequest

- (void)cancel
{
  v2 = [(PXProgrammaticNavigationRequest *)self completionHandler];
  v2[2](v2, 4, 0);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXProgrammaticNavigationRequest *)self destination];
  v7 = [v3 stringWithFormat:@"<%@: %p, destination=%@>", v5, self, v6];

  return v7;
}

- (PXProgrammaticNavigationRequest)initWithDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PXProgrammaticNavigationRequest;
  v11 = [(PXProgrammaticNavigationRequest *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_destination, a3);
    v12->_options = a4;
    if (v10)
    {
      v13 = v10;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXProgrammaticNavigationRequest.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXProgrammaticNavigationRequest init]"}];

  abort();
}

@end