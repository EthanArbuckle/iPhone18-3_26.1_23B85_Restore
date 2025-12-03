@interface _DPMLRuntimeTelemetry
+ (void)reportPluginForTrialClient:(id)client withError:(id)error;
@end

@implementation _DPMLRuntimeTelemetry

+ (void)reportPluginForTrialClient:(id)client withError:(id)error
{
  errorCopy = error;
  clientCopy = client;
  v7 = +[LBFEventManager sharedInstance];
  v8 = [LBFTrialIdentifiers alloc];
  experimentIdentifier = [clientCopy experimentIdentifier];
  deploymentIdentifier = [clientCopy deploymentIdentifier];
  intValue = [deploymentIdentifier intValue];
  treatmentIdentifier = [clientCopy treatmentIdentifier];

  v13 = [v8 initWithExperimentID:experimentIdentifier deploymentID:intValue treatmentID:treatmentIdentifier];
  v14 = [[LBFLighthouseEvent alloc] initWithPerformTrialTaskStatus:errorCopy == 0 error:errorCopy usePrivateUpload:1];

  v18 = 0;
  LODWORD(experimentIdentifier) = [v7 addLighthousePluginEvent:v14 identifiers:v13 error:&v18];
  v15 = v18;
  v16 = v15;
  if (experimentIdentifier && v15)
  {
    v17 = +[_PFLLog extension];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10001D12C(v16, v17);
    }
  }
}

@end