@interface PXGridLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXGridLayoutGenerator)initWithMetrics:(id)metrics;
- (unint64_t)numberOfGeometriesWithKind:(int64_t)kind;
- (void)_getAdditionalGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range;
- (void)_getContentGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range;
- (void)_getHeaderGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range;
- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind;
- (void)getGeometry:(_PXLayoutGeometry *)geometry forItemAtIndex:(unint64_t)index;
@end

@implementation PXGridLayoutGenerator

- (void)getGeometry:(_PXLayoutGeometry *)geometry forItemAtIndex:(unint64_t)index
{
  metrics = [(PXLayoutGenerator *)self metrics];
  [metrics headerSize];
  v9 = v8;
  v11 = v10;
  [metrics headerSpacing];
  v13 = v12;
  v15 = v14;
  axis = [metrics axis];
  if (axis)
  {
    if (axis == 2)
    {
      numberOfItemsWide = self->_numberOfItemsWide;
      v19 = index / numberOfItemsWide;
      v18 = index % numberOfItemsWide;
      v15 = 0.0;
      v11 = 0.0;
      goto LABEL_8;
    }

    if (axis == 1)
    {
      v17 = self->_numberOfItemsWide;
      v18 = index / v17;
      v19 = index % v17;
      v13 = 0.0;
      v9 = 0.0;
      goto LABEL_8;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:303 description:@"axis == PXAxisUndefined"];
  }

  v18 = 0;
  v19 = 0;
LABEL_8:
  [metrics itemSize];
  v23 = v22;
  v25 = v24;
  [metrics interItemSpacing];
  v27 = v26;
  v29 = v28;
  [metrics contentInsets];
  v30 = *(MEMORY[0x1E695EFF8] + 8);
  v32 = *MEMORY[0x1E695EFF8] + v31 + v13 + v9 + v19 * (v23 + v27);
  geometry->var2.width = v23;
  geometry->var2.height = v25;
  geometry->var0 = index;
  geometry->var1.x = v32 + v23 * 0.5;
  geometry->var1.y = v30 + v33 + v15 + v11 + v18 * (v25 + v29) + v25 * 0.5;
  v34 = MEMORY[0x1E695EFD0];
  v35 = *(MEMORY[0x1E695EFD0] + 16);
  *&geometry->var3.a = *MEMORY[0x1E695EFD0];
  *&geometry->var3.c = v35;
  *&geometry->var3.tx = *(v34 + 32);
  geometry->var4 = 0.0;
}

- (void)_getAdditionalGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  itemCount = [(PXLayoutGenerator *)self itemCount];
  metrics = [(PXLayoutGenerator *)self metrics];
  additionalTileCount = [metrics additionalTileCount];
  [metrics referenceSize];
  if (v11 <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"[metrics referenceSize].width > 0"}];
  }

  v12 = length + location - 1;
  if ((v12 & 0x8000000000000000) != 0 || v12 >= additionalTileCount)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v19.location = location;
    v19.length = length;
    v16 = NSStringFromRange(v19);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:265 description:{@"range %@ out of bounds %lu", v16, additionalTileCount}];
  }

  if (location <= v12)
  {
    v13 = &geometries[location];
    do
    {
      [(PXGridLayoutGenerator *)self getGeometry:v13 forItemAtIndex:itemCount + location];
      v13->var5 = 1;
      ++location;
      ++v13;
    }

    while (location <= v12);
  }
}

- (void)_getHeaderGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range
{
  if (range.length != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"range.length == 1"}];
  }

  metrics = [(PXLayoutGenerator *)self metrics];
  [metrics headerSize];
  v34 = v8;
  v35 = v7;
  [metrics contentInsets];
  v10 = v9;
  v32 = v12;
  v33 = v11;
  v14 = v13;
  [metrics referenceSize];
  v16 = v15;
  v18 = v17;
  axis = [metrics axis];
  v21 = *MEMORY[0x1E695F058];
  v20 = *(MEMORY[0x1E695F058] + 8);
  v22 = *(MEMORY[0x1E695F058] + 16);
  v23 = *(MEMORY[0x1E695F058] + 24);
  if (axis)
  {
    v24 = v16 - (v33 + v14);
    if (axis != 1)
    {
      v24 = *(MEMORY[0x1E695F058] + 16);
    }

    v25 = v34;
    if (axis == 1)
    {
      v26 = v10;
    }

    else
    {
      v25 = *(MEMORY[0x1E695F058] + 24);
      v26 = *(MEMORY[0x1E695F058] + 8);
    }

    if (axis == 1)
    {
      v27 = v14;
    }

    else
    {
      v27 = *MEMORY[0x1E695F058];
    }

    if (axis == 2)
    {
      v22 = v35;
    }

    else
    {
      v22 = v24;
    }

    if (axis == 2)
    {
      v23 = v18 - (v10 + v32);
    }

    else
    {
      v23 = v25;
    }

    if (axis == 2)
    {
      v20 = v10;
    }

    else
    {
      v20 = v26;
    }

    if (axis == 2)
    {
      v21 = v14;
    }

    else
    {
      v21 = v27;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:244 description:@"axis == PXAxisUndefined"];
  }

  geometries->var2.width = v22;
  geometries->var2.height = v23;
  geometries->var0 = 0;
  geometries->var1.x = v21 + v22 * 0.5;
  geometries->var1.y = v20 + v23 * 0.5;
  v29 = MEMORY[0x1E695EFD0];
  v30 = *(MEMORY[0x1E695EFD0] + 16);
  *&geometries->var3.a = *MEMORY[0x1E695EFD0];
  *&geometries->var3.c = v30;
  *&geometries->var3.tx = *(v29 + 32);
  geometries->var4 = 0.0;
  geometries->var5 = 2;
}

- (void)_getContentGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  itemCount = [(PXLayoutGenerator *)self itemCount];
  metrics = [(PXLayoutGenerator *)self metrics];
  [metrics referenceSize];
  if (v10 <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"[metrics referenceSize].width > 0"}];

    if (itemCount)
    {
      goto LABEL_3;
    }

LABEL_12:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"itemCount > 0"}];

    goto LABEL_3;
  }

  if (!itemCount)
  {
    goto LABEL_12;
  }

LABEL_3:
  v11 = length + location - 1;
  if ((v11 & 0x8000000000000000) != 0 || v11 >= itemCount)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v19.location = location;
    v19.length = length;
    v16 = NSStringFromRange(v19);
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:216 description:{@"range %@ out of bounds %lu", v16, itemCount}];
  }

  if (location <= v11)
  {
    v12 = &geometries[location];
    do
    {
      [(PXGridLayoutGenerator *)self getGeometry:v12 forItemAtIndex:location];
      v12->var5 = 0;
      ++location;
      ++v12;
    }

    while (location <= v11);
  }
}

- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind
{
  if (range.length)
  {
    if (kind > 1)
    {
      if (kind == 2)
      {

        [(PXGridLayoutGenerator *)self _getHeaderGeometries:geometries inRange:range.location];
      }

      else if (kind == 3)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:205 description:@"Footer tiles not supported"];
      }
    }

    else if (kind)
    {
      if (kind == 1)
      {

        [(PXGridLayoutGenerator *)self _getAdditionalGeometries:geometries inRange:range.location];
      }
    }

    else
    {

      [(PXGridLayoutGenerator *)self _getContentGeometries:geometries inRange:range.location];
    }
  }
}

- (CGSize)size
{
  metrics = [(PXLayoutGenerator *)self metrics];
  v6 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  [metrics itemSize];
  v39 = v8;
  v40 = v7;
  [metrics interItemSpacing];
  v10 = v9;
  v12 = v11;
  [metrics contentInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  axis = [metrics axis];
  itemCount = [(PXLayoutGenerator *)self itemCount];
  metrics2 = [(PXLayoutGenerator *)self metrics];
  additionalTileCount = [metrics2 additionalTileCount];

  if (axis)
  {
    v25 = additionalTileCount + itemCount;
    if (axis == 2)
    {
      numberOfItemsWide = self->_numberOfItemsWide;
      [metrics referenceSize];
      v5 = v32;
      if (numberOfItemsWide >= 1)
      {
        v6 = v20 + v16 - (v10 - ceil(v25 / numberOfItemsWide) * (v40 + v10));
      }

      [metrics headerSize];
      v34 = v33;
      [metrics footerSize];
      v6 = v6 + v34 + v35;
    }

    else if (axis == 1)
    {
      v26 = ceil(v25 / self->_numberOfItemsWide);
      [metrics referenceSize];
      v6 = v27;
      if (v26 > 0.0)
      {
        v5 = v18 + v14 - (v12 - v26 * (v39 + v12));
      }

      [metrics headerSize];
      v29 = v28;
      [metrics footerSize];
      v5 = v5 + v29 + v30;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:175 description:@"axis == PXAxisUndefined"];
  }

  v37 = v6;
  v38 = v5;
  result.height = v38;
  result.width = v37;
  return result;
}

- (CGSize)estimatedSize
{
  metrics = [(PXLayoutGenerator *)self metrics];
  v5 = *MEMORY[0x1E695F060];
  v38 = *(MEMORY[0x1E695F060] + 8);
  [metrics itemSize];
  v7 = v6;
  v37 = v8;
  [metrics interItemSpacing];
  v10 = v9;
  v12 = v11;
  [metrics contentInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  axis = [metrics axis];
  if (axis)
  {
    if (axis == 2)
    {
      [metrics referenceSize];
      v28 = v27;
      v29 = v20 + v16 - (v10 - (v7 + v10) * 3.0);
      [metrics headerSize];
      v31 = v30;
      [metrics footerSize];
      v33 = v31 + v32;
      v22 = v28;
      v5 = v29 + v33;
    }

    else
    {
      v22 = v38;
      if (axis == 1)
      {
        [metrics referenceSize];
        v5 = v23;
        [metrics headerSize];
        v25 = v24;
        [metrics footerSize];
        v22 = v18 + v14 - (v12 - (v37 + v12) * 3.0) + v25 + v26;
      }
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:131 description:@"axis == PXAxisUndefined"];

    v22 = v38;
  }

  v35 = v5;
  v36 = v22;
  result.height = v36;
  result.width = v35;
  return result;
}

- (unint64_t)numberOfGeometriesWithKind:(int64_t)kind
{
  displaysHeaderTile = 0;
  if (kind > 1)
  {
    if (kind == 2)
    {
      metrics = [(PXLayoutGenerator *)self metrics];
      displaysHeaderTile = [metrics displaysHeaderTile];
      goto LABEL_10;
    }

    if (kind == 3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:101 description:@"Footer tiles not supported"];

      return 0;
    }
  }

  else if (kind)
  {
    if (kind == 1)
    {
      metrics = [(PXLayoutGenerator *)self metrics];
      displaysHeaderTile = [metrics additionalTileCount];
LABEL_10:
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXGridLayoutGenerator;
    return [(PXLayoutGenerator *)&v9 numberOfGeometriesWithKind:?];
  }

  return displaysHeaderTile;
}

- (PXGridLayoutGenerator)initWithMetrics:(id)metrics
{
  v34.receiver = self;
  v34.super_class = PXGridLayoutGenerator;
  v3 = [(PXLayoutGenerator *)&v34 initWithMetrics:metrics];
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  metrics = [(PXLayoutGenerator *)v3 metrics];
  [metrics contentInsets];
  v7 = v6;
  v33 = v8;
  v10 = v9;
  v12 = v11;
  [metrics itemSize];
  v32 = v13;
  v15 = v14;
  [metrics interItemSpacing];
  v17 = v16;
  v19 = v18;
  [metrics referenceSize];
  v21 = v20;
  v23 = v22;
  axis = [metrics axis];
  if (axis == 2)
  {
    v25 = v19 + v23 - (v7 + v10) + 0.00000999999975;
    v26 = v15 + v19;
  }

  else
  {
    if (axis != 1)
    {
      v27 = 1;
      goto LABEL_8;
    }

    v25 = v17 + v21 - (v33 + v12) + 0.00000999999975;
    v26 = v32 + v17;
  }

  v27 = vcvtmd_s64_f64(v25 / v26);
LABEL_8:
  v4->_numberOfItemsWide = v27;
  v28 = [MEMORY[0x1E696AD50] indexSetWithIndex:0];
  if ([metrics displaysHeaderTile])
  {
    [v28 addIndex:2];
  }

  if ([metrics additionalTileCount])
  {
    [v28 addIndex:1];
  }

  v29 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexSet:v28];
  geometrySet = v4->_geometrySet;
  v4->_geometrySet = v29;

  return v4;
}

@end