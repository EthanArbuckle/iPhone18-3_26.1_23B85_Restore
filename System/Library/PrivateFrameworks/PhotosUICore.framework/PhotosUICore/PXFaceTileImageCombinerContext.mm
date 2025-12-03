@interface PXFaceTileImageCombinerContext
- (PXFaceTileImageCombinerContext)initWithDisplayScale:(double)scale isRTL:(BOOL)l isAscending:(BOOL)ascending imageSize:(double)size imageOffset:(double)offset backgroundColor:(id)color borderColor:(id)borderColor borderWidth:(double)self0;
@end

@implementation PXFaceTileImageCombinerContext

- (PXFaceTileImageCombinerContext)initWithDisplayScale:(double)scale isRTL:(BOOL)l isAscending:(BOOL)ascending imageSize:(double)size imageOffset:(double)offset backgroundColor:(id)color borderColor:(id)borderColor borderWidth:(double)self0
{
  colorCopy = color;
  borderColorCopy = borderColor;
  if (scale <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0"}];
  }

  if (size <= 0.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"imageSize > 0"}];
  }

  if (offset > 0.0)
  {
    if (colorCopy)
    {
      goto LABEL_7;
    }

LABEL_16:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"backgroundColor"}];

    if (borderColorCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"imageOffset > 0"}];

  if (!colorCopy)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (borderColorCopy)
  {
    goto LABEL_8;
  }

LABEL_17:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"borderColor"}];

LABEL_8:
  if (width <= 0.0)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"borderWidth > 0"}];
  }

  if (offset <= width)
  {
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"imageOffset > borderWidth"}];
  }

  v32.receiver = self;
  v32.super_class = PXFaceTileImageCombinerContext;
  v22 = [(PXFaceTileImageCombinerContext *)&v32 init];
  v23 = v22;
  if (v22)
  {
    v22->_isRTL = l;
    v22->_isAscending = ascending;
    v22->_displayScale = scale;
    v22->_imageSize = size;
    v22->_imageOffset = offset;
    objc_storeStrong(&v22->_backgroundColor, color);
    objc_storeStrong(&v23->_borderColor, borderColor);
    v23->_borderWidth = width;
  }

  return v23;
}

@end