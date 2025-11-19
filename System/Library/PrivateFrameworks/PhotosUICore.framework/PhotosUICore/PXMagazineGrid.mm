@interface PXMagazineGrid
- (BOOL)_hasAnyEmptyTilesInArea:(PXMagazineRect *)a3;
- (BOOL)_hasAnyTilesUsedInArea:(PXMagazineRect *)a3;
- (BOOL)nextEmptyTileX:(int64_t *)a3 Y:(int64_t *)a4 maxWidth:(int64_t *)a5;
- (PXMagazineGrid)initWithNumberOfColumns:(int64_t)a3 size:(unint64_t)a4;
- (int64_t)_numberOfEmptyTilesAtTheEnd;
- (int64_t)_numberOfEmptyTilesInArea:(PXMagazineRect *)a3;
- (unint64_t)_rowsUsed;
- (unint64_t)endingType;
- (void)clearArea:(PXMagazineRect *)a3;
- (void)dealloc;
- (void)enlargeTable;
- (void)resetWithSize:(unint64_t)a3;
- (void)setNumberOfColumns:(int64_t)a3;
- (void)setTileIdentifier:(unint64_t)a3 forArea:(PXMagazineRect *)a4;
@end

@implementation PXMagazineGrid

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
  if ([(PXMagazineGrid *)self _isEmptyGrid])
  {
    return 2;
  }

  v3 = [(PXMagazineGrid *)self _rowsUsed];
  numberOfColumns = self->_numberOfColumns;
  v9[0] = 0;
  v9[1] = v3 - 1;
  v9[2] = numberOfColumns;
  v9[3] = 1;
  if (![(PXMagazineGrid *)self _hasAnyEmptyTilesInArea:v9])
  {
    return 2;
  }

  v8 = 0;
  v9[0] = 0;
  v7 = 0;
  if (![(PXMagazineGrid *)self nextEmptyTileX:&v8 Y:&v7 maxWidth:v9]|| v9[0] + v8 != self->_numberOfColumns)
  {
    return 0;
  }

  v5 = (v3 - v7) * v9[0];
  return v5 == [(PXMagazineGrid *)self _numberOfEmptyTilesAtTheEnd];
}

- (int64_t)_numberOfEmptyTilesAtTheEnd
{
  v3 = 0;
  v4 = [(PXMagazineGrid *)self _rowsUsed]- 1;
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
    v6 = [(PXMagazineGrid *)self _numberOfEmptyTilesInArea:v8];
    v3 += v6;
    --v4;
  }

  while (v6);
  return v3;
}

- (BOOL)_hasAnyEmptyTilesInArea:(PXMagazineRect *)a3
{
  var0 = a3->var1.var0;
  if (var0 < 1)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    while (a3->var1.var1 < 1)
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
    v8 = &self->_table[a3->var0.var1 * numberOfColumns + a3->var0.var0 + v4];
    v9 = 8 * numberOfColumns;
    var1 = a3->var1.var1;
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

- (int64_t)_numberOfEmptyTilesInArea:(PXMagazineRect *)a3
{
  var0 = a3->var1.var0;
  if (var0 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    if (a3->var1.var1 >= 1)
    {
      numberOfColumns = self->_numberOfColumns;
      v8 = &self->_table[a3->var0.var1 * numberOfColumns + a3->var0.var0 + v4];
      v9 = 8 * numberOfColumns;
      var1 = a3->var1.var1;
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

- (BOOL)_hasAnyTilesUsedInArea:(PXMagazineRect *)a3
{
  var0 = a3->var1.var0;
  if (var0 < 1)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    while (a3->var1.var1 < 1)
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
    v8 = &self->_table[a3->var0.var1 * numberOfColumns + a3->var0.var0 + v4];
    v9 = 8 * numberOfColumns;
    var1 = a3->var1.var1;
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

- (BOOL)nextEmptyTileX:(int64_t *)a3 Y:(int64_t *)a4 maxWidth:(int64_t *)a5
{
  if (a3)
  {
    v6 = a4 == 0;
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

  *a4 = 0;
  *a3 = 0;
  numberOfColumns = self->_numberOfColumns;
  table = self->_table;
  v10 = numberOfColumns * self->_maxRows;
  if (!v10)
  {
LABEL_12:
    v12 = 0;
    if (!a5)
    {
      return result;
    }

    goto LABEL_15;
  }

  v11 = 0;
  while (table[v11] != -1)
  {
    if (v10 == ++v11)
    {
      goto LABEL_12;
    }
  }

  *a4 = v11 / numberOfColumns;
  v12 = v11 % self->_numberOfColumns;
  *a3 = v12;
  if (a5)
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
      v15 = &table[v13 * *a4 + v12];
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

    *a5 = v16;
  }

  return result;
}

- (void)clearArea:(PXMagazineRect *)a3
{
  var1 = a3->var1;
  v4[0] = a3->var0;
  v4[1] = var1;
  [(PXMagazineGrid *)self setTileIdentifier:-1 forArea:v4];
}

- (void)setTileIdentifier:(unint64_t)a3 forArea:(PXMagazineRect *)a4
{
  if (a4->var1.var1 + a4->var0.var1 >= self->_maxRows)
  {
    [(PXMagazineGrid *)self enlargeTable];
  }

  var0 = a4->var1.var0;
  if (var0 >= 1)
  {
    v8 = 0;
    var1 = a4->var1.var1;
    do
    {
      if (var1 >= 1)
      {
        v10 = 0;
        table = self->_table;
        do
        {
          table[(v10 + a4->var0.var1) * self->_numberOfColumns + a4->var0.var0 + v8] = a3;
          ++v10;
          var1 = a4->var1.var1;
        }

        while (v10 < var1);
        var0 = a4->var1.var0;
      }

      ++v8;
    }

    while (v8 < var0);
  }
}

- (void)enlargeTable
{
  numberOfColumns = self->_numberOfColumns;
  table = self->_table;
  tableSizeInBytes = self->_tableSizeInBytes;
  v6 = self->_maxRows + 0x400 / (8 * numberOfColumns);
  v7 = 8 * numberOfColumns * v6 + 8 * numberOfColumns;
  self->_tableSizeInBytes = v7;
  self->_maxRows = v6;
  v8 = malloc_type_realloc(table, v7, 0x100004000313F17uLL);
  self->_table = v8;
  v9 = self->_tableSizeInBytes - tableSizeInBytes;
  v10 = v8 + tableSizeInBytes;

  memset(v10, 255, v9);
}

- (void)resetWithSize:(unint64_t)a3
{
  numberOfColumns = self->_numberOfColumns;
  maxRows = self->_maxRows;
  v6 = 16 * a3 / numberOfColumns;
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

- (void)setNumberOfColumns:(int64_t)a3
{
  if (self->_numberOfColumns != a3)
  {
    if (a3 <= 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PXMagazineGrid.m" lineNumber:46 description:@"We should have at least one column"];
    }

    self->_numberOfColumns = a3;
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
  v4.super_class = PXMagazineGrid;
  [(PXMagazineGrid *)&v4 dealloc];
}

- (PXMagazineGrid)initWithNumberOfColumns:(int64_t)a3 size:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = PXMagazineGrid;
  v7 = [(PXMagazineGrid *)&v10 init];
  if (v7)
  {
    if (a3 <= 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v7 file:@"PXMagazineGrid.m" lineNumber:27 description:@"We should have at least one column"];
    }

    v7->_numberOfColumns = a3;
    v7->_table = 0;
    [(PXMagazineGrid *)v7 resetWithSize:a4];
  }

  return v7;
}

@end