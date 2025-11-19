@interface SBDefaults
+ (id)externalDefaults;
+ (id)localDefaults;
@end

@implementation SBDefaults

+ (id)localDefaults
{
  if (localDefaults___once != -1)
  {
    +[SBDefaults localDefaults];
  }

  v3 = localDefaults___instance;

  return v3;
}

+ (id)externalDefaults
{
  if (externalDefaults___once != -1)
  {
    +[SBDefaults externalDefaults];
  }

  v3 = externalDefaults___instance;

  return v3;
}

void __27__SBDefaults_localDefaults__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D65FE8]);
  v1 = localDefaults___instance;
  localDefaults___instance = v0;
}

void __30__SBDefaults_externalDefaults__block_invoke()
{
  v0 = objc_alloc_init(SBExternalDefaults);
  v1 = externalDefaults___instance;
  externalDefaults___instance = v0;
}

@end