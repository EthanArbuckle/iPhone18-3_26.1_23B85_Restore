@interface SBHIconGridSizeClassSet
+ (SBHIconGridSizeClassSet)allocWithZone:(_NSZone *)zone;
+ (id)gridSizeClassSetForAllGridSizeClasses;
+ (id)gridSizeClassSetForAllNonDefaultGridSizeClasses;
+ (id)gridSizeClassSetForDefaultGridSizeClass;
- (BOOL)containsGridSizeClass:(id)class;
- (BOOL)containsGridSizeClass:(id)class inDomain:(id)domain;
- (BOOL)isEqual:(id)equal;
- (NSSet)allGridSizeClasses;
- (NSString)description;
- (SBHIconGridSizeClassSet)init;
- (SBHIconGridSizeClassSet)initWithAllGridSizeClassesInDomain:(id)domain;
- (SBHIconGridSizeClassSet)initWithAllNonDefaultGridSizeClassesInDomain:(id)domain;
- (SBHIconGridSizeClassSet)initWithCHSWidgetFamilyMask:(unint64_t)mask;
- (SBHIconGridSizeClassSet)initWithCHSWidgetFamilyMask:(unint64_t)mask inDomain:(id)domain;
- (SBHIconGridSizeClassSet)initWithCoder:(id)coder;
- (SBHIconGridSizeClassSet)initWithGridSizeClass:(id)class;
- (SBHIconGridSizeClassSet)initWithGridSizeClasses:(id)classes;
- (SBHIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)set;
- (id)allGridSizeClassesInDomain:(id)domain;
- (id)descriptionWithGridSizeClassDomain:(id)domain;
- (id)gridSizeClassSetByAddingGridSizeClass:(id)class;
- (id)gridSizeClassSetByIntersectingWithGridSizeClassSet:(id)set;
- (id)gridSizeClassSetByRemovingGridSizeClass:(id)class;
- (id)gridSizeClassSetByUnioningWithGridSizeClassSet:(id)set;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)chsWidgetFamilyMask;
- (unint64_t)chsWidgetFamilyMaskInDomain:(id)domain;
- (unint64_t)count;
- (unint64_t)countInDomain:(id)domain;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)appendDescriptionToFormatter:(id)formatter gridSizeClassDomain:(id)domain;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateGridSizeClassesInDomain:(id)domain usingBlock:(id)block;
- (void)enumerateGridSizeClassesUsingBlock:(id)block;
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
  gridSizeClasses = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  v4 = [gridSizeClasses hash];
  _removedGridSizeClasses = [(SBHIconGridSizeClassSet *)self _removedGridSizeClasses];
  v6 = [_removedGridSizeClasses hash];

  return v6 ^ v4;
}

+ (SBHIconGridSizeClassSet)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(SBHIconGridSizeClassSet *)SBHImmutableIconGridSizeClassSet allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SBHIconGridSizeClassSet;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (SBHIconGridSizeClassSet)initWithGridSizeClasses:(id)classes
{
  v4.receiver = self;
  v4.super_class = SBHIconGridSizeClassSet;
  return [(SBHIconGridSizeClassSet *)&v4 init];
}

- (SBHIconGridSizeClassSet)initWithGridSizeClass:(id)class
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:class];
  v5 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v4];

  return v5;
}

- (SBHIconGridSizeClassSet)initWithAllGridSizeClassesInDomain:(id)domain
{
  allGridSizeClasses = [domain allGridSizeClasses];
  v4AllGridSizeClasses = [allGridSizeClasses allGridSizeClasses];
  v6 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v4AllGridSizeClasses];

  return v6;
}

- (SBHIconGridSizeClassSet)initWithAllNonDefaultGridSizeClassesInDomain:(id)domain
{
  allNonDefaultGridSizeClasses = [domain allNonDefaultGridSizeClasses];
  allGridSizeClasses = [allNonDefaultGridSizeClasses allGridSizeClasses];
  v6 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:allGridSizeClasses];

  return v6;
}

- (SBHIconGridSizeClassSet)init
{
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v3];

  return v4;
}

- (SBHIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)set
{
  gridSizeClasses = [set gridSizeClasses];
  v5 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:gridSizeClasses];

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

- (BOOL)containsGridSizeClass:(id)class
{
  classCopy = class;
  _removedGridSizeClasses = [(SBHIconGridSizeClassSet *)self _removedGridSizeClasses];
  if ([_removedGridSizeClasses containsObject:classCopy])
  {
    v6 = 0;
  }

  else
  {
    gridSizeClasses = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
    v6 = [gridSizeClasses containsObject:classCopy];
  }

  return v6;
}

- (BOOL)containsGridSizeClass:(id)class inDomain:(id)domain
{
  classCopy = class;
  domainCopy = domain;
  if ([(SBHIconGridSizeClassSet *)self containsGridSizeClass:classCopy])
  {
    v8 = [domainCopy containsGridSizeClass:classCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSSet)allGridSizeClasses
{
  gridSizeClasses = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  _removedGridSizeClasses = [(SBHIconGridSizeClassSet *)self _removedGridSizeClasses];
  if ([_removedGridSizeClasses count])
  {
    v5 = [gridSizeClasses mutableCopy];
    v6 = v5;
    if (_removedGridSizeClasses)
    {
      [(NSSet *)v5 minusSet:_removedGridSizeClasses];
    }
  }

  else
  {
    v6 = gridSizeClasses;
  }

  v7 = v6;

  return v6;
}

- (id)allGridSizeClassesInDomain:(id)domain
{
  allGridSizeClasses = [domain allGridSizeClasses];
  v5 = [(SBHIconGridSizeClassSet *)self gridSizeClassSetByIntersectingWithGridSizeClassSet:allGridSizeClasses];
  allGridSizeClasses2 = [v5 allGridSizeClasses];

  return allGridSizeClasses2;
}

- (unint64_t)count
{
  allGridSizeClasses = [(SBHIconGridSizeClassSet *)self allGridSizeClasses];
  v3 = [allGridSizeClasses count];

  return v3;
}

- (void)enumerateGridSizeClassesUsingBlock:(id)block
{
  blockCopy = block;
  allGridSizeClasses = [(SBHIconGridSizeClassSet *)self allGridSizeClasses];
  [allGridSizeClasses enumerateObjectsUsingBlock:blockCopy];
}

- (void)enumerateGridSizeClassesInDomain:(id)domain usingBlock:(id)block
{
  blockCopy = block;
  v7 = [(SBHIconGridSizeClassSet *)self allGridSizeClassesInDomain:domain];
  [v7 enumerateObjectsUsingBlock:blockCopy];
}

- (unint64_t)countInDomain:(id)domain
{
  v3 = [(SBHIconGridSizeClassSet *)self allGridSizeClassesInDomain:domain];
  v4 = [v3 count];

  return v4;
}

- (id)gridSizeClassSetByUnioningWithGridSizeClassSet:(id)set
{
  setCopy = set;
  gridSizeClasses = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  gridSizeClasses2 = [setCopy gridSizeClasses];
  if ([gridSizeClasses isEqualToSet:gridSizeClasses2])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(SBHIconGridSizeClassSet *)self mutableCopy];
    [(SBHIconGridSizeClassSet *)selfCopy unionGridSizeClassSet:setCopy];
  }

  return selfCopy;
}

- (id)gridSizeClassSetByIntersectingWithGridSizeClassSet:(id)set
{
  setCopy = set;
  gridSizeClasses = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  gridSizeClasses2 = [setCopy gridSizeClasses];
  if ([gridSizeClasses isEqualToSet:gridSizeClasses2])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(SBHIconGridSizeClassSet *)self mutableCopy];
    [(SBHIconGridSizeClassSet *)selfCopy intersectGridSizeClassSet:setCopy];
  }

  return selfCopy;
}

- (id)gridSizeClassSetByAddingGridSizeClass:(id)class
{
  classCopy = class;
  if ([(SBHIconGridSizeClassSet *)self containsGridSizeClass:classCopy])
  {
    v5 = [(SBHIconGridSizeClassSet *)self copy];
  }

  else
  {
    v5 = [(SBHIconGridSizeClassSet *)self mutableCopy];
    [v5 addGridSizeClass:classCopy];
  }

  return v5;
}

- (id)gridSizeClassSetByRemovingGridSizeClass:(id)class
{
  classCopy = class;
  if ([(SBHIconGridSizeClassSet *)self containsGridSizeClass:classCopy])
  {
    v5 = [(SBHIconGridSizeClassSet *)self mutableCopy];
    [v5 removeGridSizeClass:classCopy];
  }

  else
  {
    v5 = [(SBHIconGridSizeClassSet *)self copy];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      gridSizeClasses = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
      gridSizeClasses2 = [(SBHIconGridSizeClassSet *)v7 gridSizeClasses];

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

- (id)descriptionWithGridSizeClassDomain:(id)domain
{
  v4 = MEMORY[0x1E698E688];
  domainCopy = domain;
  v6 = objc_alloc_init(v4);
  [(SBHIconGridSizeClassSet *)self appendDescriptionToFormatter:v6 gridSizeClassDomain:domainCopy];

  v7 = [v6 description];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(SBHIconGridSizeClassSet *)SBHMutableIconGridSizeClassSet allocWithZone:zone];

  return [(SBHMutableIconGridSizeClassSet *)v4 initWithIconGridSizeClassSet:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  gridSizeClasses = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  [coderCopy encodeObject:gridSizeClasses forKey:@"gridSizeClasses"];
}

- (SBHIconGridSizeClassSet)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v4 setWithObjects:{v6, v7, 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"gridSizeClasses"];

  v10 = [(SBHIconGridSizeClassSet *)self initWithGridSizeClasses:v9];
  return v10;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = +[SBHIconGridSizeClassDomain globalDomain];
  [(SBHIconGridSizeClassSet *)self appendDescriptionToFormatter:formatterCopy gridSizeClassDomain:v5];
}

- (void)appendDescriptionToFormatter:(id)formatter gridSizeClassDomain:(id)domain
{
  formatterCopy = formatter;
  domainCopy = domain;
  gridSizeClasses = [(SBHIconGridSizeClassSet *)self gridSizeClasses];
  if ([gridSizeClasses count])
  {
    allObjects = [gridSizeClasses allObjects];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__SBHIconGridSizeClassSet_appendDescriptionToFormatter_gridSizeClassDomain___block_invoke;
    v12[3] = &unk_1E808C8D0;
    v13 = domainCopy;
    v10 = [allObjects bs_map:v12];
    v11 = [v10 componentsJoinedByString:{@", "}];
    [formatterCopy appendString:v11 withName:@"gridSizeClasses" skipIfEmpty:1];
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

- (SBHIconGridSizeClassSet)initWithCHSWidgetFamilyMask:(unint64_t)mask
{
  v5 = +[SBHIconGridSizeClassDomain globalDomain];
  v6 = [(SBHIconGridSizeClassSet *)self initWithCHSWidgetFamilyMask:mask inDomain:v5];

  return v6;
}

- (SBHIconGridSizeClassSet)initWithCHSWidgetFamilyMask:(unint64_t)mask inDomain:(id)domain
{
  domainCopy = domain;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (mask)
  {
    v8 = 0;
    v9 = vcnt_s8(mask);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.i32[0];
    do
    {
      if (mask)
      {
        v11 = [domainCopy iconGridSizeClassForCHSWidgetFamily:v8];
        if (v11)
        {
          [v7 addObject:v11];
        }

        --v10;
      }

      mask >>= 1;
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

- (unint64_t)chsWidgetFamilyMaskInDomain:(id)domain
{
  domainCopy = domain;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__SBHIconGridSizeClassSet_SBHCHSWidgetFamily__chsWidgetFamilyMaskInDomain___block_invoke;
  v8[3] = &unk_1E808EBF8;
  v5 = domainCopy;
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