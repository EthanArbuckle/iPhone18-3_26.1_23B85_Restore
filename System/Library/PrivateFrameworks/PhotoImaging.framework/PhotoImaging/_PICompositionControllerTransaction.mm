@interface _PICompositionControllerTransaction
- (BOOL)commit;
- (_PICompositionControllerTransaction)init;
@end

@implementation _PICompositionControllerTransaction

- (BOOL)commit
{
  v22 = *MEMORY[0x1E69E9840];
  count = self->_count;
  if (!count)
  {
    v5 = NUAssertLogger_1848();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid transaction count"];
      v18 = 138543362;
      v19 = v6;
      _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v18, 0xCu);
    }

    v7 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_1848();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(*v7);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        callStackSymbols = [v14 callStackSymbols];
        v17 = [callStackSymbols componentsJoinedByString:@"\n"];
        v18 = 138543618;
        v19 = v13;
        v20 = 2114;
        v21 = v17;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v18, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v18 = 138543362;
      v19 = v12;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v18, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v3 = count - 1;
  self->_count = v3;
  return v3 == 0;
}

- (_PICompositionControllerTransaction)init
{
  v6.receiver = self;
  v6.super_class = _PICompositionControllerTransaction;
  v2 = [(_PICompositionControllerTransaction *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  changes = v2->_changes;
  v2->_changes = v3;

  return v2;
}

@end