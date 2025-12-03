@interface FedStatsCohortQueryInstalledAppsMedia
- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error;
@end

@implementation FedStatsCohortQueryInstalledAppsMedia

- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error
{
  if ([(FedStatsCohortQueryInstalledApps *)self numOfMediaApps:parameters]<= 9)
  {
    v5 = [NSString stringWithFormat:@"%d", [(FedStatsCohortQueryInstalledApps *)self numOfMediaApps]];
  }

  else
  {
    v5 = @"at_least_10";
  }

  return v5;
}

@end