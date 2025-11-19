@interface HDSHSleepApneaControlServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (HDSHSleepApneaControlServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 analyzer:(id)a7 analysisScheduler:(id)a8;
- (id)_clientRemoteObjectProxy;
@end

@implementation HDSHSleepApneaControlServer

- (HDSHSleepApneaControlServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 analyzer:(id)a7 analysisScheduler:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = HDSHSleepApneaControlServer;
  v17 = [(HDStandardTaskServer *)&v20 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_analyzer, a7);
    objc_storeStrong(&v18->_analysisScheduler, a8);
  }

  return v18;
}

- (id)_clientRemoteObjectProxy
{
  v2 = [(HDStandardTaskServer *)self client];
  v3 = [v2 connection];
  v4 = [v3 remoteObjectProxy];

  return v4;
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 profileExtensionWithIdentifier:*MEMORY[0x277D62658]];

  if (v16)
  {
    v17 = [HDSHBreathingDisturbanceAnalyzer alloc];
    v18 = [v13 profile];
    v19 = [(HDSHBreathingDisturbanceAnalyzer *)v17 initWithProfile:v18];

    v20 = [HDSHSleepApneaControlServer alloc];
    v21 = [v16 breathingDisturbanceAnalysisScheduler];
    v22 = [(HDSHSleepApneaControlServer *)v20 initWithUUID:v11 configuration:v12 client:v13 delegate:v14 analyzer:v19 analysisScheduler:v21];
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Profile extension not found for class %@", objc_opt_class()}];
    if (v21)
    {
      if (a7)
      {
        v23 = v21;
        v22 = 0;
        *a7 = v21;
      }

      else
      {
        _HKLogDroppedError();
        v22 = 0;
      }

      v19 = v21;
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