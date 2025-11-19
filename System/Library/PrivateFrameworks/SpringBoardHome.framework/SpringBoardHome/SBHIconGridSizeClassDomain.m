@interface SBHIconGridSizeClassDomain
+ (SBHIconGridSizeClassDomain)allocWithZone:(_NSZone *)a3;
+ (SBHIconGridSizeClassDomain)builtInDomain;
+ (SBHMutableIconGridSizeClassDomain)globalDomain;
+ (id)effectiveGridSizeClassDomainForDomain:(id)a3;
- (BOOL)containsGridSizeClass:(id)a3;
- (SBHIconGridSizeClassDomain)initWithGridSizeClass:(id)a3 info:(id)a4;
- (SBHIconGridSizeClassDomain)initWithGridSizeClasses:(id)a3;
- (SBHIconGridSizeClassDomain)initWithGridSizeClasses:(id)a3 order:(id)a4 fallbackDomain:(id)a5;
- (SBHIconGridSizeClassDomain)initWithIconGridSizeClassDomain:(id)a3;
- (SBHIconGridSizeClassSet)allGridSizeClasses;
- (SBHIconGridSizeClassSet)allNonDefaultGridSizeClasses;
- (id)gridSizeClassForArchiveValue:(id)a3;
- (id)gridSizeClassForDescription:(id)a3;
- (id)gridSizeClassOrder;
- (id)iconGridSizeClassForATXStackLayoutSize:(unint64_t)a3;
- (id)iconGridSizeClassForCHSWidgetFamily:(int64_t)a3;
- (id)iconGridSizeClassPassingTest:(id)a3;
- (id)infoForIconGridSizeClass:(id)a3;
- (id)infoValueForGridSizeClass:(id)a3 forKey:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)chsWidgetFamilyForIconGridSizeClass:(id)a3;
- (unint64_t)atxStackLayoutSizeForIconGridSizeClass:(id)a3;
- (unint64_t)filterKnownCHSWidgetFamilies:(unint64_t)a3;
- (void)addIconGridSizeClassesToSet:(id)a3;
- (void)enumerateGridSizeClassesFilteredBySet:(id)a3 usingBlock:(id)a4;
- (void)enumerateGridSizeClassesUsingBlock:(id)a3;
@end

@implementation SBHIconGridSizeClassDomain

+ (SBHMutableIconGridSizeClassDomain)globalDomain
{
  if (globalDomain_onceToken != -1)
  {
    +[SBHIconGridSizeClassDomain globalDomain];
  }

  v3 = globalDomain_globalDomain;

  return v3;
}

- (id)gridSizeClassOrder
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(SBHIconGridSizeClassDomain *)self registeredGridSizeClassOrder];
  v6[0] = @"SBHIconGridSizeClassDefault";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v3 arrayByAddingObjectsFromArray:v2];

  return v4;
}

+ (SBHIconGridSizeClassDomain)builtInDomain
{
  if (builtInDomain_onceToken != -1)
  {
    +[SBHIconGridSizeClassDomain builtInDomain];
  }

  v3 = builtInDomain_builtInDomain;

  return v3;
}

uint64_t __42__SBHIconGridSizeClassDomain_globalDomain__block_invoke()
{
  globalDomain_globalDomain = objc_alloc_init(SBHGlobalIconGridSizeClassDomain);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __43__SBHIconGridSizeClassDomain_builtInDomain__block_invoke()
{
  builtInDomain_builtInDomain = objc_alloc_init(SBHBuiltInIconGridSizeClassDomain);

  return MEMORY[0x1EEE66BB8]();
}

+ (SBHIconGridSizeClassDomain)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(SBHIconGridSizeClassDomain *)SBHImmutableIconGridSizeClassDomain allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SBHIconGridSizeClassDomain;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (SBHIconGridSizeClassDomain)initWithGridSizeClass:(id)a3 info:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [(SBHIconGridSizeClassDomain *)self initWithGridSizeClasses:v9];
  return v10;
}

- (SBHIconGridSizeClassDomain)initWithGridSizeClasses:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [(SBHIconGridSizeClassDomain *)self initWithGridSizeClasses:v4 order:v5 fallbackDomain:0];

  return v6;
}

- (SBHIconGridSizeClassDomain)initWithGridSizeClasses:(id)a3 order:(id)a4 fallbackDomain:(id)a5
{
  v6.receiver = self;
  v6.super_class = SBHIconGridSizeClassDomain;
  return [(SBHIconGridSizeClassDomain *)&v6 init:a3];
}

- (SBHIconGridSizeClassDomain)initWithIconGridSizeClassDomain:(id)a3
{
  v4 = a3;
  v5 = [v4 registeredGridSizeClasses];
  v6 = [v4 registeredGridSizeClassOrder];
  v7 = [v4 fallbackDomain];

  v8 = [(SBHIconGridSizeClassDomain *)self initWithGridSizeClasses:v5 order:v6 fallbackDomain:v7];
  return v8;
}

- (id)infoValueForGridSizeClass:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(SBHIconGridSizeClassDomain *)self infoForIconGridSizeClass:a3];
  v8 = [v7 objectForKey:v6];

  return v8;
}

- (id)iconGridSizeClassPassingTest:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__SBHIconGridSizeClassDomain_iconGridSizeClassPassingTest___block_invoke;
  v12[3] = &unk_1E808C978;
  v12[4] = self;
  v5 = v4;
  v13 = v5;
  v14 = &v15;
  [(SBHIconGridSizeClassDomain *)self enumerateGridSizeClassesUsingBlock:v12];
  v6 = v16[5];
  if (!v6)
  {
    v7 = [(SBHIconGridSizeClassDomain *)self fallbackDomain];
    v8 = [v7 iconGridSizeClassPassingTest:v5];
    v9 = v16[5];
    v16[5] = v8;

    v6 = v16[5];
  }

  v10 = v6;

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __59__SBHIconGridSizeClassDomain_iconGridSizeClassPassingTest___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [*(a1 + 32) infoForIconGridSizeClass:?];
  if ((*(*(a1 + 40) + 16))())
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)gridSizeClassForDescription:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__SBHIconGridSizeClassDomain_gridSizeClassForDescription___block_invoke;
  v8[3] = &unk_1E808C9A0;
  v9 = v4;
  v5 = v4;
  v6 = [(SBHIconGridSizeClassDomain *)self iconGridSizeClassPassingTest:v8];

  return v6;
}

uint64_t __58__SBHIconGridSizeClassDomain_gridSizeClassForDescription___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"SBHIconGridSizeClassRegistrationInfoKeyDescription"];
  v4 = [*(a1 + 32) isEqualToString:v3];

  return v4;
}

- (id)gridSizeClassForArchiveValue:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__SBHIconGridSizeClassDomain_gridSizeClassForArchiveValue___block_invoke;
  v8[3] = &unk_1E808C9A0;
  v9 = v4;
  v5 = v4;
  v6 = [(SBHIconGridSizeClassDomain *)self iconGridSizeClassPassingTest:v8];

  return v6;
}

uint64_t __59__SBHIconGridSizeClassDomain_gridSizeClassForArchiveValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"SBHIconGridSizeClassRegistrationInfoKeyArchiveValue"];
  v4 = [*(a1 + 32) isEqualToString:v3];

  return v4;
}

- (BOOL)containsGridSizeClass:(id)a3
{
  v3 = [(SBHIconGridSizeClassDomain *)self infoForIconGridSizeClass:a3];
  v4 = v3 != 0;

  return v4;
}

- (SBHIconGridSizeClassSet)allGridSizeClasses
{
  allGridSizeClasses = self->_allGridSizeClasses;
  if (!allGridSizeClasses)
  {
    v4 = [[SBHDomainIconGridSizeClassSet alloc] initWithGridSizeClassDomain:self];
    v5 = self->_allGridSizeClasses;
    self->_allGridSizeClasses = &v4->super;

    allGridSizeClasses = self->_allGridSizeClasses;
  }

  return allGridSizeClasses;
}

- (SBHIconGridSizeClassSet)allNonDefaultGridSizeClasses
{
  allNonDefaultGridSizeClasses = self->_allNonDefaultGridSizeClasses;
  if (!allNonDefaultGridSizeClasses)
  {
    v4 = [[SBHDomainIconGridSizeClassSet alloc] initWithGridSizeClassDomain:self filter:&__block_literal_global_15_0];
    v5 = self->_allNonDefaultGridSizeClasses;
    self->_allNonDefaultGridSizeClasses = &v4->super;

    allNonDefaultGridSizeClasses = self->_allNonDefaultGridSizeClasses;
  }

  return allNonDefaultGridSizeClasses;
}

uint64_t __58__SBHIconGridSizeClassDomain_allNonDefaultGridSizeClasses__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)enumerateGridSizeClassesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconGridSizeClassDomain *)self gridSizeClassOrder];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__SBHIconGridSizeClassDomain_enumerateGridSizeClassesUsingBlock___block_invoke;
  v15[3] = &unk_1E808A710;
  v7 = v6;
  v16 = v7;
  v8 = v4;
  v17 = v8;
  [v5 enumerateObjectsWithOptions:2 usingBlock:v15];
  v9 = [(SBHIconGridSizeClassDomain *)self fallbackDomain];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__SBHIconGridSizeClassDomain_enumerateGridSizeClassesUsingBlock___block_invoke_2;
  v12[3] = &unk_1E808C9E8;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 enumerateGridSizeClassesUsingBlock:v12];
}

void __65__SBHIconGridSizeClassDomain_enumerateGridSizeClassesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  (*(*(a1 + 40) + 16))();
}

void __65__SBHIconGridSizeClassDomain_enumerateGridSizeClassesUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enumerateGridSizeClassesFilteredBySet:(id)a3 usingBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [a3 allGridSizeClasses];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [(SBHIconGridSizeClassDomain *)self infoForIconGridSizeClass:v12];
          if (v13)
          {
            v14 = 0;
            v6[2](v6, v12, &v14);
            if (v14)
            {

              goto LABEL_14;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    [(SBHIconGridSizeClassDomain *)self enumerateGridSizeClassesUsingBlock:v6];
  }
}

+ (id)effectiveGridSizeClassDomainForDomain:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [a1 globalDomain];
  }

  v7 = v6;

  return v7;
}

- (id)infoForIconGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
  {
    v7 = [(SBHIconGridSizeClassDomain *)self registeredGridSizeClasses];
    v6 = [v7 objectForKey:v5];
    if (!v6)
    {
      v8 = [(SBHIconGridSizeClassDomain *)self fallbackDomain];
      v6 = [v8 infoForIconGridSizeClass:v5];
    }
  }

  else
  {
    v6 = &unk_1F3DB2D98;
  }

  return v6;
}

- (void)addIconGridSizeClassesToSet:(id)a3
{
  v6 = a3;
  v4 = [(SBHIconGridSizeClassDomain *)self registeredGridSizeClassOrder];
  if (v4)
  {
    [v6 addObjectsFromArray:v4];
  }

  v5 = [(SBHIconGridSizeClassDomain *)self fallbackDomain];
  [v5 addIconGridSizeClassesToSet:v6];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBHMutableIconGridSizeClassDomain alloc];

  return [(SBHIconGridSizeClassDomain *)v4 initWithIconGridSizeClassDomain:self];
}

- (unint64_t)atxStackLayoutSizeForIconGridSizeClass:(id)a3
{
  v3 = [(SBHIconGridSizeClassDomain *)self infoValueForGridSizeClass:a3 forKey:@"SBHIconGridSizeClassRegistrationInfoKeyATXStackLayoutSize"];
  v4 = [v3 integerValue];

  return v4;
}

- (id)iconGridSizeClassForATXStackLayoutSize:(unint64_t)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__SBHIconGridSizeClassDomain_SBHATXStackLayoutSize__iconGridSizeClassForATXStackLayoutSize___block_invoke;
  v5[3] = &__block_descriptor_40_e22_B16__0__NSDictionary_8l;
  v5[4] = a3;
  v3 = [(SBHIconGridSizeClassDomain *)self iconGridSizeClassPassingTest:v5];

  return v3;
}

BOOL __92__SBHIconGridSizeClassDomain_SBHATXStackLayoutSize__iconGridSizeClassForATXStackLayoutSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"SBHIconGridSizeClassRegistrationInfoKeyATXStackLayoutSize"];
  v4 = [v3 integerValue] == *(a1 + 32);

  return v4;
}

- (int64_t)chsWidgetFamilyForIconGridSizeClass:(id)a3
{
  v3 = [(SBHIconGridSizeClassDomain *)self infoValueForGridSizeClass:a3 forKey:@"SBHIconGridSizeClassRegistrationInfoKeyCHSWidgetFamily"];
  v4 = [v3 integerValue];

  return v4;
}

- (id)iconGridSizeClassForCHSWidgetFamily:(int64_t)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__SBHIconGridSizeClassDomain_SBHCHSWidgetFamily__iconGridSizeClassForCHSWidgetFamily___block_invoke;
  v5[3] = &__block_descriptor_40_e22_B16__0__NSDictionary_8l;
  v5[4] = a3;
  v3 = [(SBHIconGridSizeClassDomain *)self iconGridSizeClassPassingTest:v5];

  return v3;
}

BOOL __86__SBHIconGridSizeClassDomain_SBHCHSWidgetFamily__iconGridSizeClassForCHSWidgetFamily___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"SBHIconGridSizeClassRegistrationInfoKeyCHSWidgetFamily"];
  v4 = [v3 integerValue] == *(a1 + 32);

  return v4;
}

- (unint64_t)filterKnownCHSWidgetFamilies:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__SBHIconGridSizeClassDomain_SBHCHSWidgetFamily__filterKnownCHSWidgetFamilies___block_invoke;
  v6[3] = &unk_1E808EBF8;
  v6[4] = self;
  v6[5] = &v7;
  [(SBHIconGridSizeClassDomain *)self enumerateGridSizeClassesUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4 & a3;
}

uint64_t __79__SBHIconGridSizeClassDomain_SBHCHSWidgetFamily__filterKnownCHSWidgetFamilies___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) chsWidgetFamilyForIconGridSizeClass:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) |= 1 << result;
  }

  return result;
}

@end