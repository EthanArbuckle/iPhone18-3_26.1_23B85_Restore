@interface TRIExperimentPostLaunchLogger
- (TRIExperimentPostLaunchLogger)initWithClient:(id)client;
- (id)_metricForEvent:(id)event;
- (void)logExperimentPostLaunchEvent:(id)event;
@end

@implementation TRIExperimentPostLaunchLogger

- (TRIExperimentPostLaunchLogger)initWithClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = TRIExperimentPostLaunchLogger;
  v6 = [(TRIExperimentPostLaunchLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
  }

  return v7;
}

- (id)_metricForEvent:(id)event
{
  eventCopy = event;
  experimentStateName = [eventCopy experimentStateName];
  if (experimentStateName)
  {
    errorOrDeactivationReason = [eventCopy errorOrDeactivationReason];

    v6 = MEMORY[0x277D73B40];
    if (errorOrDeactivationReason)
    {
      errorOrDeactivationReason2 = [eventCopy errorOrDeactivationReason];
      v8 = [v6 metricWithName:experimentStateName categoricalValue:errorOrDeactivationReason2];
    }

    else
    {
      v8 = [MEMORY[0x277D73B40] metricWithName:experimentStateName];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)logExperimentPostLaunchEvent:(id)event
{
  v27[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (!eventCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchLogger.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v6 = [(TRIExperimentPostLaunchLogger *)self _metricForEvent:eventCopy];
  if (v6)
  {
    v7 = objc_opt_new();
    treatmentTriple = [eventCopy treatmentTriple];
    experimentId = [treatmentTriple experimentId];
    ensureExperimentFields = [v7 ensureExperimentFields];
    [ensureExperimentFields setClientExperimentId:experimentId];

    treatmentId = [treatmentTriple treatmentId];
    LOBYTE(ensureExperimentFields) = [treatmentId isEqual:@"unspecified-or-default-treatment"];

    if ((ensureExperimentFields & 1) == 0)
    {
      treatmentId2 = [treatmentTriple treatmentId];
      ensureExperimentFields2 = [v7 ensureExperimentFields];
      [ensureExperimentFields2 setClientTreatmentId:treatmentId2];
    }

    v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(treatmentTriple, "deploymentId")}];
    stringValue = [v14 stringValue];
    [v7 setClientDeploymentId:stringValue];

    v16 = TRIDeploymentEnvironment_EnumDescriptor();
    v17 = [v16 textFormatNameForValue:{objc_msgSend(eventCopy, "deploymentEnvironment")}];

    if (!v17)
    {
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", objc_msgSend(eventCopy, "deploymentEnvironment")];
    }

    [v7 setClientDeploymentEnv:v17];
    additionalTelemetry = [eventCopy additionalTelemetry];

    if (additionalTelemetry)
    {
      additionalTelemetry2 = [eventCopy additionalTelemetry];
      [v7 mergeFrom:additionalTelemetry2];
    }

    client = [(TRIExperimentPostLaunchLogger *)self client];
    logger = [client logger];
    client2 = [(TRIExperimentPostLaunchLogger *)self client];
    trackingId = [client2 trackingId];
    v27[0] = v6;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [logger logWithTrackingId:trackingId metrics:v24 dimensions:0 trialSystemTelemetry:v7];
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end