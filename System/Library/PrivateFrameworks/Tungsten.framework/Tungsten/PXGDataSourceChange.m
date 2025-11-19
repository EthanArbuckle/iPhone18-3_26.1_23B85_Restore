@interface PXGDataSourceChange
- (PXGDataSourceChange)init;
- (PXGDataSourceChange)initWithChangeDetails:(id)a3 dataSourceBeforeChanges:(id)a4 dataSourceAfterChanges:(id)a5;
@end

@implementation PXGDataSourceChange

- (PXGDataSourceChange)initWithChangeDetails:(id)a3 dataSourceBeforeChanges:(id)a4 dataSourceAfterChanges:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = PXGDataSourceChange;
  v12 = [(PXGDataSourceChange *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_changeDetails, a3);
    objc_storeStrong(&v13->_dataSourceBeforeChanges, a4);
    objc_storeStrong(&v13->_dataSourceAfterChanges, a5);
    if ([v9 count])
    {
      v14 = [v9 lastObject];
      v15 = [v14 toDataSourceIdentifier];
      if (v15 == [v11 identifier])
      {
        v16 = [v9 firstObject];
        v17 = [v16 fromDataSourceIdentifier];
        v18 = [v10 identifier];

        if (v17 == v18)
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
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGDataSourceDrivenLayout.m" lineNumber:265 description:{@"%s is not available as initializer", "-[PXGDataSourceChange init]"}];

  abort();
}

@end