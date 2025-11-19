@interface UNCSectionIcon
- (BOOL)isEqual:(id)a3;
- (UNCSectionIcon)initWithCoder:(id)a3;
- (id)_bestVariantForFormat:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addVariant:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCSectionIcon

- (void)addVariant:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = a3;
    v6 = [(UNCSectionIcon *)self variants];
    v8 = [v4 setWithSet:v6];

    v7 = [v8 setByAddingObject:v5];

    [(UNCSectionIcon *)self setVariants:v7];
  }
}

- (id)_bestVariantForFormat:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(UNCSectionIcon *)self variants];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([v10 format] == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v12 = [(UNCSectionIcon *)self variants];
  v11 = [v12 anyObject];

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (unint64_t)hash
{
  v2 = [(UNCSectionIcon *)self variants];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(UNCSectionIcon *)self variants];
      v7 = [(UNCSectionIcon *)v5 variants];

      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(UNCSectionIcon *)self variants];
  [v4 setVariants:v5];

  return v4;
}

- (UNCSectionIcon)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCSectionIcon *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"variants"];
    [(UNCSectionIcon *)v5 setVariants:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNCSectionIcon *)self variants];
  [v4 encodeObject:v5 forKey:@"variants"];
}

@end