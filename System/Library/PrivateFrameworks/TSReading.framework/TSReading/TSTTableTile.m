@interface TSTTableTile
- (TSTTableTile)initWithRows:(id)a3 context:(id)a4;
- (id)description;
- (unint64_t)flushableSize;
- (void)dealloc;
- (void)i_upgradeTileRowInfosWithDataStore:(id)a3;
@end

@implementation TSTTableTile

- (TSTTableTile)initWithRows:(id)a3 context:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = TSTTableTile;
  v5 = [(TSPObject *)&v29 initWithContext:a4];
  v6 = v5;
  if (v5)
  {
    v5->mMaxColumn = 0;
    v5->mMaxRow = 0;
    v5->mNumCells = 0;
    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    if (a3)
    {
      v8 = [v7 initWithArray:a3];
      v6->mRowInfos = v8;
      [(NSMutableArray *)v8 makeObjectsPerformSelector:sel_setOwner_ withObject:v6];
      v6->mNumRows = [a3 count];
      v6->mMaxRow = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      mRowInfos = v6->mRowInfos;
      v10 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(mRowInfos);
            }

            v14 = *(*(*(&v30 + 1) + 8 * i) + 536);
            if (v14 > v6->mMaxRow)
            {
              v6->mMaxRow = v14;
            }
          }

          v11 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v11);
      }

      v6->mMaxColumn = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = v6->mRowInfos;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v34 count:16, 56];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v30 + 1) + 8 * j);
            if (*(v20 + 538))
            {
              if ((*(v20 + 541) & 1) == 0)
              {
                TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v30 + 1) + 8 * j));
              }

              v21 = *(v20 + 540);
              if (v21 != 255 && v21 > v6->mMaxColumn)
              {
                v6->mMaxColumn = v21;
              }
            }
          }

          v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v17);
      }

      v6->mNumCells = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v22 = *(&v6->super.super.isa + v28);
      v23 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v31;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v31 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v6->mNumCells += *(*(*(&v30 + 1) + 8 * k) + 538);
          }

          v24 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v24);
      }
    }

    else
    {
      v6->mRowInfos = [v7 initWithCapacity:32];
      v6->mNumRows = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableTile;
  [(TSTTableTile *)&v3 dealloc];
}

- (unint64_t)flushableSize
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mRowInfos = self->mRowInfos;
  v3 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 8;
  }

  v4 = v3;
  v5 = *v10;
  v6 = 8;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(mRowInfos);
      }

      v6 += TSTTableTileRowInfoFlushableSize(*(*(&v9 + 1) + 8 * i));
    }

    v4 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@:%p %hu rows / %hu cells>", NSStringFromClass(v4), self, self->mNumRows, self->mNumCells];
}

- (void)i_upgradeTileRowInfosWithDataStore:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(TSPObject *)self willModifyForUpgrade];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  mRowInfos = self->mRowInfos;
  v6 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(mRowInfos);
        }

        [*(*(&v10 + 1) + 8 * v9++) i_upgradeWithDataStore:a3];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end