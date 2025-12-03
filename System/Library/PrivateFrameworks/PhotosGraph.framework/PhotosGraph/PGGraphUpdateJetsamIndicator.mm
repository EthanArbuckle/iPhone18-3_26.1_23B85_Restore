@interface PGGraphUpdateJetsamIndicator
- (BOOL)updateDidCauseJetsam;
- (PGGraphUpdateJetsamIndicator)initWithIndicatorDirectoryURL:(id)l;
- (PGGraphUpdateJetsamIndicator)initWithPhotoLibrary:(id)library;
- (id)description;
- (void)_readIndicator;
- (void)_removeIndicator;
- (void)clear;
- (void)markUpdate;
@end

@implementation PGGraphUpdateJetsamIndicator

- (void)_removeIndicator
{
  v13 = *MEMORY[0x277D85DE8];
  indicatorURL = [(PGGraphUpdateJetsamIndicator *)self indicatorURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [indicatorURL path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v10 = 0;
    v7 = [defaultManager removeItemAtURL:indicatorURL error:&v10];
    v8 = v10;
    if ((v7 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "JetsamIndicator - removing indicator file from disk failed with error: %@", buf, 0xCu);
    }

    [(PGGraphUpdateJetsamIndicator *)self setIndicatorExists:0];
  }

  else if ([(PGGraphUpdateJetsamIndicator *)self indicatorExists]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "JetsamIndicator - no indicator file but JetsamIndicator instance believes indicator exists", buf, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_readIndicator
{
  v3 = MEMORY[0x277CBEA90];
  indicatorURL = [(PGGraphUpdateJetsamIndicator *)self indicatorURL];
  v5 = [v3 dataWithContentsOfURL:indicatorURL];

  if (v5)
  {
    v11 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v11];
    v7 = v6;
    v8 = v6 != 0;
    if (v6)
    {
      v9 = [v6 objectForKeyedSubscript:@"retryCount"];
      integerValue = [v9 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    v8 = 0;
    integerValue = 0;
  }

  [(PGGraphUpdateJetsamIndicator *)self setRetryCount:integerValue];
  [(PGGraphUpdateJetsamIndicator *)self setIndicatorExists:v8];
}

- (void)clear
{
  [(PGGraphUpdateJetsamIndicator *)self _removeIndicator];

  [(PGGraphUpdateJetsamIndicator *)self setRetryCount:0];
}

- (void)markUpdate
{
  v17[1] = *MEMORY[0x277D85DE8];
  [(PGGraphUpdateJetsamIndicator *)self setRetryCount:[(PGGraphUpdateJetsamIndicator *)self retryCount]+ 1];
  v16 = @"retryCount";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PGGraphUpdateJetsamIndicator retryCount](self, "retryCount")}];
  v17[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v13 = 0;
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    indicatorURL = [(PGGraphUpdateJetsamIndicator *)self indicatorURL];
    v12 = v7;
    v9 = [v5 writeToURL:indicatorURL options:1073741825 error:&v12];
    v10 = v12;

    if ((v9 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "JetsamIndicator - failed to write indicator to disk with error: %@", buf, 0xCu);
    }

    [(PGGraphUpdateJetsamIndicator *)self setIndicatorExists:1];
  }

  else
  {
    v10 = v6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateDidCauseJetsam
{
  [(PGGraphUpdateJetsamIndicator *)self _readIndicator];
  retryCount = [(PGGraphUpdateJetsamIndicator *)self retryCount];
  if (retryCount < [(PGGraphUpdateJetsamIndicator *)self maxRetryCount])
  {
    return 0;
  }

  return [(PGGraphUpdateJetsamIndicator *)self indicatorExists];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGGraphUpdateJetsamIndicator;
  v4 = [(PGGraphUpdateJetsamIndicator *)&v11 description];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PGGraphUpdateJetsamIndicator retryCount](self, "retryCount")}];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PGGraphUpdateJetsamIndicator maxRetryCount](self, "maxRetryCount")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[PGGraphUpdateJetsamIndicator indicatorExists](self, "indicatorExists")}];
  indicatorURL = [(PGGraphUpdateJetsamIndicator *)self indicatorURL];
  v9 = [v3 stringWithFormat:@"%@ - retryCount: %@ (maxRetryCount: %@), indicatorExists: %@, indicator URL: %@", v4, v5, v6, v7, indicatorURL];

  return v9;
}

- (PGGraphUpdateJetsamIndicator)initWithIndicatorDirectoryURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PGGraphUpdateJetsamIndicator;
  v5 = [(PGGraphUpdateJetsamIndicator *)&v9 init];
  if (v5)
  {
    v6 = [lCopy URLByAppendingPathComponent:@"updatejetsam.plist"];
    indicatorURL = v5->_indicatorURL;
    v5->_indicatorURL = v6;

    v5->_maxRetryCount = 1;
  }

  return v5;
}

- (PGGraphUpdateJetsamIndicator)initWithPhotoLibrary:(id)library
{
  pg_urlForGraphApplicationData = [library pg_urlForGraphApplicationData];
  v5 = [(PGGraphUpdateJetsamIndicator *)self initWithIndicatorDirectoryURL:pg_urlForGraphApplicationData];

  return v5;
}

@end