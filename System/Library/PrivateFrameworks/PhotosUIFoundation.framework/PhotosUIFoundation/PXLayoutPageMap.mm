@interface PXLayoutPageMap
- (PXLayoutPageMap)initWithSources:(id)sources contentRect:(CGRect)rect;
- (id)_screenPageForPoint:(CGPoint)point;
- (id)description;
- (id)sourcesFromRect:(CGRect)rect;
- (void)_mapSources:(id)sources;
@end

@implementation PXLayoutPageMap

- (void)_mapSources:(id)sources
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__PXLayoutPageMap__mapSources___block_invoke;
  v3[3] = &unk_1E7BB83B0;
  v3[4] = self;
  [sources enumerateObjectsUsingBlock:v3];
}

void __31__PXLayoutPageMap__mapSources___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  [v16 frame];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  for (i = CGRectGetMinX(v18); ; i = i + 1024.0)
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v20.origin.y = floor(CGRectGetMinY(v19) * 0.0009765625) * 1024.0;
    v20.origin.x = floor(i * 0.0009765625) * 1024.0;
    v20.size.width = 1024.0;
    v20.size.height = 1024.0;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    if (!CGRectIntersectsRect(v20, v27))
    {
      break;
    }

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    for (j = CGRectGetMinY(v21); ; j = j + 1024.0)
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v23.origin.x = floor(CGRectGetMinX(v22) * 0.0009765625) * 1024.0;
      v23.origin.y = floor(j * 0.0009765625) * 1024.0;
      v23.size.width = 1024.0;
      v23.size.height = 1024.0;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      if (!CGRectIntersectsRect(v23, v28))
      {
        break;
      }

      v11 = [*(a1 + 32) _screenPageForPoint:{i, j}];
      [v11 addIndex:a3];
    }

    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v12 = [*(a1 + 32) _screenPageForPoint:{i, CGRectGetMaxY(v24) + -1.0}];
    [v12 addIndex:a3];
  }

  v13 = *(a1 + 32);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v14 = CGRectGetMaxX(v25) + -1.0;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v15 = [v13 _screenPageForPoint:{v14, CGRectGetMaxY(v26) + -1.0}];
  [v15 addIndex:a3];
}

- (id)sourcesFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsNull(rect))
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    for (i = y; ; i = v26 + 1024.0)
    {
      v26 = i;
      v11 = (i * 0.0009765625);
      v12 = x;
      do
      {
        v13 = [(NSMapTable *)self->_pageMap objectForKey:~(v11 | ((v12 * 0.0009765625) << 16)), *&v26];
        [v9 addIndexes:v13];
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v14 = x;
        MaxX = CGRectGetMaxX(v28);

        v16 = v12 <= MaxX;
        x = v14;
        v12 = v12 + 1024.0;
      }

      while (v16);
      v29.origin.x = v14;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      if (v26 > CGRectGetMaxY(v29))
      {
        break;
      }
    }

    array = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    firstIndex = [v9 firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = firstIndex;
      do
      {
        v19 = [(NSArray *)self->_sources objectAtIndexedSubscript:v18];
        v20 = v19;
        if (v19)
        {
          [v19 frame];
          v31.origin.x = v21;
          v31.origin.y = v22;
          v31.size.width = v23;
          v31.size.height = v24;
          v30.origin.x = v14;
          v30.origin.y = y;
          v30.size.width = width;
          v30.size.height = height;
          if (CGRectIntersectsRect(v30, v31))
          {
            [array addObject:v20];
          }
        }

        v18 = [v9 indexGreaterThanIndex:v18];
      }

      while (v18 != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  return array;
}

- (id)_screenPageForPoint:(CGPoint)point
{
  v4 = point.x * 0.0009765625;
  v10.size.width = 1024.0;
  v10.origin.x = floor(point.x * 0.0009765625) * 1024.0;
  v5 = point.y * 0.0009765625;
  v10.origin.y = floor(point.y * 0.0009765625) * 1024.0;
  v10.size.height = 1024.0;
  if (CGRectIntersectsRect(v10, self->_contentRect))
  {
    v6 = v5 | (v4 << 16);
    v7 = [(NSMapTable *)self->_pageMap objectForKey:~v6];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [(NSMapTable *)self->_pageMap setObject:v7 forKey:~v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PXLayoutPageMap;
  v3 = [(PXLayoutPageMap *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"pageMap:%@", self->_pageMap];

  return v4;
}

- (PXLayoutPageMap)initWithSources:(id)sources contentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sourcesCopy = sources;
  v18.receiver = self;
  v18.super_class = PXLayoutPageMap;
  v10 = [(PXLayoutPageMap *)&v18 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:1282];
    v12 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v13 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v11 valuePointerFunctions:v12 capacity:0];
    pageMap = v10->_pageMap;
    v10->_pageMap = v13;

    v10->_contentRect.origin.x = x;
    v10->_contentRect.origin.y = y;
    v10->_contentRect.size.width = width;
    v10->_contentRect.size.height = height;
    v15 = [sourcesCopy copy];
    sources = v10->_sources;
    v10->_sources = v15;

    [(PXLayoutPageMap *)v10 _mapSources:v10->_sources];
  }

  return v10;
}

@end