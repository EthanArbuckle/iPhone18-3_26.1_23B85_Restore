@interface OKAutoLayoutGrid
- (BOOL)biggestEmptyRectFromPtX:(unint64_t)x Y:(unint64_t)y W:(unint64_t *)w H:(unint64_t *)h;
- (BOOL)hasAnyEmptyTiles;
- (BOOL)nextEmptyTile:(unint64_t *)tile :(unint64_t *)a4;
- (OKAutoLayoutGrid)initWithRows:(unint64_t)rows columns:(unint64_t)columns;
- (id)description;
- (id)nextPossibleRects:(BOOL)rects;
- (void)dealloc;
- (void)mark:(unint64_t)mark forAreaX:(unint64_t)x Y:(unint64_t)y W:(unint64_t)w H:(unint64_t)h;
@end

@implementation OKAutoLayoutGrid

- (OKAutoLayoutGrid)initWithRows:(unint64_t)rows columns:(unint64_t)columns
{
  v8.receiver = self;
  v8.super_class = OKAutoLayoutGrid;
  v6 = [(OKAutoLayoutGrid *)&v8 init];
  if (v6)
  {
    v6->_rows = rows;
    v6->_columns = columns;
    operator new[]();
  }

  return 0;
}

- (void)dealloc
{
  if (self->_tiles)
  {
    operator delete[]();
  }

  v2.receiver = self;
  v2.super_class = OKAutoLayoutGrid;
  [(OKAutoLayoutGrid *)&v2 dealloc];
}

- (id)description
{
  if (!(self->_rows * self->_columns))
  {
    return @"{";
  }

  v3 = 0;
  v4 = @"{";
  do
  {
    v4 = [(__CFString *)v4 stringByAppendingString:[NSString stringWithFormat:@" %ld, ", self->_tiles[v3++]]];
  }

  while (self->_rows * self->_columns > v3);
  return v4;
}

- (void)mark:(unint64_t)mark forAreaX:(unint64_t)x Y:(unint64_t)y W:(unint64_t)w H:(unint64_t)h
{
  if (w)
  {
    for (i = 0; i != w; ++i)
    {
      if (h)
      {
        v8 = &self->_tiles[i + x];
        yCopy = y;
        hCopy = h;
        do
        {
          v8[self->_columns * yCopy++] = mark;
          --hCopy;
        }

        while (hCopy);
      }
    }
  }
}

- (BOOL)hasAnyEmptyTiles
{
  columns = self->_columns;
  if (columns)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    while (!self->_rows)
    {
LABEL_7:
      ++v4;
      ++v3;
      v5 = v4 < columns;
      if (v4 == columns)
      {
        return 0;
      }
    }

    v6 = &self->_tiles[v3];
    rows = self->_rows;
    while (*v6 != -1)
    {
      v6 += columns;
      if (!--rows)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

- (BOOL)nextEmptyTile:(unint64_t *)tile :(unint64_t *)a4
{
  v4 = 0;
  if (tile && a4)
  {
    rows = self->_rows;
    if (rows)
    {
      v6 = 0;
      v7 = 0;
      columns = self->_columns;
      while (!columns)
      {
LABEL_9:
        v4 = 0;
        ++v7;
        v6 += columns;
        if (v7 == rows)
        {
          return v4;
        }
      }

      v9 = 0;
      while (self->_tiles[v6 + v9] != -1)
      {
        if (columns == ++v9)
        {
          goto LABEL_9;
        }
      }

      *tile = v9;
      *a4 = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (BOOL)biggestEmptyRectFromPtX:(unint64_t)x Y:(unint64_t)y W:(unint64_t *)w H:(unint64_t *)h
{
  v6 = 0;
  if (w && h)
  {
    columns = self->_columns;
    v8 = 0;
    v9 = columns - x;
    if (columns > x)
    {
      v10 = &self->_tiles[columns * y + x];
      while (v10[v8] == -1)
      {
        if (v9 == ++v8)
        {
          v8 = v9;
          break;
        }
      }
    }

    *w = v8;
    *h = self->_rows - y;
    return v8 != 0;
  }

  return v6;
}

- (id)nextPossibleRects:(BOOL)rects
{
  rectsCopy = rects;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v5 = 0;
  if ([(OKAutoLayoutGrid *)self nextEmptyTile:&v15])
  {
    [(OKAutoLayoutGrid *)self biggestEmptyRectFromPtX:v15 Y:v14 W:&v13 H:&v12];
    if (rectsCopy)
    {
      v16 = [NSValue valueWithCGRect:v15, v14, v13, v12];
      return [NSArray arrayWithObjects:&v16 count:1];
    }

    else
    {
      v5 = +[NSMutableArray array];
      v6 = v12;
      if (v12)
      {
        v7 = v13;
        v8 = 1;
        do
        {
          if (v7)
          {
            v9 = 0;
            do
            {
              [v5 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v15, v14, ++v9, v8)}];
              v7 = v13;
            }

            while (v9 < v13);
            v6 = v12;
          }
        }

        while (v8++ < v6);
      }
    }
  }

  return v5;
}

@end