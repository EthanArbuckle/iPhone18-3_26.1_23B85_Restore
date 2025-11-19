@interface TSTTableSelection
- (BOOL)areCellsInTheSameRegionInTable:(id)a3;
- (BOOL)containsCell:(id)a3;
- (BOOL)containsSelection:(id)a3;
- (BOOL)intersectsPartialMergeRangeInTable:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSelection:(id)a3;
- (NSString)description;
- (TSTTableSelection)initWithTableModel:(id)a3 andPreviousSelection:(id)a4 offsetBy:(id)a5;
- (TSTTableSelection)initWithTableModel:(id)a3 cellRange:(id)a4 type:(int)a5 anchorCellID:(id)a6 cursorCellID:(id)a7;
- (TSTTableSelection)initWithTableModel:(id)a3 cellRegion:(id)a4;
- (TSTTableSelection)initWithTableModel:(id)a3 cellRegion:(id)a4 anchorCellID:(id)a5 cursorCellID:(id)a6;
- (TSTTableSelection)initWithTableModel:(id)a3 cellRegion:(id)a4 anchorCellID:(id)a5 cursorCellID:(id)a6 baseRegion:(id)a7 selectionType:(int)a8;
- (TSTTableSelection)initWithTableModel:(id)a3 cellRegion:(id)a4 anchorCellID:(id)a5 cursorCellID:(id)a6 selectionType:(int)a7;
- (TSTTableSelection)initWithTableModel:(id)a3 rowOrColumn:(int)a4 index:(unsigned int)a5 count:(unsigned int)a6;
- (TSTTableSelection)initWithTableModel:(id)a3 selectionType:(int)a4;
- (TSTTableSelection)initWithTableModel:(id)a3 startingColumnIndex:(unsigned __int16)a4 numberOfColumns:(unsigned __int16)a5;
- (TSTTableSelection)initWithTableModel:(id)a3 startingRowIndex:(unsigned __int16)a4 numberOfRows:(unsigned __int16)a5;
- (_NSRange)range;
- (_NSRange)searchReferenceRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)selectionByAddingCellRange:(id)a3 inTable:(id)a4 withAnchor:(id)a5 cursor:(id)a6 selectionType:(int)a7;
- (id)selectionByExtendingWithCellRange:(id)a3 inTable:(id)a4 selectionType:(int)a5 cursorCell:(id)a6;
- (id)selectionByMovingInTableInfo:(id)a3 inDirection:(int)a4 withModifierKeys:(int)a5 forReferenceMove:(BOOL)a6 suppressWrap:(BOOL)a7;
- (id)selectionByRemovingCellRange:(id)a3 inTable:(id)a4 withAnchor:(id)a5 cursor:(id)a6 selectionType:(int)a7;
- (void)dealloc;
- (void)enumerateSelectedCellsInTable:(id)a3 withFlags:(unint64_t)a4 usingBlock:(id)a5;
- (void)insert:(int)a3 atIndex:(unsigned __int16)a4 count:(unsigned __int16)a5;
- (void)remove:(int)a3 atIndex:(unsigned __int16)a4 count:(unsigned __int16)a5;
@end

@implementation TSTTableSelection

- (TSTTableSelection)initWithTableModel:(id)a3 cellRegion:(id)a4 anchorCellID:(id)a5 cursorCellID:(id)a6 baseRegion:(id)a7 selectionType:(int)a8
{
  if (!a3)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection initWithTableModel:cellRegion:anchorCellID:cursorCellID:baseRegion:selectionType:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 56, @"invalid nil value for '%s'", "table"}];
  }

  v18.receiver = self;
  v18.super_class = TSTTableSelection;
  v16 = [(TSTTableSelection *)&v18 init];
  if (v16)
  {
    v16->mCellRegion = a4;
    v16->mAnchorCellID = a5;
    v16->mCursorCellID = a6;
    v16->mBaseRegion = a7;
    v16->mSelectionType = a8;
    v16->mSearchReferenceRange.location = 0;
    v16->mSearchReferenceRange.length = 0;
  }

  return v16;
}

- (TSTTableSelection)initWithTableModel:(id)a3 cellRegion:(id)a4 anchorCellID:(id)a5 cursorCellID:(id)a6 selectionType:(int)a7
{
  v7 = *&a7;
  v13 = [TSTCellRegion regionFromRange:0];

  return [(TSTTableSelection *)self initWithTableModel:a3 cellRegion:a4 anchorCellID:*&a5 cursorCellID:*&a6 baseRegion:v13 selectionType:v7];
}

- (TSTTableSelection)initWithTableModel:(id)a3 cellRegion:(id)a4 anchorCellID:(id)a5 cursorCellID:(id)a6
{
  v11 = [TSTCellRegion regionFromRange:0];

  return [(TSTTableSelection *)self initWithTableModel:a3 cellRegion:a4 anchorCellID:*&a5 cursorCellID:*&a6 baseRegion:v11];
}

- (TSTTableSelection)initWithTableModel:(id)a3 cellRange:(id)a4 type:(int)a5 anchorCellID:(id)a6 cursorCellID:(id)a7
{
  v9 = *&a5;
  if (a3 && (a5 - 3) <= 0xFFFFFFFD)
  {
    a4 = TSTTableExpandCellRangeToCoverMergedCells(a3, *&a4);
  }

  v12 = [TSTCellRegion regionFromRange:a4];
  v13 = [TSTCellRegion regionFromRange:0];

  return [(TSTTableSelection *)self initWithTableModel:a3 cellRegion:v12 anchorCellID:*&a6 cursorCellID:*&a7 baseRegion:v13 selectionType:v9];
}

- (TSTTableSelection)initWithTableModel:(id)a3 selectionType:(int)a4
{
  v4 = *&a4;
  if (a4 != 4)
  {
    if (a4 == 5)
    {
      v7 = [a3 range];
      v8 = [TSTCellRegion regionFromRange:v7];
      v9 = (v7 + ((v7 >> 16) & 0xFF0000) + 16711680) & 0xFF0000 | (v7 + HIWORD(v7) - 1);
      v10 = v7;
      v11 = self;
      v12 = a3;
      v13 = 5;
      goto LABEL_6;
    }

    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection initWithTableModel:selectionType:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 148, @"expected equality between %s and %s", "selectionType", "kTableNameSelection"}];
  }

  v8 = +[TSTCellRegion invalidRegion];
  v11 = self;
  v12 = a3;
  v10 = 0xFFFFFFLL;
  v9 = 0xFFFFFFLL;
  v13 = v4;
LABEL_6:

  return [(TSTTableSelection *)v11 initWithTableModel:v12 cellRegion:v8 anchorCellID:v10 cursorCellID:v9 selectionType:v13];
}

- (TSTTableSelection)initWithTableModel:(id)a3 startingRowIndex:(unsigned __int16)a4 numberOfRows:(unsigned __int16)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [a3 numberOfColumns];
  if (([a3 numberOfRows] - v6) <= v5)
  {
    v5 = [a3 numberOfRows] - v6;
  }

  return [(TSTTableSelection *)self initWithTableModel:a3 cellRange:(v9 << 32) | (v5 << 48) | v6 type:1 anchorCellID:v6 cursorCellID:((v9 << 16) - 1) & 0xFF0000 | (v6 + v5 - 1)];
}

- (TSTTableSelection)initWithTableModel:(id)a3 startingColumnIndex:(unsigned __int16)a4 numberOfColumns:(unsigned __int16)a5
{
  v5 = a5;
  if (([a3 numberOfColumns] - a4) <= a5)
  {
    v5 = [a3 numberOfColumns] - a4;
  }

  v9 = [a3 numberOfRows];
  if (v5 >= 0xFFu)
  {
    v10 = 255;
  }

  else
  {
    v10 = v5;
  }

  return [(TSTTableSelection *)self initWithTableModel:a3 cellRange:(v10 << 32) | (v9 << 48) | (a4 << 16) type:2 anchorCellID:a4 << 16 cursorCellID:((a4 << 16) + (v10 << 16) + 16711680) & 0xFF0000 | (v9 - 1)];
}

- (TSTTableSelection)initWithTableModel:(id)a3 rowOrColumn:(int)a4 index:(unsigned int)a5 count:(unsigned int)a6
{
  if (a4 == 2)
  {

    return [(TSTTableSelection *)self initWithTableModel:a3 startingColumnIndex:a5 numberOfColumns:a6];
  }

  else if (a4 == 1)
  {

    return [(TSTTableSelection *)self initWithTableModel:a3 startingRowIndex:a5 numberOfRows:a6];
  }

  else
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection initWithTableModel:rowOrColumn:index:count:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 218, @"Invalid selection type used with rowOrColumn initializer."}];
    return 0;
  }
}

- (TSTTableSelection)initWithTableModel:(id)a3 andPreviousSelection:(id)a4 offsetBy:(id)a5
{
  v9 = [objc_msgSend(a4 "cellRegion")];
  v10 = [a4 anchorCellID];
  v11 = a5.var1 + v10;
  v12 = ((a5.var0 + BYTE2(v10)) | v11) >> 16;
  v13 = ((LOBYTE(a5.var0) + BYTE2(v10)) << 16) | v11;
  v14 = [a4 cursorCellID];
  v15 = a5.var1 + v14;
  v16 = ((a5.var0 + BYTE2(v14)) | v15) >> 16;
  v17 = ((LOBYTE(a5.var0) + BYTE2(v14)) << 16) | v15;
  v18 = [objc_msgSend(a4 "baseRegion")];
  v19 = [a4 selectionType];
  if (v12)
  {
    v20 = 0xFFFFFFLL;
  }

  else
  {
    v20 = v13;
  }

  if (v16)
  {
    v21 = 0xFFFFFFLL;
  }

  else
  {
    v21 = v17;
  }

  return [(TSTTableSelection *)self initWithTableModel:a3 cellRegion:v9 anchorCellID:v20 cursorCellID:v21 baseRegion:v18 selectionType:v19];
}

- (TSTTableSelection)initWithTableModel:(id)a3 cellRegion:(id)a4
{
  v7 = [a4 suitableAnchor];
  v8 = [a4 suitableCursor];
  v9 = [TSTCellRegion regionFromRange:0];

  return [(TSTTableSelection *)self initWithTableModel:a3 cellRegion:a4 anchorCellID:v7 cursorCellID:v8 baseRegion:v9 selectionType:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableSelection;
  [(TSTTableSelection *)&v3 dealloc];
}

- (id)selectionByExtendingWithCellRange:(id)a3 inTable:(id)a4 selectionType:(int)a5 cursorCell:(id)a6
{
  v7 = *&a5;
  if (a3.var0.var0 == 0xFFFF || (*&a3 & 0xFF0000) == 0xFF0000 || !a3.var1.var1 || (*&a3 & 0xFFFF00000000) == 0)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection selectionByExtendingWithCellRange:inTable:selectionType:cursorCell:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 372, @"Can't extend a selection with an invalid cell range"}];
  }

  v13 = [(TSTCellRegion *)[(TSTTableSelection *)self cellRegion] containsCellID:[(TSTTableSelection *)self anchorCellID]];
  v14 = [(TSTTableSelection *)self baseRegion];
  if (v13)
  {
    v15 = [(TSTCellRegion *)v14 regionByAddingRange:a3];
  }

  else
  {
    v15 = [(TSTCellRegion *)v14 regionBySubtractingRange:a3];
  }

  v16 = [[TSTTableSelection alloc] initWithTableModel:a4 cellRegion:v15 anchorCellID:[(TSTTableSelection *)self anchorCellID] cursorCellID:*&a6 baseRegion:[(TSTTableSelection *)self baseRegion] selectionType:v7];

  return v16;
}

- (id)selectionByAddingCellRange:(id)a3 inTable:(id)a4 withAnchor:(id)a5 cursor:(id)a6 selectionType:(int)a7
{
  v7 = *&a7;
  if (a3.var0.var0 == 0xFFFF || (*&a3 & 0xFF0000) == 0xFF0000 || !a3.var1.var1 || (*&a3 & 0xFFFF00000000) == 0)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection selectionByAddingCellRange:inTable:withAnchor:cursor:selectionType:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 396, @"Can't extend a selection with an invalid cell range"}];
  }

  v15 = [[TSTTableSelection alloc] initWithTableModel:a4 cellRegion:[(TSTCellRegion *)[(TSTTableSelection *)self cellRegion] regionByAddingRange:a3] anchorCellID:*&a5 cursorCellID:*&a6 baseRegion:[(TSTTableSelection *)self cellRegion] selectionType:v7];

  return v15;
}

- (id)selectionByRemovingCellRange:(id)a3 inTable:(id)a4 withAnchor:(id)a5 cursor:(id)a6 selectionType:(int)a7
{
  v7 = *&a7;
  if (a3.var0.var0 == 0xFFFF || (*&a3 & 0xFF0000) == 0xFF0000 || !a3.var1.var1 || (*&a3 & 0xFFFF00000000) == 0)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection selectionByRemovingCellRange:inTable:withAnchor:cursor:selectionType:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 410, @"Can't remove an invalid cell range"}];
  }

  v15 = [[TSTTableSelection alloc] initWithTableModel:a4 cellRegion:[(TSTCellRegion *)[(TSTTableSelection *)self cellRegion] regionBySubtractingRange:a3] anchorCellID:*&a5 cursorCellID:*&a6 baseRegion:[(TSTTableSelection *)self cellRegion] selectionType:v7];

  return v15;
}

- (id)selectionByMovingInTableInfo:(id)a3 inDirection:(int)a4 withModifierKeys:(int)a5 forReferenceMove:(BOOL)a6 suppressWrap:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v86 = [a3 tableModel];
  v13 = [v86 range];
  v14 = [(TSTTableSelection *)self cursorCellID];
  v85 = [(TSTTableSelection *)self anchorCellID];
  v15 = v9 & 0xC;
  v16 = [(TSTTableSelection *)self selectionType];
  v84 = self;
  if ((v9 & 1) != 0 || v16 != 1)
  {
    v20 = [(TSTTableSelection *)self selectionType];
    v19 = v9;
    if ((v9 & 1) == 0 && v20 == 2)
    {
      v21 = [(TSTCellRegion *)[(TSTTableSelection *)self cellRegion] boundingCellRange];
      if (v8)
      {
        v22 = (LOBYTE(v21.var1.var0) + v21.var0.var1 - 1) - v21.var0.var1 + 1;
      }

      else
      {
        v22 = 1;
      }

      if (a4 == 2)
      {
        if (v15)
        {
          v44 = HIDWORD(v13) + WORD1(v13) + 255;
        }

        else
        {
          LOBYTE(v44) = TSTTableColumnRightOfColumn(v86, LOBYTE(v21.var1.var0) + v21.var0.var1 - 1);
        }

        if (v44 == 0xFF)
        {
          v56 = -1;
        }

        else
        {
          v56 = v44 - v22 + 1;
        }

        if (v8)
        {
          LOBYTE(v23) = v56;
        }

        else
        {
          LOBYTE(v23) = v44;
        }
      }

      else
      {
        if (a4 != 1)
        {
          goto LABEL_19;
        }

        if (v15)
        {
          v23 = v13 >> 16;
        }

        else
        {
          LOBYTE(v23) = TSTTableColumnLeftOfColumn(v86, v21.var0.var1);
        }
      }

      if (v23 != 0xFF)
      {
        v46 = [[TSTTableSelection alloc] initWithTableModel:v86 startingColumnIndex:v23 numberOfColumns:v22];
        goto LABEL_158;
      }

      return 0;
    }
  }

  else
  {
    v17 = [(TSTCellRegion *)[(TSTTableSelection *)self cellRegion] boundingCellRange];
    if (v8)
    {
      v18 = *&v17.var1.var1;
    }

    else
    {
      v18 = 1;
    }

    if (a4 == 4)
    {
      if ((v9 & 0xC) != 0)
      {
        v35 = v13 + HIWORD(v13) - 1;
      }

      else
      {
        LOWORD(v35) = TSTTableRowBelowRow(v86, v17.var0.var0 + v17.var1.var1 - 1);
      }

      if (v35 == 0xFFFF)
      {
        v45 = -1;
      }

      else
      {
        v45 = v35 - v18 + 1;
      }

      if (v8)
      {
        LOWORD(v13) = v45;
      }

      else
      {
        LOWORD(v13) = v35;
      }

      goto LABEL_58;
    }

    v19 = v9;
    if (a4 == 3)
    {
      if ((v9 & 0xC) == 0)
      {
        LOWORD(v13) = TSTTableRowAboveRow(v86, v17.var0.var0);
      }

LABEL_58:
      if (v13 != 0xFFFF)
      {
        v46 = [[TSTTableSelection alloc] initWithTableModel:v86 startingRowIndex:v13 numberOfRows:v18];
LABEL_158:

        return v46;
      }

      return 0;
    }
  }

LABEL_19:
  LODWORD(v24) = HIWORD(*&v14);
  v25 = v85;
  v26 = HIWORD(*&v85);
  if (!v15)
  {
    v29 = v19;
    if ((v19 & 1) == 0)
    {
      v38 = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")] & !v7;
      v39 = [a3 masterLayout];
      v25 = v85;
      v40 = (((*&v85 ^ *&v14) & 0xFFFFFF) == 0) & v38;
      if (!v8)
      {
        v40 = v38;
      }

      v27 = HIBYTE(*&v85);
      v28 = HIBYTE(*&v14);
      v41 = v13;
      if (a4 > 2)
      {
        LOBYTE(v26) = v85.var1;
        if (a4 == 4)
        {
          v63 = v40;
          v64 = v39;
          if (v8)
          {
            v14 = TSTTableCellBelowCell(v86, *&v14);
            v30 = TSTTableCellBelowCell(v86, *&v85);
            v25 = v85;
            v26 = HIWORD(v30);
            v27 = HIBYTE(v30);
          }

          else
          {
            v14 = TSTTableCellBelowCell(v86, *&v85);
            LOBYTE(v26) = v85.var1;
            v25 = v85;
            LOWORD(v30) = v85.var0;
          }

          v28 = HIBYTE(*&v14);
          LODWORD(v24) = HIWORD(*&v14);
          if (v14.var0 != 0xFFFF && (*&v14.var0 & 0xFF0000) != 0xFF0000 || !v63)
          {
            goto LABEL_140;
          }

          LOWORD(v30) = TSTMasterLayoutNextVisibleRow(v64, 0);
          LOBYTE(v26) = TSTTableColumnRightOfColumn(v86, v85.var1);
        }

        else
        {
          LOWORD(v30) = v85.var0;
          if (a4 != 3)
          {
            goto LABEL_140;
          }

          v54 = v40;
          v55 = v39;
          if (v8)
          {
            v14 = TSTTableCellAboveCell(v86, *&v14);
            v30 = TSTTableCellAboveCell(v86, *&v85);
            v25 = v85;
            v26 = HIWORD(v30);
            v27 = HIBYTE(v30);
          }

          else
          {
            v14 = TSTTableCellAboveCell(v86, *&v85);
            LOBYTE(v26) = v85.var1;
            v25 = v85;
            LOWORD(v30) = v85.var0;
          }

          v28 = HIBYTE(*&v14);
          LODWORD(v24) = HIWORD(*&v14);
          if (v14.var0 != 0xFFFF && (*&v14.var0 & 0xFF0000) != 0xFF0000)
          {
            goto LABEL_140;
          }

          if (!v54)
          {
            goto LABEL_140;
          }

          LOWORD(v30) = TSTMasterLayoutPreviousVisibleRow(v55, (v41 + HIWORD(v41) - 1));
          LOBYTE(v26) = TSTTableColumnLeftOfColumn(v86, v85.var1);
        }
      }

      else
      {
        LOBYTE(v26) = v85.var1;
        if (a4 == 1)
        {
          v61 = v40;
          v62 = v39;
          if (v8)
          {
            v14 = TSTTableCellLeftOfCell(v86, *&v14);
            v30 = TSTTableCellLeftOfCell(v86, *&v85);
            v25 = v85;
            v26 = HIWORD(v30);
            v27 = HIBYTE(v30);
          }

          else
          {
            v14 = TSTTableCellLeftOfCell(v86, *&v85);
            LOBYTE(v26) = v85.var1;
            v25 = v85;
            LOWORD(v30) = v85.var0;
          }

          v28 = HIBYTE(*&v14);
          LODWORD(v24) = HIWORD(*&v14);
          if (v14.var0 != 0xFFFF && (*&v14.var0 & 0xFF0000) != 0xFF0000 || !v61)
          {
            goto LABEL_140;
          }

          LOWORD(v30) = TSTTableRowAboveRow(v86, v25.var0);
          LOBYTE(v26) = TSTMasterLayoutPreviousVisibleColumn(v62, (BYTE4(v41) + BYTE2(v41) - 1));
        }

        else
        {
          LOWORD(v30) = v85.var0;
          if (a4 != 2)
          {
            goto LABEL_140;
          }

          v42 = v40;
          v43 = v39;
          if (v8)
          {
            v14 = TSTTableCellRightOfCell(v86, *&v14);
            v30 = TSTTableCellRightOfCell(v86, *&v85);
            v25 = v85;
            v26 = HIWORD(v30);
            v27 = HIBYTE(v30);
          }

          else
          {
            v14 = TSTTableCellRightOfCell(v86, *&v85);
            LOBYTE(v26) = v85.var1;
            v25 = v85;
            LOWORD(v30) = v85.var0;
          }

          v28 = HIBYTE(*&v14);
          LODWORD(v24) = HIWORD(*&v14);
          if (v14.var0 != 0xFFFF && (*&v14.var0 & 0xFF0000) != 0xFF0000)
          {
            goto LABEL_140;
          }

          if (!v42)
          {
            goto LABEL_140;
          }

          LOWORD(v30) = TSTTableRowBelowRow(v86, v25.var0);
          LOBYTE(v26) = TSTMasterLayoutNextVisibleColumn(v43, 0);
        }
      }

      v25 = v85;
      v27 = v28;
      v14.var0 = v30;
      LOBYTE(v24) = v26;
      goto LABEL_140;
    }

    v33 = v13;
    if ([(TSTTableSelection *)v84 selectionType]== 1)
    {
      if (a4 == 4)
      {
        v34 = TSTTableCellBelowCell(v86, *&v14);
      }

      else
      {
        if (a4 != 3)
        {
          v28 = HIBYTE(*&v14);
          goto LABEL_108;
        }

        v34 = TSTTableCellAboveCell(v86, *&v14);
      }

      v14.var0 = v34;
      v28 = HIBYTE(v34);
LABEL_108:
      v25 = v85;
      LOBYTE(v26) = v85.var1;
      v27 = HIBYTE(*&v85);
      v57 = HIDWORD(v13) + WORD1(v13);
LABEL_109:
      LOBYTE(v24) = v57 - 1;
LABEL_139:
      LOWORD(v30) = v25.var0;
      goto LABEL_140;
    }

    if ([(TSTTableSelection *)v84 selectionType]== 2)
    {
      if (a4 == 2)
      {
        v53 = TSTTableCellRightOfCell(v86, *&v14);
      }

      else
      {
        if (a4 != 1)
        {
          v28 = HIBYTE(*&v14);
          goto LABEL_138;
        }

        v53 = TSTTableCellLeftOfCell(v86, *&v14);
      }

      LODWORD(v24) = HIWORD(v53);
      v28 = HIBYTE(v53);
LABEL_138:
      v25 = v85;
      LOBYTE(v26) = v85.var1;
      v27 = HIBYTE(*&v85);
      v14 = (v13 + HIWORD(v13) - 1);
      goto LABEL_139;
    }

    if (a4 <= 2)
    {
      v58 = v85;
      if (a4 == 1)
      {
        v59 = v14;
        v60 = TSTTableCellLeftOfCell(v86, *&v14);
        goto LABEL_168;
      }

      if (a4 == 2)
      {
        v59 = v14;
        v60 = TSTTableCellRightOfCell(v86, *&v14);
LABEL_168:
        v28 = HIBYTE(v60);
        var0 = v60;
        v78 = HIWORD(v60);
        v58 = v85;
        v75 = TSTCellRangeUnionCellID(*&v85 | 0x1000100000000, v59);
        v77 = v75 & 0xFFFF000000000000;
        v79 = 0x100000000;
        LODWORD(v76) = HIWORD(*&v14);
        goto LABEL_169;
      }

LABEL_166:
      v28 = HIBYTE(*&v14);
      v75 = TSTCellRangeUnionCellID(*&v58 | 0x1000100000000, *&v14);
      v76 = v75 >> 16;
      v77 = v75 & 0xFFFF000000000000;
      v78 = HIWORD(*&v14);
      var0 = v14.var0;
      v79 = v75;
LABEL_169:
      v80 = v75;
      goto LABEL_172;
    }

    v58 = v85;
    if (a4 == 4)
    {
      v65 = v14;
      v66 = TSTTableCellBelowCell(v86, *&v14);
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_166;
      }

      v65 = v14;
      v66 = TSTTableCellAboveCell(v86, *&v14);
    }

    v28 = HIBYTE(v66);
    var0 = v66;
    v78 = HIWORD(v66);
    v58 = v85;
    v75 = TSTCellRangeUnionCellID(*&v85 | 0x1000100000000, v65);
    v76 = v75 >> 16;
    v77 = 0x1000000000000;
    v79 = v75;
    v80 = v14.var0;
LABEL_172:
    v27 = HIBYTE(*&v58);
    v81 = TSTTableExpandCellRangeToCoverMergedCells(v86, v77 | v75 & 0xFF000000 | v79 & 0xFFFF00000000 | (v76 << 16) | v80);
    if (!HIWORD(v81))
    {
      v25 = v85;
      LOWORD(v30) = v85.var0;
      v14.var0 = var0;
      goto LABEL_177;
    }

    if ((v81 & 0xFFFF00000000) != 0 && var0 >= v81 && (v81 - 1 + HIWORD(v81)) >= var0 && v78 >= BYTE2(v81))
    {
      v82 = HIDWORD(v81) + WORD1(v81) + 255;
      if (v78 <= (BYTE4(v81) + BYTE2(v81) - 1))
      {
        if (a4 <= 2)
        {
          if (a4 != 1)
          {
            LOBYTE(v26) = v85.var1;
            if (a4 != 2)
            {
              v25 = v85;
              LOWORD(v30) = v85.var0;
              v14.var0 = var0;
              LOBYTE(v24) = v78;
              goto LABEL_140;
            }

            v25 = v85;
            if (v82 != (BYTE4(v33) + BYTE2(v33) - 1))
            {
              LOBYTE(v24) = v82 + 1;
              LOWORD(v30) = v85.var0;
              v14.var0 = var0;
              goto LABEL_140;
            }

            v28 = HIBYTE(*&v14);
            goto LABEL_139;
          }

          if (BYTE2(v81) != BYTE2(v33))
          {
            LOBYTE(v24) = BYTE2(v81) - 1;
            v25 = v85;
            LOWORD(v30) = v85.var0;
            v14.var0 = var0;
            goto LABEL_178;
          }

LABEL_194:
          v28 = HIBYTE(*&v14);
          v25 = v85;
          LOWORD(v30) = v85.var0;
          goto LABEL_178;
        }

        if (a4 == 4)
        {
          if ((HIWORD(v81) + v81) == (v33 + HIWORD(v33)))
          {
            goto LABEL_194;
          }

          v25 = v85;
          LOWORD(v30) = v85.var0;
          v14.var0 = HIWORD(v81) + v81;
          goto LABEL_177;
        }

        if (a4 == 3)
        {
          if (v81 == v33)
          {
            goto LABEL_194;
          }

          v25 = v85;
          LOWORD(v30) = v85.var0;
          v14.var0 = v81 - 1;
LABEL_177:
          LOBYTE(v24) = v78;
LABEL_178:
          LOBYTE(v26) = v85.var1;
          goto LABEL_140;
        }
      }
    }

    v25 = v85;
    LOWORD(v30) = v85.var0;
    v14.var0 = var0;
    goto LABEL_177;
  }

  v27 = HIBYTE(*&v85);
  v28 = HIBYTE(*&v14);
  v29 = v19;
  if (a4 > 2)
  {
    if (a4 == 4)
    {
      if (v14.var0 <= v85.var0)
      {
        v49 = v85.var0;
      }

      else
      {
        v49 = v14.var0;
      }

      v50 = ~v49 + v13 + HIWORD(v13);
      v51 = v50 + v14.var0;
      v52 = v50 + v85.var0;
      if (v8)
      {
        LOWORD(v30) = v52;
      }

      else
      {
        LOWORD(v30) = v85.var0;
      }

      if (v8)
      {
        v14.var0 = v51;
      }

      else
      {
        v14.var0 = v13 + HIWORD(v13) - 1;
      }

      if (!v8)
      {
        v28 = 0;
      }
    }

    else
    {
      LOWORD(v30) = v85.var0;
      if (a4 == 3)
      {
        if (v8)
        {
          if (v14.var0 >= v85.var0)
          {
            v36 = v85.var0;
          }

          else
          {
            v36 = v14.var0;
          }

          v37 = v36 - v13;
          v14.var0 -= v37;
          LOWORD(v30) = v85.var0 - v37;
        }

        else
        {
          v28 = 0;
          LOWORD(v30) = v85.var0;
          v14.var0 = v13;
        }
      }
    }
  }

  else if (a4 == 1)
  {
    if (v8)
    {
      if (v14.var1 >= v85.var1)
      {
        v47 = HIWORD(*&v85);
      }

      else
      {
        v47 = HIWORD(*&v14);
      }

      v48 = v47 - WORD1(v13);
      LOBYTE(v24) = v14.var1 - v48;
      LOBYTE(v26) = v85.var1 - v48;
      goto LABEL_139;
    }

    v28 = 0;
    v24 = v13 >> 16;
    LOWORD(v30) = v85.var0;
  }

  else
  {
    LOWORD(v30) = v85.var0;
    if (a4 == 2)
    {
      if (v8)
      {
        if (v14.var1 <= v85.var1)
        {
          v31 = HIWORD(*&v85);
        }

        else
        {
          v31 = HIWORD(*&v14);
        }

        v32 = HIDWORD(v13) + WORD1(v13) - v31 + 255;
        LOBYTE(v24) = v32 + v14.var1;
        LOBYTE(v26) = v32 + v85.var1;
        goto LABEL_139;
      }

      v28 = 0;
      v57 = HIDWORD(v13) + WORD1(v13);
      goto LABEL_109;
    }
  }

LABEL_140:
  if (v14.var0 == 0xFFFF || v24 == 0xFF)
  {
    return 0;
  }

  v67 = v14.var0 | (v28 << 24) | (v24 << 16);
  if ((v29 & 1) == 0)
  {
    if (!v8)
    {
      v46 = [[TSTTableSelection alloc] initWithTableModel:v86 andCellID:v67];
      goto LABEL_158;
    }

    if (v30 != 0xFFFF && v26 != 0xFF)
    {
      v70 = v30 | (v27 << 24) | (v26 << 16);
      v71 = TSTCellRangeUnionCellID(v70 | 0x1000100000000, v67);
      if ([(TSTTableSelection *)v84 selectionType]== 1)
      {
        v72 = v84;
      }

      else
      {
        v72 = v84;
        if ([(TSTTableSelection *)v84 selectionType]!= 2)
        {
          v71 = TSTTableExpandCellRangeToCoverMergedCells(v86, v71);
        }
      }

      if (![(TSTCellRegion *)[(TSTTableSelection *)v72 cellRegion] equalsCellRange:v71])
      {
        v46 = [[TSTTableSelection alloc] initWithTableModel:v86 cellRange:v71 type:[(TSTTableSelection *)v72 selectionType] anchorCellID:v70 cursorCellID:v67];
        goto LABEL_158;
      }
    }

    return 0;
  }

  v68 = TSTCellRangeUnionCellID(*&v25 | 0x1000100000000, v67);
  if ([(TSTTableSelection *)v84 selectionType]== 1)
  {
    v69 = v84;
  }

  else
  {
    v69 = v84;
    if ([(TSTTableSelection *)v84 selectionType]!= 2)
    {
      v68 = TSTTableExpandCellRangeToCoverMergedCells(v86, v68);
    }
  }

  if ([(TSTCellRegion *)[(TSTTableSelection *)v69 cellRegion] equalsCellRange:v68]&& ((v67 ^ [(TSTTableSelection *)v69 cursorCellID]) & 0xFFFFFFLL) == 0)
  {
    return 0;
  }

  v73 = [(TSTTableSelection *)v69 selectionType];

  return [(TSTTableSelection *)v69 selectionByExtendingWithCellRange:v68 inTable:v86 selectionType:v73 cursorCell:v67];
}

- (void)enumerateSelectedCellsInTable:(id)a3 withFlags:(unint64_t)a4 usingBlock:(id)a5
{
  v6 = a3;
  v7 = [[TSTCellIterator alloc] initWithTableModel:a3 region:self->mCellRegion flags:a4];
  for (i = 0; i != 1; (*(a5 + 2))(a5, v6, v11, &i, v12))
  {
    if (![(TSTCellIterator *)v7 getNext:v9])
    {
      break;
    }

    v6 = v6 & 0xFFFFFFFF00000000 | v10;
  }
}

- (void)insert:(int)a3 atIndex:(unsigned __int16)a4 count:(unsigned __int16)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(TSTCellRegion *)self->mCellRegion boundingCellRange];
  var0 = v9.var0;
  v11 = HIDWORD(*&v9);
  v12 = HIWORD(*&v9);
  if (!a3)
  {
    mSelectionType = self->mSelectionType;
    if (mSelectionType)
    {
      if (mSelectionType == 2)
      {
        v12 = (v12 + v5);
        goto LABEL_26;
      }

      if (mSelectionType != 1 || *&v9 >> 49 == 0)
      {
        goto LABEL_26;
      }
    }

    else if (!(*&v9 >> 49))
    {
      goto LABEL_26;
    }

    if (v5 + v6 <= v9.var0.var0 + v12)
    {
      v18 = v5;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 + v12;
    if (v9.var0.var0 <= v6)
    {
      v12 = v19;
    }

    else
    {
      v12 = v12;
    }

    goto LABEL_26;
  }

  v13 = self->mSelectionType;
  if (!v13)
  {
    if ((*&v9 & 0xFFFE00000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_14:
    if (v5 + v6 <= v9.var0.var1 + v9.var1.var0)
    {
      v16 = v5;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 + v9.var1.var0;
    if (v9.var0.var1 <= v6)
    {
      LOWORD(v11) = v17;
    }

    goto LABEL_26;
  }

  if (v13 == 1)
  {
    LOWORD(v11) = v9.var1.var0 + v5;
    goto LABEL_26;
  }

  if (v13 == 2 && (*&v9 & 0xFFFE00000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_26:

  self->mCellRegion = 0;
  self->mCellRegion = [TSTCellRegion regionFromRange:(v11 << 32) | (v12 << 48) | *&var0];
}

- (void)remove:(int)a3 atIndex:(unsigned __int16)a4 count:(unsigned __int16)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(TSTCellRegion *)self->mCellRegion boundingCellRange];
  var0 = v9.var0;
  v11 = v9.var0.var0;
  v12 = *&v9 >> 16;
  v13 = HIDWORD(*&v9);
  v14 = HIWORD(*&v9);
  if (a3)
  {
    var1 = v9.var0.var1;
  }

  else
  {
    var1 = v9.var0.var0;
  }

  if ((self->mSelectionType - 3) < 0xFFFFFFFE || v6 < var1)
  {
    v16 = var1;
    goto LABEL_15;
  }

  v16 = var1;
  if (a3)
  {
    v17 = v9.var1;
  }

  else
  {
    v17 = *&v9.var1.var1;
  }

  if (v5 + v6 > var1 + v17.var0)
  {
LABEL_15:
    if (v6 >= var1)
    {
      if (a3)
      {
        v29 = v9.var1;
      }

      else
      {
        v29 = *&v9.var1.var1;
      }

      v30 = v16 + v29.var0;
      v31 = v6 - v30 + *&v29;
      if (a3)
      {
        v32 = v31;
      }

      else
      {
        v32 = v9.var1.var0;
      }

      if (a3)
      {
        v31 = *&v9.var1.var1;
      }

      v33 = v30 >= v6 && v6 + v5 >= v30;
      if (v33)
      {
        LOWORD(v13) = v32;
      }

      if (v33)
      {
        v14 = v31;
      }

      else
      {
        v14 = v14;
      }
    }

    else
    {
      v18 = v6 + v5;
      if (a3)
      {
        v19 = v9.var1;
      }

      else
      {
        v19 = *&v9.var1.var1;
      }

      v20 = v16 + v19.var0;
      v21 = *&v19 - (v18 - v16);
      v22 = v9.var0.var0 - (v18 - v16);
      LOBYTE(v23) = v9.var0.var1 - (v18 - v16);
      if (a3)
      {
        v24 = v21;
      }

      else
      {
        v24 = v9.var1.var0;
      }

      if (a3)
      {
        v21 = *&v9.var1.var1;
        v22 = v9.var0.var0;
      }

      else
      {
        v23 = *&v9 >> 16;
      }

      v25 = v18 >= v16;
      if (v18 >= v16)
      {
        v26 = v24;
      }

      else
      {
        v26 = v9.var1.var0;
      }

      if (!v25)
      {
        v21 = *&v9.var1.var1;
        v22 = v9.var0.var0;
        v23 = *&v9 >> 16;
      }

      if (a3)
      {
        v27 = 0;
      }

      else
      {
        v27 = v9.var1.var0;
      }

      if (a3)
      {
        v28 = *&v9.var1.var1;
      }

      else
      {
        v28 = 0;
      }

      if (v18 > v20)
      {
        LOWORD(v13) = v27;
      }

      else
      {
        LOWORD(v13) = v26;
      }

      if (v18 > v20)
      {
        v14 = v28;
      }

      else
      {
        v14 = v21;
      }

      if (v18 > v20)
      {
        v11 = v9.var0.var0;
      }

      else
      {
        v11 = v22;
      }

      if (v18 <= v20)
      {
        LOBYTE(v12) = v23;
      }
    }

    goto LABEL_72;
  }

  if (v5 == v17.var0)
  {
    if (var1)
    {
      if (a3)
      {
        LOBYTE(v12) = v9.var0.var1 - 1;
LABEL_69:
        LOWORD(v13) = 1;
        goto LABEL_72;
      }

      v11 = v9.var0.var0 - 1;
    }

    else if (a3)
    {
      goto LABEL_69;
    }

    v14 = 1;
    goto LABEL_72;
  }

  if (a3)
  {
    LOWORD(v13) = v17.var0 - v5;
    v14 = v14;
  }

  else
  {
    v14 = (*&v17 - v5);
  }

LABEL_72:

  self->mCellRegion = 0;
  self->mCellRegion = [TSTCellRegion regionFromRange:(v13 << 32) | (v14 << 48) | *&var0 & 0xFF000000 | (v12 << 16) | v11];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[TSTTableSelection allocWithZone:](TSTTableSelection init];
  v5->mCellRegion = [(TSTCellRegion *)self->mCellRegion copyWithZone:a3];
  v5->mSelectionType = self->mSelectionType;
  v5->mAnchorCellID = self->mAnchorCellID;
  v5->mBaseRegion = [(TSTCellRegion *)self->mBaseRegion copyWithZone:a3];
  v5->mCursorCellID = self->mCursorCellID;
  v5->mSearchReferenceRange = self->mSearchReferenceRange;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {

    LOBYTE(v5) = [(TSTTableSelection *)self isEqualToSelection:a3];
  }

  return v5;
}

- (BOOL)isEqualToSelection:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()] || objc_msgSend(a3, "selectionType") != self->mSelectionType || !objc_msgSend(objc_msgSend(a3, "cellRegion"), "equalsCellRegion:", self->mCellRegion) || ((*&self->mAnchorCellID ^ objc_msgSend(a3, "anchorCellID")) & 0xFFFFFF) != 0 || ((*&self->mCursorCellID ^ objc_msgSend(a3, "cursorCellID")) & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v6 = [a3 baseRegion];
  mBaseRegion = self->mBaseRegion;

  return [v6 equalsCellRegion:mBaseRegion];
}

- (BOOL)areCellsInTheSameRegionInTable:(id)a3
{
  v4 = [(TSTCellRegion *)self->mCellRegion boundingCellRange];
  v5 = [a3 tableAreaForCellID:*&v4.var0];
  v6 = [a3 tableAreaForCellID:(*&v4.var0 + (*&v4.var0.var1 & 0xFF0000u) + 16711680) & 0xFF0000 | (v4.var0.var0 + v4.var1.var1 - 1)];
  if (v5 == 4 && v6 == 1)
  {
    return 1;
  }

  return v5 == 5 && v6 == 3 || v5 == v6;
}

- (BOOL)containsSelection:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    mCellRegion = self->mCellRegion;
    v7 = [a3 cellRegion];

    LOBYTE(v5) = [(TSTCellRegion *)mCellRegion containsCellRegion:v7];
  }

  return v5;
}

- (BOOL)containsCell:(id)a3
{
  v4 = [(TSTTableSelection *)self cellRegion];

  return [(TSTCellRegion *)v4 containsCellID:*&a3];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  mSelectionType = self->mSelectionType;
  if (mSelectionType > 5)
  {
    v7 = @"<unknown>";
  }

  else
  {
    v7 = off_279D4A398[mSelectionType];
  }

  v8 = [(TSTCellRegion *)self->mCellRegion description];
  v9 = [(TSTCellRegion *)self->mBaseRegion description];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", BYTE2(*&self->mAnchorCellID), *&self->mAnchorCellID];
  return [v3 stringWithFormat:@"<%@: %p type: %@ region: %@ base region: %@ anchor: %@ cursor: %@>", v5, self, v7, v8, v9, v10, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%hu, %hu)", BYTE2(*&self->mCursorCellID), *&self->mCursorCellID)];
}

- (BOOL)intersectsPartialMergeRangeInTable:(id)a3
{
  if ((self->mSelectionType - 1) > 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v4 = TSTTableMergeRangesForCellRange(a3, [(TSTCellRegion *)self->mCellRegion boundingCellRange]);
    v5 = [v4 count];
    if (v5)
    {
      v6 = [v4 iterator];
      for (i = v6; ; v6 = i)
      {
        v8 = [v6 nextMergeRegion];
        LOBYTE(v5) = 0;
        if (v8 == 0xFFFF)
        {
          break;
        }

        if ((v8 & 0xFF0000) == 0xFF0000)
        {
          break;
        }

        LOBYTE(v5) = 0;
        if (!HIWORD(v8) || (v8 & 0xFFFF00000000) == 0)
        {
          break;
        }

        if ([(TSTCellRegion *)self->mCellRegion intersectsCellRange:v8]&& ![(TSTCellRegion *)self->mCellRegion containsCellRange:v8])
        {
          LOBYTE(v5) = 1;
          return v5;
        }
      }
    }
  }

  return v5;
}

- (_NSRange)range
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)searchReferenceRange
{
  p_mSearchReferenceRange = &self->mSearchReferenceRange;
  location = self->mSearchReferenceRange.location;
  length = p_mSearchReferenceRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end