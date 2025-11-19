@interface STSystemStatusDefaults
+ (id)standardDefaults;
- (void)_bindAndRegisterDefaults;
@end

@implementation STSystemStatusDefaults

+ (id)standardDefaults
{
  if (qword_1ED7F5D78 != -1)
  {
    dispatch_once(&qword_1ED7F5D78, &__block_literal_global_22);
  }

  v3 = _MergedGlobals_17;

  return v3;
}

uint64_t __42__STSystemStatusDefaults_standardDefaults__block_invoke()
{
  v0 = objc_alloc_init(STSystemStatusDefaults);
  v1 = _MergedGlobals_17;
  _MergedGlobals_17 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldEnableInternalBundles"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"STEnableInternalBundles" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldEnableUnknownBundles"];
  v5 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"STEnableUnknownBundles" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldEnableUnknownBackgroundActivities"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"STEnableUnknownBackgroundActivities" toDefaultValue:v5 options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldEnableUnknownStatusItems"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"STEnableUnknownStatusItems" toDefaultValue:v5 options:1];
}

@end