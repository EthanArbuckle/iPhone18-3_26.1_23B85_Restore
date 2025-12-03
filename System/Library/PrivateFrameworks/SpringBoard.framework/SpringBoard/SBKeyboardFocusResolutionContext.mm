@interface SBKeyboardFocusResolutionContext
+ (id)build:(id)build;
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (SBKeyboardFocusResolutionContext)init;
- (id)_init;
- (id)_initWithCopyOf:(id *)of;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToFormatter:(id)formatter;
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

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(SBKeyboardFocusResolutionContext *)[SBMutableKeyboardFocusResolutionContext alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

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
    selfCopy = self;
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
    selfCopy = self;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy[8] == self->_screenDim)
  {
    v5 = BSEqualObjects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendBool:self->_screenDim withName:@"screenDim"];
  v5 = [formatterCopy appendObject:self->_zStackResolver withName:@"zStackResolver"];
}

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(SBKeyboardFocusResolutionContext *)of _init];
    of = _init;
    if (_init)
    {
      *(_init + 8) = *(v3 + 8);
      objc_storeStrong(_init + 2, *(v3 + 2));
    }
  }

  return of;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBKeyboardFocusResolutionContext alloc];

  return [(SBKeyboardFocusResolutionContext *)&v4->super.isa _initWithCopyOf:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBMutableKeyboardFocusResolutionContext alloc];

  return [(SBKeyboardFocusResolutionContext *)&v4->super.super.isa _initWithCopyOf:?];
}

- (void)_init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBKeyboardFocusResolutionContext cannot be subclassed"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
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