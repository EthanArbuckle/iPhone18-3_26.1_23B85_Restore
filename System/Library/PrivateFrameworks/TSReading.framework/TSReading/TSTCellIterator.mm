@interface TSTCellIterator
- (BOOL)getNext:(id *)a3;
- (BOOL)p_getData:(id *)a3 forCellID:(id)a4;
- (TSTCellIterator)initWithTableModel:(id)a3;
- (TSTCellIterator)initWithTableModel:(id)a3 flags:(unint64_t)a4;
- (TSTCellIterator)initWithTableModel:(id)a3 range:(id)a4;
- (TSTCellIterator)initWithTableModel:(id)a3 range:(id)a4 flags:(unint64_t)a5;
- (TSTCellIterator)initWithTableModel:(id)a3 region:(id)a4 flags:(unint64_t)a5;
- (void)dealloc;
- (void)p_resetIterData:(id *)a3;
@end

@implementation TSTCellIterator

- (TSTCellIterator)initWithTableModel:(id)a3 region:(id)a4 flags:(unint64_t)a5
{
  v5 = a5;
  v9 = +[TSTConfiguration sharedTableConfiguration];
  if ((v5 & 8) == 0)
  {
    v10 = [a4 boundingCellRange];
    if ([v9 maxNumberOfRows] <= (v10 + HIWORD(v10) - 1))
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellIterator initWithTableModel:region:flags:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellIterator.mm"), 33, @"Tried to create iterator with range larger than is possible."}];
    }

    v13 = [a4 boundingCellRange];
    if ([v9 maxNumberOfColumns] <= (BYTE4(v13) + BYTE2(v13) - 1))
    {
      v14 = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellIterator initWithTableModel:region:flags:]"];
      [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellIterator.mm"), 34, @"Tried to create iterator with range larger than is possible."}];
    }
  }

  v27.receiver = self;
  v27.super_class = TSTCellIterator;
  v16 = [(TSTCellIterator *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->mDontCheckSize = (v5 & 8) >> 3;
    if ((v5 & 8) != 0 || (v18 = [a4 boundingCellRange], objc_msgSend(v9, "maxNumberOfRows") > (v18 + HIWORD(v18) - 1)) && (v19 = objc_msgSend(a4, "boundingCellRange"), objc_msgSend(v9, "maxNumberOfColumns") > (BYTE4(v19) + BYTE2(v19) - 1)))
    {
      v20 = (v5 >> 2) & 1;
      v17->mSkipStyleOnlyCells = v5 & 1;
      v17->mSkipCommentStorageOnlyCells = BYTE1(v5) & 1;
      v17->mDontExpandCellRefs = (v5 & 2) != 0;
      v17->mRowWalkDirection = v20;
      if ((v5 & 0x10) != 0)
      {
        v22 = TSTTableRangeOfTableWithMerges(a3);
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
      v17->mReturnHiddenCells = (v5 & 0x20) != 0;
      v17->mDontInflateFormulas = (v5 & 0x40) != 0;
      v17->mReturnEmptyCells = (v5 & 0x80) != 0;
      v17->mTableModel = a3;
      v17->mTableDataStore = *(a3 + 6);
      v24 = [a4 copy];
      v17->mModelRegion = v24;
      if (v20)
      {
        v25 = [(TSTCellRegion *)v24 rightToLeftIterator];
      }

      else
      {
        v25 = [(TSTCellRegion *)v24 iterator];
      }

      v17->mModelRegionIterator = v25;
      v17->mPreviousCellID = 0xFFFFFF;
      v17->mCurRow = 0;
      v17->mCurTile = 0;
      v17->mCurTileRange = NSRangeEmpty;
      v17->mCurRowID = -1;
      v17->mCell = objc_alloc_init(TSTCell);
      [a4 boundingCellRange];
    }

    else
    {
      NSLog(@"The crash you are probably about to encounter is because you provided bad arguments to the cell iterator.");
      return 0;
    }
  }

  return v17;
}

- (TSTCellIterator)initWithTableModel:(id)a3 range:(id)a4
{
  v6 = [TSTCellRegion regionFromRange:a4];

  return [(TSTCellIterator *)self initWithTableModel:a3 region:v6 flags:0];
}

- (TSTCellIterator)initWithTableModel:(id)a3 range:(id)a4 flags:(unint64_t)a5
{
  v8 = [TSTCellRegion regionFromRange:a4];

  return [(TSTCellIterator *)self initWithTableModel:a3 region:v8 flags:a5];
}

- (TSTCellIterator)initWithTableModel:(id)a3
{
  v5 = [a3 range];

  return [(TSTCellIterator *)self initWithTableModel:a3 range:v5];
}

- (TSTCellIterator)initWithTableModel:(id)a3 flags:(unint64_t)a4
{
  v7 = +[TSTCellRegion regionFromRange:](TSTCellRegion, "regionFromRange:", [a3 range]);

  return [(TSTCellIterator *)self initWithTableModel:a3 region:v7 flags:a4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTCellIterator;
  [(TSTCellIterator *)&v3 dealloc];
}

- (void)p_resetIterData:(id *)a3
{
  *&a3->var2 = 0u;
  a3->var4 = 0xFFFFFFLL;
  *&a3->var0.var0 = 0xFFFFFF00FFFFFFLL;
  *&a3->var5 = 0;
  a3->var7 = 0;
}

- (BOOL)p_getData:(id *)a3 forCellID:(id)a4
{
  v7 = *&a4.var0 >> 16;
  v34 = 0;
  var0 = a4.var0;
  location = self->mCurTileRange.location;
  v11 = a4.var0 >= location;
  v10 = a4.var0 - location;
  v11 = !v11 || v10 >= self->mCurTileRange.length;
  if (v11)
  {
    self->mCurTile = 0;
    self->mCurTileRange = NSRangeEmpty;
    TileForRow = TSTDataStoreGetTileForRow(self->mTableDataStore, a4.var0, &v34);
    self->mCurTile = TileForRow;
    if (TileForRow || (v13 = [MEMORY[0x277D6C290] currentHandler], v14 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSTCellIterator p_getData:forCellID:]"), objc_msgSend(v13, "handleFailureInFunction:file:lineNumber:description:", v14, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellIterator.mm"), 149, @"Failed to get a tile while iterating!"), (TileForRow = self->mCurTile) != 0))
    {
      v15 = v34;
      if ([(TSTTableTile *)TileForRow maxRow]+ v15 < a4.var0)
      {
        self->mCurTile = TSTDataStoreGetTileAtOrAfterRow(self->mTableDataStore, a4.var0, &v34);
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
      v19 = [(TSTTableTile *)mCurTile maxRow];
      self->mCurTileRange.location = v18;
      self->mCurTileRange.length = v19 + 1;
    }
  }

  if (self->mCurRowID != a4.var0)
  {
    self->mCurRow = 0;
    self->mCurRowID = -1;
    v20 = self->mCurTileRange.location;
    if (var0 >= v20 && var0 - v20 < self->mCurTileRange.length)
    {
      v22 = TSTTableTileRowInfoForTileRowIndex(self->mCurTile, (a4.var0 - v20), 0);
      self->mCurRow = v22;
      if (v22)
      {
        self->mCurRowID = a4.var0;
      }
    }
  }

  a3->var8 = TSTHidingActionForRow(self->mTableModel, a4.var0) != 0;
  v23 = TSTHidingActionForColumn(self->mTableModel, v7) != 0;
  a3->var9 = v23;
  v24 = a3->var8 || v23;
  a3->var7 = v24;
  if (v24 && !self->mReturnHiddenCells)
  {
    return 0;
  }

  if (self->mCurRowID == -1 || (v25 = TSTTableTileRowInfoCellStorageRefAtTileColumnIndex(self->mCurRow, v7), (a3->var3 = v25) == 0))
  {
    LOBYTE(v27) = 0;
    LOBYTE(v28) = 0;
    v29 = 0;
LABEL_45:
    if (self->mReturnEmptyCells && !v28 && (v27 & 1) == 0 && !a3->var2)
    {
      TSTCellClear(self->mCell);
      mCell = self->mCell;
      TSTCellClearValue(mCell);
      *&mCell->mPrivate &= 0xFFFF00FF;
      a3->var2 = self->mCell;
      a3->var0 = self->mPreviousCellID;
      a3->var1.var0 = a4.var0;
      a3->var1.var1 = v7;
      a3->var1.var2 = a4.var2;
      v29 = 1;
    }

    goto LABEL_50;
  }

  if (*(v25 + 1) > 0xFFu)
  {
    a3->var5 = 0;
  }

  else
  {
    a3->var5 = (TSTCellStorageHeaderFlagsForStorage(v25) & 2) != 0;
    if ((TSTCellStorageHeaderFlagsForStorage(a3->var3) & 0x1000) != 0)
    {
      v26 = 1;
      v27 = 1;
      goto LABEL_35;
    }
  }

  v26 = 0;
  v27 = 0;
LABEL_35:
  a3->var6 = v26;
  v28 = self->mSkipStyleOnlyCells && a3->var5;
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
      [(TSTCell *)self->mCell inflateFromStorageRef:a3->var3 dataStore:self->mTableDataStore suppressingFormulaInflation:self->mDontInflateFormulas];
      a3->var2 = self->mCell;
    }

    a3->var1.var0 = a4.var0;
    a3->var1.var1 = v7;
    a3->var1.var2 = a4.var2;
    a3->var0 = self->mPreviousCellID;
    v29 = 1;
    goto LABEL_45;
  }

  v29 = 0;
LABEL_50:
  if (!self->mDontReturnMergeRegions)
  {
    a3->var1.var0 = a4.var0;
    a3->var1.var1 = v7;
    a3->var1.var2 = a4.var2;
    v31 = TSTTableMergeRangeAtCellID(self->mTableModel, *&a4);
    a3->var4 = v31;
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

- (BOOL)getNext:(id *)a3
{
  [(TSTCellIterator *)self p_resetIterData:?];
  v5 = [(TSTCellRegionIterating *)self->mModelRegionIterator getNext];
  v6 = v5;
  v7 = 0;
  if (v5.row != 0xFFFF)
  {
    v8 = v5;
    if ((*&v5 & 0xFF0000) != 0xFF0000)
    {
      v9 = [(TSTCellIterator *)self p_getData:a3 forCellID:*&v5];
      if (v9)
      {
        v7 = 1;
      }

      else
      {
        v10 = v9;
        do
        {
          v11 = [(TSTCellRegionIterating *)self->mModelRegionIterator getNext];
          v6 = v11;
          v12 = (~*&v11 & 0xFF0000) == 0 || v11.row == 0xFFFF;
          v13 = v10 || v12;
          if (v10 || v12)
          {
            break;
          }

          v8 = v8 & 0xFFFFFFFF00000000 | *&v11;
          v10 = [(TSTCellIterator *)self p_getData:a3 forCellID:v8];
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