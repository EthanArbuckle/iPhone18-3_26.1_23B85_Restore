@interface PRUISPosterLevelSet
+ (id)PRUISPosterLevelSetForPUIPosterLevelSet:(id)set;
+ (id)allLevelsExceptFloating;
+ (id)compositeLevelSet;
+ (id)defaultLevelSet;
+ (id)levelSetForLevel:(int64_t)level;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLevelSet:(id)set;
- (PRUISPosterLevelSet)init;
- (PRUISPosterLevelSet)initWithCoder:(id)coder;
- (PRUISPosterLevelSet)initWithLevel:(int64_t)level;
- (PRUISPosterLevelSet)initWithLevels:(id)levels;
- (PRUISPosterLevelSet)initWithNumberOfLevels:(unint64_t)levels;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)sortedLevels;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRUISPosterLevelSet

+ (id)defaultLevelSet
{
  if (defaultLevelSet_onceToken != -1)
  {
    +[PRUISPosterLevelSet defaultLevelSet];
  }

  v3 = defaultLevelSet_defaultLevelSet;

  return v3;
}

void __38__PRUISPosterLevelSet_defaultLevelSet__block_invoke()
{
  v2 = [MEMORY[0x1E69C5590] defaultLevelSet];
  v0 = [PRUISPosterLevelSet PRUISPosterLevelSetForPUIPosterLevelSet:v2];
  v1 = defaultLevelSet_defaultLevelSet;
  defaultLevelSet_defaultLevelSet = v0;
}

+ (id)compositeLevelSet
{
  if (compositeLevelSet_onceToken != -1)
  {
    +[PRUISPosterLevelSet compositeLevelSet];
  }

  v3 = compositeLevelSet_compositeLevelSet;

  return v3;
}

void __40__PRUISPosterLevelSet_compositeLevelSet__block_invoke()
{
  v2 = [MEMORY[0x1E69C5590] compositeLevelSet];
  v0 = [PRUISPosterLevelSet PRUISPosterLevelSetForPUIPosterLevelSet:v2];
  v1 = compositeLevelSet_compositeLevelSet;
  compositeLevelSet_compositeLevelSet = v0;
}

+ (id)allLevelsExceptFloating
{
  if (allLevelsExceptFloating_onceToken != -1)
  {
    +[PRUISPosterLevelSet allLevelsExceptFloating];
  }

  v3 = allLevelsExceptFloating_allLevelsExceptFloating;

  return v3;
}

void __46__PRUISPosterLevelSet_allLevelsExceptFloating__block_invoke()
{
  v2 = [MEMORY[0x1E69C5590] allLevelsExceptFloating];
  v0 = [PRUISPosterLevelSet PRUISPosterLevelSetForPUIPosterLevelSet:v2];
  v1 = allLevelsExceptFloating_allLevelsExceptFloating;
  allLevelsExceptFloating_allLevelsExceptFloating = v0;
}

+ (id)levelSetForLevel:(int64_t)level
{
  v3 = [[PRUISPosterLevelSet alloc] initWithLevel:level];

  return v3;
}

+ (id)PRUISPosterLevelSetForPUIPosterLevelSet:(id)set
{
  setCopy = set;
  v4 = objc_alloc_init(PRUISPosterLevelSet);
  underlyingLevelSet = v4->_underlyingLevelSet;
  v4->_underlyingLevelSet = setCopy;

  return v4;
}

PRUISPosterLevelSet *__64__PRUISPosterLevelSet_PRUISPosterLevelSetsForPRPosterLevelSets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PRUISPosterLevelSet alloc];
  v4 = [v2 levels];

  v5 = [(PRUISPosterLevelSet *)v3 initWithLevels:v4];

  return v5;
}

- (PRUISPosterLevelSet)initWithNumberOfLevels:(unint64_t)levels
{
  v12.receiver = self;
  v12.super_class = PRUISPosterLevelSet;
  v4 = [(PRUISPosterLevelSet *)&v12 init];
  if (v4)
  {
    v5 = objc_opt_new();
    for (i = &v13; levels; --levels)
    {
      v6 = i++;
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:*v6];
      [v5 addObject:v7];
    }

    v8 = [objc_alloc(MEMORY[0x1E69C5590]) initWithSet:v5];
    underlyingLevelSet = v4->_underlyingLevelSet;
    v4->_underlyingLevelSet = v8;
  }

  return v4;
}

- (PRUISPosterLevelSet)initWithLevel:(int64_t)level
{
  v12.receiver = self;
  v12.super_class = PRUISPosterLevelSet;
  v4 = [(PRUISPosterLevelSet *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69C5590]);
    v6 = MEMORY[0x1E695DFD8];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:level];
    v8 = [v6 setWithObject:v7];
    v9 = [v5 initWithSet:v8];
    underlyingLevelSet = v4->_underlyingLevelSet;
    v4->_underlyingLevelSet = v9;
  }

  return v4;
}

- (PRUISPosterLevelSet)initWithLevels:(id)levels
{
  levelsCopy = levels;
  v9.receiver = self;
  v9.super_class = PRUISPosterLevelSet;
  v5 = [(PRUISPosterLevelSet *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C5590]) initWithSet:levelsCopy];
    underlyingLevelSet = v5->_underlyingLevelSet;
    v5->_underlyingLevelSet = v6;
  }

  return v5;
}

- (PRUISPosterLevelSet)init
{
  v6.receiver = self;
  v6.super_class = PRUISPosterLevelSet;
  v2 = [(PRUISPosterLevelSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C5590]);
    underlyingLevelSet = v2->_underlyingLevelSet;
    v2->_underlyingLevelSet = v3;
  }

  return v2;
}

- (PRUISPosterLevelSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PRUISPosterLevelSet;
  v5 = [(PRUISPosterLevelSet *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"levels"];

    v11 = [objc_alloc(MEMORY[0x1E69C5590]) initWithSet:v10];
    underlyingLevelSet = v5->_underlyingLevelSet;
    v5->_underlyingLevelSet = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  underlyingLevelSet = self->_underlyingLevelSet;
  coderCopy = coder;
  levels = [(PUIPosterLevelSet *)underlyingLevelSet levels];
  [coderCopy encodeObject:levels forKey:@"levels"];
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

    v7 = (isKindOfClass & 1) != 0 && [(PRUISPosterLevelSet *)self isEqualToLevelSet:equalCopy];
  }

  return v7;
}

- (BOOL)isEqualToLevelSet:(id)set
{
  setCopy = set;
  p_isa = &setCopy->super.isa;
  if (setCopy)
  {
    if (self == setCopy)
    {
      v8 = 1;
    }

    else
    {
      levels = [(PUIPosterLevelSet *)self->_underlyingLevelSet levels];
      levels2 = [p_isa[1] levels];
      v8 = [levels isEqualToSet:levels2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PRUISPosterLevelSet allocWithZone:?]];
  v5 = [(PUIPosterLevelSet *)self->_underlyingLevelSet copy];
  underlyingLevelSet = v4->_underlyingLevelSet;
  v4->_underlyingLevelSet = v5;

  return v4;
}

- (id)sortedLevels
{
  sortedLevels = [(PUIPosterLevelSet *)self->_underlyingLevelSet sortedLevels];
  array = [sortedLevels array];

  return array;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  sortedLevels = [(PRUISPosterLevelSet *)self sortedLevels];
  v5 = [sortedLevels bs_mapNoNulls:&__block_literal_global_44];
  [v3 appendArraySection:v5 withName:@"levels" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

__CFString *__34__PRUISPosterLevelSet_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return ShortNSStringFromPRUISPosterLevel(v2);
}

@end