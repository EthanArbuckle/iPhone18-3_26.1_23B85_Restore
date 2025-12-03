@interface PXPhotosVisibleContentSnapshot
- (NSArray)locationNames;
- (NSDateInterval)dateInterval;
- (NSString)localizedPlaceholderText;
- (PXPhotosVisibleContentSnapshot)init;
- (PXPhotosVisibleContentSnapshot)initWithPhotosLayout:(id)layout dateType:(unint64_t)type dateIntervalGranularity:(unint64_t)granularity;
@end

@implementation PXPhotosVisibleContentSnapshot

- (NSString)localizedPlaceholderText
{
  if (self->_isFiltering)
  {
    v3 = PXLocalizedStringFromTable(@"PXBrowserSummaryNoFilteringResultsPlaceholderText", @"PhotosUICore");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)locationNames
{
  locationNamesFuture = self->_locationNamesFuture;
  if (locationNamesFuture)
  {
    locationNamesFuture = locationNamesFuture[2](locationNamesFuture, self->_dataSourceIdentifier);
    v2 = vars8;
  }

  return locationNamesFuture;
}

- (NSDateInterval)dateInterval
{
  dateIntervalFuture = self->_dateIntervalFuture;
  if (dateIntervalFuture)
  {
    dateIntervalFuture = dateIntervalFuture[2](dateIntervalFuture, self->_dataSourceIdentifier);
    v2 = vars8;
  }

  return dateIntervalFuture;
}

- (PXPhotosVisibleContentSnapshot)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosVisibleContentSnapshot.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXPhotosVisibleContentSnapshot init]"}];

  abort();
}

- (PXPhotosVisibleContentSnapshot)initWithPhotosLayout:(id)layout dateType:(unint64_t)type dateIntervalGranularity:(unint64_t)granularity
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = PXPhotosVisibleContentSnapshot;
  if ([(PXPhotosVisibleContentSnapshot *)&v8 init])
  {
    [layoutCopy visibleRect];
    [layoutCopy safeAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  return 0;
}

@end