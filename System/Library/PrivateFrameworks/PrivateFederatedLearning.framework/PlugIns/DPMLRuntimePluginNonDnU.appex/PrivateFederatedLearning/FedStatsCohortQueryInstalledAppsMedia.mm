@interface FedStatsCohortQueryInstalledAppsMedia
- (id)cohortKeyForParameters:(id)a3 possibleError:(id *)a4;
@end

@implementation FedStatsCohortQueryInstalledAppsMedia

- (id)cohortKeyForParameters:(id)a3 possibleError:(id *)a4
{
  if ([(FedStatsCohortQueryInstalledApps *)self numOfMediaApps:a3]<= 9)
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