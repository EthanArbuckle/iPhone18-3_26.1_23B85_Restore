@interface TRICKOperationGroupFactory
+ (id)groupForDownloadOptions:(id)options;
+ (id)groupForExperimentId:(id)id;
+ (id)groupForRolloutId:(id)id;
+ (id)groupForScheduledFetch;
+ (id)groupForUserInitiatedFetch;
@end

@implementation TRICKOperationGroupFactory

+ (id)groupForExperimentId:(id)id
{
  idCopy = id;
  v4 = objc_opt_new();
  idCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"experiment-%@", idCopy];

  [v4 setName:idCopy];

  return v4;
}

+ (id)groupForRolloutId:(id)id
{
  idCopy = id;
  v4 = objc_opt_new();
  idCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"rollout-%@", idCopy];

  [v4 setName:idCopy];

  return v4;
}

+ (id)groupForDownloadOptions:(id)options
{
  activity = [options activity];

  if (activity)
  {
    [self groupForScheduledFetch];
  }

  else
  {
    [self groupForUserInitiatedFetch];
  }
  v5 = ;

  return v5;
}

+ (id)groupForScheduledFetch
{
  v2 = objc_opt_new();
  [v2 setName:@"Periodic"];

  return v2;
}

+ (id)groupForUserInitiatedFetch
{
  v2 = objc_opt_new();
  [v2 setName:@"UserActionExplicit"];

  return v2;
}

@end