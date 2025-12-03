@interface TSTTableSelection
- (BOOL)areCellsInTheSameRegionInTable:(id)table;
- (BOOL)containsCell:(id)cell;
- (BOOL)containsSelection:(id)selection;
- (BOOL)intersectsPartialMergeRangeInTable:(id)table;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSelection:(id)selection;
- (NSString)description;
- (TSTTableSelection)initWithTableModel:(id)model andPreviousSelection:(id)selection offsetBy:(id)by;
- (TSTTableSelection)initWithTableModel:(id)model cellRange:(id)range type:(int)type anchorCellID:(id)d cursorCellID:(id)iD;
- (TSTTableSelection)initWithTableModel:(id)model cellRegion:(id)region;
- (TSTTableSelection)initWithTableModel:(id)model cellRegion:(id)region anchorCellID:(id)d cursorCellID:(id)iD;
- (TSTTableSelection)initWithTableModel:(id)model cellRegion:(id)region anchorCellID:(id)d cursorCellID:(id)iD baseRegion:(id)baseRegion selectionType:(int)type;
- (TSTTableSelection)initWithTableModel:(id)model cellRegion:(id)region anchorCellID:(id)d cursorCellID:(id)iD selectionType:(int)type;
- (TSTTableSelection)initWithTableModel:(id)model rowOrColumn:(int)column index:(unsigned int)index count:(unsigned int)count;
- (TSTTableSelection)initWithTableModel:(id)model selectionType:(int)type;
- (TSTTableSelection)initWithTableModel:(id)model startingColumnIndex:(unsigned __int16)index numberOfColumns:(unsigned __int16)columns;
- (TSTTableSelection)initWithTableModel:(id)model startingRowIndex:(unsigned __int16)index numberOfRows:(unsigned __int16)rows;
- (_NSRange)range;
- (_NSRange)searchReferenceRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)selectionByAddingCellRange:(id)range inTable:(id)table withAnchor:(id)anchor cursor:(id)cursor selectionType:(int)type;
- (id)selectionByExtendingWithCellRange:(id)range inTable:(id)table selectionType:(int)type cursorCell:(id)cell;
- (id)selectionByMovingInTableInfo:(id)info inDirection:(int)direction withModifierKeys:(int)keys forReferenceMove:(BOOL)move suppressWrap:(BOOL)wrap;
- (id)selectionByRemovingCellRange:(id)range inTable:(id)table withAnchor:(id)anchor cursor:(id)cursor selectionType:(int)type;
- (void)dealloc;
- (void)enumerateSelectedCellsInTable:(id)table withFlags:(unint64_t)flags usingBlock:(id)block;
- (void)insert:(int)insert atIndex:(unsigned __int16)index count:(unsigned __int16)count;
- (void)remove:(int)remove atIndex:(unsigned __int16)index count:(unsigned __int16)count;
@end

@implementation TSTTableSelection

- (TSTTableSelection)initWithTableModel:(id)model cellRegion:(id)region anchorCellID:(id)d cursorCellID:(id)iD baseRegion:(id)baseRegion selectionType:(int)type
{
  if (!model)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection initWithTableModel:cellRegion:anchorCellID:cursorCellID:baseRegion:selectionType:]"];
    [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 56, @"invalid nil value for '%s'", "table"}];
  }

  v18.receiver = self;
  v18.super_class = TSTTableSelection;
  v16 = [(TSTTableSelection *)&v18 init];
  if (v16)
  {
    v16->mCellRegion = region;
    v16->mAnchorCellID = d;
    v16->mCursorCellID = iD;
    v16->mBaseRegion = baseRegion;
    v16->mSelectionType = type;
    v16->mSearchReferenceRange.location = 0;
    v16->mSearchReferenceRange.length = 0;
  }

  return v16;
}

- (TSTTableSelection)initWithTableModel:(id)model cellRegion:(id)region anchorCellID:(id)d cursorCellID:(id)iD selectionType:(int)type
{
  v7 = *&type;
  v13 = [TSTCellRegion regionFromRange:0];

  return [(TSTTableSelection *)self initWithTableModel:model cellRegion:region anchorCellID:*&d cursorCellID:*&iD baseRegion:v13 selectionType:v7];
}

- (TSTTableSelection)initWithTableModel:(id)model cellRegion:(id)region anchorCellID:(id)d cursorCellID:(id)iD
{
  v11 = [TSTCellRegion regionFromRange:0];

  return [(TSTTableSelection *)self initWithTableModel:model cellRegion:region anchorCellID:*&d cursorCellID:*&iD baseRegion:v11];
}

- (TSTTableSelection)initWithTableModel:(id)model cellRange:(id)range type:(int)type anchorCellID:(id)d cursorCellID:(id)iD
{
  v9 = *&type;
  if (model && (type - 3) <= 0xFFFFFFFD)
  {
    range = TSTTableExpandCellRangeToCoverMergedCells(model, *&range);
  }

  v12 = [TSTCellRegion regionFromRange:range];
  v13 = [TSTCellRegion regionFromRange:0];

  return [(TSTTableSelection *)self initWithTableModel:model cellRegion:v12 anchorCellID:*&d cursorCellID:*&iD baseRegion:v13 selectionType:v9];
}

- (TSTTableSelection)initWithTableModel:(id)model selectionType:(int)type
{
  v4 = *&type;
  if (type != 4)
  {
    if (type == 5)
    {
      range = [model range];
      v8 = [TSTCellRegion regionFromRange:range];
      v9 = (range + ((range >> 16) & 0xFF0000) + 16711680) & 0xFF0000 | (range + HIWORD(range) - 1);
      v10 = range;
      selfCopy2 = self;
      modelCopy2 = model;
      v13 = 5;
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection initWithTableModel:selectionType:]"];
    [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 148, @"expected equality between %s and %s", "selectionType", "kTableNameSelection"}];
  }

  v8 = +[TSTCellRegion invalidRegion];
  selfCopy2 = self;
  modelCopy2 = model;
  v10 = 0xFFFFFFLL;
  v9 = 0xFFFFFFLL;
  v13 = v4;
LABEL_6:

  return [(TSTTableSelection *)selfCopy2 initWithTableModel:modelCopy2 cellRegion:v8 anchorCellID:v10 cursorCellID:v9 selectionType:v13];
}

- (TSTTableSelection)initWithTableModel:(id)model startingRowIndex:(unsigned __int16)index numberOfRows:(unsigned __int16)rows
{
  rowsCopy = rows;
  indexCopy = index;
  numberOfColumns = [model numberOfColumns];
  if (([model numberOfRows] - indexCopy) <= rowsCopy)
  {
    rowsCopy = [model numberOfRows] - indexCopy;
  }

  return [(TSTTableSelection *)self initWithTableModel:model cellRange:(numberOfColumns << 32) | (rowsCopy << 48) | indexCopy type:1 anchorCellID:indexCopy cursorCellID:((numberOfColumns << 16) - 1) & 0xFF0000 | (indexCopy + rowsCopy - 1)];
}

- (TSTTableSelection)initWithTableModel:(id)model startingColumnIndex:(unsigned __int16)index numberOfColumns:(unsigned __int16)columns
{
  columnsCopy = columns;
  if (([model numberOfColumns] - index) <= columns)
  {
    columnsCopy = [model numberOfColumns] - index;
  }

  numberOfRows = [model numberOfRows];
  if (columnsCopy >= 0xFFu)
  {
    v10 = 255;
  }

  else
  {
    v10 = columnsCopy;
  }

  return [(TSTTableSelection *)self initWithTableModel:model cellRange:(v10 << 32) | (numberOfRows << 48) | (index << 16) type:2 anchorCellID:index << 16 cursorCellID:((index << 16) + (v10 << 16) + 16711680) & 0xFF0000 | (numberOfRows - 1)];
}

- (TSTTableSelection)initWithTableModel:(id)model rowOrColumn:(int)column index:(unsigned int)index count:(unsigned int)count
{
  if (column == 2)
  {

    return [(TSTTableSelection *)self initWithTableModel:model startingColumnIndex:index numberOfColumns:count];
  }

  else if (column == 1)
  {

    return [(TSTTableSelection *)self initWithTableModel:model startingRowIndex:index numberOfRows:count];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection initWithTableModel:rowOrColumn:index:count:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 218, @"Invalid selection type used with rowOrColumn initializer."}];
    return 0;
  }
}

- (TSTTableSelection)initWithTableModel:(id)model andPreviousSelection:(id)selection offsetBy:(id)by
{
  v9 = [objc_msgSend(selection "cellRegion")];
  anchorCellID = [selection anchorCellID];
  v11 = by.var1 + anchorCellID;
  v12 = ((by.var0 + BYTE2(anchorCellID)) | v11) >> 16;
  v13 = ((LOBYTE(by.var0) + BYTE2(anchorCellID)) << 16) | v11;
  cursorCellID = [selection cursorCellID];
  v15 = by.var1 + cursorCellID;
  v16 = ((by.var0 + BYTE2(cursorCellID)) | v15) >> 16;
  v17 = ((LOBYTE(by.var0) + BYTE2(cursorCellID)) << 16) | v15;
  v18 = [objc_msgSend(selection "baseRegion")];
  selectionType = [selection selectionType];
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

  return [(TSTTableSelection *)self initWithTableModel:model cellRegion:v9 anchorCellID:v20 cursorCellID:v21 baseRegion:v18 selectionType:selectionType];
}

- (TSTTableSelection)initWithTableModel:(id)model cellRegion:(id)region
{
  suitableAnchor = [region suitableAnchor];
  suitableCursor = [region suitableCursor];
  v9 = [TSTCellRegion regionFromRange:0];

  return [(TSTTableSelection *)self initWithTableModel:model cellRegion:region anchorCellID:suitableAnchor cursorCellID:suitableCursor baseRegion:v9 selectionType:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableSelection;
  [(TSTTableSelection *)&v3 dealloc];
}

- (id)selectionByExtendingWithCellRange:(id)range inTable:(id)table selectionType:(int)type cursorCell:(id)cell
{
  v7 = *&type;
  if (range.var0.var0 == 0xFFFF || (*&range & 0xFF0000) == 0xFF0000 || !range.var1.var1 || (*&range & 0xFFFF00000000) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection selectionByExtendingWithCellRange:inTable:selectionType:cursorCell:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 372, @"Can't extend a selection with an invalid cell range"}];
  }

  v13 = [(TSTCellRegion *)[(TSTTableSelection *)self cellRegion] containsCellID:[(TSTTableSelection *)self anchorCellID]];
  baseRegion = [(TSTTableSelection *)self baseRegion];
  if (v13)
  {
    v15 = [(TSTCellRegion *)baseRegion regionByAddingRange:range];
  }

  else
  {
    v15 = [(TSTCellRegion *)baseRegion regionBySubtractingRange:range];
  }

  v16 = [[TSTTableSelection alloc] initWithTableModel:table cellRegion:v15 anchorCellID:[(TSTTableSelection *)self anchorCellID] cursorCellID:*&cell baseRegion:[(TSTTableSelection *)self baseRegion] selectionType:v7];

  return v16;
}

- (id)selectionByAddingCellRange:(id)range inTable:(id)table withAnchor:(id)anchor cursor:(id)cursor selectionType:(int)type
{
  v7 = *&type;
  if (range.var0.var0 == 0xFFFF || (*&range & 0xFF0000) == 0xFF0000 || !range.var1.var1 || (*&range & 0xFFFF00000000) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection selectionByAddingCellRange:inTable:withAnchor:cursor:selectionType:]"];
    [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 396, @"Can't extend a selection with an invalid cell range"}];
  }

  v15 = [[TSTTableSelection alloc] initWithTableModel:table cellRegion:[(TSTCellRegion *)[(TSTTableSelection *)self cellRegion] regionByAddingRange:range] anchorCellID:*&anchor cursorCellID:*&cursor baseRegion:[(TSTTableSelection *)self cellRegion] selectionType:v7];

  return v15;
}

- (id)selectionByRemovingCellRange:(id)range inTable:(id)table withAnchor:(id)anchor cursor:(id)cursor selectionType:(int)type
{
  v7 = *&type;
  if (range.var0.var0 == 0xFFFF || (*&range & 0xFF0000) == 0xFF0000 || !range.var1.var1 || (*&range & 0xFFFF00000000) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableSelection selectionByRemovingCellRange:inTable:withAnchor:cursor:selectionType:]"];
    [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableSelection.mm"), 410, @"Can't remove an invalid cell range"}];
  }

  v15 = [[TSTTableSelection alloc] initWithTableModel:table cellRegion:[(TSTCellRegion *)[(TSTTableSelection *)self cellRegion] regionBySubtractingRange:range] anchorCellID:*&anchor cursorCellID:*&cursor baseRegion:[(TSTTableSelection *)self cellRegion] selectionType:v7];

  return v15;
}

- (id)selectionByMovingInTableInfo:(id)info inDirection:(int)direction withModifierKeys:(int)keys forReferenceMove:(BOOL)move suppressWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  moveCopy = move;
  keysCopy = keys;
  tableModel = [info tableModel];
  range = [tableModel range];
  cursorCellID = [(TSTTableSelection *)self cursorCellID];
  anchorCellID = [(TSTTableSelection *)self anchorCellID];
  v15 = keysCopy & 0xC;
  selectionType = [(TSTTableSelection *)self selectionType];
  selfCopy = self;
  if ((keysCopy & 1) != 0 || selectionType != 1)
  {
    selectionType2 = [(TSTTableSelection *)self selectionType];
    v19 = keysCopy;
    if ((keysCopy & 1) == 0 && selectionType2 == 2)
    {
      boundingCellRange = [(TSTCellRegion *)[(TSTTableSelection *)self cellRegion] boundingCellRange];
      if (moveCopy)
      {
        v22 = (LOBYTE(boundingCellRange.var1.var0) + boundingCellRange.var0.var1 - 1) - boundingCellRange.var0.var1 + 1;
      }

      else
      {
        v22 = 1;
      }

      if (direction == 2)
      {
        if (v15)
        {
          v44 = HIDWORD(range) + WORD1(range) + 255;
        }

        else
        {
          LOBYTE(v44) = TSTTableColumnRightOfColumn(tableModel, LOBYTE(boundingCellRange.var1.var0) + boundingCellRange.var0.var1 - 1);
        }

        if (v44 == 0xFF)
        {
          v56 = -1;
        }

        else
        {
          v56 = v44 - v22 + 1;
        }

        if (moveCopy)
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
        if (direction != 1)
        {
          goto LABEL_19;
        }

        if (v15)
        {
          v23 = range >> 16;
        }

        else
        {
          LOBYTE(v23) = TSTTableColumnLeftOfColumn(tableModel, boundingCellRange.var0.var1);
        }
      }

      if (v23 != 0xFF)
      {
        v46 = [[TSTTableSelection alloc] initWithTableModel:tableModel startingColumnIndex:v23 numberOfColumns:v22];
        goto LABEL_158;
      }

      return 0;
    }
  }

  else
  {
    boundingCellRange2 = [(TSTCellRegion *)[(TSTTableSelection *)self cellRegion] boundingCellRange];
    if (moveCopy)
    {
      v18 = *&boundingCellRange2.var1.var1;
    }

    else
    {
      v18 = 1;
    }

    if (direction == 4)
    {
      if ((keysCopy & 0xC) != 0)
      {
        v35 = range + HIWORD(range) - 1;
      }

      else
      {
        LOWORD(v35) = TSTTableRowBelowRow(tableModel, boundingCellRange2.var0.var0 + boundingCellRange2.var1.var1 - 1);
      }

      if (v35 == 0xFFFF)
      {
        v45 = -1;
      }

      else
      {
        v45 = v35 - v18 + 1;
      }

      if (moveCopy)
      {
        LOWORD(range) = v45;
      }

      else
      {
        LOWORD(range) = v35;
      }

      goto LABEL_58;
    }

    v19 = keysCopy;
    if (direction == 3)
    {
      if ((keysCopy & 0xC) == 0)
      {
        LOWORD(range) = TSTTableRowAboveRow(tableModel, boundingCellRange2.var0.var0);
      }

LABEL_58:
      if (range != 0xFFFF)
      {
        v46 = [[TSTTableSelection alloc] initWithTableModel:tableModel startingRowIndex:range numberOfRows:v18];
LABEL_158:

        return v46;
      }

      return 0;
    }
  }

LABEL_19:
  LODWORD(v24) = HIWORD(*&cursorCellID);
  v25 = anchorCellID;
  v26 = HIWORD(*&anchorCellID);
  if (!v15)
  {
    v29 = v19;
    if ((v19 & 1) == 0)
    {
      v38 = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")] & !wrapCopy;
      masterLayout = [info masterLayout];
      v25 = anchorCellID;
      v40 = (((*&anchorCellID ^ *&cursorCellID) & 0xFFFFFF) == 0) & v38;
      if (!moveCopy)
      {
        v40 = v38;
      }

      v27 = HIBYTE(*&anchorCellID);
      v28 = HIBYTE(*&cursorCellID);
      v41 = range;
      if (direction > 2)
      {
        LOBYTE(v26) = anchorCellID.var1;
        if (direction == 4)
        {
          v63 = v40;
          v64 = masterLayout;
          if (moveCopy)
          {
            cursorCellID = TSTTableCellBelowCell(tableModel, *&cursorCellID);
            v30 = TSTTableCellBelowCell(tableModel, *&anchorCellID);
            v25 = anchorCellID;
            v26 = HIWORD(v30);
            v27 = HIBYTE(v30);
          }

          else
          {
            cursorCellID = TSTTableCellBelowCell(tableModel, *&anchorCellID);
            LOBYTE(v26) = anchorCellID.var1;
            v25 = anchorCellID;
            LOWORD(v30) = anchorCellID.var0;
          }

          v28 = HIBYTE(*&cursorCellID);
          LODWORD(v24) = HIWORD(*&cursorCellID);
          if (cursorCellID.var0 != 0xFFFF && (*&cursorCellID.var0 & 0xFF0000) != 0xFF0000 || !v63)
          {
            goto LABEL_140;
          }

          LOWORD(v30) = TSTMasterLayoutNextVisibleRow(v64, 0);
          LOBYTE(v26) = TSTTableColumnRightOfColumn(tableModel, anchorCellID.var1);
        }

        else
        {
          LOWORD(v30) = anchorCellID.var0;
          if (direction != 3)
          {
            goto LABEL_140;
          }

          v54 = v40;
          v55 = masterLayout;
          if (moveCopy)
          {
            cursorCellID = TSTTableCellAboveCell(tableModel, *&cursorCellID);
            v30 = TSTTableCellAboveCell(tableModel, *&anchorCellID);
            v25 = anchorCellID;
            v26 = HIWORD(v30);
            v27 = HIBYTE(v30);
          }

          else
          {
            cursorCellID = TSTTableCellAboveCell(tableModel, *&anchorCellID);
            LOBYTE(v26) = anchorCellID.var1;
            v25 = anchorCellID;
            LOWORD(v30) = anchorCellID.var0;
          }

          v28 = HIBYTE(*&cursorCellID);
          LODWORD(v24) = HIWORD(*&cursorCellID);
          if (cursorCellID.var0 != 0xFFFF && (*&cursorCellID.var0 & 0xFF0000) != 0xFF0000)
          {
            goto LABEL_140;
          }

          if (!v54)
          {
            goto LABEL_140;
          }

          LOWORD(v30) = TSTMasterLayoutPreviousVisibleRow(v55, (v41 + HIWORD(v41) - 1));
          LOBYTE(v26) = TSTTableColumnLeftOfColumn(tableModel, anchorCellID.var1);
        }
      }

      else
      {
        LOBYTE(v26) = anchorCellID.var1;
        if (direction == 1)
        {
          v61 = v40;
          v62 = masterLayout;
          if (moveCopy)
          {
            cursorCellID = TSTTableCellLeftOfCell(tableModel, *&cursorCellID);
            v30 = TSTTableCellLeftOfCell(tableModel, *&anchorCellID);
            v25 = anchorCellID;
            v26 = HIWORD(v30);
            v27 = HIBYTE(v30);
          }

          else
          {
            cursorCellID = TSTTableCellLeftOfCell(tableModel, *&anchorCellID);
            LOBYTE(v26) = anchorCellID.var1;
            v25 = anchorCellID;
            LOWORD(v30) = anchorCellID.var0;
          }

          v28 = HIBYTE(*&cursorCellID);
          LODWORD(v24) = HIWORD(*&cursorCellID);
          if (cursorCellID.var0 != 0xFFFF && (*&cursorCellID.var0 & 0xFF0000) != 0xFF0000 || !v61)
          {
            goto LABEL_140;
          }

          LOWORD(v30) = TSTTableRowAboveRow(tableModel, v25.var0);
          LOBYTE(v26) = TSTMasterLayoutPreviousVisibleColumn(v62, (BYTE4(v41) + BYTE2(v41) - 1));
        }

        else
        {
          LOWORD(v30) = anchorCellID.var0;
          if (direction != 2)
          {
            goto LABEL_140;
          }

          v42 = v40;
          v43 = masterLayout;
          if (moveCopy)
          {
            cursorCellID = TSTTableCellRightOfCell(tableModel, *&cursorCellID);
            v30 = TSTTableCellRightOfCell(tableModel, *&anchorCellID);
            v25 = anchorCellID;
            v26 = HIWORD(v30);
            v27 = HIBYTE(v30);
          }

          else
          {
            cursorCellID = TSTTableCellRightOfCell(tableModel, *&anchorCellID);
            LOBYTE(v26) = anchorCellID.var1;
            v25 = anchorCellID;
            LOWORD(v30) = anchorCellID.var0;
          }

          v28 = HIBYTE(*&cursorCellID);
          LODWORD(v24) = HIWORD(*&cursorCellID);
          if (cursorCellID.var0 != 0xFFFF && (*&cursorCellID.var0 & 0xFF0000) != 0xFF0000)
          {
            goto LABEL_140;
          }

          if (!v42)
          {
            goto LABEL_140;
          }

          LOWORD(v30) = TSTTableRowBelowRow(tableModel, v25.var0);
          LOBYTE(v26) = TSTMasterLayoutNextVisibleColumn(v43, 0);
        }
      }

      v25 = anchorCellID;
      v27 = v28;
      cursorCellID.var0 = v30;
      LOBYTE(v24) = v26;
      goto LABEL_140;
    }

    v33 = range;
    if ([(TSTTableSelection *)selfCopy selectionType]== 1)
    {
      if (direction == 4)
      {
        v34 = TSTTableCellBelowCell(tableModel, *&cursorCellID);
      }

      else
      {
        if (direction != 3)
        {
          v28 = HIBYTE(*&cursorCellID);
          goto LABEL_108;
        }

        v34 = TSTTableCellAboveCell(tableModel, *&cursorCellID);
      }

      cursorCellID.var0 = v34;
      v28 = HIBYTE(v34);
LABEL_108:
      v25 = anchorCellID;
      LOBYTE(v26) = anchorCellID.var1;
      v27 = HIBYTE(*&anchorCellID);
      v57 = HIDWORD(range) + WORD1(range);
LABEL_109:
      LOBYTE(v24) = v57 - 1;
LABEL_139:
      LOWORD(v30) = v25.var0;
      goto LABEL_140;
    }

    if ([(TSTTableSelection *)selfCopy selectionType]== 2)
    {
      if (direction == 2)
      {
        v53 = TSTTableCellRightOfCell(tableModel, *&cursorCellID);
      }

      else
      {
        if (direction != 1)
        {
          v28 = HIBYTE(*&cursorCellID);
          goto LABEL_138;
        }

        v53 = TSTTableCellLeftOfCell(tableModel, *&cursorCellID);
      }

      LODWORD(v24) = HIWORD(v53);
      v28 = HIBYTE(v53);
LABEL_138:
      v25 = anchorCellID;
      LOBYTE(v26) = anchorCellID.var1;
      v27 = HIBYTE(*&anchorCellID);
      cursorCellID = (range + HIWORD(range) - 1);
      goto LABEL_139;
    }

    if (direction <= 2)
    {
      v58 = anchorCellID;
      if (direction == 1)
      {
        v59 = cursorCellID;
        v60 = TSTTableCellLeftOfCell(tableModel, *&cursorCellID);
        goto LABEL_168;
      }

      if (direction == 2)
      {
        v59 = cursorCellID;
        v60 = TSTTableCellRightOfCell(tableModel, *&cursorCellID);
LABEL_168:
        v28 = HIBYTE(v60);
        var0 = v60;
        v78 = HIWORD(v60);
        v58 = anchorCellID;
        v75 = TSTCellRangeUnionCellID(*&anchorCellID | 0x1000100000000, v59);
        v77 = v75 & 0xFFFF000000000000;
        v79 = 0x100000000;
        LODWORD(v76) = HIWORD(*&cursorCellID);
        goto LABEL_169;
      }

LABEL_166:
      v28 = HIBYTE(*&cursorCellID);
      v75 = TSTCellRangeUnionCellID(*&v58 | 0x1000100000000, *&cursorCellID);
      v76 = v75 >> 16;
      v77 = v75 & 0xFFFF000000000000;
      v78 = HIWORD(*&cursorCellID);
      var0 = cursorCellID.var0;
      v79 = v75;
LABEL_169:
      v80 = v75;
      goto LABEL_172;
    }

    v58 = anchorCellID;
    if (direction == 4)
    {
      v65 = cursorCellID;
      v66 = TSTTableCellBelowCell(tableModel, *&cursorCellID);
    }

    else
    {
      if (direction != 3)
      {
        goto LABEL_166;
      }

      v65 = cursorCellID;
      v66 = TSTTableCellAboveCell(tableModel, *&cursorCellID);
    }

    v28 = HIBYTE(v66);
    var0 = v66;
    v78 = HIWORD(v66);
    v58 = anchorCellID;
    v75 = TSTCellRangeUnionCellID(*&anchorCellID | 0x1000100000000, v65);
    v76 = v75 >> 16;
    v77 = 0x1000000000000;
    v79 = v75;
    v80 = cursorCellID.var0;
LABEL_172:
    v27 = HIBYTE(*&v58);
    v81 = TSTTableExpandCellRangeToCoverMergedCells(tableModel, v77 | v75 & 0xFF000000 | v79 & 0xFFFF00000000 | (v76 << 16) | v80);
    if (!HIWORD(v81))
    {
      v25 = anchorCellID;
      LOWORD(v30) = anchorCellID.var0;
      cursorCellID.var0 = var0;
      goto LABEL_177;
    }

    if ((v81 & 0xFFFF00000000) != 0 && var0 >= v81 && (v81 - 1 + HIWORD(v81)) >= var0 && v78 >= BYTE2(v81))
    {
      v82 = HIDWORD(v81) + WORD1(v81) + 255;
      if (v78 <= (BYTE4(v81) + BYTE2(v81) - 1))
      {
        if (direction <= 2)
        {
          if (direction != 1)
          {
            LOBYTE(v26) = anchorCellID.var1;
            if (direction != 2)
            {
              v25 = anchorCellID;
              LOWORD(v30) = anchorCellID.var0;
              cursorCellID.var0 = var0;
              LOBYTE(v24) = v78;
              goto LABEL_140;
            }

            v25 = anchorCellID;
            if (v82 != (BYTE4(v33) + BYTE2(v33) - 1))
            {
              LOBYTE(v24) = v82 + 1;
              LOWORD(v30) = anchorCellID.var0;
              cursorCellID.var0 = var0;
              goto LABEL_140;
            }

            v28 = HIBYTE(*&cursorCellID);
            goto LABEL_139;
          }

          if (BYTE2(v81) != BYTE2(v33))
          {
            LOBYTE(v24) = BYTE2(v81) - 1;
            v25 = anchorCellID;
            LOWORD(v30) = anchorCellID.var0;
            cursorCellID.var0 = var0;
            goto LABEL_178;
          }

LABEL_194:
          v28 = HIBYTE(*&cursorCellID);
          v25 = anchorCellID;
          LOWORD(v30) = anchorCellID.var0;
          goto LABEL_178;
        }

        if (direction == 4)
        {
          if ((HIWORD(v81) + v81) == (v33 + HIWORD(v33)))
          {
            goto LABEL_194;
          }

          v25 = anchorCellID;
          LOWORD(v30) = anchorCellID.var0;
          cursorCellID.var0 = HIWORD(v81) + v81;
          goto LABEL_177;
        }

        if (direction == 3)
        {
          if (v81 == v33)
          {
            goto LABEL_194;
          }

          v25 = anchorCellID;
          LOWORD(v30) = anchorCellID.var0;
          cursorCellID.var0 = v81 - 1;
LABEL_177:
          LOBYTE(v24) = v78;
LABEL_178:
          LOBYTE(v26) = anchorCellID.var1;
          goto LABEL_140;
        }
      }
    }

    v25 = anchorCellID;
    LOWORD(v30) = anchorCellID.var0;
    cursorCellID.var0 = var0;
    goto LABEL_177;
  }

  v27 = HIBYTE(*&anchorCellID);
  v28 = HIBYTE(*&cursorCellID);
  v29 = v19;
  if (direction > 2)
  {
    if (direction == 4)
    {
      if (cursorCellID.var0 <= anchorCellID.var0)
      {
        v49 = anchorCellID.var0;
      }

      else
      {
        v49 = cursorCellID.var0;
      }

      v50 = ~v49 + range + HIWORD(range);
      v51 = v50 + cursorCellID.var0;
      v52 = v50 + anchorCellID.var0;
      if (moveCopy)
      {
        LOWORD(v30) = v52;
      }

      else
      {
        LOWORD(v30) = anchorCellID.var0;
      }

      if (moveCopy)
      {
        cursorCellID.var0 = v51;
      }

      else
      {
        cursorCellID.var0 = range + HIWORD(range) - 1;
      }

      if (!moveCopy)
      {
        v28 = 0;
      }
    }

    else
    {
      LOWORD(v30) = anchorCellID.var0;
      if (direction == 3)
      {
        if (moveCopy)
        {
          if (cursorCellID.var0 >= anchorCellID.var0)
          {
            v36 = anchorCellID.var0;
          }

          else
          {
            v36 = cursorCellID.var0;
          }

          v37 = v36 - range;
          cursorCellID.var0 -= v37;
          LOWORD(v30) = anchorCellID.var0 - v37;
        }

        else
        {
          v28 = 0;
          LOWORD(v30) = anchorCellID.var0;
          cursorCellID.var0 = range;
        }
      }
    }
  }

  else if (direction == 1)
  {
    if (moveCopy)
    {
      if (cursorCellID.var1 >= anchorCellID.var1)
      {
        v47 = HIWORD(*&anchorCellID);
      }

      else
      {
        v47 = HIWORD(*&cursorCellID);
      }

      v48 = v47 - WORD1(range);
      LOBYTE(v24) = cursorCellID.var1 - v48;
      LOBYTE(v26) = anchorCellID.var1 - v48;
      goto LABEL_139;
    }

    v28 = 0;
    v24 = range >> 16;
    LOWORD(v30) = anchorCellID.var0;
  }

  else
  {
    LOWORD(v30) = anchorCellID.var0;
    if (direction == 2)
    {
      if (moveCopy)
      {
        if (cursorCellID.var1 <= anchorCellID.var1)
        {
          v31 = HIWORD(*&anchorCellID);
        }

        else
        {
          v31 = HIWORD(*&cursorCellID);
        }

        v32 = HIDWORD(range) + WORD1(range) - v31 + 255;
        LOBYTE(v24) = v32 + cursorCellID.var1;
        LOBYTE(v26) = v32 + anchorCellID.var1;
        goto LABEL_139;
      }

      v28 = 0;
      v57 = HIDWORD(range) + WORD1(range);
      goto LABEL_109;
    }
  }

LABEL_140:
  if (cursorCellID.var0 == 0xFFFF || v24 == 0xFF)
  {
    return 0;
  }

  v67 = cursorCellID.var0 | (v28 << 24) | (v24 << 16);
  if ((v29 & 1) == 0)
  {
    if (!moveCopy)
    {
      v46 = [[TSTTableSelection alloc] initWithTableModel:tableModel andCellID:v67];
      goto LABEL_158;
    }

    if (v30 != 0xFFFF && v26 != 0xFF)
    {
      v70 = v30 | (v27 << 24) | (v26 << 16);
      v71 = TSTCellRangeUnionCellID(v70 | 0x1000100000000, v67);
      if ([(TSTTableSelection *)selfCopy selectionType]== 1)
      {
        v72 = selfCopy;
      }

      else
      {
        v72 = selfCopy;
        if ([(TSTTableSelection *)selfCopy selectionType]!= 2)
        {
          v71 = TSTTableExpandCellRangeToCoverMergedCells(tableModel, v71);
        }
      }

      if (![(TSTCellRegion *)[(TSTTableSelection *)v72 cellRegion] equalsCellRange:v71])
      {
        v46 = [[TSTTableSelection alloc] initWithTableModel:tableModel cellRange:v71 type:[(TSTTableSelection *)v72 selectionType] anchorCellID:v70 cursorCellID:v67];
        goto LABEL_158;
      }
    }

    return 0;
  }

  v68 = TSTCellRangeUnionCellID(*&v25 | 0x1000100000000, v67);
  if ([(TSTTableSelection *)selfCopy selectionType]== 1)
  {
    v69 = selfCopy;
  }

  else
  {
    v69 = selfCopy;
    if ([(TSTTableSelection *)selfCopy selectionType]!= 2)
    {
      v68 = TSTTableExpandCellRangeToCoverMergedCells(tableModel, v68);
    }
  }

  if ([(TSTCellRegion *)[(TSTTableSelection *)v69 cellRegion] equalsCellRange:v68]&& ((v67 ^ [(TSTTableSelection *)v69 cursorCellID]) & 0xFFFFFFLL) == 0)
  {
    return 0;
  }

  selectionType3 = [(TSTTableSelection *)v69 selectionType];

  return [(TSTTableSelection *)v69 selectionByExtendingWithCellRange:v68 inTable:tableModel selectionType:selectionType3 cursorCell:v67];
}

- (void)enumerateSelectedCellsInTable:(id)table withFlags:(unint64_t)flags usingBlock:(id)block
{
  tableCopy = table;
  v7 = [[TSTCellIterator alloc] initWithTableModel:table region:self->mCellRegion flags:flags];
  for (i = 0; i != 1; (*(block + 2))(block, tableCopy, v11, &i, v12))
  {
    if (![(TSTCellIterator *)v7 getNext:v9])
    {
      break;
    }

    tableCopy = tableCopy & 0xFFFFFFFF00000000 | v10;
  }
}

- (void)insert:(int)insert atIndex:(unsigned __int16)index count:(unsigned __int16)count
{
  countCopy = count;
  indexCopy = index;
  boundingCellRange = [(TSTCellRegion *)self->mCellRegion boundingCellRange];
  var0 = boundingCellRange.var0;
  v11 = HIDWORD(*&boundingCellRange);
  v12 = HIWORD(*&boundingCellRange);
  if (!insert)
  {
    mSelectionType = self->mSelectionType;
    if (mSelectionType)
    {
      if (mSelectionType == 2)
      {
        v12 = (v12 + countCopy);
        goto LABEL_26;
      }

      if (mSelectionType != 1 || *&boundingCellRange >> 49 == 0)
      {
        goto LABEL_26;
      }
    }

    else if (!(*&boundingCellRange >> 49))
    {
      goto LABEL_26;
    }

    if (countCopy + indexCopy <= boundingCellRange.var0.var0 + v12)
    {
      v18 = countCopy;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 + v12;
    if (boundingCellRange.var0.var0 <= indexCopy)
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
    if ((*&boundingCellRange & 0xFFFE00000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_14:
    if (countCopy + indexCopy <= boundingCellRange.var0.var1 + boundingCellRange.var1.var0)
    {
      v16 = countCopy;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 + boundingCellRange.var1.var0;
    if (boundingCellRange.var0.var1 <= indexCopy)
    {
      LOWORD(v11) = v17;
    }

    goto LABEL_26;
  }

  if (v13 == 1)
  {
    LOWORD(v11) = boundingCellRange.var1.var0 + countCopy;
    goto LABEL_26;
  }

  if (v13 == 2 && (*&boundingCellRange & 0xFFFE00000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_26:

  self->mCellRegion = 0;
  self->mCellRegion = [TSTCellRegion regionFromRange:(v11 << 32) | (v12 << 48) | *&var0];
}

- (void)remove:(int)remove atIndex:(unsigned __int16)index count:(unsigned __int16)count
{
  countCopy = count;
  indexCopy = index;
  boundingCellRange = [(TSTCellRegion *)self->mCellRegion boundingCellRange];
  var0 = boundingCellRange.var0;
  v11 = boundingCellRange.var0.var0;
  v12 = *&boundingCellRange >> 16;
  v13 = HIDWORD(*&boundingCellRange);
  v14 = HIWORD(*&boundingCellRange);
  if (remove)
  {
    var1 = boundingCellRange.var0.var1;
  }

  else
  {
    var1 = boundingCellRange.var0.var0;
  }

  if ((self->mSelectionType - 3) < 0xFFFFFFFE || indexCopy < var1)
  {
    v16 = var1;
    goto LABEL_15;
  }

  v16 = var1;
  if (remove)
  {
    v17 = boundingCellRange.var1;
  }

  else
  {
    v17 = *&boundingCellRange.var1.var1;
  }

  if (countCopy + indexCopy > var1 + v17.var0)
  {
LABEL_15:
    if (indexCopy >= var1)
    {
      if (remove)
      {
        v29 = boundingCellRange.var1;
      }

      else
      {
        v29 = *&boundingCellRange.var1.var1;
      }

      v30 = v16 + v29.var0;
      v31 = indexCopy - v30 + *&v29;
      if (remove)
      {
        v32 = v31;
      }

      else
      {
        v32 = boundingCellRange.var1.var0;
      }

      if (remove)
      {
        v31 = *&boundingCellRange.var1.var1;
      }

      v33 = v30 >= indexCopy && indexCopy + countCopy >= v30;
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
      v18 = indexCopy + countCopy;
      if (remove)
      {
        v19 = boundingCellRange.var1;
      }

      else
      {
        v19 = *&boundingCellRange.var1.var1;
      }

      v20 = v16 + v19.var0;
      v21 = *&v19 - (v18 - v16);
      v22 = boundingCellRange.var0.var0 - (v18 - v16);
      LOBYTE(v23) = boundingCellRange.var0.var1 - (v18 - v16);
      if (remove)
      {
        v24 = v21;
      }

      else
      {
        v24 = boundingCellRange.var1.var0;
      }

      if (remove)
      {
        v21 = *&boundingCellRange.var1.var1;
        v22 = boundingCellRange.var0.var0;
      }

      else
      {
        v23 = *&boundingCellRange >> 16;
      }

      v25 = v18 >= v16;
      if (v18 >= v16)
      {
        v26 = v24;
      }

      else
      {
        v26 = boundingCellRange.var1.var0;
      }

      if (!v25)
      {
        v21 = *&boundingCellRange.var1.var1;
        v22 = boundingCellRange.var0.var0;
        v23 = *&boundingCellRange >> 16;
      }

      if (remove)
      {
        v27 = 0;
      }

      else
      {
        v27 = boundingCellRange.var1.var0;
      }

      if (remove)
      {
        v28 = *&boundingCellRange.var1.var1;
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
        v11 = boundingCellRange.var0.var0;
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

  if (countCopy == v17.var0)
  {
    if (var1)
    {
      if (remove)
      {
        LOBYTE(v12) = boundingCellRange.var0.var1 - 1;
LABEL_69:
        LOWORD(v13) = 1;
        goto LABEL_72;
      }

      v11 = boundingCellRange.var0.var0 - 1;
    }

    else if (remove)
    {
      goto LABEL_69;
    }

    v14 = 1;
    goto LABEL_72;
  }

  if (remove)
  {
    LOWORD(v13) = v17.var0 - countCopy;
    v14 = v14;
  }

  else
  {
    v14 = (*&v17 - countCopy);
  }

LABEL_72:

  self->mCellRegion = 0;
  self->mCellRegion = [TSTCellRegion regionFromRange:(v13 << 32) | (v14 << 48) | *&var0 & 0xFF000000 | (v12 << 16) | v11];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[TSTTableSelection allocWithZone:](TSTTableSelection init];
  v5->mCellRegion = [(TSTCellRegion *)self->mCellRegion copyWithZone:zone];
  v5->mSelectionType = self->mSelectionType;
  v5->mAnchorCellID = self->mAnchorCellID;
  v5->mBaseRegion = [(TSTCellRegion *)self->mBaseRegion copyWithZone:zone];
  v5->mCursorCellID = self->mCursorCellID;
  v5->mSearchReferenceRange = self->mSearchReferenceRange;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {

    LOBYTE(v5) = [(TSTTableSelection *)self isEqualToSelection:equal];
  }

  return v5;
}

- (BOOL)isEqualToSelection:(id)selection
{
  if (![selection isMemberOfClass:objc_opt_class()] || objc_msgSend(selection, "selectionType") != self->mSelectionType || !objc_msgSend(objc_msgSend(selection, "cellRegion"), "equalsCellRegion:", self->mCellRegion) || ((*&self->mAnchorCellID ^ objc_msgSend(selection, "anchorCellID")) & 0xFFFFFF) != 0 || ((*&self->mCursorCellID ^ objc_msgSend(selection, "cursorCellID")) & 0xFFFFFF) != 0)
  {
    return 0;
  }

  baseRegion = [selection baseRegion];
  mBaseRegion = self->mBaseRegion;

  return [baseRegion equalsCellRegion:mBaseRegion];
}

- (BOOL)areCellsInTheSameRegionInTable:(id)table
{
  boundingCellRange = [(TSTCellRegion *)self->mCellRegion boundingCellRange];
  v5 = [table tableAreaForCellID:*&boundingCellRange.var0];
  v6 = [table tableAreaForCellID:(*&boundingCellRange.var0 + (*&boundingCellRange.var0.var1 & 0xFF0000u) + 16711680) & 0xFF0000 | (boundingCellRange.var0.var0 + boundingCellRange.var1.var1 - 1)];
  if (v5 == 4 && v6 == 1)
  {
    return 1;
  }

  return v5 == 5 && v6 == 3 || v5 == v6;
}

- (BOOL)containsSelection:(id)selection
{
  v5 = [selection isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    mCellRegion = self->mCellRegion;
    cellRegion = [selection cellRegion];

    LOBYTE(v5) = [(TSTCellRegion *)mCellRegion containsCellRegion:cellRegion];
  }

  return v5;
}

- (BOOL)containsCell:(id)cell
{
  cellRegion = [(TSTTableSelection *)self cellRegion];

  return [(TSTCellRegion *)cellRegion containsCellID:*&cell];
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

- (BOOL)intersectsPartialMergeRangeInTable:(id)table
{
  if ((self->mSelectionType - 1) > 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v4 = TSTTableMergeRangesForCellRange(table, [(TSTCellRegion *)self->mCellRegion boundingCellRange]);
    v5 = [v4 count];
    if (v5)
    {
      iterator = [v4 iterator];
      for (i = iterator; ; iterator = i)
      {
        nextMergeRegion = [iterator nextMergeRegion];
        LOBYTE(v5) = 0;
        if (nextMergeRegion == 0xFFFF)
        {
          break;
        }

        if ((nextMergeRegion & 0xFF0000) == 0xFF0000)
        {
          break;
        }

        LOBYTE(v5) = 0;
        if (!HIWORD(nextMergeRegion) || (nextMergeRegion & 0xFFFF00000000) == 0)
        {
          break;
        }

        if ([(TSTCellRegion *)self->mCellRegion intersectsCellRange:nextMergeRegion]&& ![(TSTCellRegion *)self->mCellRegion containsCellRange:nextMergeRegion])
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