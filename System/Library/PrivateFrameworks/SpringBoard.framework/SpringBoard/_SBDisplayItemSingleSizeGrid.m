@interface _SBDisplayItemSingleSizeGrid
- (CGSize)maxSize;
- (CGSize)minSize;
- (CGSize)nearestGridSizeForSize:(CGSize)a3 countOnStage:(unint64_t)a4;
- (CGSize)sizeAtIndexFromFullWidthForBounds:(unint64_t)a3;
- (_SBDisplayItemSingleSizeGrid)initWithSize:(CGSize)a3;
- (id)allHeights;
- (id)allWidths;
@end

@implementation _SBDisplayItemSingleSizeGrid

- (_SBDisplayItemSingleSizeGrid)initWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = _SBDisplayItemSingleSizeGrid;
  result = [(_SBDisplayItemSingleSizeGrid *)&v6 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
  }

  return result;
}

- (CGSize)nearestGridSizeForSize:(CGSize)a3 countOnStage:(unint64_t)a4
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)sizeAtIndexFromFullWidthForBounds:(unint64_t)a3
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)allWidths
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_size.width];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)allHeights
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_size.height];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

@end