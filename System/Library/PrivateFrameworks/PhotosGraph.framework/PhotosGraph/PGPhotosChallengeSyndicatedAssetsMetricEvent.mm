@interface PGPhotosChallengeSyndicatedAssetsMetricEvent
- (NSArray)payloads;
- (NSString)description;
@end

@implementation PGPhotosChallengeSyndicatedAssetsMetricEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  identifier = [(PGPhotosChallengeMetricEvent *)self identifier];
  payloads = [(PGPhotosChallengeSyndicatedAssetsMetricEvent *)self payloads];
  v9 = [v3 stringWithFormat:@"<%@: %p> %@:\nIdentifier:%@\nPayloads:%@", v4, self, v6, identifier, payloads];

  return v9;
}

- (NSArray)payloads
{
  v37[1] = *MEMORY[0x277D85DE8];
  evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
  if (!evaluation)
  {
    v32.receiver = self;
    v32.super_class = PGPhotosChallengeSyndicatedAssetsMetricEvent;
    obj = [(PGPhotosChallengeMetricEvent *)&v32 payload];
    v37[0] = obj;
    v17 = v37;
LABEL_15:
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = +[PGLogging sharedLogging];
    loggingConnection = [v18 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      evaluation2 = [(PGPhotosChallengeMetricEvent *)self evaluation];
      *buf = 138412290;
      v36 = objc_opt_class();
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "PGPhotosChallengeSyndicatedAssetsMetricEvent: evaluation object is the wrong type (%@)", buf, 0xCu);
    }

    v31.receiver = self;
    v31.super_class = PGPhotosChallengeSyndicatedAssetsMetricEvent;
    obj = [(PGPhotosChallengeMetricEvent *)&v31 payload];
    v34 = obj;
    v17 = &v34;
    goto LABEL_15;
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [evaluation evaluationByReason];
  v4 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v24 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        evaluationByReason = [evaluation evaluationByReason];
        [evaluationByReason objectForKeyedSubscript:v7];
        v10 = v9 = evaluation;

        v26.receiver = self;
        v26.super_class = PGPhotosChallengeSyndicatedAssetsMetricEvent;
        payload = [(PGPhotosChallengeMetricEvent *)&v26 payload];
        v12 = [payload mutableCopy];

        [v12 setObject:v7 forKeyedSubscript:@"questionInfo"];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "falseNegatives")}];
        [v12 setObject:v13 forKeyedSubscript:@"falseNegativeCount"];

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "falsePositives")}];
        [v12 setObject:v14 forKeyedSubscript:@"falsePositiveCount"];

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "trueNegatives")}];
        [v12 setObject:v15 forKeyedSubscript:@"trueNegativeCount"];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "truePositives")}];
        [v12 setObject:v16 forKeyedSubscript:@"truePositiveCount"];

        [v25 addObject:v12];
        evaluation = v9;
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

LABEL_16:

  v20 = *MEMORY[0x277D85DE8];

  return v25;
}

@end