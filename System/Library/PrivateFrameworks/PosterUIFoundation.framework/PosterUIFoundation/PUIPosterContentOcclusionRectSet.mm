@interface PUIPosterContentOcclusionRectSet
+ (id)occlusionRectSetForName:(id)name rect:(CGRect)rect;
+ (id)occlusionRectSetWithOcclusionRectSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)nameToRectDictionary;
- (NSString)description;
- (PUIPosterContentOcclusionRectSet)initWithBSXPCCoder:(id)coder;
- (PUIPosterContentOcclusionRectSet)initWithCoder:(id)coder;
- (PUIPosterContentOcclusionRectSet)initWithNameToRectDictionary:(id)dictionary;
- (PUIPosterContentOcclusionRectSet)initWithNameToRectMap:(id)map;
- (PUIPosterContentOcclusionRectSet)initWithOcclusionRectSet:(id)set;
- (id)allRects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)rectWithName:(id)name;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIPosterContentOcclusionRectSet

+ (id)occlusionRectSetWithOcclusionRectSet:(id)set
{
  if (set)
  {
    setCopy = set;
    v5 = [self alloc];
    allRects = [setCopy allRects];

    if (allRects)
    {
      v7 = allRects;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F8];
    }

    v8 = [v5 initWithNameToRectMap:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

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

- (PUIPosterContentOcclusionRectSet)initWithOcclusionRectSet:(id)set
{
  nameToRectMap = [set nameToRectMap];
  v5 = [nameToRectMap copy];
  v6 = [(PUIPosterContentOcclusionRectSet *)self initWithNameToRectMap:v5];

  return v6;
}

- (PUIPosterContentOcclusionRectSet)initWithNameToRectMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = PUIPosterContentOcclusionRectSet;
  v5 = [(PUIPosterContentOcclusionRectSet *)&v9 init];
  if (v5)
  {
    v6 = [mapCopy copy];
    nameToRectMap = v5->_nameToRectMap;
    v5->_nameToRectMap = v6;
  }

  return v5;
}

- (PUIPosterContentOcclusionRectSet)initWithNameToRectDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v5 = objc_opt_new();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__PUIPosterContentOcclusionRectSet_initWithNameToRectDictionary___block_invoke;
    v9[3] = &unk_1E7854958;
    v10 = v5;
    v6 = v5;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v9];
    v7 = [(PUIPosterContentOcclusionRectSet *)self initWithNameToRectMap:v6];
  }

  else
  {
    v7 = [(PUIPosterContentOcclusionRectSet *)self initWithNameToRectMap:MEMORY[0x1E695E0F8]];
  }

  return v7;
}

void __65__PUIPosterContentOcclusionRectSet_initWithNameToRectDictionary___block_invoke(uint64_t a1, void *a2, NSString *a3)
{
  v5 = MEMORY[0x1E696B098];
  v6 = a2;
  v9 = CGRectFromString(a3);
  v7 = [v5 valueWithCGRect:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)rectWithName:(id)name
{
  nameCopy = name;
  nameToRectMap = [(PUIPosterContentOcclusionRectSet *)self nameToRectMap];
  v6 = [nameToRectMap objectForKeyedSubscript:nameCopy];

  v7 = [v6 copy];

  return v7;
}

- (id)allRects
{
  nameToRectMap = [(PUIPosterContentOcclusionRectSet *)self nameToRectMap];
  v3 = [nameToRectMap copy];

  return v3;
}

- (NSDictionary)nameToRectDictionary
{
  v3 = objc_opt_new();
  allRects = [(PUIPosterContentOcclusionRectSet *)self allRects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PUIPosterContentOcclusionRectSet_nameToRectDictionary__block_invoke;
  v8[3] = &unk_1E7854980;
  v9 = v3;
  v5 = v3;
  [allRects enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [v5 copy];

  return v6;
}

void __56__PUIPosterContentOcclusionRectSet_nameToRectDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 CGRectValue];
  v6 = NSStringFromCGRect(v8);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
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
    nameToRectMap = [(PUIPosterContentOcclusionRectSet *)v5 nameToRectMap];
    nameToRectMap2 = [(PUIPosterContentOcclusionRectSet *)self nameToRectMap];
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
  nameToRectMap = [(PUIPosterContentOcclusionRectSet *)self nameToRectMap];
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
  allRects = [(PUIPosterContentOcclusionRectSet *)self allRects];
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
        v11 = [(PUIPosterContentOcclusionRectSet *)self rectWithName:v10];
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

- (unint64_t)count
{
  nameToRectMap = [(PUIPosterContentOcclusionRectSet *)self nameToRectMap];
  v3 = [nameToRectMap count];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PUIPosterContentOcclusionRectSet allocWithZone:zone];

  return [(PUIPosterContentOcclusionRectSet *)v4 initWithOcclusionRectSet:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PUIPosterContentOcclusionRectSet allocWithZone:zone];

  return [(PUIPosterContentOcclusionRectSet *)v4 initWithOcclusionRectSet:self];
}

- (PUIPosterContentOcclusionRectSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"nameToRectDictionary"];

  v7 = [(PUIPosterContentOcclusionRectSet *)self initWithNameToRectDictionary:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nameToRectDictionary = [(PUIPosterContentOcclusionRectSet *)self nameToRectDictionary];
  [coderCopy encodeObject:nameToRectDictionary forKey:@"nameToRectDictionary"];
}

- (PUIPosterContentOcclusionRectSet)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"nameToRectDictionary"];

  v6 = [(PUIPosterContentOcclusionRectSet *)self initWithNameToRectDictionary:v5];
  return v6;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  nameToRectDictionary = [(PUIPosterContentOcclusionRectSet *)self nameToRectDictionary];
  [coderCopy encodeDictionary:nameToRectDictionary forKey:@"nameToRectDictionary"];
}

@end