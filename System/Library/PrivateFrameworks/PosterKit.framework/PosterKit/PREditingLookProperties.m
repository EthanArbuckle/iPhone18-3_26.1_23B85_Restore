@interface PREditingLookProperties
+ (PREditingLookProperties)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PREditingLookProperties)initWithProperties:(id)a3;
- (PREditingLookProperties)initWithTimeFontConfiguration:(id)a3 titlePosterColor:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation PREditingLookProperties

+ (PREditingLookProperties)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(PREditingLookProperties *)PRImmutableEditingLookProperties allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___PREditingLookProperties;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (PREditingLookProperties)initWithTimeFontConfiguration:(id)a3 titlePosterColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_self();
  v9 = [(PREditingLookProperties *)self isMemberOfClass:v8];

  if (v9)
  {
    v10 = [[PRImmutableEditingLookProperties alloc] initWithTimeFontConfiguration:v6 titlePosterColor:v7];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PREditingLookProperties;
    v10 = [(PREditingLookProperties *)&v13 init];
    self = &v10->super;
  }

  p_super = &v10->super;

  return p_super;
}

- (PREditingLookProperties)initWithProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 timeFontConfiguration];
  v6 = [v4 titlePosterColor];

  v7 = [(PREditingLookProperties *)self initWithTimeFontConfiguration:v5 titlePosterColor:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PREditingLookProperties *)self timeFontConfiguration];
      v9 = [(PREditingLookProperties *)v7 timeFontConfiguration];
      v10 = BSEqualObjects();

      if (v10)
      {
        v11 = [(PREditingLookProperties *)self titlePosterColor];
        v12 = [(PREditingLookProperties *)v7 titlePosterColor];
        v13 = BSEqualObjects();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(PREditingLookProperties *)self timeFontConfiguration];
  v4 = [v3 hash];
  v5 = [(PREditingLookProperties *)self titlePosterColor];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __38__PREditingLookProperties_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PREditingLookProperties *)PRMutableEditingLookProperties allocWithZone:a3];

  return [(PREditingLookProperties *)v4 initWithProperties:self];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v8 = a3;
  v4 = [(PREditingLookProperties *)self timeFontConfiguration];
  v5 = [v8 appendObject:v4 withName:@"timeFontConfiguration"];

  v6 = [(PREditingLookProperties *)self titlePosterColor];
  v7 = [v8 appendObject:v6 withName:@"titlePosterColor"];
}

@end