@interface UNCSectionIcon
- (BOOL)isEqual:(id)equal;
- (UNCSectionIcon)initWithCoder:(id)coder;
- (id)_bestVariantForFormat:(int64_t)format;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addVariant:(id)variant;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCSectionIcon

- (void)addVariant:(id)variant
{
  if (variant)
  {
    v4 = MEMORY[0x1E695DFD8];
    variantCopy = variant;
    variants = [(UNCSectionIcon *)self variants];
    v8 = [v4 setWithSet:variants];

    v7 = [v8 setByAddingObject:variantCopy];

    [(UNCSectionIcon *)self setVariants:v7];
  }
}

- (id)_bestVariantForFormat:(int64_t)format
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  variants = [(UNCSectionIcon *)self variants];
  v6 = [variants countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(variants);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([v10 format] == format)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [variants countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    anyObject = v10;

    if (anyObject)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  variants2 = [(UNCSectionIcon *)self variants];
  anyObject = [variants2 anyObject];

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];

  return anyObject;
}

- (unint64_t)hash
{
  variants = [(UNCSectionIcon *)self variants];
  v3 = [variants hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      variants = [(UNCSectionIcon *)self variants];
      variants2 = [(UNCSectionIcon *)v5 variants];

      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  variants = [(UNCSectionIcon *)self variants];
  [v4 setVariants:variants];

  return v4;
}

- (UNCSectionIcon)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(UNCSectionIcon *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"variants"];
    [(UNCSectionIcon *)v5 setVariants:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  variants = [(UNCSectionIcon *)self variants];
  [coderCopy encodeObject:variants forKey:@"variants"];
}

@end