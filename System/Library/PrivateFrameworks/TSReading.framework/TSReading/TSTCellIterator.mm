@interface TSTCellIterator
- (BOOL)getNext:(id *)next;
- (BOOL)p_getData:(id *)data forCellID:(id)d;
- (TSTCellIterator)initWithTableModel:(id)model;
- (TSTCellIterator)initWithTableModel:(id)model flags:(unint64_t)flags;
- (TSTCellIterator)initWithTableModel:(id)model range:(id)range;
- (TSTCellIterator)initWithTableModel:(id)model range:(id)range flags:(unint64_t)flags;
- (TSTCellIterator)initWithTableModel:(id)model region:(id)region flags:(unint64_t)flags;
- (void)dealloc;
- (void)p_resetIterData:(id *)data;
@end

@implementation TSTCellIterator

- (TSTCellIterator)initWithTableModel:(id)model region:(id)region flags:(unint64_t)flags
{
  flagsCopy = flags;
  v9 = +[TSTConfiguration sharedTableConfiguration];
  if ((flagsCopy & 8) == 0)
  {
    boundingCellRange = [region boundingCellRange];
    if ([v9 maxNumberOfRows] <= (boundingCellRange + HIWORD(boundingCellRange) - 1))
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellIterator initWithTableModel:region:flags:]"];
      [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellIterator.mm"), 33, @"Tried to create iterator with range larger than is possible."}];
    }

    boundingCellRange2 = [region boundingCellRange];
    if ([v9 maxNumberOfColumns] <= (BYTE4(boundingCellRange2) + BYTE2(boundingCellRange2) - 1))
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellIterator initWithTableModel:region:flags:]"];
      [currentHandler2 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellIterator.mm"), 34, @"Tried to create iterator with range larger than is possible."}];
    }
  }

  v27.receiver = self;
  v27.super_class = TSTCellIterator;
  v16 = [(TSTCellIterator *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->mDontCheckSize = (flagsCopy & 8) >> 3;
    if ((flagsCopy & 8) != 0 || (v18 = [region boundingCellRange], objc_msgSend(v9, "maxNumberOfRows") > (v18 + HIWORD(v18) - 1)) && (v19 = objc_msgSend(region, "boundingCellRange"), objc_msgSend(v9, "maxNumberOfColumns") > (BYTE4(v19) + BYTE2(v19) - 1)))
    {
      v20 = (flagsCopy >> 2) & 1;
      v17->mSkipStyleOnlyCells = flagsCopy & 1;
      v17->mSkipCommentStorageOnlyCells = BYTE1(flagsCopy) & 1;
      v17->mDontExpandCellRefs = (flagsCopy & 2) != 0;
      v17->mRowWalkDirection = v20;
      if ((flagsCopy & 0x10) != 0)
      {
        v22 = TSTTableRangeOfTableWithMerges(model);
        v21 = 0;
        if (v22 != 0xFFFF && (v22 & 0xFF0000) != 0xFF0000)
        {
          v21 = (v22 & 0xFFFF00000000) != 0 && HIWORD(v22) != 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v17->mDontReturnMergeRegions = v21;
      v17->mReturnHiddenCells = (flagsCopy & 0x20) != 0;
      v17->mDontInflateFormulas = (flagsCopy & 0x40) != 0;
      v17->mReturnEmptyCells = (flagsCopy & 0x80) != 0;
      v17->mTableModel = model;
      v17->mTableDataStore = *(model + 6);
      v24 = [region copy];
      v17->mModelRegion = v24;
      if (v20)
      {
        rightToLeftIterator = [(TSTCellRegion *)v24 rightToLeftIterator];
      }

      else
      {
        rightToLeftIterator = [(TSTCellRegion *)v24 iterator];
      }

      v17->mModelRegionIterator = rightToLeftIterator;
      v17->mPreviousCellID = 0xFFFFFF;
      v17->mCurRow = 0;
      v17->mCurTile = 0;
      v17->mCurTileRange = NSRangeEmpty;
      v17->mCurRowID = -1;
      v17->mCell = objc_alloc_init(TSTCell);
      [region boundingCellRange];
    }

    else
    {
      NSLog(@"The crash you are probably about to encounter is because you provided bad arguments to the cell iterator.");
      return 0;
    }
  }

  return v17;
}

- (TSTCellIterator)initWithTableModel:(id)model range:(id)range
{
  v6 = [TSTCellRegion regionFromRange:range];

  return [(TSTCellIterator *)self initWithTableModel:model region:v6 flags:0];
}

- (TSTCellIterator)initWithTableModel:(id)model range:(id)range flags:(unint64_t)flags
{
  v8 = [TSTCellRegion regionFromRange:range];

  return [(TSTCellIterator *)self initWithTableModel:model region:v8 flags:flags];
}

- (TSTCellIterator)initWithTableModel:(id)model
{
  range = [model range];

  return [(TSTCellIterator *)self initWithTableModel:model range:range];
}

- (TSTCellIterator)initWithTableModel:(id)model flags:(unint64_t)flags
{
  v7 = +[TSTCellRegion regionFromRange:](TSTCellRegion, "regionFromRange:", [model range]);

  return [(TSTCellIterator *)self initWithTableModel:model region:v7 flags:flags];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTCellIterator;
  [(TSTCellIterator *)&v3 dealloc];
}

- (void)p_resetIterData:(id *)data
{
  *&data->var2 = 0u;
  data->var4 = 0xFFFFFFLL;
  *&data->var0.var0 = 0xFFFFFF00FFFFFFLL;
  *&data->var5 = 0;
  data->var7 = 0;
}

- (BOOL)p_getData:(id *)data forCellID:(id)d
{
  v7 = *&d.var0 >> 16;
  v34 = 0;
  var0 = d.var0;
  location = self->mCurTileRange.location;
  v11 = d.var0 >= location;
  v10 = d.var0 - location;
  v11 = !v11 || v10 >= self->mCurTileRange.length;
  if (v11)
  {
    self->mCurTile = 0;
    self->mCurTileRange = NSRangeEmpty;
    TileForRow = TSTDataStoreGetTileForRow(self->mTableDataStore, d.var0, &v34);
    self->mCurTile = TileForRow;
    if (TileForRow || (v13 = [MEMORY[0x277D6C290] currentHandler], v14 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSTCellIterator p_getData:forCellID:]"), objc_msgSend(v13, "handleFailureInFunction:file:lineNumber:description:", v14, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellIterator.mm"), 149, @"Failed to get a tile while iterating!"), (TileForRow = self->mCurTile) != 0))
    {
      v15 = v34;
      if ([(TSTTableTile *)TileForRow maxRow]+ v15 < d.var0)
      {
        self->mCurTile = TSTDataStoreGetTileAtOrAfterRow(self->mTableDataStore, d.var0, &v34);
      }
    }

    if (!self->mReturnEmptyCells && self->mDontReturnMergeRegions)
    {
      if (!self->mCurTile || (v16 = [(TSTCellRegion *)self->mModelRegion boundingCellRange], v34 > (v16.var0.var0 + v16.var1.var1 - 1)))
      {
        [(TSTCellRegionIterating *)self->mModelRegionIterator terminate];
      }
    }

    mCurTile = self->mCurTile;
    if (mCurTile)
    {
      v18 = v34;
      maxRow = [(TSTTableTile *)mCurTile maxRow];
      self->mCurTileRange.location = v18;
      self->mCurTileRange.length = maxRow + 1;
    }
  }

  if (self->mCurRowID != d.var0)
  {
    self->mCurRow = 0;
    self->mCurRowID = -1;
    v20 = self->mCurTileRange.location;
    if (var0 >= v20 && var0 - v20 < self->mCurTileRange.length)
    {
      v22 = TSTTableTileRowInfoForTileRowIndex(self->mCurTile, (d.var0 - v20), 0);
      self->mCurRow = v22;
      if (v22)
      {
        self->mCurRowID = d.var0;
      }
    }
  }

  data->var8 = TSTHidingActionForRow(self->mTableModel, d.var0) != 0;
  v23 = TSTHidingActionForColumn(self->mTableModel, v7) != 0;
  data->var9 = v23;
  v24 = data->var8 || v23;
  data->var7 = v24;
  if (v24 && !self->mReturnHiddenCells)
  {
    return 0;
  }

  if (self->mCurRowID == -1 || (v25 = TSTTableTileRowInfoCellStorageRefAtTileColumnIndex(self->mCurRow, v7), (data->var3 = v25) == 0))
  {
    LOBYTE(v27) = 0;
    LOBYTE(v28) = 0;
    v29 = 0;
LABEL_45:
    if (self->mReturnEmptyCells && !v28 && (v27 & 1) == 0 && !data->var2)
    {
      TSTCellClear(self->mCell);
      mCell = self->mCell;
      TSTCellClearValue(mCell);
      *&mCell->mPrivate &= 0xFFFF00FF;
      data->var2 = self->mCell;
      data->var0 = self->mPreviousCellID;
      data->var1.var0 = d.var0;
      data->var1.var1 = v7;
      data->var1.var2 = d.var2;
      v29 = 1;
    }

    goto LABEL_50;
  }

  if (*(v25 + 1) > 0xFFu)
  {
    data->var5 = 0;
  }

  else
  {
    data->var5 = (TSTCellStorageHeaderFlagsForStorage(v25) & 2) != 0;
    if ((TSTCellStorageHeaderFlagsForStorage(data->var3) & 0x1000) != 0)
    {
      v26 = 1;
      v27 = 1;
      goto LABEL_35;
    }
  }

  v26 = 0;
  v27 = 0;
LABEL_35:
  data->var6 = v26;
  v28 = self->mSkipStyleOnlyCells && data->var5;
  if (!self->mSkipCommentStorageOnlyCells)
  {
    LOBYTE(v27) = 0;
    goto LABEL_42;
  }

  if ((v28 & v27 & 1) == 0)
  {
LABEL_42:
    if (!self->mDontExpandCellRefs)
    {
      [(TSTCell *)self->mCell inflateFromStorageRef:data->var3 dataStore:self->mTableDataStore suppressingFormulaInflation:self->mDontInflateFormulas];
      data->var2 = self->mCell;
    }

    data->var1.var0 = d.var0;
    data->var1.var1 = v7;
    data->var1.var2 = d.var2;
    data->var0 = self->mPreviousCellID;
    v29 = 1;
    goto LABEL_45;
  }

  v29 = 0;
LABEL_50:
  if (!self->mDontReturnMergeRegions)
  {
    data->var1.var0 = d.var0;
    data->var1.var1 = v7;
    data->var1.var2 = d.var2;
    v31 = TSTTableMergeRangeAtCellID(self->mTableModel, *&d);
    data->var4 = v31;
    if (v29)
    {
      return 1;
    }

    else
    {
      v29 = 0;
      if (v31 != 0xFFFF && (v31 & 0xFF0000) != 0xFF0000)
      {
        return (v31 & 0xFFFF00000000) != 0 && HIWORD(v31) != 0;
      }
    }
  }

  return v29;
}

- (BOOL)getNext:(id *)next
{
  [(TSTCellIterator *)self p_resetIterData:?];
  getNext = [(TSTCellRegionIterating *)self->mModelRegionIterator getNext];
  v6 = getNext;
  v7 = 0;
  if (getNext.row != 0xFFFF)
  {
    v8 = getNext;
    if ((*&getNext & 0xFF0000) != 0xFF0000)
    {
      v9 = [(TSTCellIterator *)self p_getData:next forCellID:*&getNext];
      if (v9)
      {
        v7 = 1;
      }

      else
      {
        v10 = v9;
        do
        {
          getNext2 = [(TSTCellRegionIterating *)self->mModelRegionIterator getNext];
          v6 = getNext2;
          v12 = (~*&getNext2 & 0xFF0000) == 0 || getNext2.row == 0xFFFF;
          v13 = v10 || v12;
          if (v10 || v12)
          {
            break;
          }

          v8 = v8 & 0xFFFFFFFF00000000 | *&getNext2;
          v10 = [(TSTCellIterator *)self p_getData:next forCellID:v8];
        }

        while (!v10);
        v7 = !v13;
      }
    }
  }

  self->mPreviousCellID = v6;
  return v7 & 1;
}

@end