@interface PRPosterLevelSet
+ (id)allLevelsExceptFloating;
+ (id)backgroundLevelSet;
+ (id)compositeLevelSet;
+ (id)defaultLevelSet;
+ (id)floatingLevelSet;
+ (id)foregroundLevelSet;
+ (id)levelSetForLevel:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLevelSet:(id)a3;
- (PRPosterLevelSet)init;
- (PRPosterLevelSet)initWithCoder:(id)a3;
- (PRPosterLevelSet)initWithLevel:(int64_t)a3;
- (PRPosterLevelSet)initWithLevels:(id)a3;
- (PRPosterLevelSet)initWithNumberOfLevels:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)sortedLevels;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterLevelSet

+ (id)defaultLevelSet
{
  if (defaultLevelSet_onceToken != -1)
  {
    +[PRPosterLevelSet defaultLevelSet];
  }

  v3 = defaultLevelSet_defaultLevelSet;

  return v3;
}

uint64_t __35__PRPosterLevelSet_defaultLevelSet__block_invoke()
{
  v0 = objc_alloc_init(PRPosterLevelSet);
  v1 = defaultLevelSet_defaultLevelSet;
  defaultLevelSet_defaultLevelSet = v0;

  v2 = [MEMORY[0x1E69C5590] defaultLevelSet];
  v3 = *(defaultLevelSet_defaultLevelSet + 8);
  *(defaultLevelSet_defaultLevelSet + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (id)compositeLevelSet
{
  if (compositeLevelSet_onceToken != -1)
  {
    +[PRPosterLevelSet compositeLevelSet];
  }

  v3 = compositeLevelSet_compositeLevelSet;

  return v3;
}

uint64_t __37__PRPosterLevelSet_compositeLevelSet__block_invoke()
{
  v0 = objc_alloc_init(PRPosterLevelSet);
  v1 = compositeLevelSet_compositeLevelSet;
  compositeLevelSet_compositeLevelSet = v0;

  v2 = [MEMORY[0x1E69C5590] compositeLevelSet];
  v3 = *(compositeLevelSet_compositeLevelSet + 8);
  *(compositeLevelSet_compositeLevelSet + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (id)allLevelsExceptFloating
{
  if (allLevelsExceptFloating_onceToken != -1)
  {
    +[PRPosterLevelSet allLevelsExceptFloating];
  }

  v3 = allLevelsExceptFloating_allLevelsExceptFloating;

  return v3;
}

uint64_t __43__PRPosterLevelSet_allLevelsExceptFloating__block_invoke()
{
  v0 = objc_alloc_init(PRPosterLevelSet);
  v1 = allLevelsExceptFloating_allLevelsExceptFloating;
  allLevelsExceptFloating_allLevelsExceptFloating = v0;

  v2 = [MEMORY[0x1E69C5590] allLevelsExceptFloating];
  v3 = *(allLevelsExceptFloating_allLevelsExceptFloating + 8);
  *(allLevelsExceptFloating_allLevelsExceptFloating + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (id)backgroundLevelSet
{
  if (backgroundLevelSet_onceToken != -1)
  {
    +[PRPosterLevelSet backgroundLevelSet];
  }

  v3 = backgroundLevelSet_backgroundLevelSet;

  return v3;
}

uint64_t __38__PRPosterLevelSet_backgroundLevelSet__block_invoke()
{
  v0 = [PRPosterLevelSet levelSetForLevel:-2000];
  v1 = backgroundLevelSet_backgroundLevelSet;
  backgroundLevelSet_backgroundLevelSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)foregroundLevelSet
{
  if (foregroundLevelSet_onceToken != -1)
  {
    +[PRPosterLevelSet foregroundLevelSet];
  }

  v3 = foregroundLevelSet_foregroundLevelSet;

  return v3;
}

uint64_t __38__PRPosterLevelSet_foregroundLevelSet__block_invoke()
{
  v0 = [PRPosterLevelSet levelSetForLevel:-1000];
  v1 = foregroundLevelSet_foregroundLevelSet;
  foregroundLevelSet_foregroundLevelSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)floatingLevelSet
{
  if (floatingLevelSet_onceToken != -1)
  {
    +[PRPosterLevelSet floatingLevelSet];
  }

  v3 = floatingLevelSet_floatingLevelSet;

  return v3;
}

uint64_t __36__PRPosterLevelSet_floatingLevelSet__block_invoke()
{
  v0 = [PRPosterLevelSet levelSetForLevel:1000];
  v1 = floatingLevelSet_floatingLevelSet;
  floatingLevelSet_floatingLevelSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)levelSetForLevel:(int64_t)a3
{
  v3 = [[PRPosterLevelSet alloc] initWithLevel:a3];

  return v3;
}

- (PRPosterLevelSet)initWithNumberOfLevels:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = PRPosterLevelSet;
  v4 = [(PRPosterLevelSet *)&v12 init];
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

- (PRPosterLevelSet)initWithLevel:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = PRPosterLevelSet;
  v4 = [(PRPosterLevelSet *)&v12 init];
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

- (PRPosterLevelSet)initWithLevels:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRPosterLevelSet;
  v5 = [(PRPosterLevelSet *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C5590]) initWithSet:v4];
    underlyingLevelSet = v5->_underlyingLevelSet;
    v5->_underlyingLevelSet = v6;
  }

  return v5;
}

- (PRPosterLevelSet)init
{
  v6.receiver = self;
  v6.super_class = PRPosterLevelSet;
  v2 = [(PRPosterLevelSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C5590]);
    underlyingLevelSet = v2->_underlyingLevelSet;
    v2->_underlyingLevelSet = v3;
  }

  return v2;
}

- (PRPosterLevelSet)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PRPosterLevelSet;
  v5 = [(PRPosterLevelSet *)&v14 init];
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

    v7 = (isKindOfClass & 1) != 0 && [(PRPosterLevelSet *)self isEqualToLevelSet:v4];
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
  v4 = [[PRPosterLevelSet allocWithZone:?]];
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
  v4 = [(PRPosterLevelSet *)self sortedLevels];
  v5 = [v4 bs_mapNoNulls:&__block_literal_global_74_0];
  [v3 appendArraySection:v5 withName:@"levels" skipIfEmpty:1];

  v6 = [v3 build];

  return v6;
}

__CFString *__31__PRPosterLevelSet_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return ShortNSStringFromPRPosterLevel(v2);
}

@end