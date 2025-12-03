@interface SXComponentClassification
+ (id)classificationForClass:(uint64_t)class;
+ (id)classificationForComponentWithRole:(int)role;
+ (id)classificationForComponentWithType:(id)type;
+ (id)classificationForComponentWithType:(id)type role:(id)role;
+ (void)initialize;
+ (void)registerClassification;
- (SXComponentClassification)init;
- (unint64_t)contentRelevance;
- (void)setupStyleIdentifiers;
@end

@implementation SXComponentClassification

- (SXComponentClassification)init
{
  v5.receiver = self;
  v5.super_class = SXComponentClassification;
  v2 = [(SXComponentClassification *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SXComponentClassification *)v2 setupStyleIdentifiers];
  }

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v3 = __classificationClasses;
    __classificationClasses = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v5 = __classificationClassesByRole;
    __classificationClassesByRole = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v7 = __defaultClassificationsByType;
    __defaultClassificationsByType = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    v9 = __classifications;
    __classifications = dictionary4;

    __unfairLock = 0;

    +[SXComponentClassificationRegister registerClasses];
  }
}

+ (void)registerClassification
{
  typeString = [self typeString];
  roleString = [self roleString];
  role = [self role];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", typeString, roleString];
  [__classificationClasses setObject:self forKey:v5];
  if (role)
  {
    v6 = __classificationClassesByRole;
    v7 = [MEMORY[0x1E696AD98] numberWithInt:role];
    [v6 setObject:self forKey:v7];
  }

  else
  {
    [__defaultClassificationsByType setObject:self forKey:typeString];
  }
}

+ (id)classificationForComponentWithRole:(int)role
{
  if (role)
  {
    v5 = __classificationClassesByRole;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v7 = [v5 objectForKey:v6];

    v8 = [(SXComponentClassification *)self classificationForClass:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)classificationForClass:(uint64_t)class
{
  objc_opt_self();
  if (!a2)
  {
    a2 = objc_opt_class();
  }

  v3 = NSStringFromClass(a2);
  os_unfair_lock_lock_with_options();
  v4 = [__classifications objectForKey:v3];
  os_unfair_lock_unlock(&__unfairLock);
  if (!v4)
  {
    v4 = objc_alloc_init(a2);
    os_unfair_lock_lock_with_options();
    [__classifications setObject:v4 forKey:v3];
    os_unfair_lock_unlock(&__unfairLock);
  }

  return v4;
}

+ (id)classificationForComponentWithType:(id)type
{
  v4 = [__defaultClassificationsByType objectForKey:type];

  return [(SXComponentClassification *)self classificationForClass:v4];
}

+ (id)classificationForComponentWithType:(id)type role:(id)role
{
  typeCopy = type;
  roleCopy = role;
  v8 = roleCopy;
  if (!typeCopy || !roleCopy || ([MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", typeCopy, roleCopy], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(__classificationClasses, "objectForKey:", v9), v9, !v10))
  {
    sXComponentClassificationUnknownRoleString = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", typeCopy, SXComponentClassificationUnknownRoleString];
    v10 = [__classificationClasses objectForKey:sXComponentClassificationUnknownRoleString];
  }

  v12 = [(SXComponentClassification *)self classificationForClass:v10];

  return v12;
}

- (unint64_t)contentRelevance
{
  textRules = [(SXComponentClassification *)self textRules];
  v3 = [textRules textFlow] == 1;

  return 2 * v3;
}

- (void)setupStyleIdentifiers
{
  roleString = [objc_opt_class() roleString];
  typeString = [objc_opt_class() typeString];
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithObject:@"default"];
  if (typeString && typeString != SXComponentClassificationUnknownTypeString)
  {
    v5 = SXDefaultComponentStyleIdentifierForRole(typeString);
    [v4 addObject:v5];

    v6 = [typeString stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    v7 = SXDefaultComponentStyleIdentifierForRole(v6);
    [v4 addObject:v7];
  }

  if (roleString && roleString != SXComponentClassificationUnknownRoleString)
  {
    v8 = SXDefaultComponentStyleIdentifierForRole(roleString);
    [v4 addObject:v8];

    v9 = [(__CFString *)roleString stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    v10 = SXDefaultComponentStyleIdentifierForRole(v9);
    [v4 addObject:v10];
  }

  array = [v4 array];
  defaultStyleIdentifiers = self->_defaultStyleIdentifiers;
  self->_defaultStyleIdentifiers = array;
}

@end