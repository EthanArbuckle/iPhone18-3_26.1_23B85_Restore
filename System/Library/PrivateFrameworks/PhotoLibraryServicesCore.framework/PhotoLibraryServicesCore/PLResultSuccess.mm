@interface PLResultSuccess
- (PLResultSuccess)initWithResult:(id)result;
- (id)description;
@end

@implementation PLResultSuccess

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p> success: %@", v5, self, self->_result];

  return v6;
}

- (PLResultSuccess)initWithResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResult.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"result != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PLResultSuccess;
  initForSubclasses = [(PLResult *)&v12 initForSubclasses];
  v8 = initForSubclasses;
  if (initForSubclasses)
  {
    objc_storeStrong(initForSubclasses + 1, result);
    v9 = v8;
  }

  return v8;
}

@end