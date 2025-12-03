@interface SBContinuitySessionSystemEvent
+ (id)eventWithType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (SBContinuitySessionSystemEvent)init;
- (SBContinuitySessionSystemEvent)initWithType:(int64_t)type;
@end

@implementation SBContinuitySessionSystemEvent

+ (id)eventWithType:(int64_t)type
{
  v3 = [[self alloc] initWithType:type];

  return v3;
}

- (SBContinuitySessionSystemEvent)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = SBContinuitySessionSystemEvent;
  result = [(SBContinuitySessionSystemEvent *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (SBContinuitySessionSystemEvent)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"-init is not allowed for SBContinuitySessionSystemEvent"];
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
    v16 = @"SBContinuitySessionSystemEvent.m";
    v17 = 1024;
    v18 = 27;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == equalCopy[1];

  return v5;
}

@end