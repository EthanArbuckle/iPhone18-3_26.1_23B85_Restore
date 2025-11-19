@interface PXMemoriesFeedWidgetLayoutMetrics
- (CGSize)interitemSpacing;
- (PXMemoriesFeedWidgetLayoutMetrics)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setNumberOfRows:(unint64_t)a3;
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

- (void)setNumberOfRows:(unint64_t)a3
{
  if (!a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedWidgetLayoutMetrics.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"numberOfRows > 0"}];
  }

  if (self->_numberOfRows != a3)
  {
    self->_numberOfRows = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = PXMemoriesFeedWidgetLayoutMetrics;
  result = [(PXMemoriesFeedLayoutMetrics *)&v5 copyWithZone:a3];
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