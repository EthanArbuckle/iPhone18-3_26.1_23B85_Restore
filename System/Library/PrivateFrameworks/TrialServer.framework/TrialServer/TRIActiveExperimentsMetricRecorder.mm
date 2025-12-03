@interface TRIActiveExperimentsMetricRecorder
- (TRIActiveExperimentsMetricRecorder)initWithExperimentCountProvider:(id)provider client:(id)client;
- (TRIActiveExperimentsMetricRecorder)initWithServerContext:(id)context;
- (id)loggableMetrics;
- (void)recordMetric;
@end

@implementation TRIActiveExperimentsMetricRecorder

- (TRIActiveExperimentsMetricRecorder)initWithExperimentCountProvider:(id)provider client:(id)client
{
  providerCopy = provider;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = TRIActiveExperimentsMetricRecorder;
  v9 = [(TRIActiveExperimentsMetricRecorder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_experimentCountProvider, provider);
    objc_storeStrong(&v10->_client, client);
  }

  return v10;
}

- (TRIActiveExperimentsMetricRecorder)initWithServerContext:(id)context
{
  contextCopy = context;
  experimentDatabase = [contextCopy experimentDatabase];
  client = [contextCopy client];

  v7 = [(TRIActiveExperimentsMetricRecorder *)self initWithExperimentCountProvider:experimentDatabase client:client];
  return v7;
}

- (id)loggableMetrics
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  experimentCountProvider = self->_experimentCountProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__TRIActiveExperimentsMetricRecorder_loggableMetrics__block_invoke;
  v9[3] = &unk_279DE2120;
  v9[4] = &v14;
  v9[5] = &v10;
  [(TRIExperimentCountProviding *)experimentCountProvider activeCountWithCompletion:v9];
  v4 = objc_opt_new();
  if ([(TRIActiveExperimentsMetricRecorder *)self _isValidCount:v15[3]])
  {
    v5 = [MEMORY[0x277D73B40] metricWithName:@"activeDeviceExperiments" integerValue:v15[3]];
    [v4 addObject:v5];
  }

  if ([(TRIActiveExperimentsMetricRecorder *)self _isValidCount:v11[3]])
  {
    v6 = [MEMORY[0x277D73B40] metricWithName:@"activeServerExperiments" integerValue:v11[3]];
    [v4 addObject:v6];
  }

  v7 = [v4 copy];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

uint64_t __53__TRIActiveExperimentsMetricRecorder_loggableMetrics__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

- (void)recordMetric
{
  loggableMetrics = [(TRIActiveExperimentsMetricRecorder *)self loggableMetrics];
  if ([loggableMetrics count])
  {
    client = [(TRIActiveExperimentsMetricRecorder *)self client];
    logger = [client logger];
    client2 = [(TRIActiveExperimentsMetricRecorder *)self client];
    trackingId = [client2 trackingId];
    [logger logWithTrackingId:trackingId metrics:loggableMetrics dimensions:0 trialSystemTelemetry:0];
  }
}

@end