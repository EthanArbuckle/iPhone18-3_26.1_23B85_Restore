@interface PXMemoriesFeedWidgetLayoutMetrics
- (CGSize)interitemSpacing;
- (PXMemoriesFeedWidgetLayoutMetrics)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setNumberOfRows:(unint64_t)rows;
@end

@implementation PXMemoriesFeedWidgetLayoutMetrics

- (CGSize)interitemSpacing
{
  width = self->_interitemSpacing.width;
  height = self->_interitemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setNumberOfRows:(unint64_t)rows
{
  if (!rows)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedWidgetLayoutMetrics.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"numberOfRows > 0"}];
  }

  if (self->_numberOfRows != rows)
  {
    self->_numberOfRows = rows;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = PXMemoriesFeedWidgetLayoutMetrics;
  result = [(PXMemoriesFeedLayoutMetrics *)&v5 copyWithZone:zone];
  *(result + 8) = self->_numberOfColumns;
  *(result + 9) = self->_numberOfRows;
  *(result + 88) = self->_interitemSpacing;
  *(result + 10) = self->_layoutAxis;
  return result;
}

- (PXMemoriesFeedWidgetLayoutMetrics)init
{
  v3.receiver = self;
  v3.super_class = PXMemoriesFeedWidgetLayoutMetrics;
  result = [(PXMemoriesFeedWidgetLayoutMetrics *)&v3 init];
  if (result)
  {
    result->_numberOfRows = 1;
    result->_layoutAxis = 1;
  }

  return result;
}

@end