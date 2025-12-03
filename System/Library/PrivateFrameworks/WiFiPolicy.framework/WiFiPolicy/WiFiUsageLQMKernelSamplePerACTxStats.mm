@interface WiFiUsageLQMKernelSamplePerACTxStats
+ (id)sampleWithTimestamp:(id)timestamp;
- (WiFiUsageLQMKernelSamplePerACTxStats)initWithTimestamp:(id)timestamp;
- (id)description;
@end

@implementation WiFiUsageLQMKernelSamplePerACTxStats

+ (id)sampleWithTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v4 = [objc_alloc(objc_opt_class()) initWithTimestamp:timestampCopy];

  return v4;
}

- (WiFiUsageLQMKernelSamplePerACTxStats)initWithTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v8.receiver = self;
  v8.super_class = WiFiUsageLQMKernelSamplePerACTxStats;
  v5 = [(WiFiUsageLQMKernelSamplePerACTxStats *)&v8 init];
  timestamp = v5->_timestamp;
  v5->_timestamp = timestampCopy;

  return v5;
}

- (id)description
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allLQMProperties = [objc_opt_class() allLQMProperties];
  v5 = [allLQMProperties countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allLQMProperties);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(WiFiUsageLQMSample *)self numberForKeyPath:v9];

        if (v10)
        {
          v11 = [(WiFiUsageLQMSample *)self numberForKeyPath:v9];
          [v3 appendFormat:@"%@:%@, ", v9, v11, v15];
        }
      }

      v6 = [allLQMProperties countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithString:v3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end