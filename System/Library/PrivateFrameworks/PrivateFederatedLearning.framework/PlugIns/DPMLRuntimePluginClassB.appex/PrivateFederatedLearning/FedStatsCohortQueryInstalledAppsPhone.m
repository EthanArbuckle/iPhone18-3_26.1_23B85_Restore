@interface FedStatsCohortQueryInstalledAppsPhone
- (id)cohortKeyForParameters:(id)a3 possibleError:(id *)a4;
@end

@implementation FedStatsCohortQueryInstalledAppsPhone

- (id)cohortKeyForParameters:(id)a3 possibleError:(id *)a4
{
  if ([(FedStatsCohortQueryInstalledApps *)self numOfPhoneApps:a3]<= 9)
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