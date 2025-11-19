@interface PUIPosterContentOcclusionRectSet
+ (id)occlusionRectSetForName:(id)a3 rect:(CGRect)a4;
+ (id)occlusionRectSetWithOcclusionRectSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)nameToRectDictionary;
- (NSString)description;
- (PUIPosterContentOcclusionRectSet)initWithBSXPCCoder:(id)a3;
- (PUIPosterContentOcclusionRectSet)initWithCoder:(id)a3;
- (PUIPosterContentOcclusionRectSet)initWithNameToRectDictionary:(id)a3;
- (PUIPosterContentOcclusionRectSet)initWithNameToRectMap:(id)a3;
- (PUIPosterContentOcclusionRectSet)initWithOcclusionRectSet:(id)a3;
- (id)allRects;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)rectWithName:(id)a3;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIPosterContentOcclusionRectSet

+ (id)occlusionRectSetWithOcclusionRectSet:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 alloc];
    v6 = [v4 allRects];

    if (v6)
    {
      v7 = v6;
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

- (PUIPosterContentOcclusionRectSet)initWithOcclusionRectSet:(id)a3
{
  v4 = [a3 nameToRectMap];
  v5 = [v4 copy];
  v6 = [(PUIPosterContentOcclusionRectSet *)self initWithNameToRectMap:v5];

  return v6;
}

- (PUIPosterContentOcclusionRectSet)initWithNameToRectMap:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PUIPosterContentOcclusionRectSet;
  v5 = [(PUIPosterContentOcclusionRectSet *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    nameToRectMap = v5->_nameToRectMap;
    v5->_nameToRectMap = v6;
  }

  return v5;
}

- (PUIPosterContentOcclusionRectSet)initWithNameToRectDictionary:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__PUIPosterContentOcclusionRectSet_initWithNameToRectDictionary___block_invoke;
    v9[3] = &unk_1E7854958;
    v10 = v5;
    v6 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v9];
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

- (id)rectWithName:(id)a3
{
  v4 = a3;
  v5 = [(PUIPosterContentOcclusionRectSet *)self nameToRectMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 copy];

  return v7;
}

- (id)allRects
{
  v2 = [(PUIPosterContentOcclusionRectSet *)self nameToRectMap];
  v3 = [v2 copy];

  return v3;
}

- (NSDictionary)nameToRectDictionary
{
  v3 = objc_opt_new();
  v4 = [(PUIPosterContentOcclusionRectSet *)self allRects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PUIPosterContentOcclusionRectSet_nameToRectDictionary__block_invoke;
  v8[3] = &unk_1E7854980;
  v9 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

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
    v6 = [(PUIPosterContentOcclusionRectSet *)v5 nameToRectMap];
    v7 = [(PUIPosterContentOcclusionRectSet *)self nameToRectMap];
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
  v4 = [(PUIPosterContentOcclusionRectSet *)self nameToRectMap];
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
  v4 = [(PUIPosterContentOcclusionRectSet *)self allRects];
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
        v11 = [(PUIPosterContentOcclusionRectSet *)self rectWithName:v10];
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

- (unint64_t)count
{
  v2 = [(PUIPosterContentOcclusionRectSet *)self nameToRectMap];
  v3 = [v2 count];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PUIPosterContentOcclusionRectSet allocWithZone:a3];

  return [(PUIPosterContentOcclusionRectSet *)v4 initWithOcclusionRectSet:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PUIPosterContentOcclusionRectSet allocWithZone:a3];

  return [(PUIPosterContentOcclusionRectSet *)v4 initWithOcclusionRectSet:self];
}

- (PUIPosterContentOcclusionRectSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"nameToRectDictionary"];

  v7 = [(PUIPosterContentOcclusionRectSet *)self initWithNameToRectDictionary:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PUIPosterContentOcclusionRectSet *)self nameToRectDictionary];
  [v4 encodeObject:v5 forKey:@"nameToRectDictionary"];
}

- (PUIPosterContentOcclusionRectSet)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeDictionaryOfClass:objc_opt_class() forKey:@"nameToRectDictionary"];

  v6 = [(PUIPosterContentOcclusionRectSet *)self initWithNameToRectDictionary:v5];
  return v6;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PUIPosterContentOcclusionRectSet *)self nameToRectDictionary];
  [v4 encodeDictionary:v5 forKey:@"nameToRectDictionary"];
}

@end