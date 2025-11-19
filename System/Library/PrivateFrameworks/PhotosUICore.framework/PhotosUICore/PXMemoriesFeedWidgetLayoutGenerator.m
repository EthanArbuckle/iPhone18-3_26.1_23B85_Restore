@interface PXMemoriesFeedWidgetLayoutGenerator
- (CGSize)size;
- (PXMemoriesFeedWidgetLayoutGenerator)initWithMetrics:(id)a3;
- (id)geometryKinds;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
@end

@implementation PXMemoriesFeedWidgetLayoutGenerator

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  length = a4.length;
  location = a4.location;
  if (a5)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedWidgetLayoutGenerator.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"PXMemoriesFeedLayoutItemKindContent == kind"}];
  }

  if (location < location + length && location < [(PXMemoriesFeedWidgetLayoutGenerator *)self numberOfGeometriesWithKind:a5])
  {
    top = self->_context.contentInsets.top;
    left = self->_context.contentInsets.left;
    width = self->_context.itemSize.width;
    height = self->_context.itemSize.height;
    v14 = self->_context.interitemSpacing.width;
    v13 = self->_context.interitemSpacing.height;
    layoutAxis = self->_context.layoutAxis;
    switch(layoutAxis)
    {
      case 1:
        numberOfColumns = self->_context.numberOfColumns;
        v17 = location / numberOfColumns;
        v16 = location % numberOfColumns;
        break;
      case 2:
        numberOfRows = self->_context.numberOfRows;
        v16 = location / numberOfRows;
        v17 = location % numberOfRows;
        break;
      case 0:
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _ItemRectForItemAtIndex(NSUInteger, _LayoutContext)"}];
        [v24 handleFailureInFunction:v25 file:@"PXMemoriesFeedWidgetLayoutGenerator.m" lineNumber:152 description:@"Can't determine rect for unknown axis"];

        abort();
      default:
        v16 = 0;
        v17 = 0;
        break;
    }

    v20 = left + v16 * (width + v14);
    v21 = top + v17 * (height + v13);
    CGRectIntegral(*(&width - 2));
    PXRectGetCenter();
  }
}

- (id)geometryKinds
{
  if (geometryKinds_onceToken != -1)
  {
    dispatch_once(&geometryKinds_onceToken, &__block_literal_global_181310);
  }

  v3 = geometryKinds_kinds;

  return v3;
}

void __52__PXMemoriesFeedWidgetLayoutGenerator_geometryKinds__block_invoke()
{
  v0 = [MEMORY[0x1E696AD50] indexSetWithIndex:0];
  v1 = geometryKinds_kinds;
  geometryKinds_kinds = v0;
}

- (CGSize)size
{
  width = self->_context.size.width;
  height = self->_context.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXMemoriesFeedWidgetLayoutGenerator)initWithMetrics:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedWidgetLayoutGenerator.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[metrics isKindOfClass:[PXMemoriesFeedWidgetLayoutMetrics class]]"}];
  }

  v41.receiver = self;
  v41.super_class = PXMemoriesFeedWidgetLayoutGenerator;
  v6 = [(PXMemoriesFeedLayoutGenerator *)&v41 initWithMetrics:v5];
  v7 = v6;
  if (v6)
  {
    p_context = &v6->_context;
    v9 = v5;
    [v9 contentInsets];
    v11 = v10;
    v13 = v12;
    [v9 interitemSpacing];
    v15 = v14;
    v17 = v16;
    v18 = [v9 numberOfColumns];
    v19 = [v9 numberOfRows];
    v20 = [v9 layoutAxis];
    [v9 referenceSize];
    v22 = v21;
    v24 = v23;

    v25 = *MEMORY[0x1E695F060];
    v26 = *(MEMORY[0x1E695F060] + 8);
    if (v24 == v26 && v22 == v25 || v18 == 0)
    {
      v18 = 0;
      v19 = 0;
      v20 = 1;
      v36 = *off_1E7721FA8;
      v37 = *(off_1E7721FA8 + 1);
      v15 = *MEMORY[0x1E695F060];
      v17 = *(MEMORY[0x1E695F060] + 8);
      v22 = *MEMORY[0x1E695F060];
      v38 = v17;
    }

    else
    {
      v29 = v15 * (v18 - 1);
      v25 = floor((v22 - (v11 + v13) - v29) / v18);
      v30 = (v19 - 1);
      v31.f64[0] = v24 - v25 * v19 - v17 * v30;
      v31.f64[1] = v22 - (v29 + v18 * v25);
      __asm { FMOV            V1.2D, #0.5 }

      v36 = vrndmq_f64(vmulq_f64(v31, _Q1));
      v37 = vsubq_f64(v31, v36);
      v38 = v37.f64[0] + v36.f64[0] + v19 * v25 + v30 * v17;
      v26 = v25;
    }

    *p_context = v36;
    *&v7->_context.contentInsets.bottom = v37;
    v7->_context.itemSize.width = v25;
    v7->_context.itemSize.height = v26;
    v7->_context.interitemSpacing.width = v15;
    v7->_context.interitemSpacing.height = v17;
    v7->_context.size.width = v22;
    v7->_context.size.height = v38;
    v7->_context.numberOfColumns = v18;
    v7->_context.numberOfRows = v19;
    v7->_context.layoutAxis = v20;
  }

  return v7;
}

@end