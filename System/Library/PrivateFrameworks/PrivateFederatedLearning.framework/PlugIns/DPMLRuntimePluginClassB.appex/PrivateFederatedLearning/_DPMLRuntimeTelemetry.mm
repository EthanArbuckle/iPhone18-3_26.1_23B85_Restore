@interface _DPMLRuntimeTelemetry
+ (void)reportPluginForTrialClient:(id)a3 withError:(id)a4;
@end

@implementation _DPMLRuntimeTelemetry

+ (void)reportPluginForTrialClient:(id)a3 withError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[LBFEventManager sharedInstance];
  v8 = [LBFTrialIdentifiers alloc];
  v9 = [v6 experimentIdentifier];
  v10 = [v6 deploymentIdentifier];
  v11 = [v10 intValue];
  v12 = [v6 treatmentIdentifier];

  v13 = [v8 initWithExperimentID:v9 deploymentID:v11 treatmentID:v12];
  v14 = [[LBFLighthouseEvent alloc] initWithPerformTrialTaskStatus:v5 == 0 error:v5 usePrivateUpload:1];

  v18 = 0;
  LODWORD(v9) = [v7 addLighthousePluginEvent:v14 identifiers:v13 error:&v18];
  v15 = v18;
  v16 = v15;
  if (v9 && v15)
  {
    v17 = +[_PFLLog extension];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10001CD18(v16, v17);
    }
  }
}

@end