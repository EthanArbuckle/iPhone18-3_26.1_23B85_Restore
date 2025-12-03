@interface TNChartRangeList
+ (id)rangeListWithRangeRef:(TSCERangeRef *)ref;
+ (id)rangeListWithTableUID:(const TSKUIDStruct *)d;
+ (id)rangeListWithTableUID:(const TSKUIDStruct *)d range:(TSCERangeCoordinate)range;
- ($85CD2974BE96D4886BB301820D1C36C2)chartableSizeByDirection:(int)direction;
- (BOOL)containsCell:(TSUCellCoord)cell;
- (BOOL)containsRange:(TSCERangeCoordinate)range;
- (TNChartRangeList)initWithTableUID:(const TSKUIDStruct *)d;
- (TNChartRangeList)initWithTableUID:(const TSKUIDStruct *)d range:(TSCERangeCoordinate)range;
- (TSCERangeCoordinate)rangeAtIndex:(unint64_t)index;
- (TSCERangeCoordinate)rangeStartingAfterCell:(TSUCellCoord)cell direction:(int)direction;
- (TSCERangeCoordinate)rangeStartingAtCell:(TSUCellCoord)cell direction:(int)direction;
- (TSCERangeCoordinate)unionRange;
- (TSKUIDStruct)tableUID;
- (TSTCellRegion)cellRegion;
- (id).cxx_construct;
- (id)description;
- (void)addRange:(TSCERangeCoordinate)range coalesceFlags:(int)flags;
- (void)enumerateRangesUsingBlock:(id)block;
@end

@implementation TNChartRangeList

+ (id)rangeListWithTableUID:(const TSKUIDStruct *)d
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithTableUID_(v4, v5, d);

  return v6;
}

+ (id)rangeListWithTableUID:(const TSKUIDStruct *)d range:(TSCERangeCoordinate)range
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  v7 = [self alloc];
  v9 = objc_msgSend_initWithTableUID_range_(v7, v8, d, topLeft, bottomRight);

  return v9;
}

+ (id)rangeListWithRangeRef:(TSCERangeRef *)ref
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithTableUID_range_(v4, v5, &ref->_tableUID, *&ref->range._topLeft, *&ref->range._bottomRight);

  return v6;
}

- (TNChartRangeList)initWithTableUID:(const TSKUIDStruct *)d
{
  v5.receiver = self;
  v5.super_class = TNChartRangeList;
  result = [(TNChartRangeList *)&v5 init];
  if (result)
  {
    result->_tableUID = *d;
  }

  return result;
}

- (TNChartRangeList)initWithTableUID:(const TSKUIDStruct *)d range:(TSCERangeCoordinate)range
{
  v4 = objc_msgSend_initWithTableUID_(self, a2, d, *&range._topLeft, *&range._bottomRight);
  v5 = v4;
  if (v4)
  {
    sub_275F293A4(v4 + 24, &v7);
  }

  return v5;
}

- (void)addRange:(TSCERangeCoordinate)range coalesceFlags:(int)flags
{
  rangeCopy = range;
  if (flags)
  {
    begin = self->_ranges.__begin_;
    end = self->_ranges.__end_;
    p_ranges = &self->_ranges;
    if (begin != end)
    {
      while (1)
      {
        row = begin->_topLeft.row;
        v9 = begin->_topLeft.row != range._topLeft.row || begin->_bottomRight.row != range._bottomRight.row;
        column = begin->_topLeft.column;
        if (column == range._topLeft.column)
        {
          v11 = begin->_bottomRight.column != range._bottomRight.column;
          if ((flags & 2) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v11 = 1;
          if ((flags & 2) == 0)
          {
            goto LABEL_17;
          }
        }

        if (column <= range._bottomRight.column)
        {
          v12 = begin->_bottomRight.column;
          v13 = v12 + 1 < range._topLeft.column;
          if (v12 + 1 >= range._topLeft.column || (flags & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }

LABEL_17:
        if ((flags & 1) == 0)
        {
          v13 = 1;
          goto LABEL_22;
        }

        v12 = begin->_bottomRight.column;
LABEL_20:
        v13 = range._bottomRight.column + 1 < column;
        if (v12 < range._topLeft.column)
        {
          v13 = 1;
        }

LABEL_22:
        if ((flags & 8) != 0 && row <= range._bottomRight.row)
        {
          v15 = begin->_bottomRight.row;
          v16 = v15 + 1 < range._topLeft.row;
          if (v15 + 1 >= range._topLeft.row || (flags & 4) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if ((flags & 4) == 0)
          {
            v16 = 1;
            goto LABEL_36;
          }

          v15 = begin->_bottomRight.row;
        }

        v16 = v15 < range._topLeft.row || range._bottomRight.row + 1 < row;
LABEL_36:
        if (!v9 && !v13 || !v11 && !v16)
        {
          begin->_topLeft = sub_275F295E4(*&begin->_topLeft, *&begin->_bottomRight, *&range._topLeft, *&range._bottomRight);
          begin->_bottomRight = v18;
          goto LABEL_42;
        }

        if (++begin == end)
        {
          goto LABEL_41;
        }
      }
    }
  }

  p_ranges = &self->_ranges;
LABEL_41:
  sub_275F293A4(p_ranges, &rangeCopy);
LABEL_42:
  self->_unionRangeValid = 0;
}

- (TSCERangeCoordinate)rangeAtIndex:(unint64_t)index
{
  if (objc_msgSend_numberOfRanges(self, a2, index) <= index)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TNChartRangeList rangeAtIndex:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartRangeList.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 117, 0, "asking for an index beyond the range");
    bottomRight = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    topLeft = 0x7FFF7FFFFFFFLL;
  }

  else
  {
    v6 = &self->_ranges.__begin_[index];
    topLeft = v6->_topLeft;
    bottomRight = v6->_bottomRight;
  }

  v16 = bottomRight;
  result._bottomRight = v16;
  result._topLeft = topLeft;
  return result;
}

- (BOOL)containsCell:(TSUCellCoord)cell
{
  begin = self->_ranges.__begin_;
  end = self->_ranges.__end_;
  if (begin == end)
  {
    return 0;
  }

  while (1)
  {
    if (cell.column >= WORD2(*&begin->_topLeft))
    {
      v5 = cell.row <= begin->_bottomRight.row && cell.row >= *&begin->_topLeft;
      if (v5 && cell.column <= begin->_bottomRight.column)
      {
        break;
      }
    }

    if (++begin == end)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)containsRange:(TSCERangeCoordinate)range
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  v6 = *&range._topLeft & 0xFFFF00000000;
  v7 = *&range._bottomRight & 0xFFFF00000000;
  if (range._topLeft.row != 0x7FFFFFFFLL || v6 == 0x7FFF00000000 || v7 == 0x7FFF00000000)
  {
    if (range._topLeft.row != 0x7FFFFFFFLL && v6 == 0x7FFF00000000 && v7 == 0x7FFF00000000 && range._bottomRight.row != 0x7FFFFFFFLL)
    {
      return 0;
    }
  }

  else if (range._bottomRight.row == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNChartRangeList containsRange:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartRangeList.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 161, 0, "We can't do this for spanning refs. Resolve them first.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  if (self->_unionRangeValid)
  {
    v15 = self->_unionRange._topLeft;
    if (topLeft.column < v15.column)
    {
      return 0;
    }

    v16 = 0;
    row = self->_unionRange._bottomRight.row;
    if (topLeft.row > row)
    {
      return v16;
    }

    if (topLeft.row < v15.row)
    {
      return v16;
    }

    column = self->_unionRange._bottomRight.column;
    if (topLeft.column > column)
    {
      return v16;
    }

    if (bottomRight.column < v15.column)
    {
      return 0;
    }

    v16 = 0;
    if (bottomRight.row > row || bottomRight.row < v15.row || bottomRight.column > column)
    {
      return v16;
    }
  }

  begin = self->_ranges.__begin_;
  end = self->_ranges.__end_;
  if (begin == end)
  {
    return 0;
  }

  v21 = 0;
  v22 = HIDWORD(*&topLeft);
  v23 = HIDWORD(*&bottomRight);
  v48 = self->_ranges.__end_;
  do
  {
    v25 = begin->_topLeft;
    v24 = begin->_bottomRight;
    v26 = WORD2(*&begin->_topLeft);
    if (v26 <= v22)
    {
      v27 = topLeft.row <= v24.row && topLeft.row >= v25.row;
      v28 = v27 && v24.column >= v22;
      if (v28 && v26 <= v23 && bottomRight.row <= v24.row && bottomRight.row >= v25.row && v24.column >= v23)
      {
        v16 = 1;
        goto LABEL_113;
      }
    }

    v29 = bottomRight.row < v25.row || topLeft.row > v24.row;
    v30 = 0x7FFF7FFFFFFFLL;
    v31 = 0x7FFF7FFFFFFFLL;
    if (!v29 && v26 <= v23 && v24.column >= v22 && v25.row != 0x7FFFFFFF && (*&v25 & 0xFFFF00000000) != 0x7FFF00000000 && v24.row != 0x7FFFFFFF && (*&v24 & 0xFFFF00000000) != 0x7FFF00000000 && v26 <= v24.column && v25.row <= v24.row && topLeft.row != 0x7FFFFFFF && v22 != 0x7FFF && bottomRight.row != 0x7FFFFFFF && v23 != 0x7FFF && v22 <= v23 && topLeft.row <= bottomRight.row)
    {
      if (v26 >= v22)
      {
        v33 = HIDWORD(*&v25);
      }

      else
      {
        LOWORD(v33) = v22;
      }

      if (v25.row <= topLeft.row)
      {
        v34 = topLeft.row;
      }

      else
      {
        v34 = v25.row;
      }

      v30 = v34 & 0xFFFF0000FFFFFFFFLL | (v33 << 32);
      if (v24.column >= v23)
      {
        LOWORD(v35) = v23;
      }

      else
      {
        v35 = HIDWORD(*&v24);
      }

      if (v24.row >= bottomRight.row)
      {
        v36 = bottomRight.row;
      }

      else
      {
        v36 = v24.row;
      }

      v31 = v36 & 0xFFFF0000FFFFFFFFLL | (v35 << 32);
    }

    if (v30 != 0x7FFFFFFF)
    {
      v32 = v30 & 0xFFFF00000000;
      if ((v30 & 0xFFFF00000000) != 0x7FFF00000000 && v31 != 0x7FFFFFFF && (v31 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v31) >= HIDWORD(v30) && v30 <= v31)
      {
        if (HIDWORD(v30) == v22 && HIDWORD(v31) == v23)
        {
          if (topLeft.row == v30)
          {
            topLeft.row = v31 + 1;
            goto LABEL_95;
          }

          if (bottomRight.row == v31)
          {
            bottomRight.row = v30 - 1;
            goto LABEL_95;
          }

          goto LABEL_84;
        }

        if (topLeft.row == v30 && bottomRight.row == 0x7FFFFFFF)
        {
          if (HIDWORD(v30) == v22)
          {
            LOWORD(v22) = WORD2(v31) + 1;
LABEL_83:
            bottomRight.row = 0x7FFFFFFF;
            goto LABEL_95;
          }

          if (HIDWORD(v31) == v23)
          {
            v23 = (HIDWORD(v30) - 1);
            goto LABEL_83;
          }
        }

LABEL_84:
        v49 = v23;
        if (!v21)
        {
          v21 = objc_alloc_init(MEMORY[0x277CCAB58]);
        }

        v21 = v21;
        if (HIDWORD(v31) != 0x7FFF && HIDWORD(v30) != 0x7FFF)
        {
          v39 = (HIDWORD(v31) - HIDWORD(v30) + 1);
          objc_msgSend_addIndexesInRange_(v21, v37, v30 & 0xFFFFFFFFFFFFLL, v39, v48);
          goto LABEL_93;
        }

        v39 = 0;
        do
        {
          objc_msgSend_addIndexesInRange_(v21, v37, v32 | v30, v39, v48);
LABEL_93:
          LODWORD(v30) = v30 + 1;
        }

        while (v30 <= v31);

        end = v48;
        v23 = v49;
      }
    }

LABEL_95:
    ++begin;
  }

  while (begin != end);
  if (!v21)
  {
    return 0;
  }

  v40 = v23;
  v21 = v21;
  if (topLeft.row <= bottomRight.row)
  {
    v43 = v22 << 32;
    if (v40 == 0x7FFF || v22 == 0x7FFF)
    {
      v45 = 0;
      goto LABEL_107;
    }

    v45 = v40 - v22 + 1;
    for (i = objc_msgSend_containsIndexesInRange_(v21, v41, v43 | topLeft.row, v45, v48); ; i = objc_msgSend_containsIndexesInRange_(v21, v41, v43 | topLeft.row, v45, v48))
    {
      v16 = i;
      v47 = ++topLeft.row <= bottomRight.row ? i : 0;
      if ((v47 & 1) == 0)
      {
        break;
      }

LABEL_107:
      ;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_113:
  return v16;
}

- (TSCERangeCoordinate)rangeStartingAtCell:(TSUCellCoord)cell direction:(int)direction
{
  cellCopy = cell;
  v7 = 0x7FFF7FFFFFFFLL;
  v8 = *&cell.column;
  v9 = objc_msgSend_unionRange(self, a2, *&cell);
  v11 = WORD2(v9);
  if (WORD2(v9) <= v8)
  {
    v14 = v9;
    v15 = v10;
    v12 = cellCopy & 0xFFFF000000000000;
    v16 = WORD2(cellCopy);
    v17 = WORD2(v10);
    LODWORD(v18) = cellCopy;
    while (1)
    {
      v13 = 0x7FFF00000000;
      if (v18 > v15 || v18 < v14 || v17 < v16)
      {
        v12 = 0;
        goto LABEL_19;
      }

      if (objc_msgSend_containsCell_(self, v10, cellCopy))
      {
        break;
      }

      if (direction == 1)
      {
        v19 = v8 + 1;
      }

      else
      {
        v19 = v8;
      }

      if (direction == 2)
      {
        v18 = (v18 + 1);
      }

      else
      {
        v18 = v18;
      }

      if (direction != 2)
      {
        v8 = v19;
      }

      v16 = v8;
      cellCopy = v18 | (v8 << 32) | v12;
      if (v11 > v8)
      {
        v12 = 0;
        v13 = 0x7FFF00000000;
LABEL_19:
        v7 = 0x7FFF7FFFFFFFLL;
        goto LABEL_20;
      }
    }

    v34 = direction == 1;
    if (direction == 1)
    {
      v23 = v8 + 1;
    }

    else
    {
      v23 = v8;
    }

    v24 = v11 > v23;
    v25 = v18;
    LOWORD(v26) = v8;
    if (!v24)
    {
      v33 = direction == 2;
      v27 = direction == 2 ? (v18 + 1) : v18;
      v25 = v18;
      LOWORD(v26) = v8;
      if (v27 <= v15)
      {
        v25 = v18;
        LOWORD(v26) = v8;
        if (v27 >= v14)
        {
          v25 = v18;
          LOWORD(v26) = v8;
          if (v17 >= v23)
          {
            v28 = v27 | (v23 << 32);
            v29 = v18;
            v30 = v8;
            while (1)
            {
              v26 = v23;
              v25 = v29;
              if (!objc_msgSend_containsCell_(self, v10, v28 | v12))
              {
                break;
              }

              v23 = v26 + v34;
              v31 = (v26 + v34);
              if (v31 >= WORD2(v14))
              {
                v32 = 2 * v33 + v25;
                if (v32 <= v15 && v32 >= v14)
                {
                  v28 = v32 | (v31 << 32);
                  v29 = v25 + v33;
                  v30 = v26;
                  if (v17 >= v31)
                  {
                    continue;
                  }
                }
              }

              v25 += v33;
              goto LABEL_40;
            }

            LOWORD(v26) = v30;
          }
        }
      }
    }

LABEL_40:
    v7 = v25 | (v26 << 32) | v12;
    v13 = v8 << 32;
    v20 = v18;
  }

  else
  {
    v12 = 0;
    v13 = 0x7FFF00000000;
LABEL_20:
    v20 = 0x7FFFFFFFLL;
  }

  v21 = (v13 | v12 | v20);
  v22 = v7;
  result._bottomRight = v22;
  result._topLeft = v21;
  return result;
}

- (TSCERangeCoordinate)rangeStartingAfterCell:(TSUCellCoord)cell direction:(int)direction
{
  column = cell.column;
  if (direction == 1)
  {
    v5 = cell.column + 1;
  }

  else
  {
    v5 = cell.column;
  }

  if (direction == 2)
  {
    row = cell.row + 1;
  }

  else
  {
    row = cell.row;
  }

  if (direction != 2)
  {
    column = v5;
  }

  v7 = objc_msgSend_rangeStartingAtCell_direction_(self, a2, *&cell & 0xFFFF000000000000 | row | (column << 32));
  result._bottomRight = v8;
  result._topLeft = v7;
  return result;
}

- (TSCERangeCoordinate)unionRange
{
  if (self->_unionRangeValid)
  {
    topLeft = self->_unionRange._topLeft;
    bottomRight = self->_unionRange._bottomRight;
  }

  else
  {
    bottomRight = 0x7FFF7FFFFFFFLL;
    self->_unionRange = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    p_topLeft = &self->_ranges.__begin_->_topLeft;
    end = self->_ranges.__end_;
    topLeft = 0x7FFF7FFFFFFFLL;
    while (p_topLeft != end)
    {
      v7 = *p_topLeft;
      v8 = p_topLeft[1];
      p_topLeft += 2;
      topLeft = sub_275F295E4(topLeft, *&bottomRight, v7, v8);
      self->_unionRange._topLeft = topLeft;
      self->_unionRange._bottomRight = bottomRight;
    }

    self->_unionRangeValid = 1;
  }

  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

- (void)enumerateRangesUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v8 = 0;
    begin = self->_ranges.__begin_;
    end = self->_ranges.__end_;
    if (begin != end)
    {
      v7 = 0;
      do
      {
        (*(blockCopy + 2))(blockCopy, *&begin->_topLeft, *&begin->_bottomRight, v7, &v8);
        if (v8)
        {
          break;
        }

        ++v7;
        ++begin;
      }

      while (begin != end);
    }
  }
}

- ($85CD2974BE96D4886BB301820D1C36C2)chartableSizeByDirection:(int)direction
{
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, *&direction);
  begin = self->_ranges.__begin_;
  end = self->_ranges.__end_;
  if (begin == end)
  {
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      topLeft = begin->_topLeft;
      bottomRight = begin->_bottomRight;
      if (direction == 1)
      {
        row = topLeft.row;
        v15 = bottomRight.row - topLeft.row;
        if (bottomRight.row == 0x7FFFFFFF || row == 0x7FFFFFFF)
        {
          objc_msgSend_addIndexesInRange_(v7, v5, row, 0);
        }

        else
        {
          objc_msgSend_addIndexesInRange_(v7, v5, row, v15 + 1);
        }

        v17 = begin->_bottomRight.column - begin->_topLeft.column;
        if (v17 + 1 > v10)
        {
          v10 = v17 + 1;
        }
      }

      else
      {
        if (bottomRight.column == 0x7FFF || topLeft.column == 0x7FFF)
        {
          objc_msgSend_addIndexesInRange_(v7, v5, topLeft.column, 0);
        }

        else
        {
          objc_msgSend_addIndexesInRange_(v7, v5, topLeft.column, bottomRight.column - topLeft.column + 1);
        }

        v19 = begin->_bottomRight.row - begin->_topLeft.row;
        if (v19 + 1 > v11)
        {
          v11 = (v19 + 1);
        }

        else
        {
          v11 = v11;
        }
      }

      ++begin;
    }

    while (begin != end);
  }

  if (direction == 1)
  {
    v20 = objc_msgSend_count(v7, v5, v6);
    if (HIDWORD(v20))
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TNChartRangeList chartableSizeByDirection:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartRangeList.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 319, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v20;
    }
  }

  else
  {
    v22 = objc_msgSend_count(v7, v5, v6);
    v10 = v22;
    if (HIDWORD(v22))
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TNChartRangeList chartableSizeByDirection:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartRangeList.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 321, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
      v10 = -1;
    }
  }

  return (v10 | (v11 << 32));
}

- (TSTCellRegion)cellRegion
{
  v4 = objc_msgSend_invalidRegion(MEMORY[0x277D80CE0], a2, v2);
  v5 = v4;
  begin = self->_ranges.__begin_;
  end = self->_ranges.__end_;
  if (begin == end)
  {
    v10 = v4;
  }

  else
  {
    do
    {
      v8 = TSUCellRectFromTSCERangeCoordinate();
      v10 = objc_msgSend_regionByAddingRange_(v5, v9, v8, v9);

      ++begin;
      v5 = v10;
    }

    while (begin != end);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_numberOfRanges(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@ %p - %lu ranges", v5, self, v8);

  begin = self->_ranges.__begin_;
  for (i = self->_ranges.__end_; begin != i; ++begin)
  {
    objc_msgSend_appendFormat_(v10, v11, @" ((%lu, %lu) -> (%lu, %lu))", begin->_topLeft.column, begin->_topLeft.row, begin->_bottomRight.column, begin->_bottomRight.row);
  }

  objc_msgSend_appendString_(v10, v11, @">");

  return v10;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tableUID._upper;
  lower = self->_tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end