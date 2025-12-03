@interface PXGDataSourceChange
- (PXGDataSourceChange)init;
- (PXGDataSourceChange)initWithChangeDetails:(id)details dataSourceBeforeChanges:(id)changes dataSourceAfterChanges:(id)afterChanges;
@end

@implementation PXGDataSourceChange

- (PXGDataSourceChange)initWithChangeDetails:(id)details dataSourceBeforeChanges:(id)changes dataSourceAfterChanges:(id)afterChanges
{
  v29 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  changesCopy = changes;
  afterChangesCopy = afterChanges;
  v22.receiver = self;
  v22.super_class = PXGDataSourceChange;
  v12 = [(PXGDataSourceChange *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_changeDetails, details);
    objc_storeStrong(&v13->_dataSourceBeforeChanges, changes);
    objc_storeStrong(&v13->_dataSourceAfterChanges, afterChanges);
    if ([detailsCopy count])
    {
      lastObject = [detailsCopy lastObject];
      toDataSourceIdentifier = [lastObject toDataSourceIdentifier];
      if (toDataSourceIdentifier == [afterChangesCopy identifier])
      {
        firstObject = [detailsCopy firstObject];
        fromDataSourceIdentifier = [firstObject fromDataSourceIdentifier];
        identifier = [changesCopy identifier];

        if (fromDataSourceIdentifier == identifier)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v19 = PXAssertGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v24 = detailsCopy;
        v25 = 2112;
        v26 = changesCopy;
        v27 = 2112;
        v28 = afterChangesCopy;
        _os_log_error_impl(&dword_21AD38000, v19, OS_LOG_TYPE_ERROR, "PXGDataSourceChange version mismatch, changeDetails:%@ before:%@ after:%@", buf, 0x20u);
      }

      changeDetails = v13->_changeDetails;
      v13->_changeDetails = 0;
    }
  }

LABEL_10:

  return v13;
}

- (PXGDataSourceChange)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDataSourceDrivenLayout.m" lineNumber:265 description:{@"%s is not available as initializer", "-[PXGDataSourceChange init]"}];

  abort();
}

@end