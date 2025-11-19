@interface PGPhotosChallengePrecisionRecallByReasonMetricEvent
- (NSArray)payloads;
- (NSString)description;
@end

@implementation PGPhotosChallengePrecisionRecallByReasonMetricEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(PGPhotosChallengeMetricEvent *)self identifier];
  v8 = [(PGPhotosChallengePrecisionRecallByReasonMetricEvent *)self payloads];
  v9 = [v3 stringWithFormat:@"<%@: %p> %@:\nIdentifier:%@\nPayloads:%@", v4, self, v6, v7, v8];

  return v9;
}

- (NSArray)payloads
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = [(PGPhotosChallengeMetricEvent *)self evaluation];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14.receiver = self;
      v14.super_class = PGPhotosChallengePrecisionRecallByReasonMetricEvent;
      v4 = [(PGPhotosChallengePrecisionRecallByReasonMetricEvent *)&v14 self];
      v5 = [(PGPhotosChallengeMetricEvent *)self preparePayloadForPrecisionRecallEval:v4 withEvaluations:v3];
      goto LABEL_9;
    }

    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self evaluation];
      *buf = 138412290;
      v19 = objc_opt_class();
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "PGPhotosChallengePrecisionRecallByReasonMetricEvent: evaluation object is the wrong type (%@)", buf, 0xCu);
    }

    v15.receiver = self;
    v15.super_class = PGPhotosChallengePrecisionRecallByReasonMetricEvent;
    v4 = [(PGPhotosChallengeMetricEvent *)&v15 payload];
    v17 = v4;
    v6 = MEMORY[0x277CBEA60];
    v7 = &v17;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PGPhotosChallengePrecisionRecallByReasonMetricEvent;
    v4 = [(PGPhotosChallengeMetricEvent *)&v16 payload];
    v20[0] = v4;
    v6 = MEMORY[0x277CBEA60];
    v7 = v20;
  }

  v5 = [v6 arrayWithObjects:v7 count:1];
LABEL_9:
  v10 = v5;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end