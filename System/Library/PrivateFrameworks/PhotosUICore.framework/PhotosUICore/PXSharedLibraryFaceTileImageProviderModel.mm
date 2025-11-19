@interface PXSharedLibraryFaceTileImageProviderModel
- (PXSharedLibraryFaceTileImageProviderModel)init;
- (void)performChanges:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
- (void)setDisplayScale:(double)a3;
- (void)setFaceTileCombinerItems:(id)a3;
- (void)setImageDiameter:(double)a3;
- (void)setImageOffset:(double)a3;
- (void)setIncludeMeContact:(BOOL)a3;
- (void)setIsAscending:(BOOL)a3;
- (void)setIsRTL:(BOOL)a3;
@end

@implementation PXSharedLibraryFaceTileImageProviderModel

- (void)setFaceTileCombinerItems:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"faceTileCombinerItems"}];

    v5 = 0;
  }

  faceTileCombinerItems = self->_faceTileCombinerItems;
  if (faceTileCombinerItems != v5)
  {
    v11 = v5;
    v7 = [(NSArray *)faceTileCombinerItems isEqual:v5];
    v5 = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(NSArray *)v11 copy];
      v9 = self->_faceTileCombinerItems;
      self->_faceTileCombinerItems = v8;

      [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:512];
      v5 = v11;
    }
  }
}

- (void)setBorderWidth:(double)a3
{
  if (a3 < 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"borderWidth >= 0"}];
  }

  if (self->_borderWidth != a3)
  {
    self->_borderWidth = a3;

    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:64];
  }
}

- (void)setBorderColor:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"borderColor"}];

    v5 = 0;
  }

  borderColor = self->_borderColor;
  if (borderColor != v5)
  {
    v11 = v5;
    v7 = [(UIColor *)borderColor isEqual:v5];
    v5 = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(UIColor *)v11 copy];
      v9 = self->_borderColor;
      self->_borderColor = v8;

      [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:256];
      v5 = v11;
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"backgroundColor"}];

    v5 = 0;
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor != v5)
  {
    v11 = v5;
    v7 = [(UIColor *)backgroundColor isEqual:v5];
    v5 = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(UIColor *)v11 copy];
      v9 = self->_backgroundColor;
      self->_backgroundColor = v8;

      [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:128];
      v5 = v11;
    }
  }
}

- (void)setImageOffset:(double)a3
{
  if (self->_imageOffset != a3)
  {
    self->_imageOffset = a3;
    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:32];
  }
}

- (void)setImageDiameter:(double)a3
{
  if (a3 <= 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"imageDiameter > 0"}];
  }

  if (self->_imageDiameter != a3)
  {
    self->_imageDiameter = a3;

    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:16];
  }
}

- (void)setIsAscending:(BOOL)a3
{
  if (self->_isAscending != a3)
  {
    self->_isAscending = a3;
    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:8];
  }
}

- (void)setIsRTL:(BOOL)a3
{
  if (self->_isRTL != a3)
  {
    self->_isRTL = a3;
    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:4];
  }
}

- (void)setDisplayScale:(double)a3
{
  if (a3 <= 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0"}];
  }

  if (self->_displayScale != a3)
  {
    self->_displayScale = a3;

    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:2];
  }
}

- (void)setIncludeMeContact:(BOOL)a3
{
  if (self->_includeMeContact != a3)
  {
    self->_includeMeContact = a3;
    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:1];
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryFaceTileImageProviderModel;
  [(PXSharedLibraryFaceTileImageProviderModel *)&v3 performChanges:a3];
}

- (PXSharedLibraryFaceTileImageProviderModel)init
{
  v6.receiver = self;
  v6.super_class = PXSharedLibraryFaceTileImageProviderModel;
  v2 = [(PXSharedLibraryFaceTileImageProviderModel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    faceTileCombinerItems = v2->_faceTileCombinerItems;
    v2->_faceTileCombinerItems = MEMORY[0x1E695E0F0];

    v3->_isAscending = 1;
    v3->_imageDiameter = 60.0;
    v3->_imageOffset = 0.5;
    v3->_borderWidth = 3.0;
  }

  return v3;
}

@end