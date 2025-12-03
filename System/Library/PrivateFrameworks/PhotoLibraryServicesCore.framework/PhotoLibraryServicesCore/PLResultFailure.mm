@interface PLResultFailure
- (PLResultFailure)initWithError:(id)error;
- (id)description;
- (id)resultWithError:(id *)error;
@end

@implementation PLResultFailure

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p> failure: %@", v5, self, self->_error];

  return v6;
}

- (id)resultWithError:(id *)error
{
  if (error)
  {
    *error = self->_error;
  }

  return 0;
}

- (PLResultFailure)initWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResult.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PLResultFailure;
  initForSubclasses = [(PLResult *)&v12 initForSubclasses];
  if (initForSubclasses)
  {
    v7 = [errorCopy copy];
    error = initForSubclasses->_error;
    initForSubclasses->_error = v7;

    v9 = initForSubclasses;
  }

  return initForSubclasses;
}

@end