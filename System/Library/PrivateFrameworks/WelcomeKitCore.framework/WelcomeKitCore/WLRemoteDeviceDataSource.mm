@interface WLRemoteDeviceDataSource
+ (id)_requestSerialQueue;
- (BOOL)_shouldHandleHTTPErrorWithResponse:(id)response expectedContentLength:(unint64_t)length error:(id *)error;
- (BOOL)_shouldRetryLaterWithResponse:(id)response error:(id)error;
- (BOOL)_shouldRetryWithData:(id)data response:(id)response error:(id)error;
- (double)_taskDurationSinceStartDate:(id)date;
- (id)_urlForAccountsWithMigrator:(id)migrator;
- (id)_urlForRecordForMigrator:(id)migrator withSummaryIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier segmentByteRange:(_NSRange *)range;
- (id)_urlForRecordSummariesForMigrator:(id)migrator withAccountIdentifier:(id)identifier;
- (id)_urlScheme;
- (unint64_t)_newNumberOfRetriesAllowed:(unint64_t)allowed startDate:(id)date;
- (void)_downloadTaskWithRequest:(id)request expectedContentLength:(unint64_t)length numberOfRetriesAllowed:(unint64_t)allowed startDate:(id)date fileAccessor:(id)accessor completion:(id)completion;
- (void)_performDownloadRequest:(id)request expectedContentLength:(unint64_t)length numberOfRetriesAllowed:(unint64_t)allowed startDate:(id)date fileAccessor:(id)accessor completion:(id)completion;
- (void)_performRequest:(id)request expectedContentLength:(unint64_t)length numberOfRetriesAllowed:(unint64_t)allowed preventRetriesAfterTaskExceedsDuration:(BOOL)duration taskDurationLimit:(double)limit startDate:(id)date completionHandler:(id)handler;
- (void)_runTaskWithRequest:(id)request expectedContentLength:(unint64_t)length numberOfRetriesAllowed:(unint64_t)allowed preventRetriesAfterTaskExceedsDuration:(BOOL)duration taskDurationLimit:(double)limit startDate:(id)date completionHandler:(id)handler;
- (void)accountsDataForMigrator:(id)migrator completion:(id)completion;
- (void)cancel;
- (void)dataForSummary:(id)summary migrator:(id)migrator completion:(id)completion;
- (void)dataSegmentForSummary:(id)summary byteRange:(_NSRange)range migrator:(id)migrator completion:(id)completion;
- (void)dealloc;
- (void)fileForSummary:(id)summary migrator:(id)migrator fileAccessor:(id)accessor completion:(id)completion;
- (void)itemSizeForSummary:(id)summary migrator:(id)migrator completion:(id)completion;
- (void)summariesDataForAccount:(id)account migrator:(id)migrator completion:(id)completion;
- (void)updateUIWithProgress:(double)progress remainingTime:(double)time logString:(id)string completion:(id)completion;
@end

@implementation WLRemoteDeviceDataSource

- (void)dealloc
{
  [(WLRemoteDeviceDataSource *)self cancel];
  v3.receiver = self;
  v3.super_class = WLRemoteDeviceDataSource;
  [(WLRemoteDeviceDataSource *)&v3 dealloc];
}

- (void)cancel
{
  [(NSOperationQueue *)self->_queue setSuspended:1];
  [(NSOperationQueue *)self->_queue cancelAllOperations];
  queue = self->_queue;

  [(NSOperationQueue *)queue waitUntilAllOperationsAreFinished];
}

- (void)accountsDataForMigrator:(id)migrator completion:(id)completion
{
  completionCopy = completion;
  v7 = [(WLRemoteDeviceDataSource *)self _urlForAccountsWithMigrator:migrator];
  v8 = MEMORY[0x277CCAD20];
  [(WLRemoteDeviceDataSource *)self _urlRequestTimeout];
  v9 = [v8 requestWithURL:v7 cachePolicy:1 timeoutInterval:?];
  [(WLRemoteDeviceDataSource *)self _maximumRetryableTaskDurationForLongServerOperations];
  v11 = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__WLRemoteDeviceDataSource_accountsDataForMigrator_completion___block_invoke;
  v13[3] = &unk_279EB5D18;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [(WLRemoteDeviceDataSource *)self _performRequest:v9 expectedContentLength:0 numberOfRetriesAllowed:6 preventRetriesAfterTaskExceedsDuration:1 taskDurationLimit:0 startDate:v13 completionHandler:v11];
}

void __63__WLRemoteDeviceDataSource_accountsDataForMigrator_completion___block_invoke(uint64_t a1, void *a2, double a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  if (v8)
  {
    v20 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v20];
    v11 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v10;
      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, v12, [v8 length], 0, a3);
      }
    }

    else
    {
      v15 = *(a1 + 32);
      v18 = [v8 length];
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
      _WLLog();

      v16 = *(a1 + 40);
      if (v16)
      {
        (*(v16 + 16))(v16, 0, [v8 length], v11, a3);
      }
    }
  }

  else
  {
    v17 = *(a1 + 32);
    _WLLog();
    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, 0, v9, a3);
    }
  }
}

- (id)_urlForAccountsWithMigrator:(id)migrator
{
  v4 = MEMORY[0x277CCACA8];
  migratorCopy = migrator;
  _urlScheme = [(WLRemoteDeviceDataSource *)self _urlScheme];
  host = self->_host;
  port = self->_port;
  contentType = [migratorCopy contentType];

  v10 = [v4 stringWithFormat:@"%@://%@:%u/remote_data_access/v1/%@/accounts", _urlScheme, host, port, contentType];

  v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];

  return v11;
}

- (void)summariesDataForAccount:(id)account migrator:(id)migrator completion:(id)completion
{
  completionCopy = completion;
  migratorCopy = migrator;
  identifier = [account identifier];
  v11 = [(WLRemoteDeviceDataSource *)self _urlForRecordSummariesForMigrator:migratorCopy withAccountIdentifier:identifier];

  v12 = MEMORY[0x277CCAD20];
  [(WLRemoteDeviceDataSource *)self _urlRequestTimeout];
  v13 = [v12 requestWithURL:v11 cachePolicy:1 timeoutInterval:?];
  [(WLRemoteDeviceDataSource *)self _maximumRetryableTaskDurationForLongServerOperations];
  v15 = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__WLRemoteDeviceDataSource_summariesDataForAccount_migrator_completion___block_invoke;
  v17[3] = &unk_279EB5D18;
  v17[4] = self;
  v18 = completionCopy;
  v16 = completionCopy;
  [(WLRemoteDeviceDataSource *)self _performRequest:v13 expectedContentLength:0 numberOfRetriesAllowed:6 preventRetriesAfterTaskExceedsDuration:1 taskDurationLimit:0 startDate:v17 completionHandler:v15];
}

void __72__WLRemoteDeviceDataSource_summariesDataForAccount_migrator_completion___block_invoke(uint64_t a1, void *a2, double a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  if (v8)
  {
    v20 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v20];
    v11 = v20;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = v10;
      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, v12, [v8 length], 0, a3);
      }
    }

    else
    {
      v14 = *(a1 + 32);
      v18 = [v8 length];
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
      _WLLog();

      v15 = *(a1 + 40);
      if (v15)
      {
        (*(v15 + 16))(v15, 0, [v8 length], v11, a3);
      }
    }
  }

  else
  {
    v17 = *(a1 + 32);
    _WLLog();
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, 0, 0, v9, a3);
    }
  }
}

- (id)_urlForRecordSummariesForMigrator:(id)migrator withAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  migratorCopy = migrator;
  if ([migratorCopy accountBased])
  {
    uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    _urlScheme2 = [identifierCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

    v10 = MEMORY[0x277CCACA8];
    _urlScheme = [(WLRemoteDeviceDataSource *)self _urlScheme];
    host = self->_host;
    port = self->_port;
    contentType = [migratorCopy contentType];

    v15 = [v10 stringWithFormat:@"%@://%@:%u/remote_data_access/v1/%@/accounts/%@", _urlScheme, host, port, contentType, _urlScheme2];
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    _urlScheme2 = [(WLRemoteDeviceDataSource *)self _urlScheme];
    v17 = self->_host;
    v18 = self->_port;
    _urlScheme = [migratorCopy contentType];

    v15 = [v16 stringWithFormat:@"%@://%@:%u/remote_data_access/v1/%@", _urlScheme2, v17, v18, _urlScheme];
  }

  v19 = [MEMORY[0x277CBEBC0] URLWithString:v15];

  return v19;
}

- (void)itemSizeForSummary:(id)summary migrator:(id)migrator completion:(id)completion
{
  completionCopy = completion;
  v20[0] = 0;
  v20[1] = 0;
  migratorCopy = migrator;
  summaryCopy = summary;
  identifier = [summaryCopy identifier];
  account = [summaryCopy account];

  identifier2 = [account identifier];
  v14 = [(WLRemoteDeviceDataSource *)self _urlForRecordForMigrator:migratorCopy withSummaryIdentifier:identifier accountIdentifier:identifier2 segmentByteRange:v20];

  v15 = MEMORY[0x277CCAD20];
  [(WLRemoteDeviceDataSource *)self _urlRequestTimeout];
  v16 = [v15 requestWithURL:v14 cachePolicy:1 timeoutInterval:?];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__WLRemoteDeviceDataSource_itemSizeForSummary_migrator_completion___block_invoke;
  v18[3] = &unk_279EB5D40;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [(WLRemoteDeviceDataSource *)self _performRequest:v16 expectedContentLength:0 numberOfRetriesAllowed:6 preventRetriesAfterTaskExceedsDuration:0 taskDurationLimit:0 startDate:v18 completionHandler:0.0];
}

void __67__WLRemoteDeviceDataSource_itemSizeForSummary_migrator_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
LABEL_3:
    v12 = *(a1 + 32);
    _WLLog();
LABEL_4:
    v10 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v7 valueForHTTPHeaderField:@"file-length"];
  }

  else
  {
    v11 = 0;
  }

  v13 = *(a1 + 32);
  _WLLog();
  if (![v11 length])
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7B8F8] code:5 userInfo:0];

    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = [v11 integerValue];

  v9 = 0;
LABEL_10:
  (*(*(a1 + 40) + 16))(*(a1 + 40), v10);
}

- (void)fileForSummary:(id)summary migrator:(id)migrator fileAccessor:(id)accessor completion:(id)completion
{
  completionCopy = completion;
  accessorCopy = accessor;
  migratorCopy = migrator;
  summaryCopy = summary;
  identifier = [summaryCopy identifier];
  account = [summaryCopy account];
  identifier2 = [account identifier];
  v17 = [(WLRemoteDeviceDataSource *)self _urlForRecordForMigrator:migratorCopy withSummaryIdentifier:identifier accountIdentifier:identifier2 segmentByteRange:0];

  v18 = MEMORY[0x277CCAD20];
  [(WLRemoteDeviceDataSource *)self _urlRequestTimeout];
  v19 = [v18 requestWithURL:v17 cachePolicy:1 timeoutInterval:?];
  itemSize = [summaryCopy itemSize];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__WLRemoteDeviceDataSource_fileForSummary_migrator_fileAccessor_completion___block_invoke;
  v22[3] = &unk_279EB5D68;
  v22[4] = self;
  v23 = completionCopy;
  v21 = completionCopy;
  [(WLRemoteDeviceDataSource *)self _performDownloadRequest:v19 expectedContentLength:itemSize numberOfRetriesAllowed:6 startDate:0 fileAccessor:accessorCopy completion:v22];
}

void __76__WLRemoteDeviceDataSource_fileForSummary_migrator_fileAccessor_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  _WLLog();
  (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
}

- (id)_urlForRecordForMigrator:(id)migrator withSummaryIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier segmentByteRange:(_NSRange *)range
{
  migratorCopy = migrator;
  accountIdentifierCopy = accountIdentifier;
  v12 = MEMORY[0x277CCA900];
  identifierCopy = identifier;
  uRLPathAllowedCharacterSet = [v12 URLPathAllowedCharacterSet];
  v15 = [identifierCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  if ([migratorCopy accountBased])
  {
    uRLPathAllowedCharacterSet2 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v36 = accountIdentifierCopy;
    v17 = [accountIdentifierCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];

    v18 = MEMORY[0x277CCACA8];
    _urlScheme = [(WLRemoteDeviceDataSource *)self _urlScheme];
    host = self->_host;
    port = self->_port;
    contentType = [migratorCopy contentType];
    v23 = [v18 stringWithFormat:@"%@://%@:%u/remote_data_access/v1/%@/accounts/%@/%@", _urlScheme, host, port, contentType, v17, v15];

    if (!range)
    {
      accountIdentifierCopy = v36;
      goto LABEL_8;
    }

    v24 = MEMORY[0x277CCACA8];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:range->location];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:range->length];
    v27 = [v24 stringWithFormat:@"%@?start=%@&length=%@", v23, v25, v26];

    v23 = v27;
    accountIdentifierCopy = v36;
  }

  else
  {
    v28 = MEMORY[0x277CCACA8];
    _urlScheme2 = [(WLRemoteDeviceDataSource *)self _urlScheme];
    v30 = self->_host;
    v31 = self->_port;
    contentType2 = [migratorCopy contentType];
    v26 = [v28 stringWithFormat:@"%@://%@:%u/remote_data_access/v1/%@/%@", _urlScheme2, v30, v31, contentType2, v15];

    if (!range)
    {
      goto LABEL_9;
    }

    v33 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:range->location];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:range->length];
    v23 = [v33 stringWithFormat:@"%@?start=%@&length=%@", v26, v17, v25];
  }

LABEL_8:
  v26 = v23;
LABEL_9:
  v34 = [MEMORY[0x277CBEBC0] URLWithString:v26];

  return v34;
}

- (void)_performDownloadRequest:(id)request expectedContentLength:(unint64_t)length numberOfRetriesAllowed:(unint64_t)allowed startDate:(id)date fileAccessor:(id)accessor completion:(id)completion
{
  requestCopy = request;
  dateCopy = date;
  accessorCopy = accessor;
  completionCopy = completion;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] date];
  }

  v18 = [requestCopy URL];
  absoluteString = [v18 absoluteString];
  _WLLog();

  objc_initWeak(&location, self);
  v19 = MEMORY[0x277CCA8C8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __131__WLRemoteDeviceDataSource__performDownloadRequest_expectedContentLength_numberOfRetriesAllowed_startDate_fileAccessor_completion___block_invoke;
  v26[3] = &unk_279EB5D90;
  objc_copyWeak(v31, &location);
  v20 = completionCopy;
  v29 = v20;
  v21 = requestCopy;
  v27 = v21;
  v31[1] = length;
  v31[2] = allowed;
  v22 = dateCopy;
  v28 = v22;
  v23 = accessorCopy;
  v30 = v23;
  v24 = [v19 blockOperationWithBlock:{v26, self, absoluteString}];
  [(NSOperationQueue *)self->_queue addOperation:v24];

  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
}

void __131__WLRemoteDeviceDataSource__performDownloadRequest_expectedContentLength_numberOfRetriesAllowed_startDate_fileAccessor_completion___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _downloadTaskWithRequest:*(a1 + 32) expectedContentLength:*(a1 + 72) numberOfRetriesAllowed:*(a1 + 80) startDate:*(a1 + 40) fileAccessor:*(a1 + 56) completion:*(a1 + 48)];
  }

  else if (*(a1 + 48))
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = *MEMORY[0x277D7B8F8];
    v9 = *MEMORY[0x277CCA450];
    v10[0] = @"WLRemoteDeviceDataSource was deallocated.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v4 errorWithDomain:v5 code:1 userInfo:v6];

    (*(*(a1 + 48) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_downloadTaskWithRequest:(id)request expectedContentLength:(unint64_t)length numberOfRetriesAllowed:(unint64_t)allowed startDate:(id)date fileAccessor:(id)accessor completion:(id)completion
{
  requestCopy = request;
  dateCopy = date;
  accessorCopy = accessor;
  completionCopy = completion;
  objc_initWeak(&location, self);
  session = self->_session;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __132__WLRemoteDeviceDataSource__downloadTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_startDate_fileAccessor_completion___block_invoke;
  v27 = &unk_279EB5E30;
  objc_copyWeak(v32, &location);
  v19 = completionCopy;
  v30 = v19;
  v20 = requestCopy;
  v28 = v20;
  v32[1] = length;
  v32[2] = allowed;
  v21 = dateCopy;
  v29 = v21;
  v22 = accessorCopy;
  v31 = v22;
  v23 = [(NSURLSession *)session downloadTaskWithRequest:v20 completionHandler:&v24];
  [v23 resume];

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);
}

void __132__WLRemoteDeviceDataSource__downloadTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_startDate_fileAccessor_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v11 = [*(a1 + 32) URL];
    v39 = [v11 absoluteString];
    _WLLog();

    v12 = *(a1 + 72);
    v60 = v9;
    v13 = [WeakRetained _shouldHandleHTTPErrorWithResponse:v8 expectedContentLength:v12 error:{&v60, WeakRetained, v39, v9}];
    v14 = v60;

    if (v13)
    {
      v15 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __132__WLRemoteDeviceDataSource__downloadTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_startDate_fileAccessor_completion___block_invoke_2;
      block[3] = &unk_279EB5DB8;
      v59 = *(a1 + 48);
      v9 = v14;
      v58 = v9;
      dispatch_async(v15, block);

      v16 = v59;
    }

    else if ([WeakRetained _shouldRetryLaterWithResponse:v8 error:v14])
    {
      v20 = [*(a1 + 32) URL];
      v40 = [v20 absoluteString];
      _WLLog();

      v21 = dispatch_time(0, 1000000000 * [WeakRetained _retryLaterDelayInSeconds]);
      v22 = dispatch_get_global_queue(25, 0);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __132__WLRemoteDeviceDataSource__downloadTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_startDate_fileAccessor_completion___block_invoke_3;
      v52[3] = &unk_279EB5DE0;
      v53 = WeakRetained;
      v23 = *(a1 + 32);
      v56 = *(a1 + 72);
      v24 = *(a1 + 40);
      v25 = *(a1 + 56);
      v26 = *(a1 + 48);
      *&v27 = v25;
      *(&v27 + 1) = v26;
      *&v28 = v23;
      *(&v28 + 1) = v24;
      v54 = v28;
      v55 = v27;
      dispatch_after(v21, v22, v52);

      v16 = v53;
      v9 = v14;
    }

    else if (!v7 || v14)
    {
      v31 = dispatch_get_global_queue(25, 0);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __132__WLRemoteDeviceDataSource__downloadTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_startDate_fileAccessor_completion___block_invoke_5;
      v41[3] = &unk_279EB5E08;
      v47 = *(a1 + 80);
      v42 = WeakRetained;
      v43 = v8;
      v9 = v14;
      v44 = v9;
      v32 = *(a1 + 32);
      v33 = *(a1 + 40);
      v48 = *(a1 + 72);
      v34 = *(a1 + 56);
      v35 = *(a1 + 48);
      *&v36 = v34;
      *(&v36 + 1) = v35;
      *&v37 = v32;
      *(&v37 + 1) = v33;
      v45 = v37;
      v46 = v36;
      dispatch_async(v31, v41);

      v16 = v42;
    }

    else
    {
      v29 = (*(*(a1 + 56) + 16))();
      v30 = dispatch_get_global_queue(25, 0);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __132__WLRemoteDeviceDataSource__downloadTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_startDate_fileAccessor_completion___block_invoke_4;
      v49[3] = &unk_279EB5DB8;
      v51 = *(a1 + 48);
      v9 = v29;
      v50 = v9;
      dispatch_async(v30, v49);

      v16 = v51;
    }

    goto LABEL_12;
  }

  if (*(a1 + 48))
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D7B8F8];
    v61 = *MEMORY[0x277CCA450];
    v62[0] = @"WLRemoteDeviceDataSource was deallocated.";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    v16 = [v17 errorWithDomain:v18 code:1 userInfo:v19];

    (*(*(a1 + 48) + 16))();
LABEL_12:
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __132__WLRemoteDeviceDataSource__downloadTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_startDate_fileAccessor_completion___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 88) && [*(a1 + 32) _shouldRetryWithData:0 response:*(a1 + 40) error:*(a1 + 48)])
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 56) URL];
    v14 = [v3 absoluteString];
    v15 = *(a1 + 48);
    _WLLog();

    v4 = [*(a1 + 32) _newNumberOfRetriesAllowed:*(a1 + 88) startDate:{*(a1 + 64), v2, v14, v15}];
    v5 = *(a1 + 32);
    v6 = *(a1 + 96);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);

    return [v5 _performDownloadRequest:v7 expectedContentLength:v6 numberOfRetriesAllowed:v4 startDate:v8 fileAccessor:v9 completion:v10];
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = *(*(a1 + 80) + 16);

    return v13();
  }
}

- (void)dataSegmentForSummary:(id)summary byteRange:(_NSRange)range migrator:(id)migrator completion:(id)completion
{
  rangeCopy = range;
  completionCopy = completion;
  migratorCopy = migrator;
  summaryCopy = summary;
  identifier = [summaryCopy identifier];
  account = [summaryCopy account];

  identifier2 = [account identifier];
  v15 = [(WLRemoteDeviceDataSource *)self _urlForRecordForMigrator:migratorCopy withSummaryIdentifier:identifier accountIdentifier:identifier2 segmentByteRange:&rangeCopy];

  v16 = MEMORY[0x277CCAD20];
  [(WLRemoteDeviceDataSource *)self _urlRequestTimeout];
  v17 = [v16 requestWithURL:v15 cachePolicy:1 timeoutInterval:?];
  length = rangeCopy.length;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__WLRemoteDeviceDataSource_dataSegmentForSummary_byteRange_migrator_completion___block_invoke;
  v20[3] = &unk_279EB5D40;
  v20[4] = self;
  v21 = completionCopy;
  v19 = completionCopy;
  [(WLRemoteDeviceDataSource *)self _performRequest:v17 expectedContentLength:length numberOfRetriesAllowed:6 preventRetriesAfterTaskExceedsDuration:0 taskDurationLimit:0 startDate:v20 completionHandler:0.0];
}

void __80__WLRemoteDeviceDataSource_dataSegmentForSummary_byteRange_migrator_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  v7 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "length")}];
  _WLLog();

  if (v6)
  {
    v9 = *(a1 + 32);
    _WLLog();

    v8 = 0;
  }

  else
  {
    v8 = v11;
  }

  v12 = v8;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v8);
}

- (void)dataForSummary:(id)summary migrator:(id)migrator completion:(id)completion
{
  completionCopy = completion;
  migratorCopy = migrator;
  summaryCopy = summary;
  identifier = [summaryCopy identifier];
  account = [summaryCopy account];

  identifier2 = [account identifier];
  v14 = [(WLRemoteDeviceDataSource *)self _urlForRecordForMigrator:migratorCopy withSummaryIdentifier:identifier accountIdentifier:identifier2 segmentByteRange:0];

  v15 = MEMORY[0x277CCAD20];
  [(WLRemoteDeviceDataSource *)self _urlRequestTimeout];
  v16 = [v15 requestWithURL:v14 cachePolicy:1 timeoutInterval:?];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__WLRemoteDeviceDataSource_dataForSummary_migrator_completion___block_invoke;
  v18[3] = &unk_279EB5D40;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [(WLRemoteDeviceDataSource *)self _performRequest:v16 expectedContentLength:0 numberOfRetriesAllowed:6 preventRetriesAfterTaskExceedsDuration:0 taskDurationLimit:0 startDate:v18 completionHandler:0.0];
}

void __63__WLRemoteDeviceDataSource_dataForSummary_migrator_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  v7 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "length")}];
  _WLLog();

  if (v6)
  {
    v9 = *(a1 + 32);
    _WLLog();

    v8 = 0;
  }

  else
  {
    v8 = v11;
  }

  v12 = v8;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v8);
}

- (void)updateUIWithProgress:(double)progress remainingTime:(double)time logString:(id)string completion:(id)completion
{
  completionCopy = completion;
  if (progress >= 1.0)
  {
    v13 = MEMORY[0x277CCACA8];
    _urlScheme = [(WLRemoteDeviceDataSource *)self _urlScheme];
    [v13 stringWithFormat:@"%@://%@:%u/transfer?status=done", _urlScheme, self->_host, self->_port, v18, v19];
  }

  else
  {
    LODWORD(v6) = vcvtmd_s64_f64(progress * 100.0);
    v11 = MEMORY[0x277CCACA8];
    _urlScheme = [(WLRemoteDeviceDataSource *)self _urlScheme];
    [v11 stringWithFormat:@"%@://%@:%u/transfer?status=active&progress=%d&remaining_time=%ld", _urlScheme, self->_host, self->_port, v6, time];
  }
  v14 = ;

  v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
  v16 = [MEMORY[0x277CCAB70] requestWithURL:v15];
  [v16 setHTTPMethod:@"PUT"];
  [v16 setTimeoutInterval:2.0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__WLRemoteDeviceDataSource_updateUIWithProgress_remainingTime_logString_completion___block_invoke;
  v20[3] = &unk_279EB5E58;
  v21 = completionCopy;
  v17 = completionCopy;
  [(WLRemoteDeviceDataSource *)self _performRequest:v16 expectedContentLength:0 numberOfRetriesAllowed:0 preventRetriesAfterTaskExceedsDuration:0 taskDurationLimit:0 startDate:v20 completionHandler:0.0];
}

uint64_t __84__WLRemoteDeviceDataSource_updateUIWithProgress_remainingTime_logString_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (id)_urlScheme
{
  if (_urlScheme_onceToken != -1)
  {
    [WLRemoteDeviceDataSource _urlScheme];
  }

  v3 = _urlScheme_scheme;

  return v3;
}

void __38__WLRemoteDeviceDataSource__urlScheme__block_invoke()
{
  if ([MEMORY[0x277D7B890] isInternal] && objc_msgSend(MEMORY[0x277D7B8B0], "BOOLForKey:", @"UseHTTP") == 1)
  {
    v0 = @"http";
  }

  else
  {
    v0 = @"https";
  }

  v1 = _urlScheme_scheme;
  _urlScheme_scheme = v0;
}

+ (id)_requestSerialQueue
{
  if (_requestSerialQueue_onceToken != -1)
  {
    +[WLRemoteDeviceDataSource _requestSerialQueue];
  }

  v3 = _requestSerialQueue__requestQueue;

  return v3;
}

void __47__WLRemoteDeviceDataSource__requestSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.welcomekitcore.WLMigrationDataCoordinator.requestSerialQueue", v2);
  v1 = _requestSerialQueue__requestQueue;
  _requestSerialQueue__requestQueue = v0;
}

- (void)_performRequest:(id)request expectedContentLength:(unint64_t)length numberOfRetriesAllowed:(unint64_t)allowed preventRetriesAfterTaskExceedsDuration:(BOOL)duration taskDurationLimit:(double)limit startDate:(id)date completionHandler:(id)handler
{
  requestCopy = request;
  dateCopy = date;
  handlerCopy = handler;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] date];
  }

  objc_initWeak(&location, self);
  v19 = MEMORY[0x277CCA8C8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __174__WLRemoteDeviceDataSource__performRequest_expectedContentLength_numberOfRetriesAllowed_preventRetriesAfterTaskExceedsDuration_taskDurationLimit_startDate_completionHandler___block_invoke;
  v24[3] = &unk_279EB5E80;
  objc_copyWeak(v28, &location);
  v20 = handlerCopy;
  v27 = v20;
  v21 = dateCopy;
  v25 = v21;
  v22 = requestCopy;
  v26 = v22;
  v28[1] = length;
  v28[2] = allowed;
  durationCopy = duration;
  v28[3] = *&limit;
  v23 = [v19 blockOperationWithBlock:v24];
  [(NSOperationQueue *)self->_queue addOperation:v23];

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

void __174__WLRemoteDeviceDataSource__performRequest_expectedContentLength_numberOfRetriesAllowed_preventRetriesAfterTaskExceedsDuration_taskDurationLimit_startDate_completionHandler___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _runTaskWithRequest:*(a1 + 40) expectedContentLength:*(a1 + 64) numberOfRetriesAllowed:*(a1 + 72) preventRetriesAfterTaskExceedsDuration:*(a1 + 88) taskDurationLimit:*(a1 + 32) startDate:*(a1 + 48) completionHandler:*(a1 + 80)];
  }

  else if (*(a1 + 48))
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = *MEMORY[0x277D7B8F8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"WLRemoteDeviceDataSource was deallocated.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v4 errorWithDomain:v5 code:1 userInfo:v6];

    v8 = *(a1 + 48);
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSinceDate:*(a1 + 32)];
    (*(v8 + 16))(v8, 0, 0, v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_runTaskWithRequest:(id)request expectedContentLength:(unint64_t)length numberOfRetriesAllowed:(unint64_t)allowed preventRetriesAfterTaskExceedsDuration:(BOOL)duration taskDurationLimit:(double)limit startDate:(id)date completionHandler:(id)handler
{
  requestCopy = request;
  dateCopy = date;
  handlerCopy = handler;
  objc_initWeak(location, self);
  v19 = [requestCopy URL];
  absoluteString = [v19 absoluteString];
  _WLLog();

  date = [MEMORY[0x277CBEAA8] date];
  session = self->_session;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __178__WLRemoteDeviceDataSource__runTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_preventRetriesAfterTaskExceedsDuration_taskDurationLimit_startDate_completionHandler___block_invoke;
  v28[3] = &unk_279EB5EF8;
  objc_copyWeak(v34, location);
  v22 = handlerCopy;
  v33 = v22;
  v23 = dateCopy;
  v29 = v23;
  v24 = date;
  v30 = v24;
  v25 = requestCopy;
  v31 = v25;
  selfCopy = self;
  v34[1] = length;
  v34[2] = allowed;
  durationCopy = duration;
  v34[3] = *&limit;
  v26 = [(NSURLSession *)session dataTaskWithRequest:v25 completionHandler:v28];
  [v26 resume];

  objc_destroyWeak(v34);
  objc_destroyWeak(location);
}

void __178__WLRemoteDeviceDataSource__runTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_preventRetriesAfterTaskExceedsDuration_taskDurationLimit_startDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _taskDurationSinceStartDate:*(a1 + 40)];
    v13 = v12;
    v14 = [*(a1 + 48) URL];
    v27 = [v14 absoluteString];
    _WLLog();

    v15 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __178__WLRemoteDeviceDataSource__runTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_preventRetriesAfterTaskExceedsDuration_taskDurationLimit_startDate_completionHandler___block_invoke_2;
    block[3] = &unk_279EB5ED0;
    v29 = v11;
    v16 = v8;
    v17 = *(a1 + 80);
    v30 = v16;
    v37 = v17;
    v36 = *(a1 + 64);
    v31 = v7;
    v38 = v13;
    v32 = v9;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v33 = v18;
    v34 = v19;
    v39 = *(a1 + 88);
    v41 = *(a1 + 104);
    v40 = *(a1 + 96);
    v35 = *(a1 + 32);
    dispatch_async(v15, block);

    v20 = v29;
LABEL_5:

    goto LABEL_6;
  }

  if (*(a1 + 64))
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D7B8F8];
    v42 = *MEMORY[0x277CCA450];
    v43[0] = @"WLRemoteDeviceDataSource was deallocated.";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v20 = [v21 errorWithDomain:v22 code:1 userInfo:v23];

    v24 = *(a1 + 64);
    v25 = [MEMORY[0x277CBEAA8] date];
    [v25 timeIntervalSinceDate:*(a1 + 32)];
    (*(v24 + 16))(v24, v7, v8, v20);

    goto LABEL_5;
  }

LABEL_6:

  v26 = *MEMORY[0x277D85DE8];
}

void __178__WLRemoteDeviceDataSource__runTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_preventRetriesAfterTaskExceedsDuration_taskDurationLimit_startDate_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 96);
  v36 = 0;
  v5 = [v2 _shouldHandleHTTPErrorWithResponse:v3 expectedContentLength:v4 error:&v36];
  v6 = v36;
  if (v5)
  {
    v8 = *(a1 + 88);
    if (v8)
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v7.n128_u64[0] = *(a1 + 104);
      (*(v8 + 16))(v7);
    }
  }

  else if ([*(a1 + 32) _shouldRetryLaterWithResponse:*(a1 + 40) error:*(a1 + 56)])
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 64) URL];
    v24 = [v13 absoluteString];
    _WLLog();

    v14 = dispatch_time(0, 1000000000 * [*(a1 + 32) _retryLaterDelayInSeconds]);
    v15 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __178__WLRemoteDeviceDataSource__runTaskWithRequest_expectedContentLength_numberOfRetriesAllowed_preventRetriesAfterTaskExceedsDuration_taskDurationLimit_startDate_completionHandler___block_invoke_3;
    block[3] = &unk_279EB5EA8;
    v27 = *(a1 + 64);
    v16 = v27.i64[0];
    v29 = vextq_s8(v27, v27, 8uLL);
    v17 = *(a1 + 112);
    v32 = *(a1 + 96);
    v33 = v17;
    v35 = *(a1 + 128);
    v34 = *(a1 + 120);
    v30 = *(a1 + 80);
    v31 = *(a1 + 88);
    dispatch_after(v14, v15, block);
  }

  else if (*(a1 + 112) && [*(a1 + 32) _shouldRetryWithData:*(a1 + 48) response:*(a1 + 40) error:*(a1 + 56)] && objc_msgSend(*(a1 + 32), "_shouldRetryWithPreventRetriesAfterTaskExceedsDuration:taskDurationLimit:taskDuration:", *(a1 + 128), *(a1 + 120), *(a1 + 104)))
  {
    v18 = *(a1 + 32);
    v19 = [*(a1 + 64) URL];
    v25 = [v19 absoluteString];
    v26 = *(a1 + 56);
    _WLLog();

    [*(a1 + 32) _willRetryPerformRequest];
    [*(a1 + 32) _performRequest:*(a1 + 64) expectedContentLength:*(a1 + 96) numberOfRetriesAllowed:objc_msgSend(*(a1 + 32) preventRetriesAfterTaskExceedsDuration:"_newNumberOfRetriesAllowed:startDate:" taskDurationLimit:*(a1 + 112) startDate:*(a1 + 80)) completionHandler:{*(a1 + 128), *(a1 + 80), *(a1 + 88), *(a1 + 120)}];
  }

  else
  {
    v20 = *(a1 + 88);
    if (v20)
    {
      v22 = *(a1 + 40);
      v21 = *(a1 + 48);
      v23 = *(a1 + 56);
      v11.n128_u64[0] = *(a1 + 104);
      (*(v20 + 16))(v11);
    }
  }
}

- (double)_taskDurationSinceStartDate:(id)date
{
  v3 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  date = [v3 date];
  [date timeIntervalSinceDate:dateCopy];
  v7 = v6;

  return v7;
}

- (BOOL)_shouldRetryLaterWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  if (error || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
  }

  else
  {
    v6 = responseCopy;
    if ([v6 statusCode] == 200)
    {
      v7 = [v6 valueForHTTPHeaderField:@"Retry-After"];
      v8 = v7 != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)_shouldRetryWithData:(id)data response:(id)response error:(id)error
{
  responseCopy = response;
  if (error || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = 1;
  }

  else
  {
    v7 = responseCopy;
    statusCode = [v7 statusCode];
    v9 = statusCode != 200;
    if (statusCode != 200)
    {
      v11 = [v7 URL];
      [v7 statusCode];
      _WLLog();
    }
  }

  return v9;
}

- (unint64_t)_newNumberOfRetriesAllowed:(unint64_t)allowed startDate:(id)date
{
  v5 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  date = [v5 date];
  [date timeIntervalSinceDate:dateCopy];
  v9 = v8;

  if (v9 <= 5.0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    _WLLog();
  }

  else
  {
    --allowed;
  }

  return allowed;
}

- (BOOL)_shouldHandleHTTPErrorWithResponse:(id)response expectedContentLength:(unint64_t)length error:(id *)error
{
  responseCopy = response;
  objc_opt_class();
  objc_opt_isKindOfClass();

  return 0;
}

@end