@interface PXBrowserVisibleContentSnapshot
+ (id)snapshotWithIndexPaths:(id)paths dataSource:(id)source dateIntervalGranularity:(unint64_t)granularity dateType:(unint64_t)type;
- (NSDateInterval)dateInterval;
- (PXBrowserVisibleContentSnapshot)initWithDateIntervalGranularity:(unint64_t)granularity;
@end

@implementation PXBrowserVisibleContentSnapshot

- (NSDateInterval)dateInterval
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:53 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserVisibleContentSnapshot dateInterval]", v6}];

  abort();
}

- (PXBrowserVisibleContentSnapshot)initWithDateIntervalGranularity:(unint64_t)granularity
{
  v5.receiver = self;
  v5.super_class = PXBrowserVisibleContentSnapshot;
  result = [(PXBrowserVisibleContentSnapshot *)&v5 init];
  if (result)
  {
    result->_dateIntervalGranularity = granularity;
  }

  return result;
}

+ (id)snapshotWithIndexPaths:(id)paths dataSource:(id)source dateIntervalGranularity:(unint64_t)granularity dateType:(unint64_t)type
{
  sourceCopy = source;
  pathsCopy = paths;
  v11 = [[_PXBrowserDataSourceVisibleContentSnapshot alloc] initWithIndexPaths:pathsCopy dataSource:sourceCopy dateIntervalGranularity:granularity dateType:type];

  return v11;
}

@end