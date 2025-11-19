@interface PXStorageTipCollectionViewDataSection
- (PXStorageTipCollectionViewDataSection)initWithOutlineObject:(id)a3;
- (PXStorageTipCollectionViewDataSection)initWithSizesDictionary:(id)a3 countsDictionary:(id)a4;
- (PXStorageTipCollectionViewDataSection)initWithZerosWithStorageTipCount:(int64_t)a3;
- (id)objectAtIndex:(int64_t)a3;
- (int64_t)count;
@end

@implementation PXStorageTipCollectionViewDataSection

- (id)objectAtIndex:(int64_t)a3
{
  v4 = [(PXStorageTipCollectionViewDataSection *)self allItems];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (int64_t)count
{
  v2 = [(PXStorageTipCollectionViewDataSection *)self allItems];
  v3 = [v2 count];

  return v3;
}

- (PXStorageTipCollectionViewDataSection)initWithOutlineObject:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStorageTipCollectionViewDataSection.m" lineNumber:64 description:{@"%s is not available as initializer", "-[PXStorageTipCollectionViewDataSection initWithOutlineObject:]"}];

  abort();
}

- (PXStorageTipCollectionViewDataSection)initWithZerosWithStorageTipCount:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = PXStorageTipCollectionViewDataSection;
  v4 = [(PXDataSection *)&v10 initWithOutlineObject:0];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a3 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = [[PXStorageTipListItem alloc] initWithStorageTipType:v6 count:0 totalSizeInBytes:0];
        [(NSArray *)v5 addObject:v7];

        ++v6;
      }

      while (a3 != v6);
    }

    allItems = v4->_allItems;
    v4->_allItems = v5;

    v4->_totalStorageSize = 0;
  }

  return v4;
}

- (PXStorageTipCollectionViewDataSection)initWithSizesDictionary:(id)a3 countsDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = PXStorageTipCollectionViewDataSection;
  v9 = [(PXDataSection *)&v29 initWithOutlineObject:0];
  if (v9)
  {
    if ([v7 count])
    {
      v10 = [v7 count];
      if (v10 != [v8 count])
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:a2 object:v9 file:@"PXStorageTipCollectionViewDataSection.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"sizes.count == counts.count"}];
      }

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([v7 count])
      {
        v27 = v8;
        v28 = v7;
        v12 = 0;
        do
        {
          v13 = [PXStorageTipListItem alloc];
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
          [v8 objectForKeyedSubscript:v14];
          v15 = v11;
          v17 = v16 = v9;
          v18 = [v17 longValue];
          v19 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
          v20 = [v28 objectForKeyedSubscript:v19];
          v21 = -[PXStorageTipListItem initWithStorageTipType:count:totalSizeInBytes:](v13, "initWithStorageTipType:count:totalSizeInBytes:", v12, v18, [v20 longValue]);

          v9 = v16;
          v11 = v15;

          [(NSArray *)v15 addObject:v21];
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
          v23 = [v28 objectForKeyedSubscript:v22];
          v9->_totalStorageSize += [v23 longValue];

          v8 = v27;
          ++v12;
        }

        while (v12 < [v28 count]);
        v7 = v28;
      }
    }

    else
    {
      v9->_totalStorageSize = 0;
      v11 = MEMORY[0x1E695E0F0];
    }

    allItems = v9->_allItems;
    v9->_allItems = v11;
  }

  return v9;
}

@end