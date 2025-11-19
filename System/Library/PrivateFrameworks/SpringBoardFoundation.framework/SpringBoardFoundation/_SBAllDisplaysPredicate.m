@interface _SBAllDisplaysPredicate
+ (id)fromDefaultsKey:(id)a3;
+ (id)sharedInstance;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesDisplay:(id)a3;
- (_SBAllDisplaysPredicate)init;
@end

@implementation _SBAllDisplaysPredicate

- (_SBAllDisplaysPredicate)init
{
  v3.receiver = self;
  v3.super_class = _SBAllDisplaysPredicate;
  return [(SBDisplayModePredicate *)&v3 _init];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[_SBAllDisplaysPredicate sharedInstance];
  }

  v3 = sharedInstance___singleton;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 != 0;
}

- (BOOL)matchesDisplay:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [_SBAllDisplaysPredicate matchesDisplay:];
  }

  v4 = [v3 hardwareIdentifier];
  v5 = v4 != 0;

  return v5;
}

+ (id)fromDefaultsKey:(id)a3
{
  if ([a3 isEqualToString:@"(.allDisplays)"])
  {
    v4 = [a1 sharedInstance];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)matchesDisplay:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"displayConfiguration != nil" object:? file:? lineNumber:? description:?];
}

@end