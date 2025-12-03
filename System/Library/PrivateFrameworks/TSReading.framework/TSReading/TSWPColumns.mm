@interface TSWPColumns
+ (id)columns;
- (BOOL)isEqual:(id)equal;
- (TSWPColumns)initWithColumnCount:(unint64_t)count;
- (TSWPColumns)initWithColumnCount:(unint64_t)count equalWidth:(BOOL)width widthArray:(double *)array gapArray:(double *)gapArray;
- (TSWPColumns)initWithEqualColumnCount:(unint64_t)count gapFraction:(double)fraction;
- (double)p_equalGapForEqualWidth:(double)width;
- (double)p_equalWidthForEqualGap:(double)gap;
- (double)p_maxEqualGapForBodyWidth:(double)width;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)p_setColumnCount:(unint64_t)count gapFraction:(double)fraction;
- (void)p_setEqualWidth:(double)width equalGap:(double)gap;
- (void)setColumnCount:(unint64_t)count;
- (void)setEqualWidth:(BOOL)width;
- (void)setGap:(double)gap forColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (void)setWidth:(double)width forColumnIndex:(unint64_t)index bodyWidth:(double)bodyWidth;
@end

@implementation TSWPColumns

+ (id)columns
{
  v2 = [[self alloc] initWithColumnCount:1];

  return v2;
}

- (TSWPColumns)initWithColumnCount:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = TSWPColumns;
  v4 = [(TSWPColumns *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TSWPColumns *)v4 p_setColumnCount:count gapFraction:0.0500000007];
  }

  return v5;
}

- (TSWPColumns)initWithColumnCount:(unint64_t)count equalWidth:(BOOL)width widthArray:(double *)array gapArray:(double *)gapArray
{
  v15.receiver = self;
  v15.super_class = TSWPColumns;
  v10 = [(TSWPColumns *)&v15 init];
  v11 = v10;
  if (v10)
  {
    if (count)
    {
      countCopy = 10;
      if (count < 0xA)
      {
        countCopy = count;
      }

      v10->_columnCount = countCopy;
      v10->_equalWidth = width;
      v13 = 8 * countCopy;
      memcpy(v10->_widthArray, array, 8 * countCopy);
      memcpy(v11->_gapArray, gapArray, v13 - 8);
    }

    else
    {
      [(TSWPColumns *)v10 p_setColumnCount:1 gapFraction:0.0500000007];
    }
  }

  return v11;
}

- (TSWPColumns)initWithEqualColumnCount:(unint64_t)count gapFraction:(double)fraction
{
  v9.receiver = self;
  v9.super_class = TSWPColumns;
  v6 = [(TSWPColumns *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_equalWidth = 1;
    [(TSWPColumns *)v6 p_setColumnCount:count gapFraction:fraction];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSWPColumns allocWithZone:zone];
  columnCount = self->_columnCount;
  equalWidth = self->_equalWidth;

  return [(TSWPColumns *)v4 initWithColumnCount:columnCount equalWidth:equalWidth widthArray:self->_widthArray gapArray:self->_gapArray];
}

- (void)p_setEqualWidth:(double)width equalGap:(double)gap
{
  columnCount = self->_columnCount;
  if (columnCount)
  {
    gapArray = self->_gapArray;
    v6 = 13;
    do
    {
      *(gapArray - 10) = width;
      if (columnCount - 1 > v6 - 13)
      {
        *gapArray = gap;
      }

      v7 = (v6++ - 12);
      ++gapArray;
    }

    while (columnCount > v7);
  }
}

- (void)p_setColumnCount:(unint64_t)count gapFraction:(double)fraction
{
  self->_columnCount = count;
  v5 = (count - 1);
  if (count >= 2)
  {
    fraction = fmin(v5 * fraction, 0.75) / v5;
  }

  [(TSWPColumns *)self p_setEqualWidth:(1.0 - v5 * fraction) / count equalGap:?];
}

- (void)setColumnCount:(unint64_t)count
{
  if (count - 1 <= 9)
  {
    v3 = 0.0500000007;
    if (self->_equalWidth && self->_columnCount >= 2)
    {
      v3 = self->_gapArray[0];
    }

    [(TSWPColumns *)self p_setColumnCount:v3 gapFraction:?];
  }
}

- (void)setEqualWidth:(BOOL)width
{
  self->_equalWidth = width;
  if (width)
  {
    [(TSWPColumns *)self p_setColumnCount:self->_columnCount gapFraction:0.0500000007];
  }
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  LOBYTE(columnCount) = equal == self;
  if (equal != self && v5)
  {
    columnCount = self->_columnCount;
    if (columnCount != *(v5 + 8) || self->_equalWidth != *(v5 + 16))
    {
LABEL_11:
      LOBYTE(columnCount) = 0;
      return columnCount;
    }

    if (columnCount)
    {
      v7 = 0;
      v8 = 1;
      while (*(v5 + 24 + 8 * v7) == self->_widthArray[v7])
      {
        v7 = v8;
        v15 = columnCount > v8++;
        if (!v15)
        {
          v9 = columnCount - 1;
          if (columnCount != 1)
          {
            goto LABEL_14;
          }

          return columnCount;
        }
      }

      goto LABEL_11;
    }

    v9 = -1;
LABEL_14:
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(v5 + 104 + 8 * v11);
      v14 = self->_gapArray[v11];
      LOBYTE(columnCount) = v13 == v14;
      v11 = v12++;
      v15 = v13 == v14 && v9 > v11;
    }

    while (v15);
  }

  return columnCount;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap
{
  v6 = self->_columnCount - 1;
  v7 = 0.0;
  v8 = 13;
  gapArray = self->_gapArray;
  do
  {
    v10 = v7;
    v7 = v7 + *(gapArray - 10);
    if (v6 > v8 - 13)
    {
      v7 = v7 + *gapArray;
    }

    v11 = (v8++ - 12);
    ++gapArray;
  }

  while (v11 <= index);
  if (outWidth)
  {
    *outWidth = self->_widthArray[index] * width;
  }

  if (gap)
  {
    v12 = 0.0;
    if (v6 > index)
    {
      v12 = self->_gapArray[index] * width;
    }

    *gap = v12;
  }

  return v10 * width;
}

- (double)p_equalGapForEqualWidth:(double)width
{
  columnCount = self->_columnCount;
  v4 = 0.0;
  if (columnCount >= 2)
  {
    v5 = columnCount * width;
    if (v5 <= 0.0 || v5 > 1.0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumns p_equalGapForEqualWidth:]"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumns.mm"), 344, @"Bad column width fraction"}];
      columnCount = self->_columnCount;
    }

    v4 = 0.0;
    if ((1.0 - v5) / (columnCount - 1) >= 0.0)
    {
      return (1.0 - v5) / (columnCount - 1);
    }
  }

  return v4;
}

- (double)p_equalWidthForEqualGap:(double)gap
{
  columnCount = self->_columnCount;
  v4 = 1.0;
  if (columnCount >= 2)
  {
    v5 = (columnCount - 1) * gap;
    if (v5 < 0.0 || v5 > 1.0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumns p_equalWidthForEqualGap:]"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumns.mm"), 365, @"Bad column gap fraction"}];
      columnCount = self->_columnCount;
    }

    if ((1.0 - v5) / columnCount <= 1.0)
    {
      return (1.0 - v5) / columnCount;
    }

    else
    {
      return 1.0;
    }
  }

  return v4;
}

- (void)setWidth:(double)width forColumnIndex:(unint64_t)index bodyWidth:(double)bodyWidth
{
  columnCount = self->_columnCount;
  if (columnCount < 2)
  {
    v9 = 1.0;
    v11 = 0.0;
LABEL_9:

    [(TSWPColumns *)self p_setEqualWidth:v9 equalGap:v11];
    return;
  }

  v7 = 36.0 / bodyWidth;
  v8 = width / bodyWidth;
  if (self->_equalWidth)
  {
    v9 = (1.0 / columnCount);
    if (v8 >= v7)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    v11 = 0.0;
    if (v10 < v9)
    {
      [(TSWPColumns *)self p_equalGapForEqualWidth:index, v10, 0.0];
      v11 = v12;
      v9 = v10;
    }

    goto LABEL_9;
  }

  v13 = 1.0 - v7 * (columnCount - 1);
  gapArray = self->_gapArray;
  v15 = 1;
  do
  {
    v16 = *gapArray++;
    v13 = v13 - v16;
  }

  while (columnCount - 1 > v15++);
  if (v8 <= v13)
  {
    v13 = v8;
  }

  if (v13 >= v7)
  {
    v18 = v13;
  }

  else
  {
    v18 = v7;
  }

  widthArray = self->_widthArray;
  v20 = self->_widthArray[index] - v18;
  if (v20 == 0.0)
  {
    return;
  }

  if (index + 1 < columnCount)
  {
    v21 = index + 1;
  }

  else
  {
    v21 = 0;
  }

  if (v20 >= 0.0)
  {
    widthArray[v21] = v20 + widthArray[v21];
    goto LABEL_37;
  }

  v22 = self->_widthArray[index] - v18;
  if (v21 == index)
  {
    goto LABEL_36;
  }

  v22 = v20;
  while (1)
  {
    v23 = widthArray[v21];
    if (v23 > v7)
    {
      break;
    }

LABEL_29:
    if (v21 + 1 < columnCount)
    {
      ++v21;
    }

    else
    {
      v21 = 0;
    }

    if (v21 == index)
    {
      goto LABEL_36;
    }
  }

  if (v22 + v23 < v7)
  {
    v22 = v22 + v23 - v7;
    widthArray[v21] = v7;
    if (fabs(v22) < 0.000001)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  widthArray[v21] = v22 + v23;
  v22 = 0.0;
LABEL_36:
  v18 = widthArray[index] + v22 - v20;
LABEL_37:
  widthArray[index] = v18;
}

- (double)p_maxEqualGapForBodyWidth:(double)width
{
  columnCount = self->_columnCount;
  v4 = 0.0;
  if (columnCount >= 2)
  {
    v5 = ((columnCount * -36.0) / width + 1.0) / (columnCount - 1);
    v4 = 0.0;
    if (v5 >= 0.0)
    {
      return v5;
    }
  }

  return v4;
}

- (void)setGap:(double)gap forColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  selfCopy = self;
  columnCount = self->_columnCount;
  if (columnCount < 2)
  {
    v11 = 1.0;
    v12 = 0.0;
LABEL_8:

    [(TSWPColumns *)self p_setEqualWidth:v11 equalGap:v12];
    return;
  }

  if (self->_equalWidth)
  {
    [(TSWPColumns *)self p_maxEqualGapForBodyWidth:index, width];
    if (gap / width <= v9)
    {
      v10 = gap / width;
    }

    else
    {
      v10 = v9;
    }

    [(TSWPColumns *)selfCopy p_equalWidthForEqualGap:v10];
    self = selfCopy;
    v12 = v10;
    goto LABEL_8;
  }

  v13 = 0;
  v14 = gap / width;
  v15 = 36.0 / width;
  v16 = 1.0 - 36.0 / width * columnCount;
  gapArray = self->_gapArray;
  do
  {
    if (index != v13)
    {
      v16 = v16 - gapArray[v13];
    }

    ++v13;
  }

  while (columnCount - 1 > v13);
  if (v14 > v16)
  {
    v14 = v16;
  }

  v18 = 0.0;
  if (v14 >= 0.0)
  {
    v18 = v14;
  }

  v19 = gapArray[index] - v18;
  if (v19 == 0.0)
  {
    return;
  }

  if (index + 1 < columnCount)
  {
    v20 = index + 1;
  }

  else
  {
    v20 = 0;
  }

  if (v19 >= 0.0)
  {
    self->_widthArray[v20] = v19 + self->_widthArray[v20];
    goto LABEL_37;
  }

  v21 = gapArray[index] - v18;
  if (v20 == index)
  {
    goto LABEL_36;
  }

  widthArray = self->_widthArray;
  v21 = v19;
  while (1)
  {
    v23 = widthArray[v20];
    if (v23 > v15)
    {
      break;
    }

LABEL_29:
    if (v20 + 1 < columnCount)
    {
      ++v20;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == index)
    {
      goto LABEL_36;
    }
  }

  if (v21 + v23 < v15)
  {
    v21 = v21 + v23 - v15;
    widthArray[v20] = v15;
    if (fabs(v21) < 0.000001)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  widthArray[v20] = v21 + v23;
  v21 = 0.0;
LABEL_36:
  v18 = gapArray[index] + v21 - v19;
LABEL_37:
  gapArray[index] = v18;
}

- (id)description
{
  if (self->_equalWidth)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" %lu equal columns", self->_columnCount];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"%f", *&self->_widthArray[0]];
    if (self->_columnCount >= 2)
    {
      v5 = 2;
      v6 = 1;
      do
      {
        [v4 appendFormat:@" (%f) %f", *&self->_widthArray[v5 + 8], *&self->_widthArray[v6]];
        v6 = v5;
      }

      while (self->_columnCount > v5++);
    }

    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" %lu columns: { %@ }", self->_columnCount, v4];
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v8 stringWithFormat:@"<%@: %p>%@", NSStringFromClass(v9), self, v3];

  return v10;
}

@end