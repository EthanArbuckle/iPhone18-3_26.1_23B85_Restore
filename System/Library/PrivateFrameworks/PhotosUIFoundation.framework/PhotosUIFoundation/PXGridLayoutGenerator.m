@interface PXGridLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXGridLayoutGenerator)initWithMetrics:(id)a3;
- (unint64_t)numberOfGeometriesWithKind:(int64_t)a3;
- (void)_getAdditionalGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4;
- (void)_getContentGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4;
- (void)_getHeaderGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
- (void)getGeometry:(_PXLayoutGeometry *)a3 forItemAtIndex:(unint64_t)a4;
@end

@implementation PXGridLayoutGenerator

- (void)getGeometry:(_PXLayoutGeometry *)a3 forItemAtIndex:(unint64_t)a4
{
  v36 = [(PXLayoutGenerator *)self metrics];
  [v36 headerSize];
  v9 = v8;
  v11 = v10;
  [v36 headerSpacing];
  v13 = v12;
  v15 = v14;
  v16 = [v36 axis];
  if (v16)
  {
    if (v16 == 2)
    {
      numberOfItemsWide = self->_numberOfItemsWide;
      v19 = a4 / numberOfItemsWide;
      v18 = a4 % numberOfItemsWide;
      v15 = 0.0;
      v11 = 0.0;
      goto LABEL_8;
    }

    if (v16 == 1)
    {
      v17 = self->_numberOfItemsWide;
      v18 = a4 / v17;
      v19 = a4 % v17;
      v13 = 0.0;
      v9 = 0.0;
      goto LABEL_8;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:303 description:@"axis == PXAxisUndefined"];
  }

  v18 = 0;
  v19 = 0;
LABEL_8:
  [v36 itemSize];
  v23 = v22;
  v25 = v24;
  [v36 interItemSpacing];
  v27 = v26;
  v29 = v28;
  [v36 contentInsets];
  v30 = *(MEMORY[0x1E695EFF8] + 8);
  v32 = *MEMORY[0x1E695EFF8] + v31 + v13 + v9 + v19 * (v23 + v27);
  a3->var2.width = v23;
  a3->var2.height = v25;
  a3->var0 = a4;
  a3->var1.x = v32 + v23 * 0.5;
  a3->var1.y = v30 + v33 + v15 + v11 + v18 * (v25 + v29) + v25 * 0.5;
  v34 = MEMORY[0x1E695EFD0];
  v35 = *(MEMORY[0x1E695EFD0] + 16);
  *&a3->var3.a = *MEMORY[0x1E695EFD0];
  *&a3->var3.c = v35;
  *&a3->var3.tx = *(v34 + 32);
  a3->var4 = 0.0;
}

- (void)_getAdditionalGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = [(PXLayoutGenerator *)self itemCount];
  v17 = [(PXLayoutGenerator *)self metrics];
  v10 = [v17 additionalTileCount];
  [v17 referenceSize];
  if (v11 <= 0.0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"[metrics referenceSize].width > 0"}];
  }

  v12 = length + location - 1;
  if ((v12 & 0x8000000000000000) != 0 || v12 >= v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v19.location = location;
    v19.length = length;
    v16 = NSStringFromRange(v19);
    [v15 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:265 description:{@"range %@ out of bounds %lu", v16, v10}];
  }

  if (location <= v12)
  {
    v13 = &a3[location];
    do
    {
      [(PXGridLayoutGenerator *)self getGeometry:v13 forItemAtIndex:v9 + location];
      v13->var5 = 1;
      ++location;
      ++v13;
    }

    while (location <= v12);
  }
}

- (void)_getHeaderGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4
{
  if (a4.length != 1)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"range.length == 1"}];
  }

  v36 = [(PXLayoutGenerator *)self metrics];
  [v36 headerSize];
  v34 = v8;
  v35 = v7;
  [v36 contentInsets];
  v10 = v9;
  v32 = v12;
  v33 = v11;
  v14 = v13;
  [v36 referenceSize];
  v16 = v15;
  v18 = v17;
  v19 = [v36 axis];
  v21 = *MEMORY[0x1E695F058];
  v20 = *(MEMORY[0x1E695F058] + 8);
  v22 = *(MEMORY[0x1E695F058] + 16);
  v23 = *(MEMORY[0x1E695F058] + 24);
  if (v19)
  {
    v24 = v16 - (v33 + v14);
    if (v19 != 1)
    {
      v24 = *(MEMORY[0x1E695F058] + 16);
    }

    v25 = v34;
    if (v19 == 1)
    {
      v26 = v10;
    }

    else
    {
      v25 = *(MEMORY[0x1E695F058] + 24);
      v26 = *(MEMORY[0x1E695F058] + 8);
    }

    if (v19 == 1)
    {
      v27 = v14;
    }

    else
    {
      v27 = *MEMORY[0x1E695F058];
    }

    if (v19 == 2)
    {
      v22 = v35;
    }

    else
    {
      v22 = v24;
    }

    if (v19 == 2)
    {
      v23 = v18 - (v10 + v32);
    }

    else
    {
      v23 = v25;
    }

    if (v19 == 2)
    {
      v20 = v10;
    }

    else
    {
      v20 = v26;
    }

    if (v19 == 2)
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
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:244 description:@"axis == PXAxisUndefined"];
  }

  a3->var2.width = v22;
  a3->var2.height = v23;
  a3->var0 = 0;
  a3->var1.x = v21 + v22 * 0.5;
  a3->var1.y = v20 + v23 * 0.5;
  v29 = MEMORY[0x1E695EFD0];
  v30 = *(MEMORY[0x1E695EFD0] + 16);
  *&a3->var3.a = *MEMORY[0x1E695EFD0];
  *&a3->var3.c = v30;
  *&a3->var3.tx = *(v29 + 32);
  a3->var4 = 0.0;
  a3->var5 = 2;
}

- (void)_getContentGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = [(PXLayoutGenerator *)self itemCount];
  v17 = [(PXLayoutGenerator *)self metrics];
  [v17 referenceSize];
  if (v10 <= 0.0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"[metrics referenceSize].width > 0"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_12:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"itemCount > 0"}];

    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_3:
  v11 = length + location - 1;
  if ((v11 & 0x8000000000000000) != 0 || v11 >= v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v19.location = location;
    v19.length = length;
    v16 = NSStringFromRange(v19);
    [v15 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:216 description:{@"range %@ out of bounds %lu", v16, v9}];
  }

  if (location <= v11)
  {
    v12 = &a3[location];
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

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  if (a4.length)
  {
    if (a5 > 1)
    {
      if (a5 == 2)
      {

        [(PXGridLayoutGenerator *)self _getHeaderGeometries:a3 inRange:a4.location];
      }

      else if (a5 == 3)
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:205 description:@"Footer tiles not supported"];
      }
    }

    else if (a5)
    {
      if (a5 == 1)
      {

        [(PXGridLayoutGenerator *)self _getAdditionalGeometries:a3 inRange:a4.location];
      }
    }

    else
    {

      [(PXGridLayoutGenerator *)self _getContentGeometries:a3 inRange:a4.location];
    }
  }
}

- (CGSize)size
{
  v4 = [(PXLayoutGenerator *)self metrics];
  v6 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  [v4 itemSize];
  v39 = v8;
  v40 = v7;
  [v4 interItemSpacing];
  v10 = v9;
  v12 = v11;
  [v4 contentInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v4 axis];
  v22 = [(PXLayoutGenerator *)self itemCount];
  v23 = [(PXLayoutGenerator *)self metrics];
  v24 = [v23 additionalTileCount];

  if (v21)
  {
    v25 = v24 + v22;
    if (v21 == 2)
    {
      numberOfItemsWide = self->_numberOfItemsWide;
      [v4 referenceSize];
      v5 = v32;
      if (numberOfItemsWide >= 1)
      {
        v6 = v20 + v16 - (v10 - ceil(v25 / numberOfItemsWide) * (v40 + v10));
      }

      [v4 headerSize];
      v34 = v33;
      [v4 footerSize];
      v6 = v6 + v34 + v35;
    }

    else if (v21 == 1)
    {
      v26 = ceil(v25 / self->_numberOfItemsWide);
      [v4 referenceSize];
      v6 = v27;
      if (v26 > 0.0)
      {
        v5 = v18 + v14 - (v12 - v26 * (v39 + v12));
      }

      [v4 headerSize];
      v29 = v28;
      [v4 footerSize];
      v5 = v5 + v29 + v30;
    }
  }

  else
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:175 description:@"axis == PXAxisUndefined"];
  }

  v37 = v6;
  v38 = v5;
  result.height = v38;
  result.width = v37;
  return result;
}

- (CGSize)estimatedSize
{
  v4 = [(PXLayoutGenerator *)self metrics];
  v5 = *MEMORY[0x1E695F060];
  v38 = *(MEMORY[0x1E695F060] + 8);
  [v4 itemSize];
  v7 = v6;
  v37 = v8;
  [v4 interItemSpacing];
  v10 = v9;
  v12 = v11;
  [v4 contentInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v4 axis];
  if (v21)
  {
    if (v21 == 2)
    {
      [v4 referenceSize];
      v28 = v27;
      v29 = v20 + v16 - (v10 - (v7 + v10) * 3.0);
      [v4 headerSize];
      v31 = v30;
      [v4 footerSize];
      v33 = v31 + v32;
      v22 = v28;
      v5 = v29 + v33;
    }

    else
    {
      v22 = v38;
      if (v21 == 1)
      {
        [v4 referenceSize];
        v5 = v23;
        [v4 headerSize];
        v25 = v24;
        [v4 footerSize];
        v22 = v18 + v14 - (v12 - (v37 + v12) * 3.0) + v25 + v26;
      }
    }
  }

  else
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:131 description:@"axis == PXAxisUndefined"];

    v22 = v38;
  }

  v35 = v5;
  v36 = v22;
  result.height = v36;
  result.width = v35;
  return result;
}

- (unint64_t)numberOfGeometriesWithKind:(int64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v5 = [(PXLayoutGenerator *)self metrics];
      v4 = [v5 displaysHeaderTile];
      goto LABEL_10;
    }

    if (a3 == 3)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PXGridLayoutGenerator.m" lineNumber:101 description:@"Footer tiles not supported"];

      return 0;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v5 = [(PXLayoutGenerator *)self metrics];
      v4 = [v5 additionalTileCount];
LABEL_10:
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXGridLayoutGenerator;
    return [(PXLayoutGenerator *)&v9 numberOfGeometriesWithKind:?];
  }

  return v4;
}

- (PXGridLayoutGenerator)initWithMetrics:(id)a3
{
  v34.receiver = self;
  v34.super_class = PXGridLayoutGenerator;
  v3 = [(PXLayoutGenerator *)&v34 initWithMetrics:a3];
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  v5 = [(PXLayoutGenerator *)v3 metrics];
  [v5 contentInsets];
  v7 = v6;
  v33 = v8;
  v10 = v9;
  v12 = v11;
  [v5 itemSize];
  v32 = v13;
  v15 = v14;
  [v5 interItemSpacing];
  v17 = v16;
  v19 = v18;
  [v5 referenceSize];
  v21 = v20;
  v23 = v22;
  v24 = [v5 axis];
  if (v24 == 2)
  {
    v25 = v19 + v23 - (v7 + v10) + 0.00000999999975;
    v26 = v15 + v19;
  }

  else
  {
    if (v24 != 1)
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
  if ([v5 displaysHeaderTile])
  {
    [v28 addIndex:2];
  }

  if ([v5 additionalTileCount])
  {
    [v28 addIndex:1];
  }

  v29 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexSet:v28];
  geometrySet = v4->_geometrySet;
  v4->_geometrySet = v29;

  return v4;
}

@end