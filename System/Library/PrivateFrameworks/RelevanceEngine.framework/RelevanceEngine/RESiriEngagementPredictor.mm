@interface RESiriEngagementPredictor
+ (id)supportedFeatures;
- (id)_init;
- (id)featureValueForFeature:(id)feature element:(id)element engine:(id)engine trainingContext:(id)context;
- (void)siriServer:(id)server receivedCompletedRequestDomain:(id)domain;
@end

@implementation RESiriEngagementPredictor

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RESiriEngagementPredictor;
  return [(REPredictor *)&v3 _init];
}

+ (id)supportedFeatures
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [REFeatureSet alloc];
  v3 = +[REFeature siriDomainFeature];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [(REFeatureSet *)v2 initWithFeatures:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)featureValueForFeature:(id)feature element:(id)element engine:(id)engine trainingContext:(id)context
{
  lastSiriDomain = self->_lastSiriDomain;
  bundleIdentifier = [element bundleIdentifier];
  LODWORD(lastSiriDomain) = [(NSString *)lastSiriDomain isEqualToString:bundleIdentifier];

  siriInfluence = 0.0;
  if (lastSiriDomain)
  {
    siriInfluence = self->_siriInfluence;
  }

  v10 = [REFeatureValue featureValueWithDouble:siriInfluence];

  return v10;
}

- (void)siriServer:(id)server receivedCompletedRequestDomain:(id)domain
{
  domainCopy = domain;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__RESiriEngagementPredictor_siriServer_receivedCompletedRequestDomain___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = domainCopy;
  v6 = domainCopy;
  [(REPredictor *)self onQueue:v7];
}

void __71__RESiriEngagementPredictor_siriServer_receivedCompletedRequestDomain___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = 0;

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 72), *(a1 + 40));
  *(*(a1 + 32) + 80) = 1065353216;
  objc_initWeak(&location, *(a1 + 32));
  v6 = objc_alloc(MEMORY[0x277CCA970]);
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 initWithStartDate:v7 duration:1800.0];

  v9 = [*(a1 + 32) queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__RESiriEngagementPredictor_siriServer_receivedCompletedRequestDomain___block_invoke_2;
  v15[3] = &unk_2785FB9E8;
  objc_copyWeak(&v18, &location);
  v10 = v8;
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v12 = [REUpNextTimer timerWithFireInterval:v10 atRate:v9 queue:v15 block:60.0];
  v13 = *(a1 + 32);
  v14 = *(v13 + 64);
  *(v13 + 64) = v12;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __71__RESiriEngagementPredictor_siriServer_receivedCompletedRequestDomain___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [a1[4] startDate];
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5;

    v7 = [a1[4] endDate];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;

    [v3 timeIntervalSinceReferenceDate];
    v11 = REPercentThroughRange(v10, v6, v9) * -0.189999998 / 60.0;
    v12[20] = expf(v11) * 0.34;
    [a1[5] updateObservers];

    WeakRetained = v12;
  }
}

@end