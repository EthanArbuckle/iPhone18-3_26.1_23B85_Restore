@interface PXBrowserVisibleContentSnapshot
+ (id)snapshotWithIndexPaths:(id)a3 dataSource:(id)a4 dateIntervalGranularity:(unint64_t)a5 dateType:(unint64_t)a6;
- (NSDateInterval)dateInterval;
- (PXBrowserVisibleContentSnapshot)initWithDateIntervalGranularity:(unint64_t)a3;
@end

@implementation PXBrowserVisibleContentSnapshot

- (NSDateInterval)dateInterval
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:53 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserVisibleContentSnapshot dateInterval]", v6}];

  abort();
}

- (PXBrowserVisibleContentSnapshot)initWithDateIntervalGranularity:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PXBrowserVisibleContentSnapshot;
  result = [(PXBrowserVisibleContentSnapshot *)&v5 init];
  if (result)
  {
    result->_dateIntervalGranularity = a3;
  }

  return result;
}

+ (id)snapshotWithIndexPaths:(id)a3 dataSource:(id)a4 dateIntervalGranularity:(unint64_t)a5 dateType:(unint64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [[_PXBrowserDataSourceVisibleContentSnapshot alloc] initWithIndexPaths:v10 dataSource:v9 dateIntervalGranularity:a5 dateType:a6];

  return v11;
}

@end