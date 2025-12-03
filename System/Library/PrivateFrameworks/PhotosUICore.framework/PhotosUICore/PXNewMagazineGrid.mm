@interface PXNewMagazineGrid
- (BOOL)_hasAnyEmptyTilesInArea:(PXMagazineRect *)area;
- (BOOL)_hasAnyTilesUsedInArea:(PXMagazineRect *)area;
- (BOOL)nextEmptyTileX:(int64_t *)x Y:(int64_t *)y maxWidth:(int64_t *)width;
- (PXNewMagazineGrid)init;
- (PXNewMagazineGrid)initWithNumberOfColumns:(int64_t)columns size:(unint64_t)size;
- (int64_t)_numberOfEmptyTilesAtTheEnd;
- (int64_t)_numberOfEmptyTilesInArea:(PXMagazineRect *)area;
- (unint64_t)_rowsUsed;
- (unint64_t)endingType;
- (void)clearArea:(PXMagazineRect *)area;
- (void)dealloc;
- (void)enlargeTable;
- (void)resetWithSize:(unint64_t)size;
- (void)setNumberOfColumns:(int64_t)columns;
- (void)setTileIdentifier:(unint64_t)identifier forArea:(PXMagazineRect *)area;
@end

@implementation PXNewMagazineGrid

- (unint64_t)_rowsUsed
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = 8 * self->_numberOfColumns;
  memset(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), 255, v3);
  maxRows = self->_maxRows;
  if (!maxRows)
  {
    return 0;
  }

  v5 = 0;
  table = self->_table;
  while (memcmp(table, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3))
  {
    ++v5;
    table = (table + v3);
    if (maxRows == v5)
    {
      return maxRows;
    }
  }

  return v5;
}

- (unint64_t)endingType
{
  if ([(PXNewMagazineGrid *)self _isEmptyGrid])
  {
    return 2;
  }

  _rowsUsed = [(PXNewMagazineGrid *)self _rowsUsed];
  numberOfColumns = self->_numberOfColumns;
  v9[0] = 0;
  v9[1] = _rowsUsed - 1;
  v9[2] = numberOfColumns;
  v9[3] = 1;
  if (![(PXNewMagazineGrid *)self _hasAnyEmptyTilesInArea:v9])
  {
    return 2;
  }

  v8 = 0;
  v9[0] = 0;
  v7 = 0;
  if (![(PXNewMagazineGrid *)self nextEmptyTileX:&v8 Y:&v7 maxWidth:v9]|| v9[0] + v8 != self->_numberOfColumns)
  {
    return 0;
  }

  v5 = (_rowsUsed - v7) * v9[0];
  return v5 == [(PXNewMagazineGrid *)self _numberOfEmptyTilesAtTheEnd];
}

- (int64_t)_numberOfEmptyTilesAtTheEnd
{
  v3 = 0;
  v4 = [(PXNewMagazineGrid *)self _rowsUsed]- 1;
  do
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    numberOfColumns = self->_numberOfColumns;
    v8[0] = 0;
    v8[1] = v4;
    v8[2] = numberOfColumns;
    v8[3] = 1;
    v6 = [(PXNewMagazineGrid *)self _numberOfEmptyTilesInArea:v8];
    v3 += v6;
    --v4;
  }

  while (v6);
  return v3;
}

- (BOOL)_hasAnyEmptyTilesInArea:(PXMagazineRect *)area
{
  var0 = area->var1.var0;
  if (var0 < 1)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    while (area->var1.var1 < 1)
    {
LABEL_7:
      ++v5;
      ++v4;
      v6 = v5 < var0;
      if (v5 == var0)
      {
        return v6;
      }
    }

    numberOfColumns = self->_numberOfColumns;
    v8 = &self->_table[area->var0.var1 * numberOfColumns + area->var0.var0 + v4];
    v9 = 8 * numberOfColumns;
    var1 = area->var1.var1;
    while (*v8 != -1)
    {
      v8 = (v8 + v9);
      if (!--var1)
      {
        goto LABEL_7;
      }
    }
  }

  return v6;
}

- (int64_t)_numberOfEmptyTilesInArea:(PXMagazineRect *)area
{
  var0 = area->var1.var0;
  if (var0 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    if (area->var1.var1 >= 1)
    {
      numberOfColumns = self->_numberOfColumns;
      v8 = &self->_table[area->var0.var1 * numberOfColumns + area->var0.var0 + v4];
      v9 = 8 * numberOfColumns;
      var1 = area->var1.var1;
      do
      {
        if (*v8 == -1)
        {
          ++v6;
        }

        v8 = (v8 + v9);
        --var1;
      }

      while (var1);
    }

    ++v5;
    ++v4;
  }

  while (v5 != var0);
  return v6;
}

- (BOOL)_hasAnyTilesUsedInArea:(PXMagazineRect *)area
{
  var0 = area->var1.var0;
  if (var0 < 1)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    while (area->var1.var1 < 1)
    {
LABEL_7:
      ++v5;
      ++v4;
      v6 = v5 < var0;
      if (v5 == var0)
      {
        return v6;
      }
    }

    numberOfColumns = self->_numberOfColumns;
    v8 = &self->_table[area->var0.var1 * numberOfColumns + area->var0.var0 + v4];
    v9 = 8 * numberOfColumns;
    var1 = area->var1.var1;
    while (*v8 == -1)
    {
      v8 = (v8 + v9);
      if (!--var1)
      {
        goto LABEL_7;
      }
    }
  }

  return v6;
}

- (BOOL)nextEmptyTileX:(int64_t *)x Y:(int64_t *)y maxWidth:(int64_t *)width
{
  if (x)
  {
    v6 = y == 0;
  }

  else
  {
    v6 = 1;
  }

  result = !v6;
  if (v6)
  {
    return result;
  }

  *y = 0;
  *x = 0;
  numberOfColumns = self->_numberOfColumns;
  v9 = numberOfColumns * self->_maxRows;
  table = self->_table;
  if (!v9)
  {
LABEL_12:
    v12 = 0;
    if (!width)
    {
      return result;
    }

    goto LABEL_15;
  }

  v11 = 0;
  while (table[v11] != -1)
  {
    if (v9 == ++v11)
    {
      goto LABEL_12;
    }
  }

  *y = v11 / numberOfColumns;
  v12 = v11 % self->_numberOfColumns;
  *x = v12;
  if (width)
  {
LABEL_15:
    v13 = self->_numberOfColumns;
    if (v12 + 1 >= v13)
    {
      v16 = 1;
    }

    else
    {
      v14 = v13 - v12;
      v15 = &table[v13 * *y + v12];
      v16 = 1;
      while (v15[v16] == -1)
      {
        if (v14 == ++v16)
        {
          v16 = v14;
          break;
        }
      }
    }

    *width = v16;
  }

  return result;
}

- (void)clearArea:(PXMagazineRect *)area
{
  var1 = area->var1;
  v4[0] = area->var0;
  v4[1] = var1;
  [(PXNewMagazineGrid *)self setTileIdentifier:-1 forArea:v4];
}

- (void)setTileIdentifier:(unint64_t)identifier forArea:(PXMagazineRect *)area
{
  if (area->var1.var1 + area->var0.var1 >= self->_maxRows)
  {
    [(PXNewMagazineGrid *)self enlargeTable];
  }

  var0 = area->var1.var0;
  if (var0 >= 1)
  {
    v8 = 0;
    var1 = area->var1.var1;
    do
    {
      if (var1 >= 1)
      {
        v10 = 0;
        table = self->_table;
        do
        {
          table[(v10 + area->var0.var1) * self->_numberOfColumns + area->var0.var0 + v8] = identifier;
          ++v10;
          var1 = area->var1.var1;
        }

        while (v10 < var1);
        var0 = area->var1.var0;
      }

      ++v8;
    }

    while (v8 < var0);
  }
}

- (void)enlargeTable
{
  numberOfColumns = self->_numberOfColumns;
  v4 = self->_maxRows + 0x400 / (8 * numberOfColumns);
  p_table = &self->_table;
  table = self->_table;
  v6 = p_table[1];
  v8 = 8 * numberOfColumns * v4 + 8 * numberOfColumns;
  self->_tableSizeInBytes = v8;
  self->_maxRows = v4;
  v9 = malloc_type_realloc(table, v8, 0x100004000313F17uLL);
  self->_table = v9;
  v10 = self->_tableSizeInBytes - v6;
  v11 = v6 + v9;

  memset(v11, 255, v10);
}

- (void)resetWithSize:(unint64_t)size
{
  maxRows = self->_maxRows;
  numberOfColumns = self->_numberOfColumns;
  v6 = 16 * size / numberOfColumns;
  if (!maxRows || v6 > maxRows)
  {
    if (v6 <= 100)
    {
      v6 = 100;
    }

    v7 = 8 * (numberOfColumns + numberOfColumns * v6);
    self->_tableSizeInBytes = v7;
    self->_maxRows = v6;
    v8 = malloc_type_realloc(self->_table, v7, 0x100004000313F17uLL);
    self->_table = v8;
    tableSizeInBytes = self->_tableSizeInBytes;

    memset(v8, 255, tableSizeInBytes);
  }
}

- (void)setNumberOfColumns:(int64_t)columns
{
  if (self->_numberOfColumns != columns)
  {
    if (columns <= 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXNewMagazineGrid.m" lineNumber:49 description:@"We should have at least one column"];
    }

    self->_numberOfColumns = columns;
  }
}

- (void)dealloc
{
  table = self->_table;
  if (table)
  {
    free(table);
    self->_table = 0;
  }

  v4.receiver = self;
  v4.super_class = PXNewMagazineGrid;
  [(PXNewMagazineGrid *)&v4 dealloc];
}

- (PXNewMagazineGrid)initWithNumberOfColumns:(int64_t)columns size:(unint64_t)size
{
  v10.receiver = self;
  v10.super_class = PXNewMagazineGrid;
  v7 = [(PXNewMagazineGrid *)&v10 init];
  if (v7)
  {
    if (columns <= 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PXNewMagazineGrid.m" lineNumber:30 description:@"We should have at least one column"];
    }

    v7->_numberOfColumns = columns;
    v7->_table = 0;
    [(PXNewMagazineGrid *)v7 resetWithSize:size];
  }

  return v7;
}

- (PXNewMagazineGrid)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXNewMagazineGrid.m" lineNumber:24 description:{@"%s is not available as initializer", "-[PXNewMagazineGrid init]"}];

  abort();
}

@end