@interface PLResultFailure
- (PLResultFailure)initWithError:(id)a3;
- (id)description;
- (id)resultWithError:(id *)a3;
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

- (id)resultWithError:(id *)a3
{
  if (a3)
  {
    *a3 = self->_error;
  }

  return 0;
}

- (PLResultFailure)initWithError:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLResult.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PLResultFailure;
  v6 = [(PLResult *)&v12 initForSubclasses];
  if (v6)
  {
    v7 = [v5 copy];
    error = v6->_error;
    v6->_error = v7;

    v9 = v6;
  }

  return v6;
}

@end