@interface PRUISPosterLevelSet
+ (id)PRUISPosterLevelSetForPUIPosterLevelSet:(id)a3;
+ (id)allLevelsExceptFloating;
+ (id)compositeLevelSet;
+ (id)defaultLevelSet;
+ (id)levelSetForLevel:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLevelSet:(id)a3;
- (PRUISPosterLevelSet)init;
- (PRUISPosterLevelSet)initWithCoder:(id)a3;
- (PRUISPosterLevelSet)initWithLevel:(int64_t)a3;
- (PRUISPosterLevelSet)initWithLevels:(id)a3;
- (PRUISPosterLevelSet)initWithNumberOfLevels:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)sortedLevels;
- (void)encodeWithCoder:(id)a3;
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

+ (id)levelSetForLevel:(int64_t)a3
{
  v3 = [[PRUISPosterLevelSet alloc] initWithLevel:a3];

  return v3;
}

+ (id)PRUISPosterLevelSetForPUIPosterLevelSet:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PRUISPosterLevelSet);
  underlyingLevelSet = v4->_underlyingLevelSet;
  v4->_underlyingLevelSet = v3;

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

- (PRUISPosterLevelSet)initWithNumberOfLevels:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = PRUISPosterLevelSet;
  v4 = [(PRUISPosterLevelSet *)&v12 init];
  if (v4)
  {
    v5 = objc_opt_new();
    for (i = &v13; a3; --a3)
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

- (PRUISPosterLevelSet)initWithLevel:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = PRUISPosterLevelSet;
  v4 = [(PRUISPosterLevelSet *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69C5590]);
    v6 = MEMORY[0x1E695DFD8];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = [v6 setWithObject:v7];
    v9 = [v5 initWithSet:v8];
    underlyingLevelSet = v4->_underlyingLevelSet;
    v4->_underlyingLevelSet = v9;
  }

  return v4;
}

- (PRUISPosterLevelSet)initWithLevels:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRUISPosterLevelSet;
  v5 = [(PRUISPosterLevelSet *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C5590]) initWithSet:v4];
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

- (PRUISPosterLevelSet)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PRUISPosterLevelSet;
  v5 = [(PRUISPosterLevelSet *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"levels"];

    v11 = [objc_alloc(MEMORY[0x1E69C5590]) initWithSet:v10];
    underlyingLevelSet = v5->_underlyingLevelSet;
    v5->_underlyingLevelSet = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  underlyingLevelSet = self->_underlyingLevelSet;
  v4 = a3;
  v5 = [(PUIPosterLevelSet *)underlyingLevelSet levels];
  [v4 encodeObject:v5 forKey:@"levels"];
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

    v7 = (isKindOfClass & 1) != 0 && [(PRUISPosterLevelSet *)self isEqualToLevelSet:v4];
  }

  return v7;
}

- (BOOL)isEqualToLevelSet:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (v4)
  {
    if (self == v4)
    {
      v8 = 1;
    }

    else
    {
      v6 = [(PUIPosterLevelSet *)self->_underlyingLevelSet levels];
      v7 = [p_isa[1] levels];
      v8 = [v6 isEqualToSet:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PRUISPosterLevelSet allocWithZone:?]];
  v5 = [(PUIPosterLevelSet *)self->_underlyingLevelSet copy];
  underlyingLevelSet = v4->_underlyingLevelSet;
  v4->_underlyingLevelSet = v5;

  return v4;
}

- (id)sortedLevels
{
  v2 = [(PUIPosterLevelSet *)self->_underlyingLevelSet sortedLevels];
  v3 = [v2 array];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PRUISPosterLevelSet *)self sortedLevels];
  v5 = [v4 bs_mapNoNulls:&__block_literal_global_44];
  [v3 appendArraySection:v5 withName:@"levels" skipIfEmpty:1];

  v6 = [v3 build];

  return v6;
}

__CFString *__34__PRUISPosterLevelSet_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return ShortNSStringFromPRUISPosterLevel(v2);
}

@end