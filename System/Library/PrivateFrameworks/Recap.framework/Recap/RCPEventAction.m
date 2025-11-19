@interface RCPEventAction
+ (id)actionToSetPointerAbsoluteLocation:(CGPoint)a3 environment:(id)a4;
+ (id)actionToSetPointerCurrentAbsoluteLocation;
- (RCPEventAction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RCPEventAction

- (RCPEventAction)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = RCPEventAction;
  return [(RCPEventAction *)&v4 init];
}

+ (id)actionToSetPointerCurrentAbsoluteLocation
{
  v3 = [MEMORY[0x277CF0720] sharedInstance];
  [v3 globalPointerPosition];
  v5 = v4;
  v7 = v6;
  v8 = +[RCPEventEnvironment currentEnvironment];
  v9 = [a1 actionToSetPointerAbsoluteLocation:v8 environment:{v5, v7}];

  return v9;
}

+ (id)actionToSetPointerAbsoluteLocation:(CGPoint)a3 environment:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  v7 = objc_alloc_init(_RCPEventActionSetPointerLocation);
  v8 = [v6 screens];
  v9 = [v8 firstObject];

  [v9 pointSize];
  if (v10 == 0.0 || v11 == 0.0)
  {
    +[RCPEventAction actionToSetPointerAbsoluteLocation:environment:];
  }

  v12 = x / v10;
  v13 = y / v11;
  [(_RCPEventActionSetPointerLocation *)v7 setModelPoint:x / v10, y / v11];
  if (_CLTLogLevel >= 2)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"get model point: %g, %g -> %g, %g \n", *&x, *&y, *&v12, *&v13];
    v15 = [v14 UTF8String];
    v16 = MEMORY[0x277D85E08];
    fputs(v15, *MEMORY[0x277D85E08]);

    fflush(*v16);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self];
  v5 = [v3 unarchiveObjectWithData:v4];

  return v5;
}

+ (void)actionToSetPointerAbsoluteLocation:environment:.cold.1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Normalization failed due to the screen width and height was unexpectedly 0 or NaN."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[RCPEventAction actionToSetPointerAbsoluteLocation:environment:]"];
    v2 = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"RCPEvent.m";
    v6 = 1024;
    v7 = 301;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_2619DE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v2, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end