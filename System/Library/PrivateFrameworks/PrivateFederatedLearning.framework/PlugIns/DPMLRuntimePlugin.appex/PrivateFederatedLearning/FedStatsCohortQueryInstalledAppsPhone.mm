@interface FedStatsCohortQueryInstalledAppsPhone
- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error;
@end

@implementation FedStatsCohortQueryInstalledAppsPhone

- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error
{
  if ([(FedStatsCohortQueryInstalledApps *)self numOfPhoneApps:parameters]<= 9)
  {
    v5 = [NSString stringWithFormat:@"%d", [(FedStatsCohortQueryInstalledApps *)self numOfPhoneApps]];
  }

  else
  {
    v5 = @"at_least_10";
  }

  return v5;
}

@end