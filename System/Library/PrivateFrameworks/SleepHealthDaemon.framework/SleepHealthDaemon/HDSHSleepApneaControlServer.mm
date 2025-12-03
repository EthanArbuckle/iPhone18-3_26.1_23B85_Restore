@interface HDSHSleepApneaControlServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDSHSleepApneaControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate analyzer:(id)analyzer analysisScheduler:(id)scheduler;
- (id)_clientRemoteObjectProxy;
@end

@implementation HDSHSleepApneaControlServer

- (HDSHSleepApneaControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate analyzer:(id)analyzer analysisScheduler:(id)scheduler
{
  analyzerCopy = analyzer;
  schedulerCopy = scheduler;
  v20.receiver = self;
  v20.super_class = HDSHSleepApneaControlServer;
  v17 = [(HDStandardTaskServer *)&v20 initWithUUID:d configuration:configuration client:client delegate:delegate];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_analyzer, analyzer);
    objc_storeStrong(&v18->_analysisScheduler, scheduler);
  }

  return v18;
}

- (id)_clientRemoteObjectProxy
{
  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v16 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D62658]];

  if (v16)
  {
    v17 = [HDSHBreathingDisturbanceAnalyzer alloc];
    profile2 = [clientCopy profile];
    v19 = [(HDSHBreathingDisturbanceAnalyzer *)v17 initWithProfile:profile2];

    v20 = [HDSHSleepApneaControlServer alloc];
    breathingDisturbanceAnalysisScheduler = [v16 breathingDisturbanceAnalysisScheduler];
    v22 = [(HDSHSleepApneaControlServer *)v20 initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy analyzer:v19 analysisScheduler:breathingDisturbanceAnalysisScheduler];
  }

  else
  {
    breathingDisturbanceAnalysisScheduler = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Profile extension not found for class %@", objc_opt_class()}];
    if (breathingDisturbanceAnalysisScheduler)
    {
      if (error)
      {
        v23 = breathingDisturbanceAnalysisScheduler;
        v22 = 0;
        *error = breathingDisturbanceAnalysisScheduler;
      }

      else
      {
        _HKLogDroppedError();
        v22 = 0;
      }

      v19 = breathingDisturbanceAnalysisScheduler;
    }

    else
    {
      v19 = 0;
      v22 = 0;
    }
  }

  return v22;
}

@end