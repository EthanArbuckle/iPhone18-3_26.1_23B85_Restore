@interface SXComponentClassification
+ (id)classificationForClass:(uint64_t)a1;
+ (id)classificationForComponentWithRole:(int)a3;
+ (id)classificationForComponentWithType:(id)a3;
+ (id)classificationForComponentWithType:(id)a3 role:(id)a4;
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
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = __classificationClasses;
    __classificationClasses = v2;

    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = __classificationClassesByRole;
    __classificationClassesByRole = v4;

    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = __defaultClassificationsByType;
    __defaultClassificationsByType = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = __classifications;
    __classifications = v8;

    __unfairLock = 0;

    +[SXComponentClassificationRegister registerClasses];
  }
}

+ (void)registerClassification
{
  v8 = [a1 typeString];
  v3 = [a1 roleString];
  v4 = [a1 role];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v8, v3];
  [__classificationClasses setObject:a1 forKey:v5];
  if (v4)
  {
    v6 = __classificationClassesByRole;
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [v6 setObject:a1 forKey:v7];
  }

  else
  {
    [__defaultClassificationsByType setObject:a1 forKey:v8];
  }
}

+ (id)classificationForComponentWithRole:(int)a3
{
  if (a3)
  {
    v5 = __classificationClassesByRole;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v7 = [v5 objectForKey:v6];

    v8 = [(SXComponentClassification *)a1 classificationForClass:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)classificationForClass:(uint64_t)a1
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

+ (id)classificationForComponentWithType:(id)a3
{
  v4 = [__defaultClassificationsByType objectForKey:a3];

  return [(SXComponentClassification *)a1 classificationForClass:v4];
}

+ (id)classificationForComponentWithType:(id)a3 role:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7 || ([MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v6, v7], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(__classificationClasses, "objectForKey:", v9), v9, !v10))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v6, SXComponentClassificationUnknownRoleString];
    v10 = [__classificationClasses objectForKey:v11];
  }

  v12 = [(SXComponentClassification *)a1 classificationForClass:v10];

  return v12;
}

- (unint64_t)contentRelevance
{
  v2 = [(SXComponentClassification *)self textRules];
  v3 = [v2 textFlow] == 1;

  return 2 * v3;
}

- (void)setupStyleIdentifiers
{
  v13 = [objc_opt_class() roleString];
  v3 = [objc_opt_class() typeString];
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithObject:@"default"];
  if (v3 && v3 != SXComponentClassificationUnknownTypeString)
  {
    v5 = SXDefaultComponentStyleIdentifierForRole(v3);
    [v4 addObject:v5];

    v6 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    v7 = SXDefaultComponentStyleIdentifierForRole(v6);
    [v4 addObject:v7];
  }

  if (v13 && v13 != SXComponentClassificationUnknownRoleString)
  {
    v8 = SXDefaultComponentStyleIdentifierForRole(v13);
    [v4 addObject:v8];

    v9 = [(__CFString *)v13 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    v10 = SXDefaultComponentStyleIdentifierForRole(v9);
    [v4 addObject:v10];
  }

  v11 = [v4 array];
  defaultStyleIdentifiers = self->_defaultStyleIdentifiers;
  self->_defaultStyleIdentifiers = v11;
}

@end