@interface TRITelemetryFactory
+ (id)containerOriginTelemetryForTaskAttribution:(id)a3;
@end

@implementation TRITelemetryFactory

+ (id)containerOriginTelemetryForTaskAttribution:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"TRITelemetryFactory.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"taskAttribution"}];
  }

  v6 = objc_opt_new();
  v7 = [v5 teamIdentifier];

  if (v7)
  {
    v8 = [v5 teamIdentifier];
    [v6 setClientTeamId:v8];
  }

  v9 = objc_opt_new();
  v10 = [v5 triCloudKitContainer];
  if (v10 <= 2)
  {
    [v9 setCkContainer:v10];
  }

  v11 = +[TRICKServerEnvironmentReader currentEnvironment];
  if (v11 <= 5)
  {
    [v9 setCkEnvironment:dword_26F6C7850[v11]];
  }

  [v6 setContainerOriginFields:v9];

  return v6;
}

@end