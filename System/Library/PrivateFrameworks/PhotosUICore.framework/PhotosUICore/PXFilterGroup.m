@interface PXFilterGroup
+ (id)groupWithName:(id)a3 filterIdentifiers:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PXFilterGroup)init;
- (PXFilterGroup)initWithName:(id)a3 filterIdentifiers:(id)a4;
- (unint64_t)hash;
@end

@implementation PXFilterGroup

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (self == v5)
    {
      v14 = 1;
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(PXFilterGroup *)self name];
      if (!v8)
      {
        v3 = [(PXFilterGroup *)v7 name];
        if (!v3)
        {
          goto LABEL_8;
        }
      }

      v9 = [(PXFilterGroup *)self name];
      v10 = [(PXFilterGroup *)v7 name];
      v11 = [v9 isEqualToString:v10];

      if (v8)
      {

        if (v11)
        {
LABEL_8:
          v12 = [(PXFilterGroup *)self filterIdentifiers];
          v13 = [(PXFilterGroup *)v7 filterIdentifiers];
          v14 = [v12 isEqual:v13];

LABEL_13:
          goto LABEL_14;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_8;
        }
      }

      v14 = 0;
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (unint64_t)hash
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(PXFilterGroup *)self filterIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 ^= [*(*(&v12 + 1) + 8 * i) hash];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = [(PXFilterGroup *)self name];
  v10 = [v9 hash];

  return v10 ^ v6;
}

- (PXFilterGroup)initWithName:(id)a3 filterIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXFilterGroup.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"filterIdentifiers"}];
  }

  v16.receiver = self;
  v16.super_class = PXFilterGroup;
  v9 = [(PXFilterGroup *)&v16 init];
  if (v9)
  {
    v10 = [v7 copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [v8 copy];
    filterIdentifiers = v9->_filterIdentifiers;
    v9->_filterIdentifiers = v12;
  }

  return v9;
}

- (PXFilterGroup)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFilterGroup.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXFilterGroup init]"}];

  abort();
}

+ (id)groupWithName:(id)a3 filterIdentifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 filterIdentifiers:v6];

  return v8;
}

@end