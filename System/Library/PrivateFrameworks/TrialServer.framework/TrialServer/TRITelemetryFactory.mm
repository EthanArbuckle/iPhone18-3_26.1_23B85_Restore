@interface TRITelemetryFactory
+ (id)containerOriginTelemetryForTaskAttribution:(id)attribution;
@end

@implementation TRITelemetryFactory

+ (id)containerOriginTelemetryForTaskAttribution:(id)attribution
{
  attributionCopy = attribution;
  if (!attributionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITelemetryFactory.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"taskAttribution"}];
  }

  v6 = objc_opt_new();
  teamIdentifier = [attributionCopy teamIdentifier];

  if (teamIdentifier)
  {
    teamIdentifier2 = [attributionCopy teamIdentifier];
    [v6 setClientTeamId:teamIdentifier2];
  }

  v9 = objc_opt_new();
  triCloudKitContainer = [attributionCopy triCloudKitContainer];
  if (triCloudKitContainer <= 2)
  {
    [v9 setCkContainer:triCloudKitContainer];
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