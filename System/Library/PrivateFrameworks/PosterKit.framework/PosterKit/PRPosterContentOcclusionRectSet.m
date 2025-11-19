@interface PRPosterContentOcclusionRectSet
+ (PRPosterContentOcclusionRectSet)allocWithZone:(_NSZone *)a3;
+ (id)occlusionRectSetForName:(id)a3 rect:(CGRect)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRPosterContentOcclusionRectSet)init;
- (PRPosterContentOcclusionRectSet)initWithBSXPCCoder:(id)a3;
- (PRPosterContentOcclusionRectSet)initWithCoder:(id)a3;
- (PRPosterContentOcclusionRectSet)initWithNameToRectMap:(id)a3;
- (PRPosterContentOcclusionRectSet)initWithOcclusionRectSet:(id)a3;
- (id)allRects;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)rectWithName:(id)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterContentOcclusionRectSet

+ (id)occlusionRectSetForName:(id)a3 rect:(CGRect)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v9 = a3;
    v10 = [a1 alloc];
    v16 = v9;
    *v15 = x;
    *&v15[1] = y;
    *&v15[2] = width;
    *&v15[3] = height;
    v11 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v13 = [v10 initWithNameToRectMap:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (PRPosterContentOcclusionRectSet)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(PRPosterContentOcclusionRectSet *)PRImmutablePosterContentOcclusionRectSet allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___PRPosterContentOcclusionRectSet;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (PRPosterContentOcclusionRectSet)initWithOcclusionRectSet:(id)a3
{
  v4 = [a3 nameToRectMap];
  v5 = [v4 copy];
  v6 = [(PRPosterContentOcclusionRectSet *)self initWithNameToRectMap:v5];

  return v6;
}

- (PRPosterContentOcclusionRectSet)initWithNameToRectMap:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(PRPosterContentOcclusionRectSet *)self isMemberOfClass:v5];

  if (v6)
  {
    v7 = [[PRImmutablePosterContentOcclusionRectSet alloc] initWithNameToRectMap:v4];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PRPosterContentOcclusionRectSet;
    v8 = [(PRPosterContentOcclusionRectSet *)&v12 init];
    if (v8)
    {
      v9 = [v4 copy];

      v4 = v9;
    }

    v7 = v8;
    self = &v7->super;
  }

  p_super = &v7->super;

  return p_super;
}

- (PRPosterContentOcclusionRectSet)init
{
  v3 = objc_opt_self();
  v4 = [(PRPosterContentOcclusionRectSet *)self isMemberOfClass:v3];

  if (v4)
  {
    v5 = objc_alloc_init(PRImmutablePosterContentOcclusionRectSet);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PRPosterContentOcclusionRectSet;
    v5 = [(PRPosterContentOcclusionRectSet *)&v8 init];
    self = &v5->super;
  }

  p_super = &v5->super;

  return p_super;
}

- (id)rectWithName:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 copy];

  return v7;
}

- (id)allRects
{
  v2 = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(PRPosterContentOcclusionRectSet *)v5 nameToRectMap];
    v7 = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
    v8 = [v6 isEqualToDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

- (NSString)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(PRPosterContentOcclusionRectSet *)self allRects];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(PRPosterContentOcclusionRectSet *)self rectWithName:v10];
        [v11 CGRectValue];
        v12 = [v3 appendRect:v10 withName:?];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v3 build];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PRPosterContentOcclusionRectSet *)PRImmutablePosterContentOcclusionRectSet allocWithZone:a3];

  return [(PRPosterContentOcclusionRectSet *)v4 initWithOcclusionRectSet:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PRPosterContentOcclusionRectSet *)PRMutablePosterContentOcclusionRectSet allocWithZone:a3];

  return [(PRPosterContentOcclusionRectSet *)v4 initWithOcclusionRectSet:self];
}

- (PRPosterContentOcclusionRectSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"nameToRectMap"];

  v7 = [(PRPosterContentOcclusionRectSet *)self initWithNameToRectMap:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
  [v4 encodeObject:v5 forKey:@"nameToRectMap"];
}

- (PRPosterContentOcclusionRectSet)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeDictionaryOfClass:objc_opt_class() forKey:@"nameToRectMap"];

  v6 = [(PRPosterContentOcclusionRectSet *)self initWithNameToRectMap:v5];
  return v6;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
  [v4 encodeDictionary:v5 forKey:@"nameToRectMap"];
}

@end