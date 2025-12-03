@interface PUIPosterLevelSet
+ (id)allLevelsExceptFloating;
+ (id)compositeLevelSet;
+ (id)defaultLevelSet;
+ (id)floatingLevelSet;
+ (id)levelSetForLevel:(int64_t)level;
- (BOOL)containsFloatingLayerOnly;
- (BOOL)containsLevel:(int64_t)level;
- (BOOL)isCompositeLevelSet;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLevelSet:(id)set;
- (NSOrderedSet)sortedLevels;
- (PUIPosterLevelSet)init;
- (PUIPosterLevelSet)initWithCoder:(id)coder;
- (PUIPosterLevelSet)initWithLevel:(int64_t)level;
- (PUIPosterLevelSet)initWithNumberOfLevels:(unint64_t)levels;
- (PUIPosterLevelSet)initWithSet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)enumerateLevels:(id)levels;
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
  block[4] = self;
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

+ (id)levelSetForLevel:(int64_t)level
{
  v3 = [[PUIPosterLevelSet alloc] initWithLevel:level];

  return v3;
}

- (PUIPosterLevelSet)initWithSet:(id)set
{
  setCopy = set;
  v11.receiver = self;
  v11.super_class = PUIPosterLevelSet;
  v5 = [(PUIPosterLevelSet *)&v11 init];
  if (v5)
  {
    v6 = [setCopy copy];
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

- (PUIPosterLevelSet)initWithNumberOfLevels:(unint64_t)levels
{
  v12.receiver = self;
  v12.super_class = PUIPosterLevelSet;
  v4 = [(PUIPosterLevelSet *)&v12 init];
  if (v4)
  {
    v5 = objc_opt_new();
    for (i = &v13; levels; --levels)
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

- (PUIPosterLevelSet)initWithLevel:(int64_t)level
{
  v10.receiver = self;
  v10.super_class = PUIPosterLevelSet;
  v4 = [(PUIPosterLevelSet *)&v10 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:level];
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

- (PUIPosterLevelSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PUIPosterLevelSet;
  v5 = [(PUIPosterLevelSet *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"levels"];
    levels = v5->_levels;
    v5->_levels = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && [(PUIPosterLevelSet *)self isEqualToLevelSet:equalCopy];
  }

  return v7;
}

- (BOOL)isEqualToLevelSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (setCopy)
  {
    if (self == setCopy)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSSet *)self->_levels isEqual:setCopy->_levels];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PUIPosterLevelSet allocWithZone:?]];
  v5 = [(NSSet *)self->_levels copy];
  levels = v4->_levels;
  v4->_levels = v5;

  return v4;
}

- (BOOL)containsLevel:(int64_t)level
{
  levels = self->_levels;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:level];
  LOBYTE(levels) = [(NSSet *)levels containsObject:v4];

  return levels;
}

- (void)enumerateLevels:(id)levels
{
  levelsCopy = levels;
  if (levelsCopy)
  {
    v5 = MEMORY[0x1E695DF70];
    allObjects = [(NSSet *)self->_levels allObjects];
    v7 = [v5 arrayWithArray:allObjects];

    [v7 sortUsingSelector:sel_compare_];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__PUIPosterLevelSet_enumerateLevels___block_invoke;
    v8[3] = &unk_1E7855A80;
    v9 = levelsCopy;
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
    allObjects = [(NSSet *)self->_levels allObjects];
    v7 = [v5 arrayWithArray:allObjects];

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
  sortedLevels = [(PUIPosterLevelSet *)self sortedLevels];
  if ([sortedLevels count] == 1)
  {
    sortedLevels2 = [(PUIPosterLevelSet *)self sortedLevels];
    firstObject = [sortedLevels2 firstObject];
    v6 = [firstObject isEqual:&unk_1F1C92940];
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
  sortedLevels = [(PUIPosterLevelSet *)self sortedLevels];
  array = [sortedLevels array];
  v6 = [array bs_mapNoNulls:&__block_literal_global_49];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v3 appendObject:v7 withName:@"levels"];

  build = [v3 build];

  return build;
}

__CFString *__32__PUIPosterLevelSet_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];

  return NSStringFromPUIPosterLevel(v2);
}

- (BOOL)isCompositeLevelSet
{
  compositeLevelSet = [objc_opt_class() compositeLevelSet];
  LOBYTE(self) = [(PUIPosterLevelSet *)self isEqualToLevelSet:compositeLevelSet];

  return self;
}

@end