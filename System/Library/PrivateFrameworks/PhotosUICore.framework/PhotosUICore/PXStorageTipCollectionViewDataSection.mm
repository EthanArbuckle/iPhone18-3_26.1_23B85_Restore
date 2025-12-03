@interface PXStorageTipCollectionViewDataSection
- (PXStorageTipCollectionViewDataSection)initWithOutlineObject:(id)object;
- (PXStorageTipCollectionViewDataSection)initWithSizesDictionary:(id)dictionary countsDictionary:(id)countsDictionary;
- (PXStorageTipCollectionViewDataSection)initWithZerosWithStorageTipCount:(int64_t)count;
- (id)objectAtIndex:(int64_t)index;
- (int64_t)count;
@end

@implementation PXStorageTipCollectionViewDataSection

- (id)objectAtIndex:(int64_t)index
{
  allItems = [(PXStorageTipCollectionViewDataSection *)self allItems];
  v5 = [allItems objectAtIndex:index];

  return v5;
}

- (int64_t)count
{
  allItems = [(PXStorageTipCollectionViewDataSection *)self allItems];
  v3 = [allItems count];

  return v3;
}

- (PXStorageTipCollectionViewDataSection)initWithOutlineObject:(id)object
{
  objectCopy = object;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStorageTipCollectionViewDataSection.m" lineNumber:64 description:{@"%s is not available as initializer", "-[PXStorageTipCollectionViewDataSection initWithOutlineObject:]"}];

  abort();
}

- (PXStorageTipCollectionViewDataSection)initWithZerosWithStorageTipCount:(int64_t)count
{
  v10.receiver = self;
  v10.super_class = PXStorageTipCollectionViewDataSection;
  v4 = [(PXDataSection *)&v10 initWithOutlineObject:0];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (count >= 1)
    {
      v6 = 0;
      do
      {
        v7 = [[PXStorageTipListItem alloc] initWithStorageTipType:v6 count:0 totalSizeInBytes:0];
        [(NSArray *)v5 addObject:v7];

        ++v6;
      }

      while (count != v6);
    }

    allItems = v4->_allItems;
    v4->_allItems = v5;

    v4->_totalStorageSize = 0;
  }

  return v4;
}

- (PXStorageTipCollectionViewDataSection)initWithSizesDictionary:(id)dictionary countsDictionary:(id)countsDictionary
{
  dictionaryCopy = dictionary;
  countsDictionaryCopy = countsDictionary;
  v29.receiver = self;
  v29.super_class = PXStorageTipCollectionViewDataSection;
  v9 = [(PXDataSection *)&v29 initWithOutlineObject:0];
  if (v9)
  {
    if ([dictionaryCopy count])
    {
      v10 = [dictionaryCopy count];
      if (v10 != [countsDictionaryCopy count])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v9 file:@"PXStorageTipCollectionViewDataSection.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"sizes.count == counts.count"}];
      }

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([dictionaryCopy count])
      {
        v27 = countsDictionaryCopy;
        v28 = dictionaryCopy;
        v12 = 0;
        do
        {
          v13 = [PXStorageTipListItem alloc];
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
          [countsDictionaryCopy objectForKeyedSubscript:v14];
          v15 = v11;
          v17 = v16 = v9;
          longValue = [v17 longValue];
          v19 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
          v20 = [v28 objectForKeyedSubscript:v19];
          v21 = -[PXStorageTipListItem initWithStorageTipType:count:totalSizeInBytes:](v13, "initWithStorageTipType:count:totalSizeInBytes:", v12, longValue, [v20 longValue]);

          v9 = v16;
          v11 = v15;

          [(NSArray *)v15 addObject:v21];
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
          v23 = [v28 objectForKeyedSubscript:v22];
          v9->_totalStorageSize += [v23 longValue];

          countsDictionaryCopy = v27;
          ++v12;
        }

        while (v12 < [v28 count]);
        dictionaryCopy = v28;
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