@interface PXSharedLibraryFaceTileImageProviderModel
- (PXSharedLibraryFaceTileImageProviderModel)init;
- (void)performChanges:(id)changes;
- (void)setBackgroundColor:(id)color;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
- (void)setDisplayScale:(double)scale;
- (void)setFaceTileCombinerItems:(id)items;
- (void)setImageDiameter:(double)diameter;
- (void)setImageOffset:(double)offset;
- (void)setIncludeMeContact:(BOOL)contact;
- (void)setIsAscending:(BOOL)ascending;
- (void)setIsRTL:(BOOL)l;
@end

@implementation PXSharedLibraryFaceTileImageProviderModel

- (void)setFaceTileCombinerItems:(id)items
{
  itemsCopy = items;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"faceTileCombinerItems"}];

    itemsCopy = 0;
  }

  faceTileCombinerItems = self->_faceTileCombinerItems;
  if (faceTileCombinerItems != itemsCopy)
  {
    v11 = itemsCopy;
    v7 = [(NSArray *)faceTileCombinerItems isEqual:itemsCopy];
    itemsCopy = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(NSArray *)v11 copy];
      v9 = self->_faceTileCombinerItems;
      self->_faceTileCombinerItems = v8;

      [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:512];
      itemsCopy = v11;
    }
  }
}

- (void)setBorderWidth:(double)width
{
  if (width < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"borderWidth >= 0"}];
  }

  if (self->_borderWidth != width)
  {
    self->_borderWidth = width;

    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:64];
  }
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"borderColor"}];

    colorCopy = 0;
  }

  borderColor = self->_borderColor;
  if (borderColor != colorCopy)
  {
    v11 = colorCopy;
    v7 = [(UIColor *)borderColor isEqual:colorCopy];
    colorCopy = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(UIColor *)v11 copy];
      v9 = self->_borderColor;
      self->_borderColor = v8;

      [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:256];
      colorCopy = v11;
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"backgroundColor"}];

    colorCopy = 0;
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor != colorCopy)
  {
    v11 = colorCopy;
    v7 = [(UIColor *)backgroundColor isEqual:colorCopy];
    colorCopy = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(UIColor *)v11 copy];
      v9 = self->_backgroundColor;
      self->_backgroundColor = v8;

      [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:128];
      colorCopy = v11;
    }
  }
}

- (void)setImageOffset:(double)offset
{
  if (self->_imageOffset != offset)
  {
    self->_imageOffset = offset;
    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:32];
  }
}

- (void)setImageDiameter:(double)diameter
{
  if (diameter <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"imageDiameter > 0"}];
  }

  if (self->_imageDiameter != diameter)
  {
    self->_imageDiameter = diameter;

    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:16];
  }
}

- (void)setIsAscending:(BOOL)ascending
{
  if (self->_isAscending != ascending)
  {
    self->_isAscending = ascending;
    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:8];
  }
}

- (void)setIsRTL:(BOOL)l
{
  if (self->_isRTL != l)
  {
    self->_isRTL = l;
    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:4];
  }
}

- (void)setDisplayScale:(double)scale
{
  if (scale <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryFaceTileImageProviderModel.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0"}];
  }

  if (self->_displayScale != scale)
  {
    self->_displayScale = scale;

    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:2];
  }
}

- (void)setIncludeMeContact:(BOOL)contact
{
  if (self->_includeMeContact != contact)
  {
    self->_includeMeContact = contact;
    [(PXSharedLibraryFaceTileImageProviderModel *)self signalChange:1];
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryFaceTileImageProviderModel;
  [(PXSharedLibraryFaceTileImageProviderModel *)&v3 performChanges:changes];
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