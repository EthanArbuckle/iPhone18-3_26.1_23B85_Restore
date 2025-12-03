@interface _SBAllDisplaysPredicate
+ (id)fromDefaultsKey:(id)key;
+ (id)sharedInstance;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesDisplay:(id)display;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = equalCopy;
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

- (BOOL)matchesDisplay:(id)display
{
  displayCopy = display;
  if (!displayCopy)
  {
    [_SBAllDisplaysPredicate matchesDisplay:];
  }

  hardwareIdentifier = [displayCopy hardwareIdentifier];
  v5 = hardwareIdentifier != 0;

  return v5;
}

+ (id)fromDefaultsKey:(id)key
{
  if ([key isEqualToString:@"(.allDisplays)"])
  {
    sharedInstance = [self sharedInstance];
  }

  else
  {
    sharedInstance = 0;
  }

  return sharedInstance;
}

- (void)matchesDisplay:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"displayConfiguration != nil" object:? file:? lineNumber:? description:?];
}

@end