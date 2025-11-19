@interface PXFaceTileImageCombinerContext
- (PXFaceTileImageCombinerContext)initWithDisplayScale:(double)a3 isRTL:(BOOL)a4 isAscending:(BOOL)a5 imageSize:(double)a6 imageOffset:(double)a7 backgroundColor:(id)a8 borderColor:(id)a9 borderWidth:(double)a10;
@end

@implementation PXFaceTileImageCombinerContext

- (PXFaceTileImageCombinerContext)initWithDisplayScale:(double)a3 isRTL:(BOOL)a4 isAscending:(BOOL)a5 imageSize:(double)a6 imageOffset:(double)a7 backgroundColor:(id)a8 borderColor:(id)a9 borderWidth:(double)a10
{
  v20 = a8;
  v21 = a9;
  if (a3 <= 0.0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0"}];
  }

  if (a6 <= 0.0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"imageSize > 0"}];
  }

  if (a7 > 0.0)
  {
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_16:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"backgroundColor"}];

    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"imageOffset > 0"}];

  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_17:
  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"borderColor"}];

LABEL_8:
  if (a10 <= 0.0)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"borderWidth > 0"}];
  }

  if (a7 <= a10)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"imageOffset > borderWidth"}];
  }

  v32.receiver = self;
  v32.super_class = PXFaceTileImageCombinerContext;
  v22 = [(PXFaceTileImageCombinerContext *)&v32 init];
  v23 = v22;
  if (v22)
  {
    v22->_isRTL = a4;
    v22->_isAscending = a5;
    v22->_displayScale = a3;
    v22->_imageSize = a6;
    v22->_imageOffset = a7;
    objc_storeStrong(&v22->_backgroundColor, a8);
    objc_storeStrong(&v23->_borderColor, a9);
    v23->_borderWidth = a10;
  }

  return v23;
}

@end