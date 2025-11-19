@interface SBHIconGridSizeClassSet
+ (SBHIconGridSizeClassSet)allocWithZone:(_NSZone *)a3;
+ (id)gridSizeClassSetForAllGridSizeClasses;
+ (id)gridSizeClassSetForAllNonDefaultGridSizeClasses;
+ (id)gridSizeClassSetForDefaultGridSizeClass;
- (BOOL)containsGridSizeClass:(id)a3;
- (BOOL)containsGridSizeClass:(id)a3 inDomain:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSSet)allGridSizeClasses;
- (NSString)description;
- (SBHIconGridSizeClassSet)init;
- (SBHIconGridSizeClassSet)initWithAllGridSizeClassesInDomain:(id)a3;
- (SBHIconGridSizeClassSet)initWithAllNonDefaultGridSizeClassesInDomain:(id)a3;
- (SBHIconGridSizeClassSet)initWithCHSWidgetFamilyMask:(unint64_t)a3;
- (SBHIconGridSizeClassSet)initWithCHSWidgetFamilyMask:(unint64_t)a3 inDomain:(id)a4;
- (SBHIconGridSizeClassSet)initWithCoder:(id)a3;
- (SBHIconGridSizeClassSet)initWithGridSizeClass:(id)a3;
- (SBHIconGridSizeClassSet)initWithGridSizeClasses:(id)a3;
- (SBHIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)a3;
- (id)allGridSizeClassesInDomain:(id)a3;
- (id)descriptionWithGridSizeClassDomain:(id)a3;
- (id)gridSizeClassSetByAddingGridSizeClass:(id)a3;
- (id)gridSizeClassSetByIntersectingWithGridSizeClassSet:(id)a3;
- (id)gridSizeClassSetByRemovingGridSizeClass:(id)a3;
- (id)gridSizeClassSetByUnioningWithGridSizeClassSet:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)chsWidgetFamilyMask;
- (unint64_t)chsWidgetFamilyMaskInDomain:(id)a3;
- (unint64_t)count;
- (unint64_t)countInDomain:(id)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3 gridSizeClassDomain:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateGridSizeClassesInDomain:(id)a3 usingBlock:(id)a4;
- (void)enumerateGridSizeClassesUsingBlock:(id)a3;
@end

@implementation SBHIconGridSizeClassSet

void __66__SBHIconGridSizeClassSet_gridSizeClassSetForDefaultGridSizeClass__block_invoke()
{
  v0 = [SBHImmutableIconGridSizeClassSet alloc];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:@"SBHIconGridSizeClassDefault"];
  v1 = [(SBHImmutableIconGridSizeClassSet *)v0 initWithGridSizeClasses:v3];
  v2 = gridSizeClassSetForDefaultGridSizeClass_gridSizeClassSet;
  gridSizeClassSetForDefaultGridSizeClass_gridSizeClassSet = v1;
}

+ (id)gridSizeClassSetForDefaultGridSizeClass
{
  if (gridSizeClassSetForDefaultGridSizeClass_onceToken != -1)
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];
  }

  v3 = gridSizeClassSetForDefaultGridSizeClass_gridSizeClassSet;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  v4 = [v3 hash];
  v5 = [(SBHIconGridSizeClassSet *)self _removedGridSizeClasses];
  v6 = [v5 hash];

  return v6 ^ v4;
}

+ (SBHIconGridSizeClassSet)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(SBHIconGridSizeClassSet *)SBHImmutableIconGridSizeClassSet allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SBHIconGridSizeClassSet;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (SBHIconGridSizeClassSet)initWithGridSizeClasses:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBHIconGridSizeClassSet;
  return [(SBHIconGridSizeClassSet *)&v4 init];
}

- (SBHIconGridSizeClassSet)initWithGridSizeClass:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v4];

  return v5;
}

- (SBHIconGridSizeClassSet)initWithAllGridSizeClassesInDomain:(id)a3
{
  v4 = [a3 allGridSizeClasses];
  v5 = [v4 allGridSizeClasses];
  v6 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v5];

  return v6;
}

- (SBHIconGridSizeClassSet)initWithAllNonDefaultGridSizeClassesInDomain:(id)a3
{
  v4 = [a3 allNonDefaultGridSizeClasses];
  v5 = [v4 allGridSizeClasses];
  v6 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v5];

  return v6;
}

- (SBHIconGridSizeClassSet)init
{
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v3];

  return v4;
}

- (SBHIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)a3
{
  v4 = [a3 gridSizeClasses];
  v5 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v4];

  return v5;
}

+ (id)gridSizeClassSetForAllGridSizeClasses
{
  if (gridSizeClassSetForAllGridSizeClasses_onceToken != -1)
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForAllGridSizeClasses];
  }

  v3 = gridSizeClassSetForAllGridSizeClasses_gridSizeClassSet;

  return v3;
}

uint64_t __64__SBHIconGridSizeClassSet_gridSizeClassSetForAllGridSizeClasses__block_invoke()
{
  v0 = objc_alloc_init(SBHAllIconGridSizeClassSet);
  v1 = gridSizeClassSetForAllGridSizeClasses_gridSizeClassSet;
  gridSizeClassSetForAllGridSizeClasses_gridSizeClassSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)gridSizeClassSetForAllNonDefaultGridSizeClasses
{
  if (gridSizeClassSetForAllNonDefaultGridSizeClasses_onceToken != -1)
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForAllNonDefaultGridSizeClasses];
  }

  v3 = gridSizeClassSetForAllNonDefaultGridSizeClasses_gridSizeClassSet;

  return v3;
}

uint64_t __74__SBHIconGridSizeClassSet_gridSizeClassSetForAllNonDefaultGridSizeClasses__block_invoke()
{
  v0 = objc_alloc_init(SBHAllNonDefaultIconGridSizeClassSet);
  v1 = gridSizeClassSetForAllNonDefaultGridSizeClasses_gridSizeClassSet;
  gridSizeClassSetForAllNonDefaultGridSizeClasses_gridSizeClassSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)containsGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconGridSizeClassSet *)self _removedGridSizeClasses];
  if ([v5 containsObject:v4])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
    v6 = [v7 containsObject:v4];
  }

  return v6;
}

- (BOOL)containsGridSizeClass:(id)a3 inDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SBHIconGridSizeClassSet *)self containsGridSizeClass:v6])
  {
    v8 = [v7 containsGridSizeClass:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSSet)allGridSizeClasses
{
  v3 = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  v4 = [(SBHIconGridSizeClassSet *)self _removedGridSizeClasses];
  if ([v4 count])
  {
    v5 = [v3 mutableCopy];
    v6 = v5;
    if (v4)
    {
      [(NSSet *)v5 minusSet:v4];
    }
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

- (id)allGridSizeClassesInDomain:(id)a3
{
  v4 = [a3 allGridSizeClasses];
  v5 = [(SBHIconGridSizeClassSet *)self gridSizeClassSetByIntersectingWithGridSizeClassSet:v4];
  v6 = [v5 allGridSizeClasses];

  return v6;
}

- (unint64_t)count
{
  v2 = [(SBHIconGridSizeClassSet *)self allGridSizeClasses];
  v3 = [v2 count];

  return v3;
}

- (void)enumerateGridSizeClassesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconGridSizeClassSet *)self allGridSizeClasses];
  [v5 enumerateObjectsUsingBlock:v4];
}

- (void)enumerateGridSizeClassesInDomain:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(SBHIconGridSizeClassSet *)self allGridSizeClassesInDomain:a3];
  [v7 enumerateObjectsUsingBlock:v6];
}

- (unint64_t)countInDomain:(id)a3
{
  v3 = [(SBHIconGridSizeClassSet *)self allGridSizeClassesInDomain:a3];
  v4 = [v3 count];

  return v4;
}

- (id)gridSizeClassSetByUnioningWithGridSizeClassSet:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  v6 = [v4 gridSizeClasses];
  if ([v5 isEqualToSet:v6])
  {
    v7 = self;
  }

  else
  {
    v7 = [(SBHIconGridSizeClassSet *)self mutableCopy];
    [(SBHIconGridSizeClassSet *)v7 unionGridSizeClassSet:v4];
  }

  return v7;
}

- (id)gridSizeClassSetByIntersectingWithGridSizeClassSet:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  v6 = [v4 gridSizeClasses];
  if ([v5 isEqualToSet:v6])
  {
    v7 = self;
  }

  else
  {
    v7 = [(SBHIconGridSizeClassSet *)self mutableCopy];
    [(SBHIconGridSizeClassSet *)v7 intersectGridSizeClassSet:v4];
  }

  return v7;
}

- (id)gridSizeClassSetByAddingGridSizeClass:(id)a3
{
  v4 = a3;
  if ([(SBHIconGridSizeClassSet *)self containsGridSizeClass:v4])
  {
    v5 = [(SBHIconGridSizeClassSet *)self copy];
  }

  else
  {
    v5 = [(SBHIconGridSizeClassSet *)self mutableCopy];
    [v5 addGridSizeClass:v4];
  }

  return v5;
}

- (id)gridSizeClassSetByRemovingGridSizeClass:(id)a3
{
  v4 = a3;
  if ([(SBHIconGridSizeClassSet *)self containsGridSizeClass:v4])
  {
    v5 = [(SBHIconGridSizeClassSet *)self mutableCopy];
    [v5 removeGridSizeClass:v4];
  }

  else
  {
    v5 = [(SBHIconGridSizeClassSet *)self copy];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
      v9 = [(SBHIconGridSizeClassSet *)v7 gridSizeClasses];

      v10 = BSEqualSets();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHIconGridSizeClassSet *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (id)descriptionWithGridSizeClassDomain:(id)a3
{
  v4 = MEMORY[0x1E698E688];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [(SBHIconGridSizeClassSet *)self appendDescriptionToFormatter:v6 gridSizeClassDomain:v5];

  v7 = [v6 description];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(SBHIconGridSizeClassSet *)SBHMutableIconGridSizeClassSet allocWithZone:a3];

  return [(SBHMutableIconGridSizeClassSet *)v4 initWithIconGridSizeClassSet:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  [v4 encodeObject:v5 forKey:@"gridSizeClasses"];
}

- (SBHIconGridSizeClassSet)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v4 setWithObjects:{v6, v7, 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"gridSizeClasses"];

  v10 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v9];
  return v10;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v5 = +[SBHIconGridSizeClassDomain globalDomain];
  [(SBHIconGridSizeClassSet *)self appendDescriptionToFormatter:v4 gridSizeClassDomain:v5];
}

- (void)appendDescriptionToFormatter:(id)a3 gridSizeClassDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  if ([v8 count])
  {
    v9 = [v8 allObjects];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__SBHIconGridSizeClassSet_appendDescriptionToFormatter_gridSizeClassDomain___block_invoke;
    v12[3] = &unk_1E808C8D0;
    v13 = v7;
    v10 = [v9 bs_map:v12];
    v11 = [v10 componentsJoinedByString:{@", "}];
    [v6 appendString:v11 withName:@"gridSizeClasses" skipIfEmpty:1];
  }
}

id __76__SBHIconGridSizeClassSet_appendDescriptionToFormatter_gridSizeClassDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) descriptionForGridSizeClass:v3];
  if (!v4)
  {
    v4 = v3;
  }

  return v4;
}

- (SBHIconGridSizeClassSet)initWithCHSWidgetFamilyMask:(unint64_t)a3
{
  v5 = +[SBHIconGridSizeClassDomain globalDomain];
  v6 = [(SBHIconGridSizeClassSet *)self initWithCHSWidgetFamilyMask:a3 inDomain:v5];

  return v6;
}

- (SBHIconGridSizeClassSet)initWithCHSWidgetFamilyMask:(unint64_t)a3 inDomain:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (a3)
  {
    v8 = 0;
    v9 = vcnt_s8(a3);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.i32[0];
    do
    {
      if (a3)
      {
        v11 = [v6 iconGridSizeClassForCHSWidgetFamily:v8];
        if (v11)
        {
          [v7 addObject:v11];
        }

        --v10;
      }

      a3 >>= 1;
      ++v8;
    }

    while (v10 > 0);
  }

  v12 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v7];

  return v12;
}

- (unint64_t)chsWidgetFamilyMask
{
  v3 = +[SBHIconGridSizeClassDomain globalDomain];
  v4 = [(SBHIconGridSizeClassSet *)self chsWidgetFamilyMaskInDomain:v3];

  return v4;
}

- (unint64_t)chsWidgetFamilyMaskInDomain:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__SBHIconGridSizeClassSet_SBHCHSWidgetFamily__chsWidgetFamilyMaskInDomain___block_invoke;
  v8[3] = &unk_1E808EBF8;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SBHIconGridSizeClassSet *)self enumerateGridSizeClassesUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __75__SBHIconGridSizeClassSet_SBHCHSWidgetFamily__chsWidgetFamilyMaskInDomain___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) chsWidgetFamilyForIconGridSizeClass:a2];
  *(*(*(a1 + 40) + 8) + 24) |= 1 << result;
  return result;
}

@end