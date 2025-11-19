@interface PUIPosterLevelSet
+ (id)allLevelsExceptFloating;
+ (id)compositeLevelSet;
+ (id)defaultLevelSet;
+ (id)floatingLevelSet;
+ (id)levelSetForLevel:(int64_t)a3;
- (BOOL)containsFloatingLayerOnly;
- (BOOL)containsLevel:(int64_t)a3;
- (BOOL)isCompositeLevelSet;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLevelSet:(id)a3;
- (NSOrderedSet)sortedLevels;
- (PUIPosterLevelSet)init;
- (PUIPosterLevelSet)initWithCoder:(id)a3;
- (PUIPosterLevelSet)initWithLevel:(int64_t)a3;
- (PUIPosterLevelSet)initWithNumberOfLevels:(unint64_t)a3;
- (PUIPosterLevelSet)initWithSet:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)enumerateLevels:(id)a3;
@end

@implementation PUIPosterLevelSet

+ (id)defaultLevelSet
{
  if (defaultLevelSet_onceToken != -1)
  {
    +[PUIPosterLevelSet defaultLevelSet];
  }

  v3 = defaultLevelSet_defaultLevelSet;

  return v3;
}

uint64_t __36__PUIPosterLevelSet_defaultLevelSet__block_invoke()
{
  v0 = [[PUIPosterLevelSet alloc] initWithNumberOfLevels:3, -1000, 1000, -2000];
  v1 = defaultLevelSet_defaultLevelSet;
  defaultLevelSet_defaultLevelSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)compositeLevelSet
{
  if (compositeLevelSet_onceToken != -1)
  {
    +[PUIPosterLevelSet compositeLevelSet];
  }

  v3 = compositeLevelSet_compositeLevelSet;

  return v3;
}

uint64_t __38__PUIPosterLevelSet_compositeLevelSet__block_invoke()
{
  v0 = [[PUIPosterLevelSet alloc] initWithNumberOfLevels:8, -3000, -2000, -1000, -500, 0, 1000, 2000, 3000];
  v1 = compositeLevelSet_compositeLevelSet;
  compositeLevelSet_compositeLevelSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)allLevelsExceptFloating
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PUIPosterLevelSet_allLevelsExceptFloating__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allLevelsExceptFloating_onceToken != -1)
  {
    dispatch_once(&allLevelsExceptFloating_onceToken, block);
  }

  v2 = allLevelsExceptFloating_allLevelsExceptFloating;

  return v2;
}

uint64_t __44__PUIPosterLevelSet_allLevelsExceptFloating__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) compositeLevelSet];
  v2 = [v1 copy];
  v3 = allLevelsExceptFloating_allLevelsExceptFloating;
  allLevelsExceptFloating_allLevelsExceptFloating = v2;

  v4 = [*(allLevelsExceptFloating_allLevelsExceptFloating + 8) bs_filter:&__block_literal_global_31];
  v5 = *(allLevelsExceptFloating_allLevelsExceptFloating + 8);
  *(allLevelsExceptFloating_allLevelsExceptFloating + 8) = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

+ (id)floatingLevelSet
{
  if (floatingLevelSet_onceToken != -1)
  {
    +[PUIPosterLevelSet floatingLevelSet];
  }

  v3 = floatingLevelSet_floatingLevelSet;

  return v3;
}

uint64_t __37__PUIPosterLevelSet_floatingLevelSet__block_invoke()
{
  v0 = [[PUIPosterLevelSet alloc] initWithLevel:1000];
  v1 = floatingLevelSet_floatingLevelSet;
  floatingLevelSet_floatingLevelSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)levelSetForLevel:(int64_t)a3
{
  v3 = [[PUIPosterLevelSet alloc] initWithLevel:a3];

  return v3;
}

- (PUIPosterLevelSet)initWithSet:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUIPosterLevelSet;
  v5 = [(PUIPosterLevelSet *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFD8] set];
    }

    levels = v5->_levels;
    v5->_levels = v8;
  }

  return v5;
}

- (PUIPosterLevelSet)initWithNumberOfLevels:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = PUIPosterLevelSet;
  v4 = [(PUIPosterLevelSet *)&v12 init];
  if (v4)
  {
    v5 = objc_opt_new();
    for (i = &v13; a3; --a3)
    {
      v6 = i++;
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:*v6];
      [v5 addObject:v7];
    }

    v8 = [v5 copy];
    levels = v4->_levels;
    v4->_levels = v8;
  }

  return v4;
}

- (PUIPosterLevelSet)initWithLevel:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = PUIPosterLevelSet;
  v4 = [(PUIPosterLevelSet *)&v10 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = [v5 setWithObject:v6];
    levels = v4->_levels;
    v4->_levels = v7;
  }

  return v4;
}

- (PUIPosterLevelSet)init
{
  v6.receiver = self;
  v6.super_class = PUIPosterLevelSet;
  v2 = [(PUIPosterLevelSet *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    levels = v2->_levels;
    v2->_levels = v3;
  }

  return v2;
}

- (PUIPosterLevelSet)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PUIPosterLevelSet;
  v5 = [(PUIPosterLevelSet *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"levels"];
    levels = v5->_levels;
    v5->_levels = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && [(PUIPosterLevelSet *)self isEqualToLevelSet:v4];
  }

  return v7;
}

- (BOOL)isEqualToLevelSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSSet *)self->_levels isEqual:v4->_levels];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PUIPosterLevelSet allocWithZone:?]];
  v5 = [(NSSet *)self->_levels copy];
  levels = v4->_levels;
  v4->_levels = v5;

  return v4;
}

- (BOOL)containsLevel:(int64_t)a3
{
  levels = self->_levels;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  LOBYTE(levels) = [(NSSet *)levels containsObject:v4];

  return levels;
}

- (void)enumerateLevels:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = [(NSSet *)self->_levels allObjects];
    v7 = [v5 arrayWithArray:v6];

    [v7 sortUsingSelector:sel_compare_];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__PUIPosterLevelSet_enumerateLevels___block_invoke;
    v8[3] = &unk_1E7855A80;
    v9 = v4;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

uint64_t __37__PUIPosterLevelSet_enumerateLevels___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = [a2 integerValue];
  v7 = *(v5 + 16);

  return v7(v5, v6, a4);
}

- (NSOrderedSet)sortedLevels
{
  sortedLevels = self->_sortedLevels;
  if (sortedLevels)
  {
    v3 = sortedLevels;
  }

  else
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = [(NSSet *)self->_levels allObjects];
    v7 = [v5 arrayWithArray:v6];

    [v7 sortUsingSelector:sel_compare_];
    v8 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v7];
    v9 = self->_sortedLevels;
    self->_sortedLevels = v8;

    v3 = self->_sortedLevels;
  }

  return v3;
}

- (BOOL)containsFloatingLayerOnly
{
  v3 = [(PUIPosterLevelSet *)self sortedLevels];
  if ([v3 count] == 1)
  {
    v4 = [(PUIPosterLevelSet *)self sortedLevels];
    v5 = [v4 firstObject];
    v6 = [v5 isEqual:&unk_1F1C92940];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PUIPosterLevelSet *)self sortedLevels];
  v5 = [v4 array];
  v6 = [v5 bs_mapNoNulls:&__block_literal_global_49];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v3 appendObject:v7 withName:@"levels"];

  v9 = [v3 build];

  return v9;
}

__CFString *__32__PUIPosterLevelSet_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];

  return NSStringFromPUIPosterLevel(v2);
}

- (BOOL)isCompositeLevelSet
{
  v3 = [objc_opt_class() compositeLevelSet];
  LOBYTE(self) = [(PUIPosterLevelSet *)self isEqualToLevelSet:v3];

  return self;
}

@end