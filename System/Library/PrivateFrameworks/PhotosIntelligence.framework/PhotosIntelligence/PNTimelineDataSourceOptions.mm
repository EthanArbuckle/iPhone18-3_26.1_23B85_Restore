@interface PNTimelineDataSourceOptions
- (CGSize)widgetSize;
- (PNTimelineDataSourceOptions)initWithMemoriesOnly;
- (id)initForWatchShuffle;
- (id)initForWidgetWithSize:(CGSize)a3;
@end

@implementation PNTimelineDataSourceOptions

- (CGSize)widgetSize
{
  width = self->_widgetSize.width;
  height = self->_widgetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PNTimelineDataSourceOptions)initWithMemoriesOnly
{
  v3.receiver = self;
  v3.super_class = PNTimelineDataSourceOptions;
  result = [(PNTimelineDataSourceOptions *)&v3 init];
  if (result)
  {
    result->_widgetSize = *MEMORY[0x1E695F060];
    *&result->_includeSuggestions = 0;
  }

  return result;
}

- (id)initForWidgetWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = PNTimelineDataSourceOptions;
  result = [(PNTimelineDataSourceOptions *)&v6 init];
  if (result)
  {
    *(result + 2) = width;
    *(result + 3) = height;
    *(result + 4) = 257;
  }

  return result;
}

- (id)initForWatchShuffle
{
  v3.receiver = self;
  v3.super_class = PNTimelineDataSourceOptions;
  result = [(PNTimelineDataSourceOptions *)&v3 init];
  if (result)
  {
    *(result + 1) = *MEMORY[0x1E695F060];
    *(result + 4) = 257;
  }

  return result;
}

@end