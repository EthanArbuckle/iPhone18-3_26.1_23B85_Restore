@interface SBExternalIndigoDefaults
+ (id)defaults;
- (SBExternalIndigoDefaults)init;
- (void)_bindAndRegisterDefaults;
@end

@implementation SBExternalIndigoDefaults

+ (id)defaults
{
  if (defaults___once != -1)
  {
    +[SBExternalIndigoDefaults defaults];
  }

  v3 = defaults___instance;

  return v3;
}

uint64_t __36__SBExternalIndigoDefaults_defaults__block_invoke()
{
  v0 = objc_alloc_init(SBExternalIndigoDefaults);
  v1 = defaults___instance;
  defaults___instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SBExternalIndigoDefaults)init
{
  v3.receiver = self;
  v3.super_class = SBExternalIndigoDefaults;
  return [(BSAbstractDefaultDomain *)&v3 _initWithDomain:@"com.apple.indigo"];
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"indigoConfigurationFlagsBitmask"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"IndigoConfigurationFlags" toDefaultValue:&unk_282FE0AD8 options:1];
}

@end