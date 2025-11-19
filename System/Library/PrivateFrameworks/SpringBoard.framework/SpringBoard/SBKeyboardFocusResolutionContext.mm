@interface SBKeyboardFocusResolutionContext
+ (id)build:(id)a3;
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (SBKeyboardFocusResolutionContext)init;
- (id)_init;
- (id)_initWithCopyOf:(id *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBKeyboardFocusResolutionContext

- (id)_init
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        [(SBKeyboardFocusResolutionContext *)sel__init _init];
      }
    }

    v4.receiver = v1;
    v4.super_class = SBKeyboardFocusResolutionContext;
    return objc_msgSendSuper2(&v4, sel_init);
  }

  return result;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(SBKeyboardFocusResolutionContext *)[SBMutableKeyboardFocusResolutionContext alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

- (SBKeyboardFocusResolutionContext)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot directly allocate SBKeyboardFocusResolutionContext"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"SBKeyboardFocusResolutionContext.m";
    v17 = 1024;
    v18 = 29;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)new
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot directly allocate SBKeyboardFocusResolutionContext"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a1;
    v15 = 2114;
    v16 = @"SBKeyboardFocusResolutionContext.m";
    v17 = 1024;
    v18 = 34;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_screenDim];
  v4 = [v3 hash];

  v5 = [(SBFZStackResolver *)self->_zStackResolver hash];
  v6 = 0xBF58476D1CE4E5B9 * (v5 ^ v4 ^ ((v5 ^ v4) >> 30));
  return (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v4[8] == self->_screenDim)
  {
    v5 = BSEqualObjects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [v6 appendBool:self->_screenDim withName:@"screenDim"];
  v5 = [v6 appendObject:self->_zStackResolver withName:@"zStackResolver"];
}

- (id)_initWithCopyOf:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(SBKeyboardFocusResolutionContext *)a1 _init];
    a1 = v4;
    if (v4)
    {
      *(v4 + 8) = *(v3 + 8);
      objc_storeStrong(v4 + 2, *(v3 + 2));
    }
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBKeyboardFocusResolutionContext alloc];

  return [(SBKeyboardFocusResolutionContext *)&v4->super.isa _initWithCopyOf:?];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBMutableKeyboardFocusResolutionContext alloc];

  return [(SBKeyboardFocusResolutionContext *)&v4->super.super.isa _initWithCopyOf:?];
}

- (void)_init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBKeyboardFocusResolutionContext cannot be subclassed"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBKeyboardFocusResolutionContext.m";
    v16 = 1024;
    v17 = 40;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end