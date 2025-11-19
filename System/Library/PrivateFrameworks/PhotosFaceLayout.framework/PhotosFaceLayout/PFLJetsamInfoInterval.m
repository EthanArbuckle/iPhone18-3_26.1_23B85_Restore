@interface PFLJetsamInfoInterval
- (PFLJetsamInfoInterval)initWithLabel:(id)a3;
- (jetsam_info)currentInfo;
- (void)logCurrentInterval;
- (void)reset;
@end

@implementation PFLJetsamInfoInterval

- (PFLJetsamInfoInterval)initWithLabel:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PFLJetsamInfoInterval;
  v6 = [(PFLJetsamInfoInterval *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, a3);
    v8 = objc_opt_new();
    fetcher = v7->_fetcher;
    v7->_fetcher = v8;

    if ([(PFLJetsamInfoFetcher *)v7->_fetcher getInfo:&v7->_startInfo])
    {
      if ([(PFLJetsamInfoFetcher *)v7->_fetcher resetInterval])
      {
        v10 = pfl_jetsam_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          label = v7->_label;
          v12 = v7->_startInfo.currentKB * 0.0009765625;
          *buf = 138412546;
          v16 = label;
          v17 = 2048;
          v18 = v12;
          _os_log_impl(&dword_22D2ED000, v10, OS_LOG_TYPE_DEFAULT, "jetsam interval '%@': start footprint: %.3f", buf, 0x16u);
        }
      }
    }
  }

  return v7;
}

- (jetsam_info)currentInfo
{
  retstr->maxLifetimeKB = -1;
  retstr->maxIntervalKB = -1;
  retstr->currentKB = -1;
  return [(PFLJetsamInfoFetcher *)self->_fetcher getInfo:?];
}

- (void)logCurrentInterval
{
  v16 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  if ([(PFLJetsamInfoFetcher *)self->_fetcher getInfo:v6])
  {
    v3 = pfl_jetsam_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      label = self->_label;
      v5 = self->_startInfo.currentKB * 0.0009765625;
      *buf = 138413058;
      v9 = label;
      v10 = 2048;
      v11 = v5;
      v12 = 2048;
      v13 = v7 * 0.0009765625;
      v14 = 2048;
      v15 = v6[0] * 0.0009765625;
      _os_log_impl(&dword_22D2ED000, v3, OS_LOG_TYPE_DEFAULT, "jetsam interval '%@': start footprint: %.3f, max: %.3f, end: %.3f", buf, 0x2Au);
    }
  }
}

- (void)reset
{
  [(PFLJetsamInfoFetcher *)self->_fetcher getInfo:&self->_startInfo];
  fetcher = self->_fetcher;

  [(PFLJetsamInfoFetcher *)fetcher resetInterval];
}

@end