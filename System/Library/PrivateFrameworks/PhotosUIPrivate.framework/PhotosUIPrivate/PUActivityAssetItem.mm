@interface PUActivityAssetItem
+ (id)itemsForAssets:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActivityAssetItem:(id)a3;
- (PUActivityAssetItem)init;
- (PUActivityAssetItem)initWithAsset:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)localIdentifier;
- (unint64_t)hash;
@end

@implementation PUActivityAssetItem

- (unint64_t)hash
{
  v2 = [(PUActivityAssetItem *)self asset];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PUActivityAssetItem *)self isEqualToActivityAssetItem:v5];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PHAsset *)self->_asset description];
  if (self->_excludeLiveness)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  if (self->_excludeLocation)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  if (self->_excludeCaption)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = v10;
  if (self->_excludeAccessibilityDescription)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = v12;
  v14 = [v3 stringWithFormat:@"<%@:%p, asset:%@, excludeLiveness:%@, excludeLocation:%@, excludeCaption:%@, excludeAccessibilityDescription:%@>", v4, self, v5, v7, v9, v11, v13];

  return v14;
}

- (BOOL)isEqualToActivityAssetItem:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = [(PUActivityAssetItem *)self asset];
    v6 = [(PUActivityAssetItem *)v4 asset];
    v7 = [v5 isEqual:v6];

    if (v7 && (v8 = [(PUActivityAssetItem *)self excludeLiveness], v8 == [(PUActivityAssetItem *)v4 excludeLiveness]) && (v9 = [(PUActivityAssetItem *)self excludeLocation], v9 == [(PUActivityAssetItem *)v4 excludeLocation]) && (v10 = [(PUActivityAssetItem *)self excludeCaption], v10 == [(PUActivityAssetItem *)v4 excludeCaption]))
    {
      v13 = [(PUActivityAssetItem *)self excludeAccessibilityDescription];
      v11 = v13 ^ [(PUActivityAssetItem *)v4 excludeAccessibilityDescription]^ 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (id)localIdentifier
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = [(PUActivityAssetItem *)self asset];
  v4 = [v3 localIdentifier];
  v5 = v4;
  v6 = @"unknown";
  if (v4)
  {
    v6 = v4;
  }

  v7 = [(PUActivityAssetItem *)self excludeLiveness];
  v8 = @"original";
  if (v7)
  {
    v8 = @"still";
  }

  v18[1] = v8;
  v9 = [(PUActivityAssetItem *)self excludeLocation];
  v10 = @"withLocation";
  if (v9)
  {
    v10 = @"noLocation";
  }

  v18[2] = v10;
  v11 = [(PUActivityAssetItem *)self excludeCaption];
  v12 = @"withCaption";
  if (v11)
  {
    v12 = @"noCaption";
  }

  v18[3] = v12;
  v13 = [(PUActivityAssetItem *)self excludeAccessibilityDescription];
  v14 = @"withAXDescription";
  if (v13)
  {
    v14 = @"noAXDescription";
  }

  v18[4] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];

  v16 = [v15 componentsJoinedByString:@"-"];

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithAsset:", self->_asset}];
  *(result + 8) = self->_excludeLiveness;
  *(result + 9) = self->_excludeLocation;
  *(result + 10) = self->_excludeCaption;
  *(result + 11) = self->_excludeAccessibilityDescription;
  return result;
}

- (PUActivityAssetItem)initWithAsset:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUActivityAssetItem.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v11.receiver = self;
  v11.super_class = PUActivityAssetItem;
  v7 = [(PUActivityAssetItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_asset, a3);
  }

  return v8;
}

- (PUActivityAssetItem)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUActivityAssetItem.m" lineNumber:25 description:@"Code which should be unreachable has been reached"];

  abort();
}

+ (id)itemsForAssets:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [PUActivityAssetItem alloc];
        v12 = [(PUActivityAssetItem *)v11 initWithAsset:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end