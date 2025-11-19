@interface OKAutoLayoutTileMaker
- (BOOL)_isQualifiedFrame:(CGRect)a3;
- (BOOL)_isQualifiedOneUpLayout:(id)a3;
- (OKAutoLayoutTileMaker)init;
- (id)convertTiles:(id)a3 toResolution:(unint64_t)a4 :(unint64_t)a5 borderInPx:(unint64_t)a6 offsetX:(unint64_t)a7 offsetY:(unint64_t)a8;
- (id)layoutsForFrames:(unint64_t)a3 inRect:(CGRect)a4 borderInPx:(unint64_t)a5;
- (void)_findNextFrameFromGrid:(id)a3 curIndex:(unint64_t)a4 maxIndex:(unint64_t)a5 curFrames:(id)a6 layouts:(id)a7;
- (void)_oneUpLayouts:(id)a3;
- (void)_prepare:(double)a3;
- (void)dealloc;
@end

@implementation OKAutoLayoutTileMaker

- (OKAutoLayoutTileMaker)init
{
  v3.receiver = self;
  v3.super_class = OKAutoLayoutTileMaker;
  result = [(OKAutoLayoutTileMaker *)&v3 init];
  if (result)
  {
    *&result->_rows = vdupq_n_s64(2uLL);
    result->_minFrameArea = 0.0;
    result->_oneUpWhitespaceAllowed = 0.0;
    result->_maxFrameAspectRatio = 100.0;
    result->_minFrameAspectRatio = 0.0;
  }

  return result;
}

- (void)dealloc
{
  tileTable = self->_tileTable;
  if (tileTable)
  {

    self->_tileTable = 0;
  }

  v4.receiver = self;
  v4.super_class = OKAutoLayoutTileMaker;
  [(OKAutoLayoutTileMaker *)&v4 dealloc];
}

- (void)_prepare:(double)a3
{
  self->_blockAspectRatio = self->_rows * a3 / self->_columns;
  tileTable = self->_tileTable;
  if (tileTable)
  {

    self->_tileTable = 0;
  }

  self->_tileTable = [[OKAutoLayoutGrid alloc] initWithRows:self->_rows columns:self->_columns];
}

- (BOOL)_isQualifiedOneUpLayout:(id)a3
{
  result = 0;
  if ([a3 count] == &dword_0 + 1)
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{0), "CGRectValue"}];
    rows = self->_rows;
    columns = self->_columns;
    if (1.0 - v7 * v8 / (columns * rows) <= self->_oneUpWhitespaceAllowed)
    {
      v11 = columns;
      v12 = rows;
      if (v8 == rows || v7 == v11)
      {
        if (v5 == 0.0 || ((v14 = v7 + v5 * 2.0, v15 = v7 + v5, v14 != v11) ? (v16 = v15 == v11) : (v16 = 1), v16))
        {
          if (v6 == 0.0)
          {
            return 1;
          }

          v17 = v8 + v6 * 2.0;
          v18 = v8 + v6;
          if (v17 == v12 && v18 != v12)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

- (BOOL)_isQualifiedFrame:(CGRect)a3
{
  result = 0;
  if (a3.size.width * a3.size.height / (self->_rows * self->_columns) >= self->_minFrameArea)
  {
    v3 = a3.size.width * self->_blockAspectRatio / a3.size.height;
    if (v3 <= self->_maxFrameAspectRatio && v3 >= self->_minFrameAspectRatio)
    {
      return 1;
    }
  }

  return result;
}

- (void)_oneUpLayouts:(id)a3
{
  v23 = [NSValue valueWithCGRect:0.0, 0.0, self->_columns, self->_rows];
  [a3 addObject:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v23, 1)}];
  oneUpWhitespaceAllowed = self->_oneUpWhitespaceAllowed;
  if (oneUpWhitespaceAllowed != 0.0)
  {
    v6 = oneUpWhitespaceAllowed / (1.0 / self->_columns);
    v7 = vcvtms_u32_f32(v6);
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      do
      {
        v9 = 0;
        do
        {
          v10 = (self->_columns - v7);
          rows = self->_rows;
          if ([(OKAutoLayoutTileMaker *)self _isQualifiedFrame:v9, 0.0, v10, rows])
          {
            v22 = [NSValue valueWithCGRect:v9, 0.0, v10, rows];
            v12 = [NSArray arrayWithObjects:&v22 count:1];
            if ([(OKAutoLayoutTileMaker *)self _isQualifiedOneUpLayout:v12])
            {
              [a3 addObject:v12];
            }
          }

          ++v9;
        }

        while (v8 != v9);
        v13 = v7-- <= 1;
      }

      while (!v13);
      oneUpWhitespaceAllowed = self->_oneUpWhitespaceAllowed;
    }

    v14 = oneUpWhitespaceAllowed / (1.0 / self->_rows);
    v15 = vcvtms_u32_f32(v14);
    if (v15 >= 1)
    {
      v16 = v15 + 1;
      do
      {
        v17 = 0;
        do
        {
          columns = self->_columns;
          v19 = (self->_rows - v15);
          if ([(OKAutoLayoutTileMaker *)self _isQualifiedFrame:0.0, v17, columns, v19])
          {
            v21 = [NSValue valueWithCGRect:0.0, v17, columns, v19];
            v20 = [NSArray arrayWithObjects:&v21 count:1];
            if ([(OKAutoLayoutTileMaker *)self _isQualifiedOneUpLayout:v20])
            {
              [a3 addObject:v20];
            }
          }

          ++v17;
        }

        while (v16 != v17);
        v13 = v15-- <= 1;
      }

      while (!v13);
    }
  }
}

- (void)_findNextFrameFromGrid:(id)a3 curIndex:(unint64_t)a4 maxIndex:(unint64_t)a5 curFrames:(id)a6 layouts:(id)a7
{
  *&v25 = a5;
  *(&v25 + 1) = a4;
  if (a4 <= a5)
  {
    if (v25 == 0)
    {

      [(OKAutoLayoutTileMaker *)self _oneUpLayouts:a7];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      if (a5)
      {
        v9 = a4 == a5;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      obj = [a3 nextPossibleRects:{v10, a7}];
      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v28 + 1) + 8 * i);
            [v15 CGRectValue];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;
            if ([(OKAutoLayoutTileMaker *)self _isQualifiedFrame:?])
            {
              [a3 mark:*(&v25 + 1) forAreaX:v17 Y:v19 W:v21 H:v23];
              [a6 addObject:v15];
              if (*(&v25 + 1) + 1 <= v25)
              {
                [OKAutoLayoutTileMaker _findNextFrameFromGrid:"_findNextFrameFromGrid:curIndex:maxIndex:curFrames:layouts:" curIndex:a3 maxIndex:? curFrames:? layouts:?];
              }

              else if (([a3 hasAnyEmptyTiles] & 1) == 0)
              {
                if ([a6 count])
                {
                  [v24 addObject:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", a6)}];
                }
              }

              [a6 removeLastObject];
              [a3 unmarkForAreaX:v17 Y:v19 W:v21 H:v23];
            }
          }

          v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v12);
      }
    }
  }
}

- (id)layoutsForFrames:(unint64_t)a3 inRect:(CGRect)a4 borderInPx:(unint64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  [(OKAutoLayoutTileMaker *)self _prepare:width / height];
  [(OKAutoLayoutTileMaker *)self _findNextFrameFromGrid:self->_tileTable curIndex:0 maxIndex:a3 - 1 curFrames:v13 layouts:v12];
  v14 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v12);
        }

        [v14 addObject:{-[OKAutoLayoutTileMaker convertTiles:toResolution::borderInPx:offsetX:offsetY:](self, "convertTiles:toResolution::borderInPx:offsetX:offsetY:", *(*(&v20 + 1) + 8 * i), width, height, a5, x, y)}];
      }

      v16 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  return v14;
}

- (id)convertTiles:(id)a3 toResolution:(unint64_t)a4 :(unint64_t)a5 borderInPx:(unint64_t)a6 offsetX:(unint64_t)a7 offsetY:(unint64_t)a8
{
  rows = self->_rows;
  columns = self->_columns;
  v16 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = [a3 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = a7;
    v20 = ((a4 - a6) / columns);
    v21 = (a6 >> 1);
    v22 = a8;
    v23 = ((a5 - a6) / rows);
    v24 = *v40;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v39 + 1) + 8 * i) CGRectValue];
        v30 = v19 + v29 * v20 + v21;
        v31 = v28 * v23;
        if (v29 + v27 == self->_columns)
        {
          v32 = a4 - v30 - v21;
        }

        else
        {
          v32 = v27 * v20;
        }

        v33 = v26 + v28;
        v34 = a5 - (v22 + v26 * v23 + v21) - v21;
        if (v33 != self->_rows)
        {
          v34 = v31;
        }

        v35 = v30;
        v36 = v22 + v26 * v23 + v21;
        v44 = CGRectInset(*(&v32 - 2), (a6 >> 1), (a6 >> 1));
        [v16 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v44.origin.x, v44.origin.y, v44.size.width, v44.size.height)}];
      }

      v18 = [a3 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v18);
  }

  return v16;
}

@end