@interface PRPosterContentOcclusionRectSet
+ (PRPosterContentOcclusionRectSet)allocWithZone:(_NSZone *)zone;
+ (id)occlusionRectSetForName:(id)name rect:(CGRect)rect;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRPosterContentOcclusionRectSet)init;
- (PRPosterContentOcclusionRectSet)initWithBSXPCCoder:(id)coder;
- (PRPosterContentOcclusionRectSet)initWithCoder:(id)coder;
- (PRPosterContentOcclusionRectSet)initWithNameToRectMap:(id)map;
- (PRPosterContentOcclusionRectSet)initWithOcclusionRectSet:(id)set;
- (id)allRects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)rectWithName:(id)name;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterContentOcclusionRectSet

+ (id)occlusionRectSetForName:(id)name rect:(CGRect)rect
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (name)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    nameCopy = name;
    v10 = [self alloc];
    v16 = nameCopy;
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

+ (PRPosterContentOcclusionRectSet)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(PRPosterContentOcclusionRectSet *)PRImmutablePosterContentOcclusionRectSet allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___PRPosterContentOcclusionRectSet;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (PRPosterContentOcclusionRectSet)initWithOcclusionRectSet:(id)set
{
  nameToRectMap = [set nameToRectMap];
  v5 = [nameToRectMap copy];
  v6 = [(PRPosterContentOcclusionRectSet *)self initWithNameToRectMap:v5];

  return v6;
}

- (PRPosterContentOcclusionRectSet)initWithNameToRectMap:(id)map
{
  mapCopy = map;
  v5 = objc_opt_self();
  v6 = [(PRPosterContentOcclusionRectSet *)self isMemberOfClass:v5];

  if (v6)
  {
    v7 = [[PRImmutablePosterContentOcclusionRectSet alloc] initWithNameToRectMap:mapCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PRPosterContentOcclusionRectSet;
    v8 = [(PRPosterContentOcclusionRectSet *)&v12 init];
    if (v8)
    {
      v9 = [mapCopy copy];

      mapCopy = v9;
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

- (id)rectWithName:(id)name
{
  nameCopy = name;
  nameToRectMap = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
  v6 = [nameToRectMap objectForKeyedSubscript:nameCopy];

  v7 = [v6 copy];

  return v7;
}

- (id)allRects
{
  nameToRectMap = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
  v3 = [nameToRectMap copy];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    nameToRectMap = [(PRPosterContentOcclusionRectSet *)v5 nameToRectMap];
    nameToRectMap2 = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
    v8 = [nameToRectMap isEqualToDictionary:nameToRectMap2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  nameToRectMap = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
  v5 = [builder appendObject:nameToRectMap];

  v6 = [builder hash];
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
  allRects = [(PRPosterContentOcclusionRectSet *)self allRects];
  keyEnumerator = [allRects keyEnumerator];

  v6 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(PRPosterContentOcclusionRectSet *)self rectWithName:v10];
        [v11 CGRectValue];
        v12 = [v3 appendRect:v10 withName:?];
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(PRPosterContentOcclusionRectSet *)PRImmutablePosterContentOcclusionRectSet allocWithZone:zone];

  return [(PRPosterContentOcclusionRectSet *)v4 initWithOcclusionRectSet:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PRPosterContentOcclusionRectSet *)PRMutablePosterContentOcclusionRectSet allocWithZone:zone];

  return [(PRPosterContentOcclusionRectSet *)v4 initWithOcclusionRectSet:self];
}

- (PRPosterContentOcclusionRectSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"nameToRectMap"];

  v7 = [(PRPosterContentOcclusionRectSet *)self initWithNameToRectMap:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nameToRectMap = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
  [coderCopy encodeObject:nameToRectMap forKey:@"nameToRectMap"];
}

- (PRPosterContentOcclusionRectSet)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"nameToRectMap"];

  v6 = [(PRPosterContentOcclusionRectSet *)self initWithNameToRectMap:v5];
  return v6;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  nameToRectMap = [(PRPosterContentOcclusionRectSet *)self nameToRectMap];
  [coderCopy encodeDictionary:nameToRectMap forKey:@"nameToRectMap"];
}

@end