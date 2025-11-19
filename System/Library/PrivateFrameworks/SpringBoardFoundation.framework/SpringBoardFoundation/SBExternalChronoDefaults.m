@interface SBExternalChronoDefaults
+ (id)sharedInstance;
- (void)_bindAndRegisterDefaults;
@end

@implementation SBExternalChronoDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showInternalWidgets"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"showInternalWidgets" toDefaultValue:MEMORY[0x1E695E110] options:1];
}

+ (id)sharedInstance
{
  v2 = __shared;
  if (!__shared)
  {
    v3 = objc_alloc_init(SBExternalChronoDefaults);
    v4 = __shared;
    __shared = v3;

    v2 = __shared;
  }

  return v2;
}

@end