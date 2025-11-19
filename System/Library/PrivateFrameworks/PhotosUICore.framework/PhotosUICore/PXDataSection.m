@interface PXDataSection
+ (id)dataSectionForAssetsInAssetContainers:(id)a3;
- (NSString)debugDescription;
- (PXDataSection)init;
- (PXDataSection)initWithOutlineObject:(id)a3;
- (id)firstObject;
- (id)objectAtIndex:(int64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (int64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation PXDataSection

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"PXDataSection.m" lineNumber:69 description:{@"Method %s is a responsibility of subclass %@", "-[PXDataSection countByEnumeratingWithState:objects:count:]", v9}];

  abort();
}

- (NSString)debugDescription
{
  v3 = [(PXDataSection *)self count];
  v4 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"<%@: %p identifier = %ld, count = %ld, items = ("), objc_opt_class(), self, -[PXDataSection identifier](self, "identifier"), v3;;
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = [(PXDataSection *)self objectAtIndex:i];
      v7 = [v6 description];
      [v4 appendFormat:@"\n\t[%ld]%@", i, v7];
    }
  }

  [v4 appendString:@"\n>"]);

  return v4;
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__PXDataSection_objectsAtIndexes___block_invoke;
  v10[3] = &unk_1E774A7B8;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v5 enumerateIndexesUsingBlock:v10];

  v8 = v7;
  return v7;
}

void __34__PXDataSection_objectsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndex:a2];
  [v2 addObject:v3];
}

- (id)objectAtIndex:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXDataSection.m" lineNumber:34 description:{@"Method %s is a responsibility of subclass %@", "-[PXDataSection objectAtIndex:]", v7}];

  abort();
}

- (int64_t)count
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDataSection.m" lineNumber:30 description:{@"Method %s is a responsibility of subclass %@", "-[PXDataSection count]", v6}];

  abort();
}

- (PXDataSection)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXDataSection.m" lineNumber:24 description:{@"%s is not available as initializer", "-[PXDataSection init]"}];

  abort();
}

- (PXDataSection)initWithOutlineObject:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PXDataSection;
  if ([(PXDataSection *)&v6 init])
  {
    sub_1A52458F4();
  }

  return 0;
}

+ (id)dataSectionForAssetsInAssetContainers:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [PXStackedDataSection dataSectionForAssetsInCollections:v3];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E6978630] fetchAssetsForPersons:v3 options:0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v3;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v17 + 1) + 8 * i) px_fetchContainedAssets];
            v15 = [[PXFetchResultDataSection alloc] initWithFetchResult:v14];
            [v7 addObject:v15];
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }

      v8 = [[PXStackedDataSection alloc] initWithChildDataSections:v7 outlineObject:0];
      goto LABEL_16;
    }

    v6 = [MEMORY[0x1E6978630] fetchExclusiveAssetsForSocialGroup:v4 options:0];
  }

  v7 = v6;
  v8 = [[PXFetchResultDataSection alloc] initWithFetchResult:v6];
LABEL_16:
  v5 = v8;

LABEL_17:

  return v5;
}

- (id)firstObject
{
  if ([(PXDataSection *)self containsAnyObjects])
  {
    v3 = [(PXDataSection *)self objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end