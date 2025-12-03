@interface SBSystemActionInteractionContext
- (BOOL)isEqual:(id)equal;
- (uint64_t)initWithPreciseTimestamp:(uint64_t)timestamp type:(void *)type suppressionStatus:;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBSystemActionInteractionContext

- (uint64_t)initWithPreciseTimestamp:(uint64_t)timestamp type:(void *)type suppressionStatus:
{
  v8 = a2;
  typeCopy = type;
  if (self)
  {
    if (!v8)
    {
      [SBSystemActionInteractionContext initWithPreciseTimestamp:self type:? suppressionStatus:?];
    }

    v12.receiver = self;
    v12.super_class = SBSystemActionInteractionContext;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      *(self + 16) = timestamp;
      objc_storeStrong((self + 24), type);
    }
  }

  return self;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SBSystemActionInteractionContext_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

id __65__SBSystemActionInteractionContext_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"preciseTimestamp"];
  v3 = *(a1 + 32);
  v4 = NSStringFromSBSystemActionInteractionType(*(*(a1 + 40) + 16));
  [v3 appendString:v4 withName:@"type"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"suppressionStatus"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      if ([(NSDate *)self->_preciseTimestamp isEqualToDate:v7->_preciseTimestamp]&& self->_type == v7->_type)
      {
        v8 = BSEqualObjects();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_preciseTimestamp hash];
  suppressionStatus = self->_suppressionStatus;
  v5 = self->_type + v3;
  return v5 + [(SBSystemActionSuppressionStatus *)suppressionStatus hash];
}

- (void)initWithPreciseTimestamp:(const char *)a1 type:(uint64_t)a2 suppressionStatus:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"timestamp != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSystemActionInteractionContext.m";
    v16 = 1024;
    v17 = 36;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end