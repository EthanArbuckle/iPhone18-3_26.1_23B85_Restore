@interface PLResultSuccess
- (PLResultSuccess)initWithResult:(id)a3;
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

- (PLResultSuccess)initWithResult:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLResult.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"result != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PLResultSuccess;
  v7 = [(PLResult *)&v12 initForSubclasses];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 1, a3);
    v9 = v8;
  }

  return v8;
}

@end