@interface WFParameterValueRegistry
+ (id)allParameterValueClassesInWorkflowKit;
+ (id)registeredValueClasses;
+ (void)createRegisteredValueClassesSet;
+ (void)initialize;
+ (void)rediscoverParameterValueClassesIfNeeded;
+ (void)registerValueClass:(Class)class;
@end

@implementation WFParameterValueRegistry

+ (id)allParameterValueClassesInWorkflowKit
{
  static WFParameterValueRegistry.allParameterValueClassesInWorkflowKit()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446DF8, &qword_1CA98DE28);
  v2 = sub_1CA94C648();

  return v2;
}

+ (void)rediscoverParameterValueClassesIfNeeded
{
  if (rediscoverParameterValueClassesIfNeeded_onceToken != -1)
  {
    dispatch_once(&rediscoverParameterValueClassesIfNeeded_onceToken, &__block_literal_global_25244);
  }

  WFRegisterClassesFromClassVendingMethodsIfNeeded();
}

uint64_t __67__WFParameterValueRegistry_rediscoverParameterValueClassesIfNeeded__block_invoke()
{
  v0 = objc_opt_new();
  v1 = rediscoverParameterValueClassesIfNeeded_calledParameterValueClassVendingSelectors;
  rediscoverParameterValueClassesIfNeeded_calledParameterValueClassVendingSelectors = v0;

  rediscoverParameterValueClassesIfNeeded_lock = 0;

  return MEMORY[0x1EEE705A8](WFDyldBulkImageLoadCallback_25253);
}

+ (void)createRegisteredValueClassesSet
{
  v2 = MEMORY[0x1E695DFA8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v11 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v9 = [v2 setWithSet:v11];
  v10 = _mutableRegisteredValueClasses;
  _mutableRegisteredValueClasses = v9;
}

+ (id)registeredValueClasses
{
  [self rediscoverParameterValueClassesIfNeeded];
  v2 = [_mutableRegisteredValueClasses copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

+ (void)registerValueClass:(Class)class
{
  if (([(objc_class *)class conformsToProtocol:&unk_1F4AA6468]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFParameterValueRegistry.m" lineNumber:34 description:@"Parameter value classes must conform to NSSecureCoding"];
  }

  v6 = _mutableRegisteredValueClasses;

  [v6 addObject:class];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self createRegisteredValueClassesSet];
  }
}

@end