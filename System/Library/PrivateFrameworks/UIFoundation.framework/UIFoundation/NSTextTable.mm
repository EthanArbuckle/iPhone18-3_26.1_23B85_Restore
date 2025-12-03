@interface NSTextTable
+ (void)initialize;
- (BOOL)_missingColumnsForRowRange:(_NSRange)range blockIndex:(unint64_t)index text:(id)text;
- (CGRect)_contentRectForCharRange:(_NSRange)range textContainer:(id)container;
- (NSRect)boundsRectForBlock:(NSTextTableBlock *)block contentRect:(NSRect)contentRect inRect:(NSRect)rect textContainer:(NSTextContainer *)textContainer characterRange:(NSRange)charRange;
- (NSRect)rectForBlock:(NSTextTableBlock *)block layoutAtPoint:(NSPoint)startingPoint inRect:(NSRect)rect textContainer:(NSTextContainer *)textContainer characterRange:(NSRange)charRange;
- (NSTextTable)init;
- (NSTextTable)initWithCoder:(id)coder;
- (id)_descriptionAtIndex:(unint64_t)index text:(id)text;
- (id)_rowArrayForBlock:(id)block atIndex:(unint64_t)index text:(id)text layoutManager:(id)manager containerWidth:(double)width withRepetitions:(BOOL)repetitions collapseBorders:(BOOL)borders rowCharRange:(_NSRange *)self0 indexInRow:(unint64_t *)self1 startingRow:(int64_t *)self2 startingColumn:(int64_t *)self3 previousRowBlockHelper:(id *)self4;
- (void)_takeValuesFromTextBlock:(id)block;
- (void)dealloc;
- (void)drawBackgroundForBlock:(NSTextTableBlock *)block withFrame:(NSRect)frameRect inView:(NSView *)controlView characterRange:(NSRange)charRange layoutManager:(NSLayoutManager *)layoutManager;
- (void)encodeWithCoder:(id)coder;
- (void)setHidesEmptyCells:(BOOL)hidesEmptyCells;
@end

@implementation NSTextTable

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    [NSTextTable setVersion:1];
    __NSTextTableClass = self;
  }
}

- (NSTextTable)init
{
  v3.receiver = self;
  v3.super_class = NSTextTable;
  return [(NSTextBlock *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NSTextTable;
  [(NSTextBlock *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NSTextTable;
  [(NSTextBlock *)&v8 encodeWithCoder:?];
  if ([coder allowsKeyedCoding])
  {
    [coder encodeInteger:self->_numCols forKey:@"NSNumCols"];
    [coder encodeInteger:self->_tableFlags forKey:@"NSTableFlags"];
  }

  else
  {
    numCols = self->_numCols;
    tableFlags = self->_tableFlags;
    v7 = numCols;
    [coder encodeValuesOfObjCTypes:{"II", &v7, &tableFlags}];
  }
}

- (NSTextTable)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = NSTextTable;
  v4 = [(NSTextBlock *)&v10 initWithCoder:?];
  if (v4)
  {
    if ([coder allowsKeyedCoding])
    {
      v4->_numCols = [coder decodeIntegerForKey:@"NSNumCols"];
      v4->_tableFlags = [coder decodeIntegerForKey:@"NSTableFlags"];
    }

    else
    {
      v5 = [coder versionForClassName:@"NSTextTable"];
      if (v5 == 1)
      {
        v9 = 0;
        [coder decodeValuesOfObjCTypes:{"II", &v9 + 4, &v9}];
        v4->_numCols = HIDWORD(v9);
        v4->_tableFlags = v9;
      }

      else
      {
        v6 = v5;
        v7 = _NSFullMethodName();
        NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v7, 1, v6);

        return 0;
      }
    }
  }

  return v4;
}

- (void)_takeValuesFromTextBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = NSTextTable;
  [(NSTextBlock *)&v5 _takeValuesFromTextBlock:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_numCols = *(block + 6);
    self->_tableFlags = *(block + 7);
  }
}

- (void)setHidesEmptyCells:(BOOL)hidesEmptyCells
{
  v3 = 2;
  if (!hidesEmptyCells)
  {
    v3 = 0;
  }

  self->_tableFlags = self->_tableFlags & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (id)_rowArrayForBlock:(id)block atIndex:(unint64_t)index text:(id)text layoutManager:(id)manager containerWidth:(double)width withRepetitions:(BOOL)repetitions collapseBorders:(BOOL)borders rowCharRange:(_NSRange *)self0 indexInRow:(unint64_t *)self1 startingRow:(int64_t *)self2 startingColumn:(int64_t *)self3 previousRowBlockHelper:(id *)self4
{
  bordersCopy = borders;
  repetitionsCopy = repetitions;
  v20 = [text _rangeOfTextTableRow:? atIndex:?];
  v22 = v21;
  textCopy = text;
  indexCopy = index;
  v23 = [objc_msgSend(text "attribute:"textBlocks" atIndex:? effectiveRange:?")];
  v24 = [v23 count];
  v25 = v24;
  v112 = repetitionsCopy;
  if (startingRow)
  {
    v26 = 1;
  }

  else
  {
    v26 = repetitionsCopy;
  }

  managerCopy = manager;
  if (block)
  {
    v27 = manager == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v26 = 1;
  }

  if (column)
  {
    v26 = 1;
  }

  v120 = v26;
  if (range)
  {
    range->location = v20;
    range->length = v22;
  }

  v121 = v22;
  v124 = v20;
  if (v24)
  {
    v28 = *MEMORY[0x1E695D930];
    v29 = 1;
    selfCopy2 = self;
    do
    {
      v31 = v29 - 1;
      v32 = [v23 objectAtIndex:v29 - 1];
      if (v32 == block)
      {
        if (block && [block table] != self)
        {
          [MEMORY[0x1E695DF30] raise:v28 format:{@"*** block %p has table %p rather than %p at index %lu", block, objc_msgSend(block, "table"), self, indexCopy}];
        }
      }

      else
      {
        v33 = v32;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v33 table] == self)
        {
          if (block)
          {
            [MEMORY[0x1E695DF30] raise:v28 format:{@"*** table %p has block %p rather than %p at index %lu", self, v33, block, indexCopy}];
          }

          block = v33;
        }

        else
        {
          v31 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v44 = v29++ >= v25;
    }

    while (!v44);
    if (v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    selfCopy2 = self;
  }

  if (block)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"*** table %p has no block at index %lu", selfCopy2, indexCopy}];
    v34 = v20;
    v35 = v121;
    helperCopy3 = helper;
LABEL_35:
    startingRow = [block startingRow];
    startingColumn = [block startingColumn];
    goto LABEL_36;
  }

LABEL_34:
  v34 = v20;
  v35 = v121;
  helperCopy3 = helper;
  if (block)
  {
    goto LABEL_35;
  }

  startingRow = 0;
  startingColumn = 0;
LABEL_36:
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  v128 = 0;
  v129 = 0;
  if (!helperCopy3)
  {
    v118 = 0;
    v49 = v34;
    goto LABEL_75;
  }

  v38 = 0;
  if (v31 == 0x7FFFFFFFFFFFFFFFLL || !v34)
  {
    goto LABEL_68;
  }

  v39 = v34 - 1;
  v38 = [objc_msgSend(textCopy attribute:@"NSParagraphStyle" atIndex:v34 - 1 effectiveRange:{0), "textBlocks"}];
  if (!v38)
  {
    goto LABEL_71;
  }

  v40 = v38;
  if ([v38 count] <= v31)
  {
    v38 = 0;
LABEL_71:
    v118 = 0;
LABEL_73:
    v49 = v34;
    goto LABEL_74;
  }

  if (v31)
  {
    v41 = 1;
    do
    {
      v42 = [v23 objectAtIndex:v41 - 1];
      v43 = [v40 objectAtIndex:v41 - 1];
      v44 = v42 != v43 || v41++ >= v31;
    }

    while (!v44);
    v27 = v42 == v43;
    v34 = v124;
    helperCopy3 = helper;
    if (!v27)
    {
      goto LABEL_72;
    }
  }

  v45 = [v40 objectAtIndex:v31];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_72:
    v38 = 0;
    v118 = 0;
    v37 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_73;
  }

  table = [v45 table];
  v38 = 0;
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  if (table != selfCopy2 || !v45)
  {
LABEL_68:
    v49 = v34;
    v118 = 0;
    goto LABEL_74;
  }

  startingRow2 = [v45 startingRow];
  v107 = v45;
  if ([v45 rowSpan] + startingRow2 == startingRow)
  {
    v118 = 0;
    v49 = v34;
LABEL_167:
    v38 = [[NSTextBlockLayoutHelper alloc] initWithTextBlock:v107 charIndex:v39 text:textCopy layoutManager:managerCopy containerWidth:bordersCopy collapseBorders:width];
    goto LABEL_74;
  }

  v37 = [textCopy rangeOfTextTable:selfCopy2 atIndex:indexCopy];
  v118 = v48;
  v49 = v37;
  if (v37 >= v34)
  {
    goto LABEL_167;
  }

  do
  {
    v50 = [objc_msgSend(textCopy attribute:@"NSParagraphStyle" atIndex:v49 longestEffectiveRange:&v128 inRange:{v37, v118), "textBlocks"}];
    if (v50)
    {
      v51 = v50;
      if ([v50 count] > v31)
      {
        v113 = v39;
        v52 = [v51 objectAtIndex:v31];
        v53 = v107;
        if (v52 == v107)
        {
          v39 = v113;
        }

        else
        {
          v54 = v52;
          startingRow3 = [v52 startingRow];
          v56 = [v54 rowSpan] + startingRow3;
          v34 = v124;
          if (v56 == startingRow)
          {
            v53 = v54;
          }

          v107 = v53;
          v39 = v113;
          if (v56 == startingRow)
          {
            v39 = v49;
          }
        }
      }
    }

    v49 = v129 + v128;
  }

  while (v129 + v128 < v34);
  if (v107)
  {
    goto LABEL_167;
  }

  v38 = 0;
LABEL_74:
  *helperCopy3 = v38;
LABEL_75:
  if ((v120 & 1) != 0 || (v57 = [managerCopy _rowArrayCache]) == 0 || (v34 == *(v57 + 8) ? (v58 = v35 == *(v57 + 16)) : (v58 = 0), !v58 || *(v57 + 40) != bordersCopy || vabdd_f64(width, *(v57 + 24)) >= 0.001))
  {
    array = 0;
    goto LABEL_95;
  }

  array = *(v57 + 32);
  if (!array)
  {
LABEL_95:
    v61 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_96;
  }

  v114 = [*(v57 + 32) count];
  if (!v114)
  {
    v61 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_159;
  }

  v108 = v37;
  v60 = 0;
  v61 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v62 = v61;
    v63 = [array objectAtIndex:v60];
    v64 = *(v63 + 8);
    if (v64)
    {
      v65 = v63;
      [managerCopy layoutRectForTextBlock:v64 atIndex:*(v63 + 32) effectiveRange:0];
      v65[6] = v66;
      v65[7] = v67;
      v65[8] = v68;
      v65[9] = v69;
      v35 = v121;
      [managerCopy boundsRectForTextBlock:v64 atIndex:v65[4] effectiveRange:0];
      v65[10] = v70;
      v65[11] = v71;
      v65[12] = v72;
      v65[13] = v73;
      if (v64 == block)
      {
        v61 = v60;
      }

      else
      {
        v61 = v62;
      }
    }

    else
    {
      v61 = v62;
    }

    ++v60;
  }

  while (v114 != v60);
  v34 = v124;
  v37 = v108;
LABEL_96:
  if (v31 == 0x7FFFFFFFFFFFFFFFLL || array)
  {
LABEL_159:
    startingRowCopy2 = startingRow;
    columnCopy2 = column;
    rowCopy2 = row;
    if (!row)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

  v115 = v61;
  v109 = v37;
  array = [MEMORY[0x1E695DF70] array];
  v74 = v34 + v35;
  if (v49 >= v34 + v35)
  {
    v75 = 0;
  }

  else
  {
    v75 = 0;
    do
    {
      v76 = [objc_msgSend(textCopy attribute:@"NSParagraphStyle" atIndex:v49 longestEffectiveRange:&v128 inRange:{v34, v35), "textBlocks"}];
      if (v76 && (v77 = v76, [v76 count] > v31))
      {
        v78 = [v77 objectAtIndex:v31];
        v79 = [[NSTextBlockLayoutHelper alloc] initWithTextBlock:v78 charIndex:v49 text:textCopy layoutManager:managerCopy containerWidth:bordersCopy collapseBorders:width];
        startingRow4 = [v78 startingRow];
        startingColumn2 = [v78 startingColumn];
        columnSpan = [v78 columnSpan];
        if (v75)
        {
          startingRow4 = startingRow;
        }

        v82 = v115;
        v83 = startingColumn;
        if (!v75)
        {
          v83 = startingColumn2;
        }

        startingColumn = v83;
        if (v78 == block)
        {
          v82 = [array count];
        }

        startingRow = startingRow4;
        v115 = v82;
        if (v112)
        {
          v34 = v124;
          v35 = v121;
          if (columnSpan >= 1)
          {
            v84 = columnSpan;
            do
            {
              [array addObject:v79];
              --v84;
            }

            while (v84);
          }
        }

        else
        {
          [array addObject:v79];
          v34 = v124;
          v35 = v121;
        }

        v75 += columnSpan;
        v49 = v79[3] + v79[2];
      }

      else
      {
        v49 = v129 + v128;
      }
    }

    while (v49 < v74);
  }

  if (v75 < selfCopy2->_numCols)
  {
    v85 = v109;
    v86 = v118;
    if (!v118)
    {
      v85 = [textCopy rangeOfTextTable:selfCopy2 atIndex:indexCopy];
      v86 = v87;
    }

    if (v85 < v34)
    {
      v88 = v85;
      v110 = v85;
      v119 = v86;
      do
      {
        if (v75 >= selfCopy2->_numCols)
        {
          break;
        }

        v89 = [objc_msgSend(textCopy attribute:@"NSParagraphStyle" atIndex:v88 longestEffectiveRange:&v128 inRange:{v85, v86), "textBlocks"}];
        if (v89 && (v90 = v89, [v89 count] > v31))
        {
          v91 = [v90 objectAtIndex:v31];
          startingRow5 = [v91 startingRow];
          rowSpan = [v91 rowSpan];
          startingColumn3 = [v91 startingColumn];
          columnSpan2 = [v91 columnSpan];
          if (startingRow5 <= startingRow && rowSpan + startingRow5 > startingRow)
          {
            v106 = columnSpan2;
            v96 = [[NSTextBlockLayoutHelper alloc] initWithTextBlock:v91 charIndex:v88 text:textCopy layoutManager:managerCopy containerWidth:bordersCopy collapseBorders:width];
            v97 = 0;
            if ([array count])
            {
              v86 = v119;
              do
              {
                if (startingColumn3 < [*(objc_msgSend(array objectAtIndex:{v97) + 8), "startingColumn"}])
                {
                  break;
                }

                ++v97;
              }

              while (v97 < [array count]);
            }

            else
            {
              v86 = v119;
            }

            v126 = v96;
            if (v112)
            {
              v98 = v106;
              v85 = v110;
              if (v106 < 1)
              {
                v99 = v115;
              }

              else
              {
                v99 = v115;
                do
                {
                  [array insertObject:v126 atIndex:v97];
                  if (v97 <= v99)
                  {
                    ++v99;
                  }

                  --v98;
                }

                while (v98);
              }
            }

            else
            {
              [array insertObject:v96 atIndex:v97];
              v99 = v115;
              if (v97 <= v115)
              {
                v99 = v115 + 1;
              }

              v85 = v110;
            }

            v115 = v99;
            v75 += v106;
            v88 = v126[3] + v126[2];

            v34 = v124;
          }

          else
          {
            v88 = v129 + v128;
            v34 = v124;
            v85 = v110;
            v86 = v119;
          }
        }

        else
        {
          v88 = v129 + v128;
        }
      }

      while (v88 < v34);
    }
  }

  if (v112)
  {
    while (v75 < selfCopy2->_numCols)
    {
      [array addObject:{objc_msgSend(array, "lastObject")}];
      ++v75;
    }
  }

  startingRowCopy2 = startingRow;
  columnCopy2 = column;
  if ((v120 & 1) == 0)
  {
    width = [[NSLayoutManagerTextBlockRowArrayCache alloc] initWithRowCharRange:v34 containerWidth:v121 rowArray:array collapseBorders:bordersCopy, width];
    [managerCopy _setRowArrayCache:width];
  }

  rowCopy2 = row;
  v61 = v115;
  if (row)
  {
LABEL_160:
    *rowCopy2 = v61;
  }

LABEL_161:
  if (startingRowCopy2)
  {
    *startingRowCopy2 = startingRow;
  }

  if (columnCopy2)
  {
    *columnCopy2 = startingColumn;
  }

  return array;
}

- (id)_descriptionAtIndex:(unint64_t)index text:(id)text
{
  string = [MEMORY[0x1E696AD60] string];
  v8 = [text rangeOfTextTable:self atIndex:index];
  v10 = v9;
  textCopy = text;
  v11 = [objc_msgSend(text "attribute:"textBlocks" atIndex:? effectiveRange:?")];
  v12 = [v11 count];
  if (!v12)
  {
    goto LABEL_26;
  }

  v13 = v12;
  range = v10;
  v14 = 1;
  do
  {
    if ([objc_msgSend(v11 objectAtIndex:{v14 - 1), "table"}] == self)
    {
      v15 = v14 - 1;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  while (v15 == 0x7FFFFFFFFFFFFFFFLL && v14++ < v13);
  if (range && v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v38.location = v8;
    v38.length = range;
    [string appendFormat:@"table %p range %@ cols %lu flags 0x%lx %@\n", self, NSStringFromRange(v38), self->_numCols, self->_tableFlags, -[NSTextBlock _attributeDescription](self, "_attributeDescription")];
    v33 = v8 + range;
    if (v8 < v8 + range)
    {
      v17 = 0;
      selfCopy = self;
      do
      {
        v39.location = [textCopy _rangeOfTextTableRow:self atIndex:v8];
        location = v39.location;
        length = v39.length;
        v34 = v17;
        [string appendFormat:@"  row %lu range %@\n", v17, NSStringFromRange(v39)];
        rangea = location + length;
        if (v8 < location + length)
        {
          v20 = 0;
          do
          {
            v21 = [objc_msgSend(objc_msgSend(textCopy attribute:@"NSParagraphStyle" atIndex:v8 effectiveRange:{0), "textBlocks"), "objectAtIndex:", v15}];
            v22 = [textCopy rangeOfTextBlock:v21 atIndex:v8];
            v24 = v23;
            startingRow = [v21 startingRow];
            rowSpan = [v21 rowSpan];
            startingColumn = [v21 startingColumn];
            columnSpan = [v21 columnSpan];
            v40.location = v22;
            v40.length = v24;
            [string appendFormat:@"    cell %lu %p range %@ ", v20, v21, NSStringFromRange(v40)];
            if (rowSpan < 2)
            {
              [string appendFormat:@"row %ld ", startingRow, v30];
            }

            else
            {
              [string appendFormat:@"rows %ld-%ld ", startingRow, startingRow + rowSpan - 1];
            }

            if (columnSpan < 2)
            {
              [string appendFormat:@"col %ld ", startingColumn, v31];
            }

            else
            {
              [string appendFormat:@"cols %ld-%ld ", startingColumn, startingColumn + columnSpan - 1];
            }

            [string appendFormat:@"%@\n", objc_msgSend(v21, "_attributeDescription")];
            v8 = v22 + v24;
            ++v20;
          }

          while (v8 < rangea);
        }

        v17 = v34 + 1;
        v8 = rangea;
        self = selfCopy;
      }

      while (rangea < v33);
    }
  }

  else
  {
LABEL_26:
    [string appendFormat:@"table %p not at location %lu", self, index];
  }

  return string;
}

- (CGRect)_contentRectForCharRange:(_NSRange)range textContainer:(id)container
{
  length = range.length;
  location = range.location;
  x = *MEMORY[0x1E696AA80];
  y = *(MEMORY[0x1E696AA80] + 8);
  width = *(MEMORY[0x1E696AA80] + 16);
  height = *(MEMORY[0x1E696AA80] + 24);
  layoutManager = [container layoutManager];
  textStorage = [layoutManager textStorage];
  v13 = [objc_msgSend(textStorage attribute:@"NSParagraphStyle" atIndex:location effectiveRange:{0), "textBlocks"}];
  v14 = [v13 count];
  if (v14)
  {
    v15 = v14;
    v35 = layoutManager;
    containerCopy = container;
    v37 = length;
    v16 = 1;
    do
    {
      v17 = v16 - 1;
      v18 = [v13 objectAtIndex:{v16 - 1, v35, containerCopy}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v18 table] != self)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    while (v16++ < v15);
    if (v17 != 0x7FFFFFFFFFFFFFFFLL && location < location + v37)
    {
      v41 = 0;
      v42 = 0;
      v20 = location;
      v39 = 0;
      v40 = 0;
      do
      {
        v21 = [objc_msgSend(textStorage attribute:@"NSParagraphStyle" atIndex:v20 longestEffectiveRange:&v41 inRange:{location, v37), "textBlocks"}];
        if (v21 && (v22 = v21, [v21 count] > v17) && (v23 = objc_msgSend(v22, "objectAtIndex:", v17), v24 = objc_msgSend(v35, "glyphRangeForCharacterRange:actualCharacterRange:", v20, 1, 0), objc_msgSend(v35, "boundsRectForTextBlock:atIndex:effectiveRange:", v23, v24, &v39), v25 = v43.origin.x, v26 = v43.origin.y, v27 = v43.size.width, v28 = v43.size.height, !NSIsEmptyRect(v43)) && v40)
        {
          if ([v35 textContainerForGlyphAtIndex:v24 effectiveRange:0 withoutAdditionalLayout:1] == containerCopy)
          {
            v44.origin.x = x;
            v44.origin.y = y;
            v44.size.width = width;
            v44.size.height = height;
            if (NSIsEmptyRect(v44))
            {
              height = v28;
              width = v27;
              y = v26;
              x = v25;
            }

            else
            {
              v45.origin.x = x;
              v45.origin.y = y;
              v45.size.width = width;
              v45.size.height = height;
              v48.origin.x = v25;
              v48.origin.y = v26;
              v48.size.width = v27;
              v48.size.height = v28;
              v46 = NSUnionRect(v45, v48);
              x = v46.origin.x;
              y = v46.origin.y;
              width = v46.size.width;
              height = v46.size.height;
            }
          }

          v29 = [v35 characterRangeForGlyphRange:v39 actualGlyphRange:{v40, 0}];
          v20 = v29 + v30;
        }

        else
        {
          v20 = v42 + v41;
        }
      }

      while (v20 < location + v37);
    }
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (BOOL)_missingColumnsForRowRange:(_NSRange)range blockIndex:(unint64_t)index text:(id)text
{
  v6 = range.location + range.length;
  if (range.location >= range.location + range.length)
  {
    v11 = 0;
  }

  else
  {
    length = range.length;
    location = range.location;
    v11 = 0;
    v12 = 0;
    v17 = 0;
    v18 = 0;
    v13 = range.location;
    do
    {
      v14 = v12;
      v15 = [objc_msgSend(objc_msgSend(text attribute:@"NSParagraphStyle" atIndex:v13 longestEffectiveRange:&v17 inRange:{location, length), "textBlocks"), "objectAtIndex:", index}];
      v12 = v15;
      if (v15 != v14)
      {
        v11 += [v15 columnSpan];
      }

      v13 = v18 + v17;
    }

    while (v18 + v17 < v6);
  }

  return v11 < self->_numCols;
}

- (void)drawBackgroundForBlock:(NSTextTableBlock *)block withFrame:(NSRect)frameRect inView:(NSView *)controlView characterRange:(NSRange)charRange layoutManager:(NSLayoutManager *)layoutManager
{
  length = charRange.length;
  location = charRange.location;
  height = frameRect.size.height;
  width = frameRect.size.width;
  y = frameRect.origin.y;
  x = frameRect.origin.x;
  v168[12] = *MEMORY[0x1E69E9840];
  *&v165 = frameRect.origin.x;
  *(&v165 + 1) = *&frameRect.origin.y;
  *&v166 = frameRect.size.width;
  *(&v166 + 1) = *&frameRect.size.height;
  c = [-[objc_class graphicsContextForApplicationFrameworkContext:](+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider textGraphicsContextProviderClass];
  v152 = layoutManager;
  textStorage = [(NSLayoutManager *)layoutManager textStorage];
  string = [(NSTextStorage *)textStorage string];
  [(NSTextBlock *)self contentWidth];
  v18 = v17;
  contentWidthValueType = [(NSTextBlock *)self contentWidthValueType];
  backgroundColor = [(NSTextBlock *)self backgroundColor];
  backgroundColor2 = [(NSTextBlock *)block backgroundColor];
  v147 = [(NSTextBlock *)block borderColorForEdge:0];
  v148 = [(NSTextBlock *)block borderColorForEdge:1];
  v149 = [(NSTextBlock *)block borderColorForEdge:2];
  v150 = [(NSTextBlock *)block borderColorForEdge:3];
  v163 = v165;
  v164 = v166;
  v161 = v165;
  v162 = v166;
  v159 = v165;
  v160 = v166;
  v157 = v165;
  v158 = v166;
  v155 = v165;
  v156 = v166;
  collapsesBorders = [(NSTextTable *)self collapsesBorders];
  hidesEmptyCells = [(NSTextTable *)self hidesEmptyCells];
  v153 = textStorage;
  v143 = [(NSTextStorage *)textStorage length];
  v142 = hidesEmptyCells;
  if (hidesEmptyCells)
  {
    if (location <= location + length)
    {
      v22 = location + length;
    }

    else
    {
      v22 = location;
    }

    if (location >= location + length)
    {
      return;
    }

    v23 = location;
    while (1)
    {
      v24 = [string characterAtIndex:v23];
      if (v24 > 0x20 || ((1 << v24) & 0x100002400) == 0)
      {
        break;
      }

      if (v22 == ++v23)
      {
        return;
      }
    }
  }

  if (v18 < 0.0 || contentWidthValueType == NSTextBlockPercentageValueType)
  {
    v18 = 0.0;
  }

  v26 = [NSTextBlockLayoutHelper alloc];
  v27 = v152;
  [(NSLayoutManager *)v152 textStorage];
  v29 = [(NSTextBlockLayoutHelper *)v26 initWithTextBlock:location charRange:length text:v18 layoutManager:v28 containerWidth:v152 collapseBorders:collapsesBorders];
  v31 = v29[14];
  v30 = v29[15];
  v32 = v31 + v30;
  v33 = v29[17];
  v34 = v29[18];
  *&v163 = *&v163 + v31 + v30;
  *(&v163 + 1) = *(&v163 + 1) + v33 + v34;
  v35 = v29[23];
  v36 = v29[24];
  v37 = v29[26];
  v38 = v29[27];
  *&v164 = *&v164 - (v31 + v30 + v36 + v35);
  *(&v164 + 1) = *(&v164 + 1) - (v33 + v34 + v38 + v37);
  if (collapsesBorders)
  {
    v39 = [-[NSTextStorage attribute:atIndex:effectiveRange:](v153 "attribute:"textBlocks" atIndex:? effectiveRange:?")];
    v40 = [v39 count];
    startingRow = [(NSTextTableBlock *)block startingRow];
    startingColumn = [(NSTextTableBlock *)block startingColumn];
    rowSpan = [(NSTextTableBlock *)block rowSpan];
    columnSpan = [(NSTextTableBlock *)block columnSpan];
    v43 = v29[10];
    v44 = v29[11];
    v45 = v29[15];
    v46 = x - v45;
    v47 = width + v45 + v29[23];
    v48 = v29[18];
    v49 = y - v48;
    v50 = height + v48 + v29[26];
    *&v155 = v46;
    *(&v155 + 1) = y - v48;
    *&v156 = v47;
    *(&v156 + 1) = v50;
    v157 = v155;
    v158 = v156;
    v159 = v155;
    v160 = v156;
    v161 = v155;
    v162 = v156;
    if (!v40)
    {
      goto LABEL_120;
    }

    v131 = columnSpan;
    v133 = rowSpan;
    v51 = x - v43;
    v52 = y - v44;
    v53 = 1;
    do
    {
      if ([objc_msgSend(v39 objectAtIndex:{v53 - 1), "table"}] == self)
      {
        v54 = v53 - 1;
      }

      else
      {
        v54 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    while (v54 == 0x7FFFFFFFFFFFFFFFLL && v53++ < v40);
    if (v54 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_120;
    }

    v56 = [(NSAttributedString *)v153 _rangeOfTextTableRow:self atIndex:location];
    if (!v57)
    {
      goto LABEL_120;
    }

    v58 = v56;
    range1 = v57;
    v153 = [(NSTextTable *)self _missingColumnsForRowRange:v56 blockIndex:v57 text:v54, v153];
    v60 = 0x7FFFFFFFFFFFFFFFLL;
    v130 = v29;
    if (!v153 && v58 && (v60 = [(NSAttributedString *)v153 _rangeOfTextTableRow:self atIndex:v58 - 1], v61))
    {
      v135 = v60;
      v62 = v61;
      if ([(NSTextTable *)self _missingColumnsForRowRange:v60 blockIndex:v61 text:v54, v153])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v135 = v60;
      if (v153)
      {
        goto LABEL_36;
      }

      v62 = 0;
    }

    if (v58 + range1 >= v143)
    {
      v68 = 0;
      v67 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_43;
    }

    v67 = [(NSAttributedString *)v153 _rangeOfTextTableRow:self atIndex:?];
    v68 = v66;
    if (!v66 || ![(NSTextTable *)self _missingColumnsForRowRange:v67 blockIndex:v66 text:v54, v153])
    {
LABEL_43:
      if (v62)
      {
        v169.location = v58;
        v170.location = v135;
        v169.length = range1;
        v170.length = v62;
        v65 = NSUnionRange(v169, v170);
        v58 = v65.location;
      }

      else
      {
        v65.length = range1;
      }

      if (!v68)
      {
        goto LABEL_49;
      }

      v65.location = v58;
      v171.location = v67;
      v171.length = v68;
      v65 = NSUnionRange(v65, v171);
LABEL_48:
      v58 = v65.location;
LABEL_49:
      if (!v65.length)
      {
        v136 = 0;
        v29 = v130;
        goto LABEL_121;
      }

      range1a = v58 + v65.length;
      v29 = v130;
      if (v58 < v58 + v65.length)
      {
        v136 = 0;
        v134 = v133 + startingRow;
        v132 = v131 + startingColumn;
        v69 = v46 + v47;
        v127 = v49 + v50;
        v125 = *(MEMORY[0x1E695F058] + 8);
        v126 = *MEMORY[0x1E695F058];
        v123 = *(MEMORY[0x1E695F058] + 24);
        v124 = *(MEMORY[0x1E695F058] + 16);
        while (1)
        {
          v70 = v29;
          v71 = [objc_msgSend(-[NSTextStorage attribute:atIndex:effectiveRange:](v153 attribute:@"NSParagraphStyle" atIndex:v58 effectiveRange:{0, *&v117, *&v118, *&v119, *&v120), "textBlocks"), "objectAtIndex:", v54}];
          v72 = [(NSAttributedString *)v153 rangeOfTextBlock:v71 atIndex:v58];
          v144 = v73;
          startingRow2 = [v71 startingRow];
          startingColumn2 = [v71 startingColumn];
          rowSpan2 = [v71 rowSpan];
          v77 = [v71 columnSpan] + startingColumn2;
          v78 = startingRow2 > v134;
          v79 = rowSpan2 + startingRow2;
          if (rowSpan2 + startingRow2 < startingRow)
          {
            v78 = 1;
          }

          v80 = startingColumn2 > v132;
          v81 = startingColumn2 != v132 || v78;
          v82 = v77 != startingColumn || v78;
          v83 = v77 < startingColumn || v80;
          v84 = startingRow2 == v134 ? v83 : 1;
          v85 = v79 == startingRow ? v83 : 1;
          v86 = !v82 || v84 == 0;
          v87 = v86 || !v81;
          if (v87 || (v85 & 1) == 0)
          {
            break;
          }

          v29 = v70;
LABEL_78:
          v58 = v72 + v144;
          if (v72 + v144 >= range1a)
          {
            goto LABEL_121;
          }
        }

        v88 = [NSTextBlockLayoutHelper alloc];
        v90 = [(NSTextBlockLayoutHelper *)v88 initWithTextBlock:v71 charRange:v72 text:v144 layoutManager:v18 containerWidth:v89 collapseBorders:v152, 1];
        v91 = v90;
        v129 = v90;
        if (v82 || *(v90 + 23) <= v70[15] || (v92 = [v71 borderColorForEdge:2], v91 = v129, !v92))
        {
          if ((v85 & 1) != 0 || v91[26] <= v70[18] || (v93 = [v71 borderColorForEdge:3], v91 = v129, !v93))
          {
            if (v81 || v91[15] <= v70[23] || (v94 = [v71 borderColorForEdge:0], v91 = v129, !v94))
            {
              if ((v84 & 1) != 0 || v91[18] <= v70[26] || (v95 = [v71 borderColorForEdge:1], v91 = v129, !v95))
              {
                v29 = v70;
LABEL_118:

                goto LABEL_78;
              }
            }
          }
        }

        v29 = v70;
        if (v142)
        {
          if (v72 <= v72 + v144)
          {
            v96 = v72 + v144;
          }

          else
          {
            v96 = v72;
          }

          if (v72 >= v72 + v144)
          {
            goto LABEL_117;
          }

          v97 = v72;
          while (1)
          {
            v98 = [string characterAtIndex:v97];
            if (v98 > 0x20 || ((1 << v98) & 0x100002400) == 0)
            {
              break;
            }

            if (v96 == ++v97)
            {
              goto LABEL_117;
            }
          }
        }

        v121 = v69;
        v122 = v52;
        v128 = v51;
        v100 = v129[10];
        v99 = v129[11];
        v102 = v129[12];
        v101 = v129[13];
        v103 = v129[15];
        v104 = v129[18];
        v105 = v129[23];
        v106 = v129[26];
        if ((v136 & 1) == 0)
        {
          v137 = v129[13];
          v107 = v129[18];
          v119 = v129[11];
          v120 = v129[26];
          v117 = v129[23];
          v118 = v129[12];
          CGContextSaveGState(c);
          v105 = v117;
          v102 = v118;
          v99 = v119;
          v106 = v120;
          v104 = v107;
          v101 = v137;
        }

        v108 = v100 + v128 - v103;
        if (v108 <= v46)
        {
          v110 = 0;
          v109 = rects;
        }

        else
        {
          rects[0].origin.x = v46;
          rects[0].origin.y = v49;
          rects[0].size.width = v108 - v46;
          rects[0].size.height = v50;
          v109 = v168;
          v110 = 1;
        }

        v111 = v108 + v102 + v103 + v105;
        v69 = v121;
        v52 = v122;
        if (v111 < v121)
        {
          ++v110;
          v109->origin.x = v111;
          v109->origin.y = v49;
          v109->size.width = v121 - v111;
          v109->size.height = v50;
        }

        v51 = v128;
        v112 = v99 + v122 - v104;
        if (v112 > v49)
        {
          v113 = &rects[v110];
          v113->origin.x = v46;
          v113->origin.y = v49;
          ++v110;
          v113->size.width = v47;
          v113->size.height = v112 - v49;
        }

        v114 = v112 + v101 + v104 + v106;
        if (v114 >= v127)
        {
          if (!v110)
          {
            v172.origin.y = v125;
            v172.origin.x = v126;
            v172.size.height = v123;
            v172.size.width = v124;
            CGContextClipToRect(c, v172);
            goto LABEL_116;
          }
        }

        else
        {
          v115 = &rects[v110];
          v115->origin.x = v46;
          v115->origin.y = v114;
          ++v110;
          v115->size.width = v47;
          v115->size.height = v127 - v114;
        }

        CGContextClipToRects(c, rects, v110);
LABEL_116:
        v136 = 1;
LABEL_117:
        v91 = v129;
        goto LABEL_118;
      }

LABEL_120:
      v136 = 0;
LABEL_121:
      v31 = v29[14];
      v30 = v29[15] + v29[15];
      v29[15] = v30;
      v33 = v29[17];
      v34 = v29[18] + v29[18];
      v29[18] = v34;
      v36 = v29[24];
      v35 = v29[23] + v29[23];
      v29[23] = v35;
      v38 = v29[27];
      v37 = v29[26] + v29[26];
      v29[26] = v37;
      v32 = v31 + v30;
      v64 = backgroundColor;
      v27 = v152;
      v63 = v136;
      goto LABEL_122;
    }

LABEL_36:
    v65.location = [(NSAttributedString *)v153 rangeOfTextTable:self atIndex:location];
    goto LABEL_48;
  }

  v63 = 0;
  v49 = *(&v155 + 1);
  v46 = *&v155;
  v50 = *(&v156 + 1);
  v47 = *&v156;
  v64 = backgroundColor;
LABEL_122:
  *&v161 = v31 + *&v161;
  *(&v161 + 1) = v33 + *(&v161 + 1);
  *&v162 = v30;
  *(&v162 + 1) = *(&v162 + 1) - (v33 + v38);
  v116 = v32 + v35 + v36;
  *&v159 = v32 + *&v159;
  *(&v159 + 1) = v33 + *(&v159 + 1);
  *&v160 = *&v160 - v116;
  *(&v160 + 1) = v34;
  *&v157 = *&v157 + *&v158 - v36 - v35;
  *(&v157 + 1) = v33 + *(&v157 + 1);
  *&v158 = v35;
  *(&v158 + 1) = *(&v158 + 1) - (v33 + v38);
  *&v155 = v32 + v46;
  *(&v155 + 1) = v49 + v50 - v38 - v37;
  *&v156 = v47 - v116;
  *(&v156 + 1) = v37;
  if (v64)
  {
    [(NSColor *)v64 set];
    [(NSLayoutManager *)v27 fillBackgroundRectArray:&v165 count:1 forCharacterRange:location color:length, v64];
  }

  if (backgroundColor2)
  {
    [(NSColor *)backgroundColor2 set];
    [(NSLayoutManager *)v27 fillBackgroundRectArray:&v163 count:1 forCharacterRange:location color:length, backgroundColor2];
  }

  if (v29[15] > 0.0 && v147)
  {
    [(NSColor *)v147 set];
    [(NSLayoutManager *)v27 fillBackgroundRectArray:&v161 count:1 forCharacterRange:location color:length, v147];
  }

  if (v29[18] > 0.0 && v148)
  {
    [(NSColor *)v148 set];
    [(NSLayoutManager *)v27 fillBackgroundRectArray:&v159 count:1 forCharacterRange:location color:length, v148];
  }

  if (v29[23] > 0.0 && v149)
  {
    [(NSColor *)v149 set];
    [(NSLayoutManager *)v27 fillBackgroundRectArray:&v157 count:1 forCharacterRange:location color:length, v149];
  }

  if (v29[26] > 0.0 && v150)
  {
    [(NSColor *)v150 set];
    [(NSLayoutManager *)v27 fillBackgroundRectArray:&v155 count:1 forCharacterRange:location color:length, v150];
  }

  if (v63)
  {
    CGContextRestoreGState(c);
  }
}

- (NSRect)rectForBlock:(NSTextTableBlock *)block layoutAtPoint:(NSPoint)startingPoint inRect:(NSRect)rect textContainer:(NSTextContainer *)textContainer characterRange:(NSRange)charRange
{
  location = charRange.location;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = startingPoint.y;
  v77[0] = 0;
  v77[1] = 0;
  layoutManager = [(NSTextContainer *)textContainer layoutManager];
  v76 = 0;
  startingRow = [(NSTextTableBlock *)block startingRow];
  v75 = 0;
  collapsesBorders = [(NSTextTable *)self collapsesBorders];
  columnSpan = [(NSTextTableBlock *)block columnSpan];
  v19 = 0.0;
  if (collapsesBorders)
  {
    v20 = 0.5;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = [[NSTextBlockLayoutHelper alloc] initWithTextTable:location charIndex:[(NSLayoutManager *)layoutManager textStorage] text:layoutManager layoutManager:collapsesBorders containerWidth:width collapseBorders:?];
  v22 = v21;
  v23 = v21[20];
  if (v23 > width || v23 <= 0.0)
  {
    v23 = width;
  }

  v25 = v23 - (v21[14] + v21[15] + v21[16] + v21[17] + v21[18] + v21[19]);
  v26 = [(NSTextTable *)self _rowArrayForBlock:block atIndex:location text:[(NSLayoutManager *)layoutManager textStorage] layoutManager:layoutManager containerWidth:0 withRepetitions:collapsesBorders collapseBorders:v25 rowCharRange:v77 indexInRow:&v76 startingRow:0 startingColumn:0 previousRowBlockHelper:&v75];
  v27 = [v26 count];
  v28 = 0.0;
  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      v30 = [v26 objectAtIndex:i];
      v31 = *(v30 + 160);
      if (v31 <= 0.0)
      {
        v28 = v28 + [*(v30 + 8) columnSpan];
      }

      else
      {
        v19 = v19 + *(v30 + 192) + *(v30 + 184) + *(v30 + 176) + v31 + *(v30 + 112) + *(v30 + 120) + *(v30 + 128);
      }
    }
  }

  if (v76 >= v27)
  {
    v42 = width;
    v43 = x;
    goto LABEL_60;
  }

  v69 = height;
  v72 = v25;
  v73 = y;
  v32 = columnSpan;
  v33 = [v26 objectAtIndex:?];
  v34 = v33;
  v35 = v33[14] + v33[15] + v33[16];
  v36 = v33[22] + v33[23] + v33[24];
  v37 = v33[20];
  if (v37 <= 0.0)
  {
    v39 = v20;
    if (v28 >= v32)
    {
      v44 = v28;
    }

    else
    {
      v44 = v32;
    }

    v41 = (v72 - v19) * v32 / v44;
LABEL_26:
    v38 = floor(v41);
    goto LABEL_27;
  }

  v38 = v36 + v35 + v37;
  v39 = v20;
  if (v19 > v72 + 0.001)
  {
    v40 = 1.0;
    if (v19 >= 1.0)
    {
      v40 = v19;
    }

    v41 = (v72 - v28) * v38 / v40;
    goto LABEL_26;
  }

LABEL_27:
  v45 = v33[17];
  v46 = v33[18];
  v47 = v38 - v35 - v36;
  if (v47 >= v32)
  {
    v48 = v47;
  }

  else
  {
    v48 = v32;
  }

  v67 = v33[19];
  v68 = v48;
  v49 = v39 + v22[14] + v22[15] + v22[16];
  v50 = v12 + v39 + v22[17] + v22[18] + v22[19];
  v70 = v39;
  v71 = v50;
  if (v75)
  {
    v51 = [(NSLayoutManager *)layoutManager textContainerForGlyphAtIndex:*(v75 + 32) effectiveRange:0 withoutAdditionalLayout:1];
    v52 = v12 > 0.0 && v51 == textContainer;
    if (v52 && !NSIsEmptyRect(*(v75 + 80)))
    {
      v50 = *(v75 + 88) + *(v75 + 104);
    }
  }

  v53 = v45 + v46;
  v54 = x + v49;
  if (v76)
  {
    for (j = 0; j < v76; ++j)
    {
      v56 = [v26 objectAtIndex:j];
      if (!NSIsEmptyRect(*(v56 + 80)))
      {
        v57 = *(v56 + 96);
        if (v54 < *(v56 + 80) + v57)
        {
          v54 = *(v56 + 80) + v57;
        }

        if ([*(v56 + 8) startingRow] == startingRow)
        {
          v50 = *(v56 + 88);
        }
      }
    }
  }

  v58 = v73 + v69 + v70;
  v59 = v53 + v67;
  v43 = v35 + v54;
  if (v36 + v35 + v68 <= width + 0.001)
  {
    v60 = v68;
  }

  else
  {
    v60 = width - v35 - v36;
  }

  if (v60 >= 1.0)
  {
    v42 = v60;
  }

  else
  {
    v42 = 1.0;
  }

  v61 = x + width + v70;
  if (v36 + v42 + v43 > v61 + 0.001)
  {
    v43 = v61 - v36 - v42;
    if (v43 < x)
    {
      v43 = floor(width * v35 / (v36 + v35 + v42));
    }
  }

  y = v59 + v50;
  v62 = v58 - (v59 + v50);
  if (v62 >= 1.0)
  {
    height = v62;
  }

  else
  {
    height = 1.0;
  }

  if (*(v34 + 2) == *(v22 + 2))
  {
    [(NSLayoutManager *)layoutManager setLayoutRect:self forTextBlock:*(v22 + 4) glyphRange:*(v22 + 5), x + v49, v71, v72, v58 - v73];
  }

LABEL_60:

  v63 = v43;
  v64 = y;
  v65 = v42;
  v66 = height;
  result.size.height = v66;
  result.size.width = v65;
  result.origin.y = v64;
  result.origin.x = v63;
  return result;
}

- (NSRect)boundsRectForBlock:(NSTextTableBlock *)block contentRect:(NSRect)contentRect inRect:(NSRect)rect textContainer:(NSTextContainer *)textContainer characterRange:(NSRange)charRange
{
  location = charRange.location;
  width = rect.size.width;
  height = contentRect.size.height;
  v10 = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v15 = [(NSTextContainer *)textContainer layoutManager:contentRect.origin.x];
  v71[0] = 0;
  v71[1] = 0;
  v70 = 0;
  startingRow = [(NSTextTableBlock *)block startingRow];
  rowSpan = [(NSTextTableBlock *)block rowSpan];
  verticalAlignment = [(NSTextBlock *)block verticalAlignment];
  collapsesBorders = [(NSTextTable *)self collapsesBorders];
  v20 = [[NSTextBlockLayoutHelper alloc] initWithTextTable:location charIndex:[(NSLayoutManager *)v15 textStorage] text:v15 layoutManager:collapsesBorders containerWidth:width collapseBorders:?];
  v21 = v20;
  v22 = *(v20 + 160);
  if (v22 <= width && v22 > 0.0)
  {
    v24 = *(v20 + 160);
  }

  else
  {
    v24 = width;
  }

  v25 = [(NSTextTable *)self _rowArrayForBlock:block atIndex:location text:[(NSLayoutManager *)v15 textStorage] layoutManager:v15 containerWidth:0 withRepetitions:collapsesBorders collapseBorders:v24 rowCharRange:v71 indexInRow:&v70 startingRow:0 startingColumn:0 previousRowBlockHelper:0];
  v26 = [v25 count];
  if (v70 >= v26)
  {
    goto LABEL_41;
  }

  v27 = v26;
  selfCopy = self;
  v69 = v21;
  v28 = [v25 objectAtIndex:?];
  v29 = v28;
  v30 = *(v28 + 168) - height;
  if (v30 <= 0.0)
  {
    goto LABEL_13;
  }

  height = height + v30;
  if (verticalAlignment == NSTextBlockBottomAlignment)
  {
    goto LABEL_12;
  }

  if (verticalAlignment == NSTextBlockMiddleAlignment)
  {
    v30 = v30 * 0.5;
LABEL_12:
    _moveLinesInLayoutManager(v15, *(v28 + 32), *(v28 + 40), 0, v30);
  }

LABEL_13:
  v31 = 0;
  v32 = *(v29 + 112) + *(v29 + 120) + *(v29 + 128);
  v33 = *(v29 + 136) + *(v29 + 144) + *(v29 + 152);
  y = y - v33;
  v34 = v32 + *(v29 + 192) + *(v29 + 184) + *(v29 + 176);
  v35 = rowSpan + startingRow;
  height = height + v33 + *(v29 + 216) + *(v29 + 208) + *(v29 + 200);
  do
  {
    v36 = [v25 objectAtIndex:v31];
    startingRow2 = [*(v36 + 8) startingRow];
    if ([*(v36 + 8) rowSpan] + startingRow2 != v35)
    {
      goto LABEL_34;
    }

    if (v31 >= v70 && (v31 <= v70 || startingRow2 >= startingRow))
    {
      goto LABEL_34;
    }

    verticalAlignment2 = [*(v36 + 8) verticalAlignment];
    v40 = *(v36 + 88) + *(v36 + 104) - (y + height);
    if (v40 <= 0.0)
    {
      if (v40 >= 0.0)
      {
        goto LABEL_34;
      }

      if (verticalAlignment2 == 2)
      {
        v45 = -v40;
      }

      else
      {
        if (verticalAlignment2 != 1)
        {
LABEL_33:
          v46 = *(v36 + 96);
          *(v36 + 104) = *(v36 + 104) - v40;
          [(NSLayoutManager *)v15 setBoundsRect:*(v36 + 8) forTextBlock:*(v36 + 32) glyphRange:*(v36 + 40), *(v36 + 80), *(v36 + 88), v46];
          goto LABEL_34;
        }

        v45 = v40 * -0.5;
      }

      _moveLinesInLayoutManager(v15, *(v36 + 32), *(v36 + 40), 1, v45);
      goto LABEL_33;
    }

    height = height + v40;
    if (verticalAlignment == NSTextBlockBottomAlignment)
    {
      v42 = *(v29 + 32);
      v43 = *(v29 + 40);
      v44 = v15;
      v41 = v40;
    }

    else
    {
      if (verticalAlignment != NSTextBlockMiddleAlignment)
      {
        goto LABEL_34;
      }

      v41 = v40 * 0.5;
      v42 = *(v29 + 32);
      v43 = *(v29 + 40);
      v44 = v15;
    }

    _moveLinesInLayoutManager(v44, v42, v43, 0, v41);
LABEL_34:
    ++v31;
  }

  while (v27 != v31);
  x = x - v32;
  v10 = v10 + v34;
  v21 = v69;
  if (*(v29 + 24) + *(v29 + 16) == *(v69 + 3) + *(v69 + 2))
  {
    [NSTextTable _contentRectForCharRange:selfCopy textContainer:"_contentRectForCharRange:textContainer:"];
    v47 = v72.origin.x;
    v48 = v72.origin.y;
    v49 = v72.size.width;
    v50 = v72.size.height;
    v51 = NSIsEmptyRect(v72);
    v66 = x;
    v67 = v10;
    v52 = y;
    v53 = height;
    if (!v51)
    {
      v73.origin.x = v47;
      v73.origin.y = v48;
      v73.size.width = v49;
      v73.size.height = v50;
      v75.origin.x = x;
      v75.size.width = v10;
      v75.origin.y = y;
      v75.size.height = height;
      *(&v52 - 1) = NSUnionRect(v73, v75);
      x = v54;
      v10 = v55;
    }

    v56 = x;
    v57 = v52;
    v58 = v10;
    v59 = v53;
    if (!NSIsEmptyRect(*(&v52 - 1)))
    {
      v60 = *(v69 + 14) + *(v69 + 15) + *(v69 + 16);
      v61 = *(v69 + 17) + *(v69 + 18) + *(v69 + 19);
      [(NSLayoutManager *)v15 setBoundsRect:selfCopy forTextBlock:*(v69 + 4) glyphRange:*(v69 + 5), x - v60, v57 - v61, v10 + v60 + *(v69 + 24) + *(v69 + 23) + *(v69 + 22), v59 + v61 + *(v69 + 27) + *(v69 + 26) + *(v69 + 25)];
    }

    x = v66;
    v10 = v67;
  }

LABEL_41:

  v62 = x;
  v63 = y;
  v64 = v10;
  v65 = height;
  result.size.height = v65;
  result.size.width = v64;
  result.origin.y = v63;
  result.origin.x = v62;
  return result;
}

@end